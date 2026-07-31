package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhit extends zzhwo implements zzhya {
    private static final zzhit zzd;
    private static volatile zzhyh zze;
    private int zza;
    private int zzb;
    private zzhiv zzc;

    static {
        zzhit zzhitVar = new zzhit();
        zzd = zzhitVar;
        zzhwo.zzbu(zzhit.class, zzhitVar);
    }

    private zzhit() {
    }

    public static zzhit zzc(zzhvi zzhviVar, zzhvy zzhvyVar) throws zzhxd {
        return (zzhit) zzhwo.zzbT(zzd, zzhviVar, zzhvyVar);
    }

    public static zzhis zzd() {
        return (zzhis) zzd.zzbn();
    }

    public final int zza() {
        return this.zzb;
    }

    public final zzhiv zzb() {
        zzhiv zzhivVar = this.zzc;
        return zzhivVar == null ? zzhiv.zzc() : zzhivVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzd, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000", new Object[]{"zza", "zzb", "zzc"});
        }
        if (ordinal == 3) {
            return new zzhit();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzhis(bArr);
        }
        if (ordinal == 5) {
            return zzd;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zze;
        if (zzhyhVar == null) {
            synchronized (zzhit.class) {
                zzhyhVar = zze;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzd);
                    zze = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ void zze(int i) {
        this.zzb = i;
    }

    final /* synthetic */ void zzg(zzhiv zzhivVar) {
        zzhivVar.getClass();
        this.zzc = zzhivVar;
        this.zza |= 1;
    }
}
