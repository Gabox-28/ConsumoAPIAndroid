package com.example.consumoapi

import com.example.consumoapi.entities.CoordinadorData
import retrofit2.Call
import retrofit2.http.GET

interface coordinadorService {
    @GET("noMV.php")
    fun listCoordinador():Call<List<CoordinadorData>>
}