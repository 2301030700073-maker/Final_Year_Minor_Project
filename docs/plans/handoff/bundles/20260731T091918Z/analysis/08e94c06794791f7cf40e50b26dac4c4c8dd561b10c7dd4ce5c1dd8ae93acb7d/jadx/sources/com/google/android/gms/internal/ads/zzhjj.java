package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhjj extends zzhwo implements zzhya {
    private static final zzhjj zzd;
    private static volatile zzhyh zze;
    private int zza;
    private zzhjl zzb;
    private int zzc;

    static {
        zzhjj zzhjjVar = new zzhjj();
        zzd = zzhjjVar;
        zzhwo.zzbu(zzhjj.class, zzhjjVar);
    }

    private zzhjj() {
    }

    public static zzhjj zzc(zzhvi zzhviVar, zzhvy zzhvyVar) throws zzhxd {
        return (zzhjj) zzhwo.zzbT(zzd, zzhviVar, zzhvyVar);
    }

    public static zzhji zzd() {
        return (zzhji) zzd.zzbn();
    }

    public final zzhjl zza() {
        zzhjl zzhjlVar = this.zzb;
        return zzhjlVar == null ? zzhjl.zzc() : zzhjlVar;
    }

    public final int zzb() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzd, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u000b", new Object[]{"zza", "zzb", "zzc"});
        }
        if (ordinal == 3) {
            return new zzhjj();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzhji(bArr);
        }
        if (ordinal == 5) {
            return zzd;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zze;
        if (zzhyhVar == null) {
            synchronized (zzhjj.class) {
                zzhyhVar = zze;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzd);
                    zze = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ void zze(zzhjl zzhjlVar) {
        zzhjlVar.getClass();
        this.zzb = zzhjlVar;
        this.zza |= 1;
    }

    final /* synthetic */ void zzg(int i) {
        this.zzc = i;
    }
}
