package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzatt extends zzhwo implements zzhya {
    private static final zzatt zzh;
    private static volatile zzhyh zzi;
    private int zza;
    private String zzb = "";
    private String zzc = "";
    private String zzd = "";
    private String zze = "";
    private String zzf = "";
    private String zzg = "";

    static {
        zzatt zzattVar = new zzatt();
        zzh = zzattVar;
        zzhwo.zzbu(zzatt.class, zzattVar);
    }

    private zzatt() {
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzh, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဈ\u0005", new Object[]{"zza", "zzb", "zzc", "zzd", "zze", "zzf", "zzg"});
        }
        if (ordinal == 3) {
            return new zzatt();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzats(bArr);
        }
        if (ordinal == 5) {
            return zzh;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzi;
        if (zzhyhVar == null) {
            synchronized (zzatt.class) {
                zzhyhVar = zzi;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzh);
                    zzi = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }
}
