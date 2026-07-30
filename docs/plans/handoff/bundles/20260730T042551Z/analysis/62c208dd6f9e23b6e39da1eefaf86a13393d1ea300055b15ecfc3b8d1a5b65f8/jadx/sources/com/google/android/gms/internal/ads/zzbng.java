package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.ArrayList;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
final class zzbng implements Runnable {
    final /* synthetic */ zzbnr zza;
    final /* synthetic */ zzbmn zzb;
    final /* synthetic */ ArrayList zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ zzbns zze;

    public zzbng(zzbns zzbnsVar, zzbnr zzbnrVar, zzbmn zzbmnVar, ArrayList arrayList, long j) {
        this.zza = zzbnrVar;
        this.zzb = zzbmnVar;
        this.zzc = arrayList;
        this.zzd = j;
        this.zze = zzbnsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        int i;
        com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Trying to acquire lock");
        obj = this.zze.zza;
        synchronized (obj) {
            com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Lock acquired");
            if (this.zza.zze() != -1 && this.zza.zze() != 1) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhB)).booleanValue()) {
                    this.zza.zzh(new TimeoutException("Unable to fully load JS engine."), "SdkJavascriptFactory.loadJavascriptEngine.Runnable");
                } else {
                    this.zza.zzg();
                }
                zzgcs zzgcsVar = zzbzw.zzf;
                final zzbmn zzbmnVar = this.zzb;
                Objects.requireNonNull(zzbmnVar);
                zzgcsVar.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbnf
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzbmn.this.zzc();
                    }
                });
                String valueOf = String.valueOf(com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzc));
                int zze = this.zza.zze();
                i = this.zze.zzi;
                String concat = this.zzc.isEmpty() ? ". Still waiting for the engine to be loaded" : ". While waiting for the /jsLoaded gmsg, observed the loadNewJavascriptEngine latency is ".concat(String.valueOf(this.zzc.get(0)));
                com.google.android.gms.ads.internal.util.zze.zza("Could not finish the full JS engine loading in " + valueOf + " ms. JS engine session reference status(fullLoadTimeout) is " + zze + ". Update status(fullLoadTimeout) is " + i + concat + " ms. Total latency(fullLoadTimeout) is " + (com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis() - this.zzd) + " ms at timeout. Rejecting.");
                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Lock released");
                return;
            }
            com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Lock released, the promise is already settled");
        }
    }
}
