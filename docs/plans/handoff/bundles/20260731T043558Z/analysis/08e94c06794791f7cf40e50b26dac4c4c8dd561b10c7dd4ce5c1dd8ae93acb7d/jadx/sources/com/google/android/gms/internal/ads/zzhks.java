package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhks extends zzhwo implements zzhya {
    private static final zzhks zze;
    private static volatile zzhyh zzf;
    private int zza;
    private zzhku zzb;
    private int zzc;
    private int zzd;

    static {
        zzhks zzhksVar = new zzhks();
        zze = zzhksVar;
        zzhwo.zzbu(zzhks.class, zzhksVar);
    }

    private zzhks() {
    }

    public static zzhks zzd(zzhvi zzhviVar, zzhvy zzhvyVar) throws zzhxd {
        return (zzhks) zzhwo.zzbT(zze, zzhviVar, zzhvyVar);
    }

    public static zzhkr zze() {
        return (zzhkr) zze.zzbn();
    }

    public static zzhks zzg() {
        return zze;
    }

    public final zzhku zza() {
        zzhku zzhkuVar = this.zzb;
        return zzhkuVar == null ? zzhku.zzd() : zzhkuVar;
    }

    public final int zzb() {
        return this.zzc;
    }

    public final int zzc() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zze, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u000b\u0003\u000b", new Object[]{"zza", "zzb", "zzc", "zzd"});
        }
        if (ordinal == 3) {
            return new zzhks();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzhkr(bArr);
        }
        if (ordinal == 5) {
            return zze;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzf;
        if (zzhyhVar == null) {
            synchronized (zzhks.class) {
                zzhyhVar = zzf;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zze);
                    zzf = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ void zzh(zzhku zzhkuVar) {
        zzhkuVar.getClass();
        this.zzb = zzhkuVar;
        this.zza |= 1;
    }

    final /* synthetic */ void zzi(int i) {
        this.zzc = i;
    }
}
