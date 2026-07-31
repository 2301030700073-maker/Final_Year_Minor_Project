package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzeaz implements zzguf {
    final /* synthetic */ zzebc zza;

    zzeaz(zzebc zzebcVar) {
        Objects.requireNonNull(zzebcVar);
        this.zza = zzebcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzguf
    public final void zza(Throwable th) {
        Pattern pattern;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzgL)).booleanValue()) {
            String message = th.getMessage();
            pattern = zzebc.zzh;
            Matcher matcher = pattern.matcher(message);
            if (matcher.matches()) {
                String group = matcher.group(1);
                zzebc zzebcVar = this.zza;
                zzebcVar.zzc().zzc(Integer.parseInt(group));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzguf
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzfgf zzfgfVar = (zzfgf) obj;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzgL)).booleanValue()) {
            zzebc zzebcVar = this.zza;
            zzffx zzffxVar = zzfgfVar.zzb.zzb;
            zzebcVar.zzc().zzc(zzffxVar.zzf);
            zzebcVar.zzc().zze(zzffxVar.zzg);
        }
    }
}
