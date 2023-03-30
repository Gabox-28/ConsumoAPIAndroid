package com.example.consumoapi

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.example.consumoapi.entities.CoordinadorData

class RecyclerCoordinador(var context: Context, var listaCoordinadores:List<CoordinadorData>):RecyclerView.Adapter<RecyclerCoordinador.MiHolder>() {

    inner class MiHolder(itemView: View):RecyclerView.ViewHolder(itemView){
        lateinit var nombresData: TextView
        lateinit var apellidosData: TextView
        lateinit var fechaNacData: TextView
        lateinit var tituloData: TextView
        lateinit var emailData: TextView
        lateinit var facultadData: TextView

        init{
            nombresData = itemView.findViewById(R.id.tvNombres)
            apellidosData = itemView.findViewById(R.id.tvApellidos)
            fechaNacData = itemView.findViewById(R.id.tvFecha)
            tituloData = itemView.findViewById(R.id.tvTitulo)
            emailData = itemView.findViewById(R.id.tvEmail)
            facultadData = itemView.findViewById(R.id.tvFacultad)
        }
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): MiHolder {
        var itemView = LayoutInflater.from(context).inflate(R.layout.coordinador_card, parent, false)
        return MiHolder(itemView)
    }

    override fun getItemCount(): Int {
        return listaCoordinadores.size
    }

    override fun onBindViewHolder(holder: MiHolder, position: Int) {
        var coordinador = listaCoordinadores[position]
        holder.nombresData.text = coordinador.nombres
        holder.apellidosData.text = coordinador.apellidos
        holder.fechaNacData.text = coordinador.fechaNac
        holder.tituloData.text = coordinador.titulo
        holder.emailData.text = coordinador.email
        holder.facultadData.text = coordinador.facultad
    }

}