package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhjr extends zzhwo implements zzhya {
    private static final zzhjr zzc;
    private static volatile zzhyh zzd;
    private int zza;
    private zzhvi zzb = zzhvi.zzb;

    static {
        zzhjr zzhjrVar = new zzhjr();
        zzc = zzhjrVar;
        zzhwo.zzbu(zzhjr.class, zzhjrVar);
    }

    private zzhjr() {
    }

    public static zzhjr zzc(zzhvi zzhviVar, zzhvy zzhvyVar) throws zzhxd {
        return (zzhjr) zzhwo.zzbT(zzc, zzhviVar, zzhvyVar);
    }

    public static zzhjq zzd() {
        return (zzhjq) zzc.zzbn();
    }

    public static zzhyh zze() {
        return zzc.zzbd();
    }

    public final int zza() {
        return this.zza;
    }

    public final zzhvi zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzc, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zza", "zzb"});
        }
        if (ordinal == 3) {
            return new zzhjr();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzhjq(bArr);
        }
        if (ordinal == 5) {
            return zzc;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzd;
        if (zzhyhVar == null) {
            synchronized (zzhjr.class) {
                zzhyhVar = zzd;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzc);
                    zzd = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ void zzg(zzhvi zzhviVar) {
        this.zzb = zzhviVar;
    }
}
