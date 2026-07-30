package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class zzgzg implements zzgzv {
    private final zzgzc zza;
    private final zzhah zzb;
    private final boolean zzc;
    private final zzgxc zzd;

    private zzgzg(zzhah zzhahVar, zzgxc zzgxcVar, zzgzc zzgzcVar) {
        this.zzb = zzhahVar;
        this.zzc = zzgzcVar instanceof zzgxn;
        this.zzd = zzgxcVar;
        this.zza = zzgzcVar;
    }

    public static zzgzg zzc(zzhah zzhahVar, zzgxc zzgxcVar, zzgzc zzgzcVar) {
        return new zzgzg(zzhahVar, zzgxcVar, zzgzcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgzv
    public final int zza(Object obj) {
        int zzb = ((zzgxr) obj).zzt.zzb();
        return this.zzc ? zzb + ((zzgxn) obj).zza.zzd() : zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgzv
    public final int zzb(Object obj) {
        int hashCode = ((zzgxr) obj).zzt.hashCode();
        return this.zzc ? (hashCode * 53) + ((zzgxn) obj).zza.zza.hashCode() : hashCode;
    }

    @Override // com.google.android.gms.internal.ads.zzgzv
    public final Object zze() {
        zzgzc zzgzcVar = this.zza;
        return zzgzcVar instanceof zzgxr ? ((zzgxr) zzgzcVar).zzbj() : zzgzcVar.zzcX().zzbs();
    }

    @Override // com.google.android.gms.internal.ads.zzgzv
    public final void zzf(Object obj) {
        this.zzb.zzi(obj);
        this.zzd.zza(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgzv
    public final void zzg(Object obj, Object obj2) {
        zzgzx.zzq(this.zzb, obj, obj2);
        if (this.zzc) {
            zzgzx.zzp(this.zzd, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgzv
    public final void zzh(Object obj, zzgzp zzgzpVar, zzgxb zzgxbVar) {
        this.zzb.zza(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgzv
    public final void zzi(Object obj, byte[] bArr, int i, int i2, zzgvx zzgvxVar) {
        zzgxr zzgxrVar = (zzgxr) obj;
        if (zzgxrVar.zzt == zzhai.zzc()) {
            zzgxrVar.zzt = zzhai.zzf();
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgzv
    public final void zzj(Object obj, zzhaw zzhawVar) {
        Iterator zzf = ((zzgxn) obj).zza.zzf();
        while (zzf.hasNext()) {
            Map.Entry entry = (Map.Entry) zzf.next();
            zzgxf zzgxfVar = (zzgxf) entry.getKey();
            if (zzgxfVar.zzc() != zzhav.MESSAGE || zzgxfVar.zze() || zzgxfVar.zzd()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (entry instanceof zzgyj) {
                zzhawVar.zzw(zzgxfVar.zza(), ((zzgyj) entry).zza().zzb());
            } else {
                zzhawVar.zzw(zzgxfVar.zza(), entry.getValue());
            }
        }
        ((zzgxr) obj).zzt.zzk(zzhawVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgzv
    public final boolean zzk(Object obj, Object obj2) {
        if (!((zzgxr) obj).zzt.equals(((zzgxr) obj2).zzt)) {
            return false;
        }
        if (this.zzc) {
            return ((zzgxn) obj).zza.equals(((zzgxn) obj2).zza);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzgzv
    public final boolean zzl(Object obj) {
        return ((zzgxn) obj).zza.zzi();
    }
}
