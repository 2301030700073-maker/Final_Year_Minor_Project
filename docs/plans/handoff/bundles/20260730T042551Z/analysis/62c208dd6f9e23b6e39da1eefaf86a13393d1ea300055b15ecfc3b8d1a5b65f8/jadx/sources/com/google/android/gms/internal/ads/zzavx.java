package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
final class zzavx implements zzfph {
    private final zzfnk zza;
    private final zzfob zzb;
    private final zzawk zzc;
    private final zzavw zzd;
    private final zzavg zze;
    private final zzawm zzf;
    private final zzawe zzg;
    private final zzavv zzh;

    public zzavx(zzfnk zzfnkVar, zzfob zzfobVar, zzawk zzawkVar, zzavw zzavwVar, zzavg zzavgVar, zzawm zzawmVar, zzawe zzaweVar, zzavv zzavvVar) {
        this.zza = zzfnkVar;
        this.zzb = zzfobVar;
        this.zzc = zzawkVar;
        this.zzd = zzavwVar;
        this.zze = zzavgVar;
        this.zzf = zzawmVar;
        this.zzg = zzaweVar;
        this.zzh = zzavvVar;
    }

    private final Map zze() {
        HashMap hashMap = new HashMap();
        zzfnk zzfnkVar = this.zza;
        zzasy zzb = this.zzb.zzb();
        hashMap.put("v", zzfnkVar.zzd());
        hashMap.put("gms", Boolean.valueOf(this.zza.zzg()));
        hashMap.put("int", zzb.zzh());
        hashMap.put("attts", Long.valueOf(zzb.zzf().zza()));
        hashMap.put("att", zzb.zzf().zzd());
        hashMap.put("attkid", zzb.zzf().zzf());
        hashMap.put("up", Boolean.valueOf(this.zzd.zza()));
        hashMap.put("t", new Throwable());
        zzawe zzaweVar = this.zzg;
        if (zzaweVar != null) {
            hashMap.put("tcq", Long.valueOf(zzaweVar.zzc()));
            hashMap.put("tpq", Long.valueOf(this.zzg.zzg()));
            hashMap.put("tcv", Long.valueOf(this.zzg.zzd()));
            hashMap.put("tpv", Long.valueOf(this.zzg.zzh()));
            hashMap.put("tchv", Long.valueOf(this.zzg.zzb()));
            hashMap.put("tphv", Long.valueOf(this.zzg.zzf()));
            hashMap.put("tcc", Long.valueOf(this.zzg.zza()));
            hashMap.put("tpc", Long.valueOf(this.zzg.zze()));
            zzavg zzavgVar = this.zze;
            if (zzavgVar != null) {
                hashMap.put("nt", Long.valueOf(zzavgVar.zza()));
            }
            zzawm zzawmVar = this.zzf;
            if (zzawmVar != null) {
                hashMap.put("vs", Long.valueOf(zzawmVar.zzc()));
                hashMap.put("vf", Long.valueOf(this.zzf.zzb()));
            }
        }
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.zzfph
    public final Map zza() {
        zzawk zzawkVar = this.zzc;
        Map zze = zze();
        zze.put("lts", Long.valueOf(zzawkVar.zza()));
        return zze;
    }

    @Override // com.google.android.gms.internal.ads.zzfph
    public final Map zzb() {
        Map zze = zze();
        zzasy zza = this.zzb.zza();
        zze.put("gai", Boolean.valueOf(this.zza.zzh()));
        zze.put("did", zza.zzg());
        zze.put("dst", Integer.valueOf(zza.zzal() - 1));
        zze.put("doo", Boolean.valueOf(zza.zzai()));
        return zze;
    }

    @Override // com.google.android.gms.internal.ads.zzfph
    public final Map zzc() {
        zzavv zzavvVar = this.zzh;
        Map zze = zze();
        if (zzavvVar != null) {
            zze.put("vst", zzavvVar.zza());
        }
        return zze;
    }

    public final void zzd(View view) {
        this.zzc.zzd(view);
    }
}
