package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzflw extends zzhwo implements zzhya {
    private static final zzflw zzb;
    private static volatile zzhyh zzc;
    private zzhxa zza = zzbM();

    static {
        zzflw zzflwVar = new zzflw();
        zzb = zzflwVar;
        zzhwo.zzbu(zzflw.class, zzflwVar);
    }

    private zzflw() {
    }

    public static zzflt zzb() {
        return (zzflt) zzb.zzbn();
    }

    public final int zza() {
        return this.zza.size();
    }

    final /* synthetic */ void zzc(zzflv zzflvVar) {
        zzflvVar.getClass();
        zzhxa zzhxaVar = this.zza;
        if (!zzhxaVar.zza()) {
            this.zza = zzhwo.zzbN(zzhxaVar);
        }
        this.zza.add(zzflvVar);
    }

    final /* synthetic */ void zzd() {
        this.zza = zzbM();
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzb, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zza", zzflv.class});
        }
        if (ordinal == 3) {
            return new zzflw();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzflt(bArr);
        }
        if (ordinal == 5) {
            return zzb;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzc;
        if (zzhyhVar == null) {
            synchronized (zzflw.class) {
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
