package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfmn extends zzhwo implements zzhya {
    private static final zzfmn zzb;
    private static volatile zzhyh zzc;
    private zzhxa zza = zzbM();

    static {
        zzfmn zzfmnVar = new zzfmn();
        zzb = zzfmnVar;
        zzhwo.zzbu(zzfmn.class, zzfmnVar);
    }

    private zzfmn() {
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzb, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zza", zzfml.class});
        }
        if (ordinal == 3) {
            return new zzfmn();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzfmm(bArr);
        }
        if (ordinal == 5) {
            return zzb;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzc;
        if (zzhyhVar == null) {
            synchronized (zzfmn.class) {
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
