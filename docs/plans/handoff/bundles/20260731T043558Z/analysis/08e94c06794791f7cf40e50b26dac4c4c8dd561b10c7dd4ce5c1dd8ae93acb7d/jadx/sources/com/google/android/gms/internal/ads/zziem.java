package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zziem extends zzhwo implements zzhya {
    private static final zziem zzd;
    private static volatile zzhyh zze;
    private int zza;
    private String zzb = "";
    private zzhxa zzc = zzbM();

    static {
        zziem zziemVar = new zziem();
        zzd = zziemVar;
        zzhwo.zzbu(zziem.class, zziemVar);
    }

    private zziem() {
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzd, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b", new Object[]{"zza", "zzb", "zzc", zziek.class});
        }
        if (ordinal == 3) {
            return new zziem();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zziel(bArr);
        }
        if (ordinal == 5) {
            return zzd;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zze;
        if (zzhyhVar == null) {
            synchronized (zziem.class) {
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
