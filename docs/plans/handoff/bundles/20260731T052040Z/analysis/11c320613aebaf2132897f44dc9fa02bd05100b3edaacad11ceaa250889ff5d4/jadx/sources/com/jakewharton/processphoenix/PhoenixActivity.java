package com.jakewharton.processphoenix;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.os.StrictMode;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PhoenixActivity extends Activity {
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Process.killProcess(getIntent().getIntExtra("phoenix_main_process_pid", -1));
        Intent[] intentArr = (Intent[]) getIntent().getParcelableArrayListExtra("phoenix_restart_intents").toArray(new Intent[0]);
        if (Build.VERSION.SDK_INT > 31) {
            StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder(StrictMode.getVmPolicy()).permitUnsafeIntentLaunch().build());
        }
        startActivities(intentArr);
        finish();
        Runtime.getRuntime().exit(0);
    }
}
