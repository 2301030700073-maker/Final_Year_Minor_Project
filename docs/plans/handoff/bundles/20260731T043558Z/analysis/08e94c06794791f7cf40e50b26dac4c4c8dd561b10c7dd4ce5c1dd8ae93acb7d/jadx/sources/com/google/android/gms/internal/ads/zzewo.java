package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzewo implements zzexy {
    private final String zza;
    private final Integer zzb;
    private final String zzc;
    private final String zzd;
    private final String zze;
    private final String zzf;

    public zzewo(String str, Integer num, String str2, String str3, String str4, String str5) {
        this.zza = str;
        this.zzb = num;
        this.zzc = str2;
        this.zzd = str3;
        this.zze = str4;
        this.zzf = str5;
    }

    @Override // com.google.android.gms.internal.ads.zzexy
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Bundle bundle = ((zzcxq) obj).zza;
        zzfhc.zze(bundle, "pn", this.zza);
        zzfhc.zzh(bundle, "vc", this.zzb);
        zzfhc.zze(bundle, "vnm", this.zzc);
        zzfhc.zze(bundle, CmcdConfiguration.KEY_DEADLINE, this.zzd);
        zzfhc.zze(bundle, "ins_pn", this.zze);
        zzfhc.zze(bundle, "ini_pn", this.zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzexy
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        Bundle bundle = ((zzcxq) obj).zzb;
        zzfhc.zze(bundle, "pn", this.zza);
        zzfhc.zze(bundle, CmcdConfiguration.KEY_DEADLINE, this.zzd);
    }
}
