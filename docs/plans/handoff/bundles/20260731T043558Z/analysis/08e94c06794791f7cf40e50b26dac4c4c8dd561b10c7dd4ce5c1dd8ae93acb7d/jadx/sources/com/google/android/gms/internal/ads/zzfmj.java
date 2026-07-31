package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfmj extends zzhwo implements zzhya {
    private static final zzfmj zzg;
    private static volatile zzhyh zzh;
    private int zzb;
    private int zzc;
    private boolean zzd;
    private boolean zzf;
    private String zza = "";
    private String zze = "";

    static {
        zzfmj zzfmjVar = new zzfmj();
        zzg = zzfmjVar;
        zzhwo.zzbu(zzfmj.class, zzfmjVar);
    }

    private zzfmj() {
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzg, "\u0004\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001Ȉ\u0002\u0004\u0003\u0004\u0004\u0007\u0005Ȉ\u0006\u0007", new Object[]{"zza", "zzb", "zzc", "zzd", "zze", "zzf"});
        }
        if (ordinal == 3) {
            return new zzfmj();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzfmi(bArr);
        }
        if (ordinal == 5) {
            return zzg;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzh;
        if (zzhyhVar == null) {
            synchronized (zzfmj.class) {
                zzhyhVar = zzh;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzg);
                    zzh = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }
}
