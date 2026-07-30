package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
final class zzcmj implements zzgcd {
    final /* synthetic */ zzfja zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ com.google.android.gms.ads.internal.util.client.zzv zzc;
    final /* synthetic */ zzcmk zzd;

    public zzcmj(zzcmk zzcmkVar, zzfja zzfjaVar, String str, com.google.android.gms.ads.internal.util.client.zzv zzvVar) {
        this.zza = zzfjaVar;
        this.zzb = str;
        this.zzc = zzvVar;
        this.zzd = zzcmkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(final Throwable th) {
        zzgcs zzgcsVar;
        zzgcsVar = this.zzd.zzg;
        final zzfja zzfjaVar = this.zza;
        final String str = this.zzb;
        final com.google.android.gms.ads.internal.util.client.zzv zzvVar = this.zzc;
        zzgcsVar.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmh
            @Override // java.lang.Runnable
            public final void run() {
                Context context;
                Context context2;
                boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkh)).booleanValue();
                zzcmj zzcmjVar = zzcmj.this;
                Throwable th2 = th;
                if (booleanValue) {
                    zzcmk zzcmkVar = zzcmjVar.zzd;
                    context2 = zzcmkVar.zzc;
                    zzcmkVar.zzb = zzbuh.zzc(context2);
                    zzcmjVar.zzd.zzb.zzh(th2, "AttributionReporting.registerSourceAndPingClickUrl");
                } else {
                    zzcmk zzcmkVar2 = zzcmjVar.zzd;
                    context = zzcmkVar2.zzc;
                    zzcmkVar2.zza = zzbuh.zza(context);
                    zzcmjVar.zzd.zza.zzh(th2, "AttributionReportingSampled.registerSourceAndPingClickUrl");
                }
                com.google.android.gms.ads.internal.util.client.zzv zzvVar2 = zzvVar;
                zzfjaVar.zzd(str, zzvVar2, null);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzgcs zzgcsVar;
        final zzfja zzfjaVar = this.zza;
        final String str = (String) obj;
        zzgcsVar = this.zzd.zzg;
        final com.google.android.gms.ads.internal.util.client.zzv zzvVar = this.zzc;
        zzgcsVar.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmi
            @Override // java.lang.Runnable
            public final void run() {
                zzfja.this.zzd(str, zzvVar, null);
            }
        });
    }
}
