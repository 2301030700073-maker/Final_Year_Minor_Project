package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzavb extends zzhwo implements zzhya {
    private static final zzavb zzl;
    private static volatile zzhyh zzm;
    private int zza;
    private long zzb;
    private int zzc;
    private boolean zzd;
    private long zzf;
    private boolean zzg;
    private int zzi;
    private int zzj;
    private int zzk;
    private zzhww zze = zzbC();
    private zzhxa zzh = zzbM();

    static {
        zzavb zzavbVar = new zzavb();
        zzl = zzavbVar;
        zzhwo.zzbu(zzavb.class, zzavbVar);
    }

    private zzavb() {
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzl, "\u0001\n\u0000\u0001\u0001\n\n\u0000\u0002\u0000\u0001ဂ\u0000\u0002င\u0001\u0003ဇ\u0002\u0004\u0016\u0005ဃ\u0003\u0006ဇ\u0004\u0007\u001b\b᠌\u0005\t᠌\u0006\n᠌\u0007", new Object[]{"zza", "zzb", "zzc", "zzd", "zze", "zzf", "zzg", "zzh", zzavf.class, "zzi", zzglj.zza(), "zzj", zziae.zza(), "zzk", zziac.zza()});
        }
        if (ordinal == 3) {
            return new zzavb();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzava(bArr);
        }
        if (ordinal == 5) {
            return zzl;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzm;
        if (zzhyhVar == null) {
            synchronized (zzavb.class) {
                zzhyhVar = zzm;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzl);
                    zzm = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }
}
