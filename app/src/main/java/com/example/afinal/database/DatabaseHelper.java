package com.example.afinal.database;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import com.example.afinal.model.Specialty;

import java.util.ArrayList;
import java.util.List;

public class DatabaseHelper extends SQLiteOpenHelper {

    public static final String DBNAME = "InformationUni";

    public static final String DBLOCATION = "/Users/tsvetelinaivanova/Desktop/data.sql";
    private Context mContent;
    private SQLiteDatabase mDatabase;

    public DatabaseHelper(Context context) {

        super(context, DBNAME, null, 1);
        this.mContent = context;
    }

    @Override
    public void onCreate(SQLiteDatabase db) {

    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {

    }

    public void openDatabase() {
        String dbPath = mContent.getDatabasePath(DBNAME).getPath();
        if (mDatabase != null && mDatabase.isOpen()) {
            return;
        }
        mDatabase = SQLiteDatabase.openDatabase(dbPath, null, SQLiteDatabase.OPEN_READWRITE);

    }

    public void closeDatabase() {
        if (mDatabase != null) {
            mDatabase.close();
        }
    }

    public List<Specialty> getListSpecialty() {
        Specialty specialty = null;
        List<Specialty> specialtyList = new ArrayList<>();
        openDatabase();
        Cursor cursor = mDatabase.rawQuery("SELECT * FROM SPECIALTY", null);

        cursor.moveToFirst();
        while (!cursor.isAfterLast()) {
            specialty = new Specialty(cursor.getInt(0), cursor.getString(2));
            specialtyList.add(specialty);
            cursor.moveToNext();
        }

        cursor.close();
        closeDatabase();
        return specialtyList;

    }


    }



