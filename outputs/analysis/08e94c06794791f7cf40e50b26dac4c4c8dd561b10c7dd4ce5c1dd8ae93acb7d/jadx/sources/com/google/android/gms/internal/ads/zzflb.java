package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzflb extends zzhwo implements zzhya {
    private static final zzflb zzc;
    private static volatile zzhyh zzd;
    private int zza;
    private long zzb;

    static {
        zzflb zzflbVar = new zzflb();
        zzc = zzflbVar;
        zzhwo.zzbu(zzflb.class, zzflbVar);
    }

    private zzflb() {
    }

    public static zzfla zza() {
        return (zzfla) zzc.zzbn();
    }

    final /* synthetic */ void zzb(long j) {
        this.zzb = j;
    }

    final /* synthetic */ void zzd(int i) {
        this.zza = i - 2;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzc, "\u0004\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002\u0002", new Object[]{"zza", "zzb"});
        }
        if (ordinal == 3) {
            return new zzflb();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzfla(bArr);
        }
        if (ordinal == 5) {
            return zzc;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzd;
        if (zzhyhVar == null) {
            synchronized (zzflb.class) {
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
