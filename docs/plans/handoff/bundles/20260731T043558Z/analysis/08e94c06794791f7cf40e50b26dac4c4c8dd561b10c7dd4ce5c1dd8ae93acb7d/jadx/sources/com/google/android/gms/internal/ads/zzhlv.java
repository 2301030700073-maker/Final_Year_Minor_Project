package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
@Deprecated
/* loaded from: classes3.dex */
public final class zzhlv extends zzhwo implements zzhya {
    public static final /* synthetic */ int zza = 0;
    private static final zzhlv zzd;
    private static volatile zzhyh zze;
    private String zzb = "";
    private zzhxa zzc = zzbM();

    static {
        zzhlv zzhlvVar = new zzhlv();
        zzd = zzhlvVar;
        zzhwo.zzbu(zzhlv.class, zzhlvVar);
    }

    private zzhlv() {
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzd, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"zzb", "zzc", zzhlc.class});
        }
        if (ordinal == 3) {
            return new zzhlv();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzhlu(bArr);
        }
        if (ordinal == 5) {
            return zzd;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zze;
        if (zzhyhVar == null) {
            synchronized (zzhlv.class) {
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
