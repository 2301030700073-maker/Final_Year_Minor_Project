package com.google.android.gms.internal.ads;

import android.net.ConnectivityManager;
import android.net.Network;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
final class zzbzj extends ConnectivityManager.NetworkCallback {
    final /* synthetic */ zzbzm zza;

    public zzbzj(zzbzm zzbzmVar) {
        this.zza = zzbzmVar;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        AtomicBoolean atomicBoolean;
        atomicBoolean = this.zza.zzo;
        atomicBoolean.set(true);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        AtomicBoolean atomicBoolean;
        atomicBoolean = this.zza.zzo;
        atomicBoolean.set(false);
    }
}
