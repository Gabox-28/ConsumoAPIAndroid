package com.example.consumoapi

import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.navigation.Navigation
import com.example.consumoapi.databinding.FragmentHomeBinding

class home : Fragment() {

    private lateinit var fbinding: FragmentHomeBinding

    // TODO: Rename and change types of parameters
    private var param1: String? = null
    private var param2: String? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
    }

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        fbinding = FragmentHomeBinding.inflate(layoutInflater)
        start()
        return fbinding.root
    }

    private fun start(){
        fbinding.btnStart.setOnClickListener{
            Navigation.findNavController(fbinding.root).navigate(R.id.coordinador)
        }
    }

}