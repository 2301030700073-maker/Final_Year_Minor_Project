package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.IOException;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzbdn implements BaseGmsClient.BaseConnectionCallbacks {
    public static final /* synthetic */ int zzd = 0;
    final /* synthetic */ zzbdf zza;
    final /* synthetic */ zzcca zzb;
    final /* synthetic */ zzbdp zzc;

    zzbdn(zzbdp zzbdpVar, zzbdf zzbdfVar, zzcca zzccaVar) {
        this.zza = zzbdfVar;
        this.zzb = zzccaVar;
        Objects.requireNonNull(zzbdpVar);
        this.zzc = zzbdpVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzbdp zzbdpVar = this.zzc;
        synchronized (zzbdpVar.zzf()) {
            if (zzbdpVar.zzd()) {
                return;
            }
            zzbdpVar.zze(true);
            final zzbde zzc = zzbdpVar.zzc();
            if (zzc == null) {
                return;
            }
            zzgus zzgusVar = zzcbv.zza;
            final zzbdf zzbdfVar = this.zza;
            final zzcca zzccaVar = this.zzb;
            final ListenableFuture submit = zzgusVar.submit(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbdm
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzcca zzccaVar2 = zzccaVar;
                    zzbde zzbdeVar = zzc;
                    zzbdn zzbdnVar = zzbdn.this;
                    try {
                        zzbdh zzq = zzbdeVar.zzq();
                        boolean zzp = zzbdeVar.zzp();
                        zzbdf zzbdfVar2 = zzbdfVar;
                        zzbdc zzf = zzp ? zzq.zzf(zzbdfVar2) : zzq.zze(zzbdfVar2);
                        if (!zzf.zza()) {
                            zzccaVar2.zzd(new RuntimeException("No entry contents."));
                            zzbdnVar.zzc.zzb();
                            return;
                        }
                        zzbdk zzbdkVar = new zzbdk(zzbdnVar, zzf.zzb(), 1);
                        int read = zzbdkVar.read();
                        if (read == -1) {
                            throw new IOException("Unable to read from cache.");
                        }
                        zzbdkVar.unread(read);
                        zzccaVar2.zzc(zzbdr.zza(zzbdkVar, zzf.zzd(), zzf.zzg(), zzf.zzf(), zzf.zze()));
                    } catch (RemoteException | IOException e) {
                        int i = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to obtain a cache service instance.", e);
                        zzccaVar2.zzd(e);
                        zzbdnVar.zzc.zzb();
                    }
                }
            });
            zzccaVar.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbdl
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    int i = zzbdn.zzd;
                    if (zzcca.this.isCancelled()) {
                        submit.cancel(true);
                    }
                }
            }, zzcbv.zzg);
        }
    }
}
