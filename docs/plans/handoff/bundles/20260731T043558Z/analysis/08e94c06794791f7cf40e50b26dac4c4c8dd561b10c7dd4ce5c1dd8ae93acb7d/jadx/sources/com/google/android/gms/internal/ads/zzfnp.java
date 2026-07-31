package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.ClientApi;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfnp extends zzfom {
    public zzfnp(ClientApi clientApi, Context context, int i, zzfhj zzfhjVar, com.google.android.gms.ads.internal.client.zzft zzftVar, com.google.android.gms.ads.internal.client.zzce zzceVar, ScheduledExecutorService scheduledExecutorService, zzfnq zzfnqVar, Clock clock) {
        super(clientApi, context, i, zzfhjVar, zzftVar, zzceVar, scheduledExecutorService, zzfnqVar, clock);
    }

    @Override // com.google.android.gms.internal.ads.zzfom
    protected final ListenableFuture zza(Context context) {
        zzbrj zzd = this.zzd.zzd();
        if (zzd == null) {
            return zzgui.zzc(new zzfni(1, "Failed to create an app open ad manager."));
        }
        com.google.android.gms.ads.internal.client.zzbx zzm = this.zza.zzm(ObjectWrapper.wrap(context), com.google.android.gms.ads.internal.client.zzr.zzd(), this.zze.zza, zzd, this.zzc);
        if (zzm == null) {
            return zzgui.zzc(new zzfni(1, "Failed to create an app open ad manager."));
        }
        zzgvb zze = zzgvb.zze();
        try {
            zzs(this.zze.zzc);
            zzm.zzJ(new zzfno(this, zze, this.zze));
            zzm.zze(this.zze.zzc);
            return zze;
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to load app open ad.", e);
            return zzgui.zzc(new zzfni(1, "remote exception"));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfom
    protected final /* bridge */ /* synthetic */ com.google.android.gms.ads.internal.client.zzea zzb(Object obj) {
        try {
            return ((zzbcn) obj).zzg();
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Failed to get response info for the app open ad.", e);
            return null;
        }
    }

    public zzfnp(String str, ClientApi clientApi, Context context, int i, zzfhj zzfhjVar, com.google.android.gms.ads.internal.client.zzft zzftVar, com.google.android.gms.ads.internal.client.zzch zzchVar, ScheduledExecutorService scheduledExecutorService, zzfnq zzfnqVar, Clock clock) {
        super(str, clientApi, context, i, zzfhjVar, zzftVar, zzchVar, scheduledExecutorService, zzfnqVar, clock);
    }
}
