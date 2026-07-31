package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
final class zzhyd implements zzhyr {
    private final zzhxz zza;
    private final zzhzc zzb;
    private final boolean zzc;
    private final zzhvz zzd;

    private zzhyd(zzhzc zzhzcVar, zzhvz zzhvzVar, zzhxz zzhxzVar) {
        this.zzb = zzhzcVar;
        this.zzc = zzhxzVar instanceof zzhwk;
        this.zzd = zzhvzVar;
        this.zza = zzhxzVar;
    }

    static zzhyd zzh(zzhzc zzhzcVar, zzhvz zzhvzVar, zzhxz zzhxzVar) {
        return new zzhyd(zzhzcVar, zzhvzVar, zzhxzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhyr
    public final Object zza() {
        zzhxz zzhxzVar = this.zza;
        return zzhxzVar instanceof zzhwo ? ((zzhwo) zzhxzVar).zzbg() : zzhxzVar.zzdd().zzbt();
    }

    @Override // com.google.android.gms.internal.ads.zzhyr
    public final boolean zzb(Object obj, Object obj2) {
        if (!((zzhwo) obj).zzt.equals(((zzhwo) obj2).zzt)) {
            return false;
        }
        if (this.zzc) {
            return ((zzhwk) obj).zza.equals(((zzhwk) obj2).zza);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzhyr
    public final int zzc(Object obj) {
        int hashCode = ((zzhwo) obj).zzt.hashCode();
        return this.zzc ? (hashCode * 53) + ((zzhwk) obj).zza.zza.hashCode() : hashCode;
    }

    @Override // com.google.android.gms.internal.ads.zzhyr
    public final void zzd(Object obj, Object obj2) {
        zzhyt.zzI(this.zzb, obj, obj2);
        if (this.zzc) {
            zzhyt.zzH(this.zzd, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhyr
    public final int zze(Object obj) {
        int zzh = ((zzhwo) obj).zzt.zzh();
        return this.zzc ? zzh + ((zzhwk) obj).zza.zzg() : zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzhyr
    public final void zzf(Object obj, zzhzr zzhzrVar) throws IOException {
        Iterator zzc = ((zzhwk) obj).zza.zzc();
        while (zzc.hasNext()) {
            Map.Entry entry = (Map.Entry) zzc.next();
            zzhwc zzhwcVar = (zzhwc) entry.getKey();
            if (zzhwcVar.zzc() != zzhzq.MESSAGE || zzhwcVar.zzd() || zzhwcVar.zze()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (entry instanceof zzhxg) {
                zzhzrVar.zzv(zzhwcVar.zza(), ((zzhxg) entry).zza().zzc());
            } else {
                zzhzrVar.zzv(zzhwcVar.zza(), entry.getValue());
            }
        }
        ((zzhwo) obj).zzt.zzf(zzhzrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhyr
    public final void zzg(Object obj, zzhym zzhymVar, zzhvy zzhvyVar) throws IOException {
        this.zzb.zzh(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzhyr
    public final void zzj(Object obj, byte[] bArr, int i, int i2, zzhuw zzhuwVar) throws IOException {
        zzhwo zzhwoVar = (zzhwo) obj;
        if (zzhwoVar.zzt == zzhzd.zza()) {
            zzhwoVar.zzt = zzhzd.zzb();
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzhyr
    public final void zzk(Object obj) {
        this.zzb.zzj(obj);
        this.zzd.zza(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzhyr
    public final boolean zzl(Object obj) {
        return ((zzhwk) obj).zza.zze();
    }
}
