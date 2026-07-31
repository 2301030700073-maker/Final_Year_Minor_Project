package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.TimeoutException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzbpj implements Runnable {
    final /* synthetic */ zzbqa zza;
    final /* synthetic */ zzbow zzb;
    final /* synthetic */ ArrayList zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ zzbqb zze;

    zzbpj(zzbqb zzbqbVar, zzbqa zzbqaVar, zzbow zzbowVar, ArrayList arrayList, long j) {
        this.zza = zzbqaVar;
        this.zzb = zzbowVar;
        this.zzc = arrayList;
        this.zzd = j;
        Objects.requireNonNull(zzbqbVar);
        this.zze = zzbqbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String sb;
        com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Trying to acquire lock");
        zzbqb zzbqbVar = this.zze;
        synchronized (zzbqbVar.zzf()) {
            com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Lock acquired");
            zzbqa zzbqaVar = this.zza;
            if (zzbqaVar.zzi() != -1 && zzbqaVar.zzi() != 1) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzip)).booleanValue()) {
                    zzbqaVar.zzh(new TimeoutException("Unable to fully load JS engine."), "SdkJavascriptFactory.loadJavascriptEngine.Runnable");
                } else {
                    zzbqaVar.zzg();
                }
                zzgus zzgusVar = zzcbv.zzf;
                final zzbow zzbowVar = this.zzb;
                Objects.requireNonNull(zzbowVar);
                zzgusVar.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbpi
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzbow.this.zzj();
                    }
                });
                String valueOf = String.valueOf(com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzd));
                int zzi = zzbqaVar.zzi();
                int zzj = zzbqbVar.zzj();
                ArrayList arrayList = this.zzc;
                if (arrayList.isEmpty()) {
                    sb = ". Still waiting for the engine to be loaded";
                } else {
                    String valueOf2 = String.valueOf(arrayList.get(0));
                    StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 88);
                    sb2.append(". While waiting for the /jsLoaded gmsg, observed the loadNewJavascriptEngine latency is ");
                    sb2.append(valueOf2);
                    sb = sb2.toString();
                }
                long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis() - this.zzd;
                StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf).length() + 107 + String.valueOf(zzi).length() + 36 + String.valueOf(zzj).length() + sb.length() + 39 + String.valueOf(currentTimeMillis).length() + 26);
                sb3.append("Could not finish the full JS engine loading in ");
                sb3.append(valueOf);
                sb3.append(" ms. JS engine session reference status(fullLoadTimeout) is ");
                sb3.append(zzi);
                sb3.append(". Update status(fullLoadTimeout) is ");
                sb3.append(zzj);
                sb3.append(sb);
                sb3.append(" ms. Total latency(fullLoadTimeout) is ");
                sb3.append(currentTimeMillis);
                sb3.append(" ms at timeout. Rejecting.");
                com.google.android.gms.ads.internal.util.zze.zza(sb3.toString());
                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Lock released");
                return;
            }
            com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Lock released, the promise is already settled");
        }
    }
}
