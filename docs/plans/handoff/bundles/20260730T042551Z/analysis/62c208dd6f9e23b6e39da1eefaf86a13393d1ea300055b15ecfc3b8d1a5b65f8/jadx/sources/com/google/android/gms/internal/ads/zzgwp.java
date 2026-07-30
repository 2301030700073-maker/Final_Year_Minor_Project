package com.google.android.gms.internal.ads;

import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.io.InputStream;

/* loaded from: classes.dex */
public abstract class zzgwp {
    public static final /* synthetic */ int zzd = 0;
    private static volatile int zze = 100;
    int zza;
    final int zzb = zze;
    zzgwq zzc;

    private zzgwp() {
    }

    public /* synthetic */ zzgwp(zzgwo zzgwoVar) {
    }

    public static int zzD(int i) {
        return (i >>> 1) ^ (-(i & 1));
    }

    public static int zzE(int i, InputStream inputStream) {
        if ((i & 128) == 0) {
            return i;
        }
        int i2 = i & ModuleDescriptor.MODULE_VERSION;
        int i3 = 7;
        while (i3 < 32) {
            int read = inputStream.read();
            if (read == -1) {
                throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            i2 |= (read & ModuleDescriptor.MODULE_VERSION) << i3;
            if ((read & 128) == 0) {
                return i2;
            }
            i3 += 7;
        }
        while (i3 < 64) {
            int read2 = inputStream.read();
            if (read2 == -1) {
                throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            if ((read2 & 128) == 0) {
                return i2;
            }
            i3 += 7;
        }
        throw new zzgyg("CodedInputStream encountered a malformed varint.");
    }

    public static long zzF(long j) {
        return (j >>> 1) ^ (-(1 & j));
    }

    public static zzgwp zzG(InputStream inputStream, int i) {
        if (inputStream != null) {
            return new zzgwm(inputStream, 4096, null);
        }
        byte[] bArr = zzgye.zzb;
        int length = bArr.length;
        return zzH(bArr, 0, 0, false);
    }

    public static zzgwp zzH(byte[] bArr, int i, int i2, boolean z) {
        zzgwk zzgwkVar = new zzgwk(bArr, i, i2, z, null);
        try {
            zzgwkVar.zzd(i2);
            return zzgwkVar;
        } catch (zzgyg e) {
            throw new IllegalArgumentException(e);
        }
    }

    public abstract boolean zzA();

    public abstract boolean zzB();

    public abstract double zza();

    public abstract float zzb();

    public abstract int zzc();

    public abstract int zzd(int i);

    public abstract int zze();

    public abstract int zzf();

    public abstract int zzg();

    public abstract int zzj();

    public abstract int zzk();

    public abstract int zzl();

    public abstract int zzm();

    public abstract long zzn();

    public abstract long zzo();

    public abstract long zzs();

    public abstract long zzt();

    public abstract long zzu();

    public abstract zzgwj zzv();

    public abstract String zzw();

    public abstract String zzx();

    public abstract void zzy(int i);

    public abstract void zzz(int i);
}
