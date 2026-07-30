package com.google.android.gms.internal.ads;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzaxf extends ConnectivityManager.NetworkCallback {
    final /* synthetic */ zzaxg zza;

    zzaxf(zzaxg zzaxgVar) {
        Objects.requireNonNull(zzaxgVar);
        this.zza = zzaxgVar;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        synchronized (zzaxg.class) {
            this.zza.zzd(networkCapabilities);
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        synchronized (zzaxg.class) {
            this.zza.zzd(null);
        }
    }
}
