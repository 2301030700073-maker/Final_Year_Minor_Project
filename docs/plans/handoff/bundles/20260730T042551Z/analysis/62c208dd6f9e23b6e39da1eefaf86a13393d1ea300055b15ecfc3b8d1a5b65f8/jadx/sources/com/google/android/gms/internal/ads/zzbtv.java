package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import defpackage.BinderC3652rv;

/* loaded from: classes.dex */
public final class zzbtv {
    private static zzbyu zza;
    private final Context zzb;
    private final AdFormat zzc;
    private final com.google.android.gms.ads.internal.client.zzei zzd;
    private final String zze;

    public zzbtv(Context context, AdFormat adFormat, com.google.android.gms.ads.internal.client.zzei zzeiVar, String str) {
        this.zzb = context;
        this.zzc = adFormat;
        this.zzd = zzeiVar;
        this.zze = str;
    }

    public static zzbyu zza(Context context) {
        zzbyu zzbyuVar;
        synchronized (zzbtv.class) {
            if (zza == null) {
                zza = com.google.android.gms.ads.internal.client.zzbc.zza().zzt(context, new zzbpa());
            }
            zzbyuVar = zza;
        }
        return zzbyuVar;
    }

    public final void zzb(QueryInfoGenerationCallback queryInfoGenerationCallback) {
        com.google.android.gms.ads.internal.client.zzm zza2;
        long currentTimeMillis = System.currentTimeMillis();
        zzbyu zza3 = zza(this.zzb);
        if (zza3 == null) {
            queryInfoGenerationCallback.onFailure("Internal Error, query info generator is null.");
            return;
        }
        Context context = this.zzb;
        com.google.android.gms.ads.internal.client.zzei zzeiVar = this.zzd;
        BinderC3652rv binderC3652rv = new BinderC3652rv(context);
        if (zzeiVar == null) {
            com.google.android.gms.ads.internal.client.zzn zznVar = new com.google.android.gms.ads.internal.client.zzn();
            zznVar.zzg(currentTimeMillis);
            zza2 = zznVar.zza();
        } else {
            zzeiVar.zzq(currentTimeMillis);
            zza2 = com.google.android.gms.ads.internal.client.zzr.zza.zza(this.zzb, this.zzd);
        }
        try {
            zza3.zzf(binderC3652rv, new zzbyy(this.zze, this.zzc.name(), null, zza2, 0, null), new zzbtu(this, queryInfoGenerationCallback));
        } catch (RemoteException unused) {
            queryInfoGenerationCallback.onFailure("Internal Error.");
        }
    }
}
