package com.google.android.gms.ads;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.widget.LinearLayout;
import com.google.android.gms.ads.internal.client.zzbc;
import com.google.android.gms.ads.internal.client.zzdu;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzbpa;
import defpackage.BinderC3652rv;

@KeepForSdk
/* loaded from: classes.dex */
public final class OutOfContextTestingActivity extends Activity {

    @KeepForSdk
    public static final String AD_UNIT_KEY = "adUnit";

    @KeepForSdk
    public static final String CLASS_NAME = "com.google.android.gms.ads.OutOfContextTestingActivity";

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        zzdu zzh = zzbc.zza().zzh(this, new zzbpa());
        if (zzh == null) {
            finish();
            return;
        }
        setContentView(R.layout.admob_empty_layout);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.layout);
        Intent intent = getIntent();
        if (intent == null) {
            finish();
            return;
        }
        String stringExtra = intent.getStringExtra(AD_UNIT_KEY);
        if (stringExtra == null) {
            finish();
            return;
        }
        try {
            zzh.zze(stringExtra, new BinderC3652rv(this), new BinderC3652rv(linearLayout));
        } catch (RemoteException unused) {
            finish();
        }
    }
}
