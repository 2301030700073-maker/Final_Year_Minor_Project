package com.redshift.rs_vapourtraining;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import androidx.appcompat.app.AppCompatActivity;

/* loaded from: classes5.dex */
public class AddCard extends AppCompatActivity {
    String Tag = "Redshift_Training_App";
    private DBHandler dbHandler;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        getSupportActionBar().hide();
        setContentView(R.layout.activity_add_card);
        this.dbHandler = new DBHandler(this);
    }

    public void CardAdd(View v) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(this);
        String userID = prefs.getString("userRS", com.android.volley.BuildConfig.FLAVOR);
        EditText cardname = (EditText) findViewById(R.id.add_card_name);
        EditText cardnumber = (EditText) findViewById(R.id.add_card_number);
        EditText cardexpmonth = (EditText) findViewById(R.id.exp_month);
        EditText cardexpyear = (EditText) findViewById(R.id.exp_year);
        EditText cardcvv = (EditText) findViewById(R.id.add_card_cvv);
        Log.d(this.Tag, cardcvv.getText().toString());
        Log.d(this.Tag, cardnumber.getText().toString());
        String expdate = cardexpmonth.getText().toString() + "/" + cardexpyear.getText().toString();
        this.dbHandler.addCreditCard(userID, cardnumber.getText().toString(), cardcvv.getText().toString(), expdate, cardname.getText().toString());
        Intent intent = new Intent(this, (Class<?>) NavigationComponent.class);
        intent.putExtra("username", this.dbHandler.checkUser(userID));
        startActivity(intent);
    }
}
