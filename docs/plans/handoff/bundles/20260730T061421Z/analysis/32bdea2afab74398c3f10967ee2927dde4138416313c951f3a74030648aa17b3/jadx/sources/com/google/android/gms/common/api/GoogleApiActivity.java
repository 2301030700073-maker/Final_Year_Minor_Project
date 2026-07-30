package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import c.b.a.c.d.b;
import c.b.a.c.d.g.u.C0416g;
import com.google.android.gms.common.ConnectionResult;

/* loaded from: classes.dex */
public class GoogleApiActivity extends Activity implements DialogInterface.OnCancelListener {

    /* renamed from: a, reason: collision with root package name */
    public int f3370a = 0;

    public static PendingIntent a(Context context, PendingIntent pendingIntent, int i) {
        Intent intent = new Intent(context, (Class<?>) GoogleApiActivity.class);
        intent.putExtra("pending_intent", pendingIntent);
        intent.putExtra("failing_client_id", i);
        intent.putExtra("notify_manager", true);
        return PendingIntent.getActivity(context, 0, intent, 134217728);
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1) {
            boolean booleanExtra = getIntent().getBooleanExtra("notify_manager", true);
            this.f3370a = 0;
            setResult(i2, intent);
            if (booleanExtra) {
                C0416g a2 = C0416g.a(this);
                if (i2 == -1) {
                    Handler handler = a2.m;
                    handler.sendMessage(handler.obtainMessage(3));
                } else if (i2 == 0) {
                    ConnectionResult connectionResult = new ConnectionResult(13, null);
                    int intExtra = getIntent().getIntExtra("failing_client_id", -1);
                    if (!a2.b(connectionResult, intExtra)) {
                        Handler handler2 = a2.m;
                        handler2.sendMessage(handler2.obtainMessage(5, intExtra, 0, connectionResult));
                    }
                }
            }
        } else if (i == 2) {
            this.f3370a = 0;
            setResult(i2, intent);
        }
        finish();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        this.f3370a = 0;
        setResult(0);
        finish();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.f3370a = bundle.getInt("resolution");
        }
        if (this.f3370a != 1) {
            Bundle extras = getIntent().getExtras();
            if (extras == null) {
                Log.e("GoogleApiActivity", "Activity started without extras");
                finish();
                return;
            }
            PendingIntent pendingIntent = (PendingIntent) extras.get("pending_intent");
            Integer num = (Integer) extras.get("error_code");
            if (pendingIntent == null && num == null) {
                Log.e("GoogleApiActivity", "Activity started without resolution");
                finish();
            } else {
                if (pendingIntent == null) {
                    b.f2872c.d(this, num.intValue(), 2, this);
                    this.f3370a = 1;
                    return;
                }
                try {
                    startIntentSenderForResult(pendingIntent.getIntentSender(), 1, null, 0, 0, 0);
                    this.f3370a = 1;
                } catch (IntentSender.SendIntentException e) {
                    Log.e("GoogleApiActivity", "Failed to launch pendingIntent", e);
                    finish();
                }
            }
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putInt("resolution", this.f3370a);
        super.onSaveInstanceState(bundle);
    }
}
