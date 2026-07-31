package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhtd extends zzhwo implements zzhya {
    private static final zzhtd zzf;
    private static volatile zzhyh zzg;
    private int zza;
    private zzhvi zzb = zzhvi.zzb;
    private String zzc = "";
    private zzhxa zzd = zzbM();
    private boolean zze;

    static {
        zzhtd zzhtdVar = new zzhtd();
        zzf = zzhtdVar;
        zzhwo.zzbu(zzhtd.class, zzhtdVar);
    }

    private zzhtd() {
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzf, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ည\u0000\u0002\u001c\u0003ဇ\u0002\u0004ဈ\u0001", new Object[]{"zza", "zzb", "zzd", "zze", "zzc"});
        }
        if (ordinal == 3) {
            return new zzhtd();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzhtc(bArr);
        }
        if (ordinal == 5) {
            return zzf;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzg;
        if (zzhyhVar == null) {
            synchronized (zzhtd.class) {
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
