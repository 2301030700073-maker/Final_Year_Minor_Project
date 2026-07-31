package com.google.android.gms.internal.ads;

import java.io.InputStream;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public abstract class zzhut implements zzhyh {
    static {
        int i = zzhvy.zzb;
        int i2 = zzhuv.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzhyh
    public final /* synthetic */ Object zza(InputStream inputStream, zzhvy zzhvyVar) throws zzhxd {
        zzhzb zzaU;
        zzhvn zzF = zzhvn.zzF(inputStream, 4096);
        zzhxz zzhxzVar = (zzhxz) zzb(zzF, zzhvyVar);
        zzF.zzb(0);
        if (zzhxzVar == null || zzhxzVar.zzbi()) {
            return zzhxzVar;
        }
        if (zzhxzVar instanceof zzhur) {
            zzaU = ((zzhur) zzhxzVar).zzaU();
        } else {
            if (zzhxzVar instanceof zzhus) {
                throw null;
            }
            zzaU = new zzhzb(zzhxzVar);
        }
        throw zzaU.zza();
    }
}
