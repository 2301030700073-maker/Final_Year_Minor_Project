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
public final class zzfkl extends zzfkh {
    public zzfkl(ClientApi clientApi, Context context, int i, zzbpe zzbpeVar, com.google.android.gms.ads.internal.client.zzft zzftVar, com.google.android.gms.ads.internal.client.zzcf zzcfVar, ScheduledExecutorService scheduledExecutorService, zzfjg zzfjgVar, Clock clock) {
        super(clientApi, context, i, zzbpeVar, zzftVar, zzcfVar, scheduledExecutorService, zzfjgVar, clock);
    }

    @Override // com.google.android.gms.internal.ads.zzfkh
    public final InterfaceFutureC3942wq zza() {
        zzgdb zze = zzgdb.zze();
        zzbwp zzp = this.zza.zzp(new BinderC3652rv(this.zzb), this.zze.zza, this.zzd, this.zzc);
        zzfkk zzfkkVar = new zzfkk(this, zze, zzp);
        if (zzp != null) {
            try {
                zzp.zzf(this.zze.zzc, zzfkkVar);
            } catch (RemoteException unused) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to load rewarded ad.");
                zze.zzd(new zzfjc(1, "remote exception"));
            }
        } else {
            zze.zzd(new zzfjc(1, "Failed to create a rewarded ad."));
        }
        return zze;
    }

    @Override // com.google.android.gms.internal.ads.zzfkh
    public final /* bridge */ /* synthetic */ Optional zzb(Object obj) {
        try {
            return Optional.ofNullable(((zzbwp) obj).zzc());
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Failed to get response info for the rewarded ad.", e);
            return Optional.empty();
        }
    }
}
