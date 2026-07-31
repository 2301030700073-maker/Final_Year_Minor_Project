package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zziaa extends zzhwo implements zzhya {
    private static final zziaa zzc;
    private static volatile zzhyh zzd;
    private int zza;
    private String zzb = "";

    static {
        zziaa zziaaVar = new zziaa();
        zzc = zziaaVar;
        zzhwo.zzbu(zziaa.class, zziaaVar);
    }

    private zziaa() {
    }

    public static zzhzz zzc() {
        return (zzhzz) zzc.zzbn();
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzc, "\u0004\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002Ȉ", new Object[]{"zza", "zzb"});
        }
        if (ordinal == 3) {
            return new zziaa();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzhzz(bArr);
        }
        if (ordinal == 5) {
            return zzc;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzd;
        if (zzhyhVar == null) {
            synchronized (zziaa.class) {
                zzhyhVar = zzd;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzc);
                    zzd = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ void zze(int i) {
        this.zza = 15;
    }
}
