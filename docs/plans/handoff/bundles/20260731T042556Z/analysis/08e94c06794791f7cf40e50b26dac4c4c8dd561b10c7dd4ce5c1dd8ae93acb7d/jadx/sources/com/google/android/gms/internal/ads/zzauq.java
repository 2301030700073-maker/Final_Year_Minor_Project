package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzauq extends zzhwo implements zzhya {
    private static final zzauq zzd;
    private static volatile zzhyh zze;
    private int zza;
    private int zzb;
    private long zzc = -1;

    static {
        zzauq zzauqVar = new zzauq();
        zzd = zzauqVar;
        zzhwo.zzbu(zzauq.class, zzauqVar);
    }

    private zzauq() {
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzd, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဂ\u0001", new Object[]{"zza", "zzb", zzaug.zza, "zzc"});
        }
        if (ordinal == 3) {
            return new zzauq();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzaup(bArr);
        }
        if (ordinal == 5) {
            return zzd;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zze;
        if (zzhyhVar == null) {
            synchronized (zzauq.class) {
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
