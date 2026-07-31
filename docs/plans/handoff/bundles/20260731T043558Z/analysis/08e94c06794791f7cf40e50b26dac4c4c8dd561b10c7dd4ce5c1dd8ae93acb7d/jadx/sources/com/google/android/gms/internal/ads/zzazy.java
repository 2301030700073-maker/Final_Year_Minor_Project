package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzazy extends zzhwo implements zzhya {
    private static final zzazy zzc;
    private static volatile zzhyh zzd;
    private int zza;
    private zzbae zzb;

    static {
        zzazy zzazyVar = new zzazy();
        zzc = zzazyVar;
        zzhwo.zzbu(zzazy.class, zzazyVar);
    }

    private zzazy() {
    }

    public static zzazy zzb(byte[] bArr, zzhvy zzhvyVar) throws zzhxd {
        return (zzazy) zzhwo.zzbV(zzc, bArr, zzhvyVar);
    }

    public final zzbae zza() {
        zzbae zzbaeVar = this.zzb;
        return zzbaeVar == null ? zzbae.zze() : zzbaeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzc, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဉ\u0000", new Object[]{"zza", "zzb"});
        }
        if (ordinal == 3) {
            return new zzazy();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzazx(bArr);
        }
        if (ordinal == 5) {
            return zzc;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzd;
        if (zzhyhVar == null) {
            synchronized (zzazy.class) {
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
