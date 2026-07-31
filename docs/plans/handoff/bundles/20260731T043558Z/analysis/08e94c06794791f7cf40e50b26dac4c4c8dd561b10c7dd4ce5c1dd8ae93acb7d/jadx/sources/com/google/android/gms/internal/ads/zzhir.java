package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhir extends zzhwo implements zzhya {
    private static final zzhir zze;
    private static volatile zzhyh zzf;
    private int zza;
    private int zzb;
    private zzhvi zzc = zzhvi.zzb;
    private zzhiv zzd;

    static {
        zzhir zzhirVar = new zzhir();
        zze = zzhirVar;
        zzhwo.zzbu(zzhir.class, zzhirVar);
    }

    private zzhir() {
    }

    public static zzhir zzd(zzhvi zzhviVar, zzhvy zzhvyVar) throws zzhxd {
        return (zzhir) zzhwo.zzbT(zze, zzhviVar, zzhvyVar);
    }

    public static zzhiq zze() {
        return (zzhiq) zze.zzbn();
    }

    public static zzhyh zzg() {
        return zze.zzbd();
    }

    public final int zza() {
        return this.zzb;
    }

    public final zzhvi zzb() {
        return this.zzc;
    }

    public final zzhiv zzc() {
        zzhiv zzhivVar = this.zzd;
        return zzhivVar == null ? zzhiv.zzc() : zzhivVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zze, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003ဉ\u0000", new Object[]{"zza", "zzb", "zzc", "zzd"});
        }
        if (ordinal == 3) {
            return new zzhir();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzhiq(bArr);
        }
        if (ordinal == 5) {
            return zze;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzf;
        if (zzhyhVar == null) {
            synchronized (zzhir.class) {
                zzhyhVar = zzf;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zze);
                    zzf = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ void zzh(zzhvi zzhviVar) {
        this.zzc = zzhviVar;
    }

    final /* synthetic */ void zzi(zzhiv zzhivVar) {
        zzhivVar.getClass();
        this.zzd = zzhivVar;
        this.zza |= 1;
    }
}
