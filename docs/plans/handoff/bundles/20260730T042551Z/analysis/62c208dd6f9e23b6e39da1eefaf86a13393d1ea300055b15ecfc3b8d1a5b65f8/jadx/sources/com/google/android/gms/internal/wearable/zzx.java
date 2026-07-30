package com.google.android.gms.internal.wearable;

import java.util.List;

/* loaded from: classes3.dex */
public final class zzx extends zzbv implements zzdd {
    private static final zzx zzb;
    private byte zzf = 2;
    private zzcc zze = zzbv.zzT();

    static {
        zzx zzxVar = new zzx();
        zzb = zzxVar;
        zzbv.zzZ(zzx.class, zzxVar);
    }

    private zzx() {
    }

    public static zzn zza() {
        return (zzn) zzb.zzN();
    }

    public static zzx zzc(byte[] bArr) {
        return (zzx) zzbv.zzP(zzb, bArr);
    }

    public static zzx zzd(byte[] bArr, zzbj zzbjVar) {
        return (zzx) zzbv.zzQ(zzb, bArr, zzbjVar);
    }

    public static /* synthetic */ void zzf(zzx zzxVar, Iterable iterable) {
        zzcc zzccVar = zzxVar.zze;
        if (!zzccVar.zzc()) {
            zzxVar.zze = zzbv.zzU(zzccVar);
        }
        zzag.zzJ(iterable, zzxVar.zze);
    }

    @Override // com.google.android.gms.internal.wearable.zzbv
    public final Object zzG(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return Byte.valueOf(this.zzf);
        }
        if (i2 == 2) {
            return zzbv.zzY(zzb, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001Л", new Object[]{"zze", zzw.class});
        }
        if (i2 == 3) {
            return new zzx();
        }
        zzm zzmVar = null;
        if (i2 == 4) {
            return new zzn(zzmVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        this.zzf = obj == null ? (byte) 0 : (byte) 1;
        return null;
    }

    public final List zze() {
        return this.zze;
    }
}
