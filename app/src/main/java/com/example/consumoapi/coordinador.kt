package com.example.consumoapi

import android.content.Context
import android.os.Bundle
import android.util.Log
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Toast
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.example.consumoapi.databinding.FragmentCoordinadorBinding
import com.example.consumoapi.entities.CoordinadorData
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response


class coordinador : Fragment() {
    private lateinit var fbinding: FragmentCoordinadorBinding
    private lateinit var recycler: RecyclerView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

    }

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        fbinding = FragmentCoordinadorBinding.inflate(layoutInflater)
        getCoordinador()
        return fbinding.root
    }

    private fun getCoordinador(){
        val coordinadorService: coordinadorService = RestEngine.buildService(coordinadorService::class.java)
        val result = coordinadorService.listCoordinador()

        result.enqueue(object : Callback<List<CoordinadorData>> {
            override fun onResponse(call: Call<List<CoordinadorData>>, response: Response<List<CoordinadorData>>,
            ) {
                if (response.isSuccessful) {
                    val coordinadores = response.body()
                    if (coordinadores != null) {
                        establecerAdaptador(coordinadores)
                    }
                }
            }

            override fun onFailure(call: Call<List<CoordinadorData>>, t: Throwable) {
                t.printStackTrace()
                Log.e("Failed", t.message.toString())
            }
        })

    }

    private fun establecerAdaptador(coordinadores: List<CoordinadorData>){
        recycler = fbinding.rvCoordi
        recycler.layoutManager = LinearLayoutManager(requireContext())
        recycler.adapter = RecyclerCoordinador(requireContext(), coordinadores)
    }

}