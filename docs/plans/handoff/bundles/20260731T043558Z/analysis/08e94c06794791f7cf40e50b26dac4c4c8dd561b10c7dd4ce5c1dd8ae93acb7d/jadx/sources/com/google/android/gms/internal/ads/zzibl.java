package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzibl extends zzhwo implements zzhya {
    private static final zzibl zze;
    private static volatile zzhyh zzf;
    private int zza;
    private zzhvi zzb;
    private zzhvi zzc;
    private zzhvi zzd;

    static {
        zzibl zziblVar = new zzibl();
        zze = zziblVar;
        zzhwo.zzbu(zzibl.class, zziblVar);
    }

    private zzibl() {
        zzhvi zzhviVar = zzhvi.zzb;
        this.zzb = zzhviVar;
        this.zzc = zzhviVar;
        this.zzd = zzhviVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zze, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ည\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"zza", "zzb", "zzc", "zzd"});
        }
        if (ordinal == 3) {
            return new zzibl();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzibk(bArr);
        }
        if (ordinal == 5) {
            return zze;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzf;
        if (zzhyhVar == null) {
            synchronized (zzibl.class) {
                zzhyhVar = zzf;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zze);
                    zzf = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }
}
