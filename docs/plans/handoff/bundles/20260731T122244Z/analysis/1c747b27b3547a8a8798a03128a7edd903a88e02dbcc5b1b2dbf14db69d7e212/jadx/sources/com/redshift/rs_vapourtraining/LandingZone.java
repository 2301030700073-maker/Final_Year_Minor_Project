package com.redshift.rs_vapourtraining;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;

/* loaded from: classes5.dex */
public class LandingZone extends AppCompatActivity {
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        getSupportActionBar().hide();
        setContentView(R.layout.activity_landing_zone);
    }

    public void launchLogin(View V) {
        Intent intent = new Intent(this, (Class<?>) Disclaimer.class);
        startActivity(intent);
    }
}
