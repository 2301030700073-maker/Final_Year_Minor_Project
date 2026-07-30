package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzefs implements zzedc {
    private final Context zza;
    private final zzdgq zzb;
    private final Executor zzc;

    public zzefs(Context context, zzdgq zzdgqVar, Executor executor) {
        this.zza = context;
        this.zzb = zzdgqVar;
        this.zzc = executor;
    }

    private static final boolean zzc(zzfca zzfcaVar, int i) {
        return zzfcaVar.zza.zza.zzg.contains(Integer.toString(i));
    }

    @Override // com.google.android.gms.internal.ads.zzedc
    public final /* bridge */ /* synthetic */ Object zza(zzfca zzfcaVar, zzfbo zzfboVar, zzecz zzeczVar) {
        zzdif zzah;
        zzbpp zzD = ((zzfdh) zzeczVar.zzb).zzD();
        zzbpq zzE = ((zzfdh) zzeczVar.zzb).zzE();
        zzbpt zzd = ((zzfdh) zzeczVar.zzb).zzd();
        if (zzd != null && zzc(zzfcaVar, 6)) {
            zzah = zzdif.zzt(zzd);
        } else if (zzD != null && zzc(zzfcaVar, 6)) {
            zzah = zzdif.zzai(zzD);
        } else if (zzD != null && zzc(zzfcaVar, 2)) {
            zzah = zzdif.zzag(zzD);
        } else if (zzE != null && zzc(zzfcaVar, 6)) {
            zzah = zzdif.zzaj(zzE);
        } else {
            if (zzE == null || !zzc(zzfcaVar, 1)) {
                throw new zzegu(1, "No native ad mappers");
            }
            zzah = zzdif.zzah(zzE);
        }
        if (zzah != null) {
            zzfcj zzfcjVar = zzfcaVar.zza.zza;
            if (zzfcjVar.zzg.contains(Integer.toString(zzah.zzc()))) {
                zzdih zze = this.zzb.zze(new zzcrp(zzfcaVar, zzfboVar, zzeczVar.zza), new zzdir(zzah), new zzdkk(zzE, zzD, zzd));
                ((zzees) zzeczVar.zzc).zzc(zze.zzk());
                zze.zzd().zzo(new zzcma((zzfdh) zzeczVar.zzb), this.zzc);
                return zze.zza();
            }
        }
        throw new zzegu(1, "No corresponding native ad listener");
    }

    @Override // com.google.android.gms.internal.ads.zzedc
    public final void zzb(zzfca zzfcaVar, zzfbo zzfboVar, zzecz zzeczVar) {
        zzfdh zzfdhVar = (zzfdh) zzeczVar.zzb;
        zzfcj zzfcjVar = zzfcaVar.zza.zza;
        String jSONObject = zzfboVar.zzv.toString();
        String zzm = com.google.android.gms.ads.internal.util.zzbs.zzm(zzfboVar.zzs);
        zzbpk zzbpkVar = (zzbpk) zzeczVar.zzc;
        zzfcj zzfcjVar2 = zzfcaVar.zza.zza;
        zzfdhVar.zzp(this.zza, zzfcjVar.zzd, jSONObject, zzm, zzbpkVar, zzfcjVar2.zzi, zzfcjVar2.zzg);
    }
}
