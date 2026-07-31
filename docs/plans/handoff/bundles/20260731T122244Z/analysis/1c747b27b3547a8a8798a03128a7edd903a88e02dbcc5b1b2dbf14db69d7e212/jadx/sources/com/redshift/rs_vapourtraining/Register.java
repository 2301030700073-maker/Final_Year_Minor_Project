package com.redshift.rs_vapourtraining;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;

/* loaded from: classes5.dex */
public class Register extends AppCompatActivity {
    private DBHandler dbHandler;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        getSupportActionBar().hide();
        setContentView(R.layout.register_layout);
        this.dbHandler = new DBHandler(this);
    }

    public void Register(View v) {
        EditText txtname = (EditText) findViewById(R.id.registerUsername);
        String name = txtname.getText().toString();
        EditText txtpsswrd = (EditText) findViewById(R.id.registerPassword);
        String psswrd = txtpsswrd.getText().toString();
        if (name.isEmpty() && psswrd.isEmpty()) {
            Toast.makeText(getApplicationContext(), "Please enter all the data..", 0).show();
            return;
        }
        String autheruser = this.dbHandler.checkUser(name, psswrd);
        if (autheruser == null) {
            this.dbHandler.addNewUser(name, psswrd, 10);
            Toast.makeText(getApplicationContext(), "Welcome " + name, 0).show();
            Intent intent = new Intent(this, (Class<?>) Login.class);
            startActivity(intent);
            return;
        }
        Toast.makeText(getApplicationContext(), "Username Already exists", 0).show();
    }
}
