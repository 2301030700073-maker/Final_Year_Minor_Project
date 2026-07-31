package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbae extends zzhwo implements zzhya {
    private static final zzbae zzd;
    private static volatile zzhyh zze;
    private int zza;
    private zzbag zzb;
    private zzhvi zzc = zzhvi.zzb;

    static {
        zzbae zzbaeVar = new zzbae();
        zzd = zzbaeVar;
        zzhwo.zzbu(zzbae.class, zzbaeVar);
    }

    private zzbae() {
    }

    public static zzbae zze() {
        return zzd;
    }

    public final boolean zza() {
        return (this.zza & 1) != 0;
    }

    public final zzbag zzb() {
        zzbag zzbagVar = this.zzb;
        return zzbagVar == null ? zzbag.zzc() : zzbagVar;
    }

    public final boolean zzc() {
        return (this.zza & 2) != 0;
    }

    public final zzhvi zzd() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzd, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ည\u0001", new Object[]{"zza", "zzb", "zzc"});
        }
        if (ordinal == 3) {
            return new zzbae();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzbad(bArr);
        }
        if (ordinal == 5) {
            return zzd;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zze;
        if (zzhyhVar == null) {
            synchronized (zzbae.class) {
                zzhyhVar = zze;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzd);
                    zze = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }
}
