package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhmp extends zzhwo implements zzhya {
    private static final zzhmp zzd;
    private static volatile zzhyh zze;
    private int zza;
    private int zzb;
    private zzhmr zzc;

    static {
        zzhmp zzhmpVar = new zzhmp();
        zzd = zzhmpVar;
        zzhwo.zzbu(zzhmp.class, zzhmpVar);
    }

    private zzhmp() {
    }

    public static zzhmp zzc(zzhvi zzhviVar, zzhvy zzhvyVar) throws zzhxd {
        return (zzhmp) zzhwo.zzbT(zzd, zzhviVar, zzhvyVar);
    }

    public static zzhmo zzd() {
        return (zzhmo) zzd.zzbn();
    }

    public final int zza() {
        return this.zzb;
    }

    public final zzhmr zzb() {
        zzhmr zzhmrVar = this.zzc;
        return zzhmrVar == null ? zzhmr.zzc() : zzhmrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzd, "\u0000\u0002\u0000\u0001\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003ဉ\u0000", new Object[]{"zza", "zzb", "zzc"});
        }
        if (ordinal == 3) {
            return new zzhmp();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzhmo(bArr);
        }
        if (ordinal == 5) {
            return zzd;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zze;
        if (zzhyhVar == null) {
            synchronized (zzhmp.class) {
                zzhyhVar = zze;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzd);
                    zze = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ void zze(zzhmr zzhmrVar) {
        zzhmrVar.getClass();
        this.zzc = zzhmrVar;
        this.zza |= 1;
    }
}
