package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
@Deprecated
/* loaded from: classes3.dex */
public final class zzhlc extends zzhwo implements zzhya {
    private static final zzhlc zzf;
    private static volatile zzhyh zzg;
    private int zzc;
    private boolean zzd;
    private String zza = "";
    private String zzb = "";
    private String zze = "";

    static {
        zzhlc zzhlcVar = new zzhlc();
        zzf = zzhlcVar;
        zzhwo.zzbu(zzhlc.class, zzhlcVar);
    }

    private zzhlc() {
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzf, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u000b\u0004\u0007\u0005Ȉ", new Object[]{"zza", "zzb", "zzc", "zzd", "zze"});
        }
        if (ordinal == 3) {
            return new zzhlc();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzhlb(bArr);
        }
        if (ordinal == 5) {
            return zzf;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzg;
        if (zzhyhVar == null) {
            synchronized (zzhlc.class) {
                zzhyhVar = zzg;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzf);
                    zzg = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }
}
