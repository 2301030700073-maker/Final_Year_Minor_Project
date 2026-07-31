package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
final class zzhxq implements zzhys {
    private static final zzhxx zzb = new zzhxo();
    private final zzhxx zza;

    public zzhxq() {
        zzhxx zzhxxVar = zzb;
        int i = zzhuv.zza;
        zzhxp zzhxpVar = new zzhxp(zzhwh.zza(), zzhxxVar);
        byte[] bArr = zzhxb.zzb;
        this.zza = zzhxpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhys
    public final zzhyr zza(Class cls) {
        int i = zzhyt.zza;
        if (!zzhwo.class.isAssignableFrom(cls)) {
            int i2 = zzhuv.zza;
        }
        zzhxw zzc = this.zza.zzc(cls);
        if (zzc.zza()) {
            int i3 = zzhuv.zza;
            return zzhyd.zzh(zzhyt.zzF(), zzhwb.zza(), zzc.zzb());
        }
        int i4 = zzhuv.zza;
        return zzhyc.zzm(cls, zzc, zzhyg.zza(), zzhxm.zza(), zzhyt.zzF(), zzc.zzc() + (-1) != 1 ? zzhwb.zza() : null, zzhxv.zza());
    }
}
