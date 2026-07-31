package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.view.View;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Map;
import java.util.concurrent.ExecutorService;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzgin implements zzgia, zzfzj {
    private final Context zza;
    private final ExecutorService zzb;
    private NetworkCapabilities zzc = null;

    zzgin(Context context, ExecutorService executorService) {
        this.zza = context;
        this.zzb = executorService;
    }

    @Override // com.google.android.gms.internal.ads.zzfzj
    public final ListenableFuture zza() {
        return zzgui.zze(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgim
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzgin.this.zze();
            }
        }, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzgia
    public final void zzb(Map map) {
        NetworkCapabilities networkCapabilities;
        long j;
        synchronized (this) {
            networkCapabilities = this.zzc;
        }
        map.put("ntc", networkCapabilities);
        synchronized (this) {
            NetworkCapabilities networkCapabilities2 = this.zzc;
            if (networkCapabilities2 != null) {
                if (networkCapabilities2.hasTransport(4)) {
                    j = 2;
                } else if (this.zzc.hasTransport(1)) {
                    j = 1;
                } else if (this.zzc.hasTransport(0)) {
                    j = 0;
                }
            }
            j = -1;
        }
        map.put("nt", Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.ads.zzgia
    public final void zzc(Map map, Context context, View view) {
    }

    @Override // com.google.android.gms.internal.ads.zzgia
    public final void zzd(Map map) {
    }

    final /* synthetic */ void zze() {
        zzgil zzgilVar = new zzgil(this);
        try {
            Object systemService = this.zza.getSystemService("connectivity");
            if (systemService == null) {
                throw null;
            }
            ((ConnectivityManager) systemService).registerDefaultNetworkCallback(zzgilVar);
        } catch (Throwable unused) {
        }
    }

    final /* synthetic */ void zzf(NetworkCapabilities networkCapabilities) {
        this.zzc = networkCapabilities;
    }
}
