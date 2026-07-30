package com.google.android.gms.internal.ads;

import defpackage.C2680eE;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzdiq {
    public static final zzdiq zza = new zzdiq(new zzdio());
    private final zzbgx zzb;
    private final zzbgu zzc;
    private final zzbhk zzd;
    private final zzbhh zze;
    private final zzbmi zzf;
    private final C2680eE zzg;
    private final C2680eE zzh;

    private zzdiq(zzdio zzdioVar) {
        this.zzb = zzdioVar.zza;
        this.zzc = zzdioVar.zzb;
        this.zzd = zzdioVar.zzc;
        this.zzg = new C2680eE(zzdioVar.zzf);
        this.zzh = new C2680eE(zzdioVar.zzg);
        this.zze = zzdioVar.zzd;
        this.zzf = zzdioVar.zze;
    }

    public final zzbgu zza() {
        return this.zzc;
    }

    public final zzbgx zzb() {
        return this.zzb;
    }

    public final zzbha zzc(String str) {
        return (zzbha) this.zzh.getOrDefault(str, null);
    }

    public final zzbhd zzd(String str) {
        if (str == null) {
            return null;
        }
        return (zzbhd) this.zzg.getOrDefault(str, null);
    }

    public final zzbhh zze() {
        return this.zze;
    }

    public final zzbhk zzf() {
        return this.zzd;
    }

    public final zzbmi zzg() {
        return this.zzf;
    }

    public final ArrayList zzh() {
        ArrayList arrayList = new ArrayList(this.zzg.f12632for);
        int i = 0;
        while (true) {
            C2680eE c2680eE = this.zzg;
            if (i >= c2680eE.f12632for) {
                return arrayList;
            }
            arrayList.add((String) c2680eE.m6527goto(i));
            i++;
        }
    }

    public final ArrayList zzi() {
        ArrayList arrayList = new ArrayList();
        if (this.zzd != null) {
            arrayList.add(Integer.toString(6));
        }
        if (this.zzb != null) {
            arrayList.add(Integer.toString(1));
        }
        if (this.zzc != null) {
            arrayList.add(Integer.toString(2));
        }
        if (!this.zzg.isEmpty()) {
            arrayList.add(Integer.toString(3));
        }
        if (this.zzf != null) {
            arrayList.add(Integer.toString(7));
        }
        return arrayList;
    }
}
