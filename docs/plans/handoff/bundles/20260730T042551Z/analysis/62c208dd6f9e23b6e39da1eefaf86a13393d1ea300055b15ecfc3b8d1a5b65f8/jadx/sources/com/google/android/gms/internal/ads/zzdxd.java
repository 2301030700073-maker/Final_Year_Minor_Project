package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
final class zzdxd implements zzgcd {
    final /* synthetic */ zzdxe zza;

    public zzdxd(zzdxe zzdxeVar) {
        this.zza = zzdxeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(Throwable th) {
        Pattern pattern;
        zzeag zzeagVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgb)).booleanValue()) {
            pattern = zzdxe.zza;
            Matcher matcher = pattern.matcher(th.getMessage());
            if (matcher.matches()) {
                String group = matcher.group(1);
                zzeagVar = this.zza.zzf;
                zzeagVar.zzi(Integer.parseInt(group));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzeag zzeagVar;
        zzeag zzeagVar2;
        zzfca zzfcaVar = (zzfca) obj;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgb)).booleanValue()) {
            zzeagVar = this.zza.zzf;
            zzeagVar.zzi(zzfcaVar.zzb.zzb.zzf);
            zzeagVar2 = this.zza.zzf;
            zzeagVar2.zzj(zzfcaVar.zzb.zzb.zzg);
        }
    }
}
