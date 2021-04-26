package com.example.afinal.ui.login;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.View;
import android.widget.ListView;
import android.widget.Toast;

import com.example.afinal.R;
import com.example.afinal.adapter.ListProductAdapter;
import com.example.afinal.database.DatabaseHelper;
import com.example.afinal.model.Specialty;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

public class Main3Activity extends Activity {

    private ListView lvProduct;
    private ListProductAdapter adapter;
    private List<Specialty> mSpecialtyList;
    private DatabaseHelper mDBHelper;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main3);
        lvProduct = (ListView)findViewById(R.id.listview_items);
mDBHelper = new DatabaseHelper(this);

        File database = getApplicationContext().getDatabasePath(DatabaseHelper.DBNAME);
        if(false == database.exists()) {
            if(copyDatabase(this)){
                Toast.makeText(this, "Copy database succes", Toast.LENGTH_SHORT).show();

            }else{
                Toast.makeText(this, "Copy data error", Toast.LENGTH_SHORT).show();
                return;
            }
        }
        mSpecialtyList = mDBHelper.getListSpecialty();

        adapter = new ListProductAdapter(this, mSpecialtyList);


        lvProduct.setAdapter(adapter);


    }

    private boolean copyDatabase(Context context){
        try {
            InputStream inputStream = context.getAssets().open(DatabaseHelper.DBNAME);
            String outFileName = DatabaseHelper.DBLOCATION + DatabaseHelper.DBNAME;
            OutputStream outputStream = new FileOutputStream(outFileName);
            byte[] buff = new byte[1024];
            int length = 0;
            while ((length = inputStream.read(buff)) > 0) {
                outputStream.write(buff, 0, length);


            }

            outputStream.flush();
            outputStream.close();
            Log.v("Main3Activity", "DB copied");
            return true;

        } catch (Exception e){
          e.printStackTrace();
          return false;

        }
    }

}
