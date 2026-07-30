package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.ClientApi;
import com.google.android.gms.common.util.Clock;
import defpackage.BinderC3652rv;
import defpackage.InterfaceFutureC3942wq;
import j$.util.Optional;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzfji extends zzfkh {
    public zzfji(ClientApi clientApi, Context context, int i, zzbpe zzbpeVar, com.google.android.gms.ads.internal.client.zzft zzftVar, com.google.android.gms.ads.internal.client.zzcf zzcfVar, ScheduledExecutorService scheduledExecutorService, zzfjg zzfjgVar, Clock clock) {
        super(clientApi, context, i, zzbpeVar, zzftVar, zzcfVar, scheduledExecutorService, zzfjgVar, clock);
    }

    @Override // com.google.android.gms.internal.ads.zzfkh
    public final InterfaceFutureC3942wq zza() {
        zzgdb zze = zzgdb.zze();
        com.google.android.gms.ads.internal.client.zzby zze2 = this.zza.zze(new BinderC3652rv(this.zzb), new com.google.android.gms.ads.internal.client.zzs(), this.zze.zza, this.zzd, this.zzc);
        if (zze2 != null) {
            try {
                zze2.zzy(this.zze.zzc, new zzfjh(this, zze, zze2));
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to load interstitial ad.", e);
                zze.zzd(new zzfjc(1, "remote exception"));
            }
        } else {
            zze.zzd(new zzfjc(1, "Failed to create an interstitial ad manager."));
        }
        return zze;
    }

    @Override // com.google.android.gms.internal.ads.zzfkh
    public final /* bridge */ /* synthetic */ Optional zzb(Object obj) {
        try {
            return Optional.ofNullable(((com.google.android.gms.ads.internal.client.zzby) obj).zzk());
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Failed to get response info for  the interstitial ad.", e);
            return Optional.empty();
        }
    }
}
