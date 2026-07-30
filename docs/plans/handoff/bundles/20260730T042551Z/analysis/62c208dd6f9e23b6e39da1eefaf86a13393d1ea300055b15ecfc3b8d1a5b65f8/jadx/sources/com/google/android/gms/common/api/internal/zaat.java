package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.InterfaceC3859vO;
import java.util.concurrent.locks.Lock;

/* loaded from: classes.dex */
final class zaat implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
    final /* synthetic */ zaaw zaa;

    public /* synthetic */ zaat(zaaw zaawVar, zaas zaasVar) {
        this.zaa = zaawVar;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        ClientSettings clientSettings;
        InterfaceC3859vO interfaceC3859vO;
        clientSettings = this.zaa.zar;
        interfaceC3859vO = this.zaa.zak;
        ((InterfaceC3859vO) Preconditions.checkNotNull(interfaceC3859vO)).mo2984if(new zaar(this.zaa));
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Lock lock;
        Lock lock2;
        boolean zaI;
        lock = this.zaa.zab;
        lock.lock();
        try {
            zaI = this.zaa.zaI(connectionResult);
            if (zaI) {
                this.zaa.zaA();
                this.zaa.zaF();
            } else {
                this.zaa.zaD(connectionResult);
            }
        } finally {
            lock2 = this.zaa.zab;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }
}
