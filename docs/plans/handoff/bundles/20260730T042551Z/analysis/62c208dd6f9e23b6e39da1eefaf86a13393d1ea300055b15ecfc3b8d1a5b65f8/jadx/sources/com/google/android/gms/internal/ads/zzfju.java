package com.google.android.gms.internal.ads;

import android.net.ConnectivityManager;
import android.net.Network;

/* loaded from: classes.dex */
final class zzfju extends ConnectivityManager.NetworkCallback {
    final /* synthetic */ zzfjv zza;

    public zzfju(zzfjv zzfjvVar) {
        this.zza = zzfjvVar;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        this.zza.zzs(true);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        this.zza.zzs(false);
    }
}
