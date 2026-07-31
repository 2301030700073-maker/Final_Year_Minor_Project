package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzidz extends zzhwo implements zzhya {
    private static final zzidz zzd;
    private static volatile zzhyh zze;
    private int zza;
    private String zzb = "";
    private zzhww zzc = zzbC();

    static {
        zzidz zzidzVar = new zzidz();
        zzd = zzidzVar;
        zzhwo.zzbu(zzidz.class, zzidzVar);
    }

    private zzidz() {
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzd, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u0016", new Object[]{"zza", "zzb", "zzc"});
        }
        if (ordinal == 3) {
            return new zzidz();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzidy(bArr);
        }
        if (ordinal == 5) {
            return zzd;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zze;
        if (zzhyhVar == null) {
            synchronized (zzidz.class) {
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
