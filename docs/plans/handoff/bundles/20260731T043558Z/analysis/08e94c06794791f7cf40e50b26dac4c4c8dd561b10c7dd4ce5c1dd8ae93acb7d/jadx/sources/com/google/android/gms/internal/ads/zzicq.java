package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzicq extends zzhwo implements zzhya {
    private static final zzicq zzf;
    private static volatile zzhyh zzg;
    private int zza;
    private String zzb = "";
    private zzhxa zzc = zzhwo.zzbM();
    private zzhxa zzd = zzhwo.zzbM();
    private String zze = "";

    static {
        zzicq zzicqVar = new zzicq();
        zzf = zzicqVar;
        zzhwo.zzbu(zzicq.class, zzicqVar);
    }

    private zzicq() {
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzf, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001ဈ\u0000\u0002\u001a\u0003\u001a\u0004ဈ\u0001", new Object[]{"zza", "zzb", "zzc", "zzd", "zze"});
        }
        if (ordinal == 3) {
            return new zzicq();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzicp(bArr);
        }
        if (ordinal == 5) {
            return zzf;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzg;
        if (zzhyhVar == null) {
            synchronized (zzicq.class) {
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
