package com.example.afinal.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.example.afinal.R;
import com.example.afinal.model.Specialty;

import java.util.List;

public class ListProductAdapter extends BaseAdapter {
    private Context mContent;
    private List<Specialty>mSpecialtyList;

public ListProductAdapter(Context mContent, List<Specialty> mSpecialtyList){
    this.mContent=mContent;
    this.mSpecialtyList=mSpecialtyList;
}

    @Override
    public int getCount() {
        return mSpecialtyList.size();
    }

    @Override
    public Object getItem(int specialty) {
        return mSpecialtyList.get(specialty);
    }

    @Override
    public long getItemId(int specialty) {
        return mSpecialtyList.get(specialty).getId();
    }

    @Override
    public View getView(int specialty, View convertView, ViewGroup parent) {

    View v = View.inflate(mContent, R.layout.item_listview, null);
        TextView tvID = (TextView) v.findViewById(R.id.specialty_id);
        TextView tvName = (TextView) v.findViewById(R.id.specialty);

        tvName.setText(mSpecialtyList.get(specialty).getName());
    return v;
    }
}
