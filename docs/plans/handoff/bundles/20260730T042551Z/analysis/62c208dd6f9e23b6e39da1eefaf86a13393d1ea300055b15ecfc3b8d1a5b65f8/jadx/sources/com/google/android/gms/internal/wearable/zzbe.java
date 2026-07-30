package com.google.android.gms.internal.wearable;

import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public abstract class zzbe extends zzam {
    private static final Logger zzb = Logger.getLogger(zzbe.class.getName());
    private static final boolean zzc = zzeo.zzx();
    zzbf zza;

    private zzbe() {
    }

    public /* synthetic */ zzbe(zzbd zzbdVar) {
    }

    public static int zzA(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    public static int zzB(long j) {
        int i;
        if (((-128) & j) == 0) {
            return 1;
        }
        if (j < 0) {
            return 10;
        }
        if (((-34359738368L) & j) != 0) {
            j >>>= 28;
            i = 6;
        } else {
            i = 2;
        }
        if (((-2097152) & j) != 0) {
            i += 2;
            j >>>= 14;
        }
        return (j & (-16384)) != 0 ? i + 1 : i;
    }

    public static zzbe zzC(byte[] bArr) {
        return new zzbb(bArr, 0, bArr.length);
    }

    public static int zzt(zzaw zzawVar) {
        int zzd = zzawVar.zzd();
        return zzA(zzd) + zzd;
    }

    @Deprecated
    public static int zzu(int i, zzdc zzdcVar, zzdn zzdnVar) {
        int zzA = zzA(i << 3);
        int i2 = zzA + zzA;
        zzag zzagVar = (zzag) zzdcVar;
        int zzH = zzagVar.zzH();
        if (zzH == -1) {
            zzH = zzdnVar.zza(zzagVar);
            zzagVar.zzK(zzH);
        }
        return i2 + zzH;
    }

    public static int zzv(int i) {
        if (i >= 0) {
            return zzA(i);
        }
        return 10;
    }

    public static int zzw(zzci zzciVar) {
        int zza = zzciVar.zza();
        return zzA(zza) + zza;
    }

    public static int zzx(zzdc zzdcVar, zzdn zzdnVar) {
        zzag zzagVar = (zzag) zzdcVar;
        int zzH = zzagVar.zzH();
        if (zzH == -1) {
            zzH = zzdnVar.zza(zzagVar);
            zzagVar.zzK(zzH);
        }
        return zzA(zzH) + zzH;
    }

    public static int zzy(String str) {
        int length;
        try {
            length = zzet.zzc(str);
        } catch (zzes unused) {
            length = str.getBytes(zzcd.zzb).length;
        }
        return zzA(length) + length;
    }

    public static int zzz(int i) {
        return zzA(i << 3);
    }

    public final void zzD() {
        if (zza() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public final void zzE(String str, zzes zzesVar) {
        zzb.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzesVar);
        byte[] bytes = str.getBytes(zzcd.zzb);
        try {
            int length = bytes.length;
            zzq(length);
            zzl(bytes, 0, length);
        } catch (IndexOutOfBoundsException e) {
            throw new zzbc(e);
        }
    }

    public abstract int zza();

    public abstract void zzb(byte b);

    public abstract void zzd(int i, boolean z);

    public abstract void zze(int i, zzaw zzawVar);

    public abstract void zzf(int i, int i2);

    public abstract void zzg(int i);

    public abstract void zzh(int i, long j);

    public abstract void zzi(long j);

    public abstract void zzj(int i, int i2);

    public abstract void zzk(int i);

    public abstract void zzl(byte[] bArr, int i, int i2);

    public abstract void zzm(int i, String str);

    public abstract void zzo(int i, int i2);

    public abstract void zzp(int i, int i2);

    public abstract void zzq(int i);

    public abstract void zzr(int i, long j);

    public abstract void zzs(long j);
}
