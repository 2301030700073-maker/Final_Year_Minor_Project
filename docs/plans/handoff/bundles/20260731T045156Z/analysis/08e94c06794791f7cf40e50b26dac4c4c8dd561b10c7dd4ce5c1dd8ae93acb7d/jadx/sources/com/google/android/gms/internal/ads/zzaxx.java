package com.google.android.gms.internal.ads;

import android.view.View;
import com.braze.Constants;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzaxx implements zzftm {
    private final zzfru zza;
    private final zzfsi zzb;
    private final zzayk zzc;
    private final zzaxw zzd;
    private final zzaxg zze;
    private final zzaym zzf;
    private final zzaye zzg;
    private final zzaxv zzh;

    zzaxx(zzfru zzfruVar, zzfsi zzfsiVar, zzayk zzaykVar, zzaxw zzaxwVar, zzaxg zzaxgVar, zzaym zzaymVar, zzaye zzayeVar, zzaxv zzaxvVar) {
        this.zza = zzfruVar;
        this.zzb = zzfsiVar;
        this.zzc = zzaykVar;
        this.zzd = zzaxwVar;
        this.zze = zzaxgVar;
        this.zzf = zzaymVar;
        this.zzg = zzayeVar;
        this.zzh = zzaxvVar;
    }

    private final Map zzf() {
        HashMap hashMap = new HashMap();
        zzfru zzfruVar = this.zza;
        zzauz zzb = this.zzb.zzb();
        hashMap.put("v", zzfruVar.zza());
        hashMap.put("gms", Boolean.valueOf(zzfruVar.zzc()));
        hashMap.put("gv", Long.valueOf(zzb.zzd()));
        hashMap.put("int", zzb.zzb());
        hashMap.put("attts", Long.valueOf(zzb.zzh().zzb()));
        hashMap.put("att", zzb.zzh().zzd());
        hashMap.put("attkid", zzb.zzh().zzc());
        hashMap.put("up", Boolean.valueOf(this.zzd.zza()));
        hashMap.put(Constants.BRAZE_PUSH_TITLE_KEY, new Throwable());
        zzaye zzayeVar = this.zzg;
        if (zzayeVar != null) {
            hashMap.put("tcq", Long.valueOf(zzayeVar.zze()));
            hashMap.put("tpq", Long.valueOf(zzayeVar.zzd()));
            hashMap.put("tcv", Long.valueOf(zzayeVar.zzf()));
            hashMap.put("tpv", Long.valueOf(zzayeVar.zzg()));
            hashMap.put("tchv", Long.valueOf(zzayeVar.zzi()));
            hashMap.put("tphv", Long.valueOf(zzayeVar.zzh()));
            hashMap.put("tcc", Long.valueOf(zzayeVar.zzj()));
            hashMap.put("tpc", Long.valueOf(zzayeVar.zzk()));
            zzaxg zzaxgVar = this.zze;
            if (zzaxgVar != null) {
                hashMap.put("nt", Long.valueOf(zzaxgVar.zzc()));
            }
            zzaym zzaymVar = this.zzf;
            if (zzaymVar != null) {
                hashMap.put("vs", Long.valueOf(zzaymVar.zzc()));
                hashMap.put("vf", Long.valueOf(zzaymVar.zzd()));
            }
        }
        return hashMap;
    }

    final void zza(View view) {
        this.zzc.zza(view);
    }

    @Override // com.google.android.gms.internal.ads.zzftm
    public final Map zzb() {
        return zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzftm
    public final Map zzc() {
        zzaxv zzaxvVar = this.zzh;
        Map zzf = zzf();
        if (zzaxvVar != null) {
            zzf.put("vst", zzaxvVar.zzb());
        }
        return zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzftm
    public final Map zzd() {
        zzayk zzaykVar = this.zzc;
        Map zzf = zzf();
        zzf.put("lts", Long.valueOf(zzaykVar.zzc()));
        return zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzftm
    public final Map zze() {
        HashMap hashMap = new HashMap();
        hashMap.put(Constants.BRAZE_PUSH_TITLE_KEY, new Throwable());
        return hashMap;
    }
}
