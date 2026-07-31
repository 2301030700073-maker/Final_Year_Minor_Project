package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfmh extends zzhwo implements zzhya {
    private static final zzfmh zzc;
    private static volatile zzhyh zzd;
    private zzhxa zza = zzbM();
    private long zzb;

    static {
        zzfmh zzfmhVar = new zzfmh();
        zzc = zzfmhVar;
        zzhwo.zzbu(zzfmh.class, zzfmhVar);
    }

    private zzfmh() {
    }

    public static zzfmg zza() {
        return (zzfmg) zzc.zzbn();
    }

    final /* synthetic */ void zzb(zzflb zzflbVar) {
        zzflbVar.getClass();
        zzhxa zzhxaVar = this.zza;
        if (!zzhxaVar.zza()) {
            this.zza = zzhwo.zzbN(zzhxaVar);
        }
        this.zza.add(zzflbVar);
    }

    final /* synthetic */ void zzc(long j) {
        this.zzb = j;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzc, "\u0004\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u0002", new Object[]{"zza", zzflb.class, "zzb"});
        }
        if (ordinal == 3) {
            return new zzfmh();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzfmg(bArr);
        }
        if (ordinal == 5) {
            return zzc;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzd;
        if (zzhyhVar == null) {
            synchronized (zzfmh.class) {
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
