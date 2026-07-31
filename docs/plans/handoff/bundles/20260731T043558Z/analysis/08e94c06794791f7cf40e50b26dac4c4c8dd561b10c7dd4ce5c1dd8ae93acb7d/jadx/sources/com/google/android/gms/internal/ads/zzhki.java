package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhki extends zzhwo implements zzhya {
    private static final zzhki zzb;
    private static volatile zzhyh zzc;
    private int zza;

    static {
        zzhki zzhkiVar = new zzhki();
        zzb = zzhkiVar;
        zzhwo.zzbu(zzhki.class, zzhkiVar);
    }

    private zzhki() {
    }

    public static zzhki zzb(zzhvi zzhviVar, zzhvy zzhvyVar) throws zzhxd {
        return (zzhki) zzhwo.zzbT(zzb, zzhviVar, zzhvyVar);
    }

    public static zzhki zzc() {
        return zzb;
    }

    public final int zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zza"});
        }
        if (ordinal == 3) {
            return new zzhki();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzhkh(bArr);
        }
        if (ordinal == 5) {
            return zzb;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzc;
        if (zzhyhVar == null) {
            synchronized (zzhki.class) {
                zzhyhVar = zzc;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzb);
                    zzc = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }
}
