package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import defpackage.C3497pF;

/* loaded from: classes.dex */
final class zabb implements ResultCallback {
    final /* synthetic */ StatusPendingResult zaa;
    final /* synthetic */ boolean zab;
    final /* synthetic */ GoogleApiClient zac;
    final /* synthetic */ zabe zad;

    public zabb(zabe zabeVar, StatusPendingResult statusPendingResult, boolean z, GoogleApiClient googleApiClient) {
        this.zad = zabeVar;
        this.zaa = statusPendingResult;
        this.zab = z;
        this.zac = googleApiClient;
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public final void onResult(Result result) {
        Context context;
        Status status = (Status) result;
        context = this.zad.zan;
        C3497pF m7790do = C3497pF.m7790do(context);
        String m7793if = m7790do.m7793if("defaultGoogleSignInAccount");
        m7790do.m7792for("defaultGoogleSignInAccount");
        if (!TextUtils.isEmpty(m7793if)) {
            m7790do.m7792for(C3497pF.m7791new("googleSignInAccount", m7793if));
            m7790do.m7792for(C3497pF.m7791new("googleSignInOptions", m7793if));
        }
        if (status.isSuccess() && this.zad.isConnected()) {
            zabe zabeVar = this.zad;
            zabeVar.disconnect();
            zabeVar.connect();
        }
        this.zaa.setResult(status);
        if (this.zab) {
            this.zac.disconnect();
        }
    }
}
