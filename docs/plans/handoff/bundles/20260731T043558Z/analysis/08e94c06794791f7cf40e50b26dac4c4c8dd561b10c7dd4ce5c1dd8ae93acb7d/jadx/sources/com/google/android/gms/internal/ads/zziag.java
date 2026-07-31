package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zziag extends zzhwo implements zzhya {
    private static final zziag zzc;
    private static volatile zzhyh zzd;
    private zzhww zza = zzbC();
    private zzhww zzb = zzbC();

    static {
        zziag zziagVar = new zziag();
        zzc = zziagVar;
        zzhwo.zzbu(zziag.class, zziagVar);
    }

    private zziag() {
    }

    public static zziag zzc(byte[] bArr, zzhvy zzhvyVar) throws zzhxd {
        return (zziag) zzhwo.zzbV(zzc, bArr, zzhvyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzc, "\u0004\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0002\u0000\u0001\u0016\u0003\u0016", new Object[]{"zza", "zzb"});
        }
        if (ordinal == 3) {
            return new zziag();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zziaf(bArr);
        }
        if (ordinal == 5) {
            return zzc;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzd;
        if (zzhyhVar == null) {
            synchronized (zziag.class) {
                zzhyhVar = zzd;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzc);
                    zzd = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }
}
