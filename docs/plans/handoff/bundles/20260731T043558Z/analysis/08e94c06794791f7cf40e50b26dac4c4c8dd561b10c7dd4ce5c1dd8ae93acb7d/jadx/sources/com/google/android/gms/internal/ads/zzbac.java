package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbac extends zzhwo implements zzhya {
    private static final zzbac zze;
    private static volatile zzhyh zzf;
    private int zza;
    private zzbai zzb;
    private zzhvi zzc;
    private zzhvi zzd;

    static {
        zzbac zzbacVar = new zzbac();
        zze = zzbacVar;
        zzhwo.zzbu(zzbac.class, zzbacVar);
    }

    private zzbac() {
        zzhvi zzhviVar = zzhvi.zzb;
        this.zzc = zzhviVar;
        this.zzd = zzhviVar;
    }

    public static zzbac zzd(zzhvi zzhviVar, zzhvy zzhvyVar) throws zzhxd {
        return (zzbac) zzhwo.zzbT(zze, zzhviVar, zzhvyVar);
    }

    public static zzbac zze(byte[] bArr, zzhvy zzhvyVar) throws zzhxd {
        return (zzbac) zzhwo.zzbV(zze, bArr, zzhvyVar);
    }

    public final zzbai zza() {
        zzbai zzbaiVar = this.zzb;
        return zzbaiVar == null ? zzbai.zzj() : zzbaiVar;
    }

    public final zzhvi zzb() {
        return this.zzc;
    }

    public final zzhvi zzc() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zze, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"zza", "zzb", "zzc", "zzd"});
        }
        if (ordinal == 3) {
            return new zzbac();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzbab(bArr);
        }
        if (ordinal == 5) {
            return zze;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzf;
        if (zzhyhVar == null) {
            synchronized (zzbac.class) {
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
