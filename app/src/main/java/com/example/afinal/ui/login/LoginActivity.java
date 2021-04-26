package com.example.afinal.ui.login;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import com.example.afinal.R;


public class LoginActivity extends AppCompatActivity {



    EditText ed1, ed2;
    Button b1;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);

        ed1 = (EditText) findViewById(R.id.username);
        ed2 = (EditText) findViewById(R.id.password);
        b1 = (Button) findViewById(R.id.login);


        b1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (ed1.getText().toString().equals("admin") &&
                        ed2.getText().toString().equals("admin")) {
                    Intent i = new Intent(LoginActivity.this, Main3Activity.class );
                    startActivity(i);
                    finish();

                    //Toast.makeText(getApplicationContext(),
                            //"Redirecting...", Toast.LENGTH_SHORT).show();
                //} else {
                  //  Toast.makeText(getApplicationContext(), "Wrong Credentials", Toast.LENGTH_SHORT).show();

                }

            }
        });

    }
}
