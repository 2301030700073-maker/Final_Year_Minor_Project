package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhlz extends zzhwo implements zzhya {
    private static final zzhlz zzb;
    private static volatile zzhyh zzc;
    private int zza;

    static {
        zzhlz zzhlzVar = new zzhlz();
        zzb = zzhlzVar;
        zzhwo.zzbu(zzhlz.class, zzhlzVar);
    }

    private zzhlz() {
    }

    public static zzhly zzb() {
        return (zzhly) zzb.zzbn();
    }

    public static zzhlz zzc() {
        return zzb;
    }

    public final zzhko zza() {
        zzhko zzb2 = zzhko.zzb(this.zza);
        return zzb2 == null ? zzhko.UNRECOGNIZED : zzb2;
    }

    final /* synthetic */ void zzd(zzhko zzhkoVar) {
        this.zza = zzhkoVar.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\f", new Object[]{"zza"});
        }
        if (ordinal == 3) {
            return new zzhlz();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzhly(bArr);
        }
        if (ordinal == 5) {
            return zzb;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzc;
        if (zzhyhVar == null) {
            synchronized (zzhlz.class) {
                zzhyhVar = zzc;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzb);
                    zzc = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }
}
