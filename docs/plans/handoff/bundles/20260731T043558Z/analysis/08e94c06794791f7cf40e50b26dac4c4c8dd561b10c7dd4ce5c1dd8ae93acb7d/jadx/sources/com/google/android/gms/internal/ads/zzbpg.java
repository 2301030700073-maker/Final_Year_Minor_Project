package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzbpg implements zzblx {
    final /* synthetic */ long zza;
    final /* synthetic */ zzbqa zzb;
    final /* synthetic */ zzbow zzc;
    final /* synthetic */ zzbqb zzd;

    zzbpg(zzbqb zzbqbVar, long j, zzbqa zzbqaVar, zzbow zzbowVar) {
        this.zza = j;
        this.zzb = zzbqaVar;
        this.zzc = zzbowVar;
        Objects.requireNonNull(zzbqbVar);
        this.zzd = zzbqbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzblx
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis() - this.zza;
        StringBuilder sb = new StringBuilder(String.valueOf(currentTimeMillis).length() + 42);
        sb.append("onGmsg /jsLoaded. JsLoaded latency is ");
        sb.append(currentTimeMillis);
        sb.append(" ms.");
        com.google.android.gms.ads.internal.util.zze.zza(sb.toString());
        com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > /jsLoaded handler: Trying to acquire lock");
        zzbqb zzbqbVar = this.zzd;
        synchronized (zzbqbVar.zzf()) {
            com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > /jsLoaded handler: Lock acquired");
            zzbqa zzbqaVar = this.zzb;
            if (zzbqaVar.zzi() != -1 && zzbqaVar.zzi() != 1) {
                zzbqbVar.zzk(0);
                zzbow zzbowVar = this.zzc;
                zzbow zzbowVar2 = zzbowVar;
                zzbowVar.zzm("/log", zzblw.zzg);
                zzbowVar.zzm("/result", zzblw.zzo);
                zzbqaVar.zzf(zzbowVar);
                zzbqbVar.zzi(zzbqaVar);
                com.google.android.gms.ads.internal.util.zze.zza("Successfully loaded JS Engine.");
                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > /jsLoaded handler: Lock released");
                return;
            }
            com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > /jsLoaded handler: Lock released, the promise is already settled");
        }
    }
}
