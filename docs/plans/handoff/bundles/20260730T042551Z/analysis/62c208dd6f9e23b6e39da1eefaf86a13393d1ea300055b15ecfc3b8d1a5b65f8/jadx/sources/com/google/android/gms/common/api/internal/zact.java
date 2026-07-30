package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.BinderC3623rO;
import defpackage.C3800uO;
import defpackage.InterfaceC3859vO;
import java.util.Set;

/* loaded from: classes.dex */
public final class zact extends BinderC3623rO implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
    private static final Api.AbstractClientBuilder zaa = C3800uO.f15881do;
    private final Context zab;
    private final Handler zac;
    private final Api.AbstractClientBuilder zad;
    private final Set zae;
    private final ClientSettings zaf;
    private InterfaceC3859vO zag;
    private zacs zah;

    public zact(Context context, Handler handler, ClientSettings clientSettings) {
        Api.AbstractClientBuilder abstractClientBuilder = zaa;
        this.zab = context;
        this.zac = handler;
        this.zaf = (ClientSettings) Preconditions.checkNotNull(clientSettings, "ClientSettings must not be null");
        this.zae = clientSettings.getRequiredScopes();
        this.zad = abstractClientBuilder;
    }

    public static void zad(zact zactVar, com.google.android.gms.signin.internal.zak zakVar) {
        ConnectionResult connectionResult = zakVar.f10367do;
        if (connectionResult.isSuccess()) {
            com.google.android.gms.common.internal.zav zavVar = (com.google.android.gms.common.internal.zav) Preconditions.checkNotNull(zakVar.f10368do);
            ConnectionResult zaa2 = zavVar.zaa();
            if (!zaa2.isSuccess()) {
                String valueOf = String.valueOf(zaa2);
                new Exception();
                "Sign-in succeeded with resolve account failure: ".concat(valueOf);
                zactVar.zah.zae(zaa2);
                zactVar.zag.disconnect();
                return;
            }
            zactVar.zah.zaf(zavVar.zab(), zactVar.zae);
        } else {
            zactVar.zah.zae(connectionResult);
        }
        zactVar.zag.disconnect();
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        this.zag.mo2984if(this);
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.zah.zae(connectionResult);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        this.zah.zag(i);
    }

    @Override // defpackage.BinderC3623rO, defpackage.InterfaceC3918wO
    public final void zab(com.google.android.gms.signin.internal.zak zakVar) {
        this.zac.post(new zacr(this, zakVar));
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.common.api.Api$Client, vO] */
    public final void zae(zacs zacsVar) {
        InterfaceC3859vO interfaceC3859vO = this.zag;
        if (interfaceC3859vO != null) {
            interfaceC3859vO.disconnect();
        }
        this.zaf.zae(Integer.valueOf(System.identityHashCode(this)));
        Api.AbstractClientBuilder abstractClientBuilder = this.zad;
        Context context = this.zab;
        Handler handler = this.zac;
        ClientSettings clientSettings = this.zaf;
        this.zag = abstractClientBuilder.buildClient(context, handler.getLooper(), clientSettings, (ClientSettings) clientSettings.zaa(), (GoogleApiClient.ConnectionCallbacks) this, (GoogleApiClient.OnConnectionFailedListener) this);
        this.zah = zacsVar;
        Set set = this.zae;
        if (set == null || set.isEmpty()) {
            this.zac.post(new zacq(this));
        } else {
            this.zag.zab();
        }
    }

    public final void zaf() {
        InterfaceC3859vO interfaceC3859vO = this.zag;
        if (interfaceC3859vO != null) {
            interfaceC3859vO.disconnect();
        }
    }
}
