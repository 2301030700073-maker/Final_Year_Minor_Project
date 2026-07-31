package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzicz extends zzhwo implements zzhya {
    private static final zzicz zzd;
    private static volatile zzhyh zze;
    private int zza;
    private int zzb;
    private String zzc = "";

    static {
        zzicz zziczVar = new zzicz();
        zzd = zziczVar;
        zzhwo.zzbu(zzicz.class, zziczVar);
    }

    private zzicz() {
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzd, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဈ\u0001", new Object[]{"zza", "zzb", zzicy.zza, "zzc"});
        }
        if (ordinal == 3) {
            return new zzicz();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzicx(bArr);
        }
        if (ordinal == 5) {
            return zzd;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zze;
        if (zzhyhVar == null) {
            synchronized (zzicz.class) {
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
