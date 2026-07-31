package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfzq extends zzhwo implements zzhya {
    private static final zzfzq zzc;
    private static volatile zzhyh zzd;
    private int zza;
    private zzatg zzb;

    static {
        zzfzq zzfzqVar = new zzfzq();
        zzc = zzfzqVar;
        zzhwo.zzbu(zzfzq.class, zzfzqVar);
    }

    private zzfzq() {
    }

    public static zzfzp zza() {
        return (zzfzp) zzc.zzbn();
    }

    final /* synthetic */ void zzb(zzatg zzatgVar) {
        zzatgVar.getClass();
        this.zzb = zzatgVar;
        this.zza |= 1;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzc, "\u0004\u0001\u0000\u0001\u0012\u0012\u0001\u0000\u0000\u0000\u0012ဉ\u0000", new Object[]{"zza", "zzb"});
        }
        if (ordinal == 3) {
            return new zzfzq();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzfzp(bArr);
        }
        if (ordinal == 5) {
            return zzc;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzd;
        if (zzhyhVar == null) {
            synchronized (zzfzq.class) {
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
