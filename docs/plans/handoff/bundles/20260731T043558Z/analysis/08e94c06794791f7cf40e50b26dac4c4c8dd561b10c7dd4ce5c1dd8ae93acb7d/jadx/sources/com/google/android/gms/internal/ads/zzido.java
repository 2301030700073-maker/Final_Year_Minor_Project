package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzido extends zzhwo implements zzhya {
    private static final zzido zzb;
    private static volatile zzhyh zzc;
    private zzhxa zza = zzbM();

    static {
        zzido zzidoVar = new zzido();
        zzb = zzidoVar;
        zzhwo.zzbu(zzido.class, zzidoVar);
    }

    private zzido() {
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzb, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zza", zzidm.class});
        }
        if (ordinal == 3) {
            return new zzido();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzidn(bArr);
        }
        if (ordinal == 5) {
            return zzb;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzc;
        if (zzhyhVar == null) {
            synchronized (zzido.class) {
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
