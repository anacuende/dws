from django.shortcuts import render
from django.http import HttpResponse, JsonResponse

from django.views.decorators.csrf import csrf_exempt
from .models import Tcanciones, Tcomentarios
from datetime import date
import json

def pagina_de_prueba(request):
	return HttpResponse("<h1>Hola caracola</h1>");

def devolver_canciones(request):
	lista = Tcanciones.objects.all()
	respuesta_final = []
	for fila_sql in lista:
		diccionario = {}
		diccionario['id'] = fila_sql.id
		diccionario['nombre'] = fila_sql.nombre
		diccionario['url_imagen'] = fila_sql.url_imagen
		diccionario['autor'] = fila_sql.autor
		diccionario['album'] = fila_sql.album
		respuesta_final.append(diccionario)
	return JsonResponse(respuesta_final, safe=False)

def devolver_cancion_por_id(request, id_solicitado):
	cancion = Tcanciones.objects.get(id = id_solicitado)
	comentarios = cancion.tcomentarios_set.all()
	lista_comentarios = []
	for fila_comentario_sql in comentarios:
		diccionario = {}
		diccionario['id'] = fila_comentario_sql.id
		diccionario['comentario'] = fila_comentario_sql.comentario
		diccionario['usuario_id'] = fila_comentario_sql.usuario_id
		diccionario['cancion_id'] = fila_comentario_sql.cancion_id
		diccionario['fecha'] = fila_comentario_sql.fecha
		lista_comentarios.append(diccionario)
	resultado = {
		'id': cancion.id,
		'nombre': cancion.nombre,
		'url_imagen': cancion.url_imagen,
		'autor': cancion.autor,
		'album': cancion.album,
		'comentarios': lista_comentarios
	}
	return JsonResponse(resultado, json_dumps_params={'ensure_ascii': False})

@csrf_exempt
def guardar_comentario(request, cancion_id):
	if request.method != 'POST':
		return None

	json_peticion = json.loads(request.body)
	comentario = Tcomentarios()
	comentario.comentario = json_peticion['nuevo_comentario']
	comentario.cancion = Tcanciones.objects.get(id = cancion_id)
	comentario.fecha = date.today()
	comentario.save()
	return JsonResponse({"status": "ok"})
