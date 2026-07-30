package com.android.contacts.activities;

import android.app.FragmentManager;
import android.os.Bundle;
import com.android.contacts.AppCompatContactsActivity;
import com.android.contacts.R;
import com.android.contacts.SimImportFragment;

/* loaded from: classes.dex */
public class SimImportActivity extends AppCompatContactsActivity {
    @Override // com.android.contacts.AppCompatContactsActivity, com.android.contacts.activities.AppCompatTransactionSafeActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.sim_import_activity);
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager.findFragmentByTag("SimImport") == null) {
            fragmentManager.beginTransaction().add(R.id.root, SimImportFragment.newInstance(getIntent().getIntExtra("extraSubscriptionId", -1)), "SimImport").commit();
        }
    }
}
