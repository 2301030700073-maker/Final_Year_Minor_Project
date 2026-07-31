package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzflv extends zzhwo implements zzhya {
    private static final zzflv zzc;
    private static volatile zzhyh zzd;
    private int zza;
    private zzfls zzb;

    static {
        zzflv zzflvVar = new zzflv();
        zzc = zzflvVar;
        zzhwo.zzbu(zzflv.class, zzflvVar);
    }

    private zzflv() {
    }

    public static zzflu zza() {
        return (zzflu) zzc.zzbn();
    }

    final /* synthetic */ void zzb(zzfls zzflsVar) {
        zzflsVar.getClass();
        this.zzb = zzflsVar;
        this.zza |= 1;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzc, "\u0004\u0001\u0000\u0001\u0006\u0006\u0001\u0000\u0000\u0000\u0006ဉ\u0000", new Object[]{"zza", "zzb"});
        }
        if (ordinal == 3) {
            return new zzflv();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzflu(bArr);
        }
        if (ordinal == 5) {
            return zzc;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzd;
        if (zzhyhVar == null) {
            synchronized (zzflv.class) {
                zzhyhVar = zzd;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzc);
                    zzd = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }
}
