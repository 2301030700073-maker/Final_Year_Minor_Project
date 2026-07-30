package com.android.launcher3.proxy;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.util.Log;
import java.util.Objects;

/* loaded from: classes.dex */
public class ProxyActivityStarter extends Activity {
    public StartActivityParams mParams;

    public static Intent getLaunchIntent(Context context, StartActivityParams startActivityParams) {
        return new Intent(context, (Class<?>) ProxyActivityStarter.class).putExtra("start-activity-params", startActivityParams).addFlags(270565376);
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        StartActivityParams startActivityParams = this.mParams;
        if (i == startActivityParams.requestCode) {
            try {
                if (startActivityParams.mPICallback != null) {
                    startActivityParams.mPICallback.send(this, i2, intent);
                }
            } catch (PendingIntent.CanceledException e) {
                Log.e("StartActivityParams", "Unable to send back result", e);
            }
        }
        finishAndRemoveTask();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setVisible(false);
        StartActivityParams startActivityParams = (StartActivityParams) getIntent().getParcelableExtra("start-activity-params");
        this.mParams = startActivityParams;
        if (startActivityParams == null) {
            Log.d("ProxyActivityStarter", "Proxy activity started without params");
            finishAndRemoveTask();
            return;
        }
        if (bundle != null) {
            return;
        }
        Intent intent = startActivityParams.intent;
        if (intent != null) {
            startActivityForResult(intent, startActivityParams.requestCode, startActivityParams.options);
            return;
        }
        IntentSender intentSender = startActivityParams.intentSender;
        if (intentSender != null) {
            try {
                startIntentSenderForResult(intentSender, startActivityParams.requestCode, startActivityParams.fillInIntent, startActivityParams.flagsMask, startActivityParams.flagsValues, startActivityParams.extraFlags, startActivityParams.options);
                return;
            } catch (IntentSender.SendIntentException unused) {
                StartActivityParams startActivityParams2 = this.mParams;
                Objects.requireNonNull(startActivityParams2);
                try {
                    if (startActivityParams2.mPICallback != null) {
                        startActivityParams2.mPICallback.send(this, 0, (Intent) null);
                    }
                } catch (PendingIntent.CanceledException e) {
                    Log.e("StartActivityParams", "Unable to send back result", e);
                }
            }
        }
        finishAndRemoveTask();
    }
}
