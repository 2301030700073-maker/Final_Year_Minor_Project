package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbag extends zzhwo implements zzhya {
    private static final zzbag zzf;
    private static volatile zzhyh zzg;
    private int zza;
    private zzbak zzb;
    private zzhvi zzc = zzhvi.zzb;
    private long zzd;
    private long zze;

    static {
        zzbag zzbagVar = new zzbag();
        zzf = zzbagVar;
        zzhwo.zzbu(zzbag.class, zzbagVar);
    }

    private zzbag() {
    }

    public static zzbag zzc() {
        return zzf;
    }

    public final zzhvi zza() {
        return this.zzc;
    }

    public final long zzb() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzf, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ည\u0001\u0003ဂ\u0002\u0004ဂ\u0003", new Object[]{"zza", "zzb", "zzc", "zzd", "zze"});
        }
        if (ordinal == 3) {
            return new zzbag();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzbaf(bArr);
        }
        if (ordinal == 5) {
            return zzf;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzg;
        if (zzhyhVar == null) {
            synchronized (zzbag.class) {
                zzhyhVar = zzg;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzf);
                    zzg = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }
}
