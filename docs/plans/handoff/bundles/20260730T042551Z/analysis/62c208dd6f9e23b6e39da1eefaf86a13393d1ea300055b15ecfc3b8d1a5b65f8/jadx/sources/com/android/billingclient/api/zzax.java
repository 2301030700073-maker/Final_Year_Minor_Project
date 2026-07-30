package com.android.billingclient.api;

import android.os.Bundle;
import android.os.ResultReceiver;
import com.android.billingclient.api.Cdo;
import com.google.android.gms.internal.play_billing.zze;
import com.google.android.gms.internal.play_billing.zzkg;
import defpackage.C3155jR;

/* loaded from: classes.dex */
final class zzax extends ResultReceiver {
    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i, Bundle bundle) {
        Cdo.C0052do m5219do = Cdo.m5219do();
        m5219do.f9108do = i;
        if (i == 0) {
            m5219do.m5220do();
            throw null;
        }
        if (bundle == null) {
            Cdo cdo = Cif.f9115do;
            throw null;
        }
        m5219do.f9109do = zze.zzh(bundle, "BillingClient");
        int i2 = bundle.getInt("INTERNAL_LOG_ERROR_REASON");
        C3155jR.m7100for(i2 != 0 ? zzkg.zza(i2) : 23, 25, m5219do.m5220do(), bundle.getString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS"));
        throw null;
    }
}
