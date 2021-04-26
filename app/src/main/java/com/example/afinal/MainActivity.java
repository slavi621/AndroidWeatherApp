package com.example.afinal;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import android.widget.TextView;

import com.example.afinal.ui.login.LoginActivity;


public class MainActivity extends AppCompatActivity {


   TextView textView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        TextView textView = (TextView) findViewById(R.id.text);


    }

    public void goToLogin(View View) {
        String button_text;
        button_text = ((Button)View).getText().toString();
        if(button_text.equals("Guest")){
            Intent login = new Intent(this,Main2Activity.class);
            startActivity(login);
        }
        else if (button_text.equals("Admins")){
            Intent mass = new Intent(this, LoginActivity.class);
            startActivity(mass);
        }
    }
}




