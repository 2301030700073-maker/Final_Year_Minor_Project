package com.redshift.rs_vapourtraining;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import java.io.File;

/* loaded from: classes5.dex */
public class Login extends AppCompatActivity {
    private DBHandler dbHandler;
    String Tag = "Redshift_Training_App";
    private String adminUser = "admin";
    private String adminPass = "admin";

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        getSupportActionBar().hide();
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(this);
        setContentView(R.layout.login_layout);
        this.dbHandler = new DBHandler(this);
        if (!prefs.getBoolean("firstTime2", false)) {
            this.dbHandler.addNewUser(this.adminUser, this.adminPass, 10000);
            this.dbHandler.addNewProduct("game1", "very cool game", "https://images.unsplash.com/photo-1641239844090-fa80f6dd6ea6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80", "$6", 6);
            this.dbHandler.addNewProduct("game2", "very not cool game", "https://images.unsplash.com/photo-1648670329793-e542dbe65bb7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1631&q=80", "$6", 6);
            this.dbHandler.addNewProduct("game3", "very pretty cool game", "https://images.unsplash.com/photo-1648634362534-238cb091708b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1886&q=80", "$6", 6);
            this.dbHandler.addNewProduct("game4", "very meh game", "https://images.unsplash.com/photo-1648569732633-3b2671226347?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80", "$6", 6);
            this.dbHandler.addCreditCard("1", "0000000000000000", "234", "12/26", "Admin");
            SharedPreferences.Editor editor = prefs.edit();
            editor.putBoolean("firstTime2", true);
            editor.putString("cookie", "djkwapjdpoajdopj3o24242ojpfejspfjo");
            editor.commit();
        }
    }

    public void Login(View v) {
        EditText txtname = (EditText) findViewById(R.id.editTextTextPersonName);
        String name = txtname.getText().toString();
        EditText txtpsswrd = (EditText) findViewById(R.id.editTextTextPassword);
        String psswrd = txtpsswrd.getText().toString();
        Log.d(this.Tag, name);
        Log.d(this.Tag, psswrd);
        if (name.isEmpty() && psswrd.isEmpty()) {
            Toast.makeText(this, "Please enter all the data..", 0).show();
            return;
        }
        String autheruser = this.dbHandler.checkUser(name, psswrd);
        if (autheruser == null || isRooted()) {
            if (isRooted()) {
                Toast.makeText(this, "Phone is rooted, Please uninstall application.", 0).show();
                return;
            } else {
                Toast.makeText(this, "User or password not valid ", 0).show();
                return;
            }
        }
        Toast.makeText(getApplicationContext(), "Welcome " + autheruser, 0).show();
        Intent intent = new Intent(this, (Class<?>) NavigationComponent.class);
        intent.putExtra("username", autheruser);
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(this);
        SharedPreferences.Editor editor = prefs.edit();
        editor.putString("userRS", this.dbHandler.getUserID(autheruser));
        editor.putString("userbuyCredits", "0");
        editor.commit();
        startActivity(intent);
    }

    public void Register(View v) {
        Intent intent = new Intent(this, (Class<?>) Register.class);
        startActivity(intent);
    }

    public static boolean findBinary(String binaryName) {
        if (0 != 0) {
            return false;
        }
        String[] places = {"/sbin/", "/system/bin/", "/system/xbin/", "/data/local/xbin/", "/data/local/bin/", "/system/sd/xbin/", "/system/bin/failsafe/", "/data/local/"};
        for (String where : places) {
            if (new File(where + binaryName).exists()) {
                return true;
            }
        }
        return false;
    }

    private static boolean isRooted() {
        return findBinary("su");
    }
}
