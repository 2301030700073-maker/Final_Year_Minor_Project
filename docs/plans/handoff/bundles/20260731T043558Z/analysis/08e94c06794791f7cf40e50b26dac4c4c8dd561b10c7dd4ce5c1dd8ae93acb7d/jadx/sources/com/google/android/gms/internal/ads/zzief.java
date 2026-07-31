package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzief extends zzhwo implements zzhya {
    private static final zzief zzj;
    private static volatile zzhyh zzk;
    private int zza;
    private zzido zzh;
    private String zzb = "";
    private String zzc = "";
    private zzhxa zzd = zzbM();
    private zzhxa zze = zzbM();
    private zzhxa zzf = zzbM();
    private int zzg = -1;
    private String zzi = "";

    static {
        zzief zziefVar = new zzief();
        zzj = zziefVar;
        zzhwo.zzbu(zzief.class, zziefVar);
    }

    private zzief() {
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzj, "\u0001\b\u0000\u0001\u0001\n\b\u0000\u0003\u0000\u0001ဈ\u0001\u0002\u001b\u0003\u001b\u0004င\u0002\u0005ဈ\u0000\b\u001b\tဈ\u0004\nဉ\u0003", new Object[]{"zza", "zzc", "zzd", zzids.class, "zze", zzidz.class, "zzg", "zzb", "zzf", zziem.class, "zzi", "zzh"});
        }
        if (ordinal == 3) {
            return new zzief();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zziee(bArr);
        }
        if (ordinal == 5) {
            return zzj;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzk;
        if (zzhyhVar == null) {
            synchronized (zzief.class) {
                zzhyhVar = zzk;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzj);
                    zzk = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }
}
