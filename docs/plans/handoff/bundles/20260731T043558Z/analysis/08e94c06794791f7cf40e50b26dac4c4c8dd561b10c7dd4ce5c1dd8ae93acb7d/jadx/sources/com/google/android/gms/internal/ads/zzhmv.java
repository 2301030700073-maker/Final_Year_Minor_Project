package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhmv extends zzhwo implements zzhya {
    private static final zzhmv zzb;
    private static volatile zzhyh zzc;
    private int zza;

    static {
        zzhmv zzhmvVar = new zzhmv();
        zzb = zzhmvVar;
        zzhwo.zzbu(zzhmv.class, zzhmvVar);
    }

    private zzhmv() {
    }

    public static zzhmv zzb(zzhvi zzhviVar, zzhvy zzhvyVar) throws zzhxd {
        return (zzhmv) zzhwo.zzbT(zzb, zzhviVar, zzhvyVar);
    }

    public static zzhmv zzc() {
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
            return new zzhmv();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzhmu(bArr);
        }
        if (ordinal == 5) {
            return zzb;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzc;
        if (zzhyhVar == null) {
            synchronized (zzhmv.class) {
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
