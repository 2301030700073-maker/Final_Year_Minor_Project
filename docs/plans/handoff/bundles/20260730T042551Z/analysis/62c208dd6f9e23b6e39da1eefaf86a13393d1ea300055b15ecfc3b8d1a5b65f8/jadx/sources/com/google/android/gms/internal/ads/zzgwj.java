package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.api.Api;
import defpackage.Cif;
import defpackage.Creturn;
import defpackage.V1;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes.dex */
public abstract class zzgwj implements Iterable<Byte>, Serializable {
    public static final zzgwj zzb = new zzgwg(zzgye.zzb);
    private int zza = 0;

    static {
        int i = zzgvw.zza;
    }

    private static zzgwj zzc(Iterator it, int i) {
        if (i <= 0) {
            throw new IllegalArgumentException(String.format("length (%s) must be >= 1", Integer.valueOf(i)));
        }
        if (i == 1) {
            return (zzgwj) it.next();
        }
        int i2 = i >>> 1;
        zzgwj zzc = zzc(it, i2);
        zzgwj zzc2 = zzc(it, i - i2);
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - zzc.zzd() >= zzc2.zzd()) {
            return zzgzu.zzC(zzc, zzc2);
        }
        throw new IllegalArgumentException(Cif.m6918new("ByteString would be too long: ", zzc.zzd(), "+", zzc2.zzd()));
    }

    public static int zzq(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            throw new IndexOutOfBoundsException(Creturn.m7981if("Beginning index: ", i, " < 0"));
        }
        if (i2 < i) {
            throw new IndexOutOfBoundsException(Cif.m6918new("Beginning index larger than ending index: ", i, ", ", i2));
        }
        throw new IndexOutOfBoundsException(Cif.m6918new("End index: ", i2, " >= ", i3));
    }

    public static zzgwh zzt() {
        return new zzgwh(128);
    }

    public static zzgwj zzu(Iterable iterable) {
        int size;
        if (iterable instanceof Collection) {
            size = ((Collection) iterable).size();
        } else {
            Iterator it = iterable.iterator();
            size = 0;
            while (it.hasNext()) {
                it.next();
                size++;
            }
        }
        return size == 0 ? zzb : zzc(iterable.iterator(), size);
    }

    public static zzgwj zzv(byte[] bArr, int i, int i2) {
        zzq(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new zzgwg(bArr2);
    }

    public static zzgwj zzw(String str) {
        return new zzgwg(str.getBytes(zzgye.zza));
    }

    public static void zzy(int i, int i2) {
        if (((i2 - (i + 1)) | i) < 0) {
            if (i >= 0) {
                throw new ArrayIndexOutOfBoundsException(Cif.m6918new("Index > length: ", i, ", ", i2));
            }
            throw new ArrayIndexOutOfBoundsException(V1.m2494case("Index < 0: ", i));
        }
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.zza;
        if (i == 0) {
            int zzd = zzd();
            i = zzi(zzd, 0, zzd);
            if (i == 0) {
                i = 1;
            }
            this.zza = i;
        }
        return i;
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(zzd());
        objArr[2] = zzd() <= 50 ? zzhaf.zza(this) : zzhaf.zza(zzk(0, 47)).concat("...");
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }

    public final byte[] zzA() {
        int zzd = zzd();
        if (zzd == 0) {
            return zzgye.zzb;
        }
        byte[] bArr = new byte[zzd];
        zze(bArr, 0, 0, zzd);
        return bArr;
    }

    public abstract byte zza(int i);

    public abstract byte zzb(int i);

    public abstract int zzd();

    public abstract void zze(byte[] bArr, int i, int i2, int i3);

    public abstract int zzf();

    public abstract boolean zzh();

    public abstract int zzi(int i, int i2, int i3);

    public abstract int zzj(int i, int i2, int i3);

    public abstract zzgwj zzk(int i, int i2);

    public abstract zzgwp zzl();

    public abstract String zzm(Charset charset);

    public abstract ByteBuffer zzn();

    public abstract void zzo(zzgwa zzgwaVar);

    public abstract boolean zzp();

    public final int zzr() {
        return this.zza;
    }

    @Override // java.lang.Iterable
    /* renamed from: zzs, reason: merged with bridge method [inline-methods] */
    public zzgwe iterator() {
        return new zzgwb(this);
    }

    public final String zzx() {
        return zzd() == 0 ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : zzm(zzgye.zza);
    }

    @Deprecated
    public final void zzz(byte[] bArr, int i, int i2, int i3) {
        zzq(0, i3, zzd());
        zzq(i2, i2 + i3, bArr.length);
        if (i3 > 0) {
            zze(bArr, 0, i2, i3);
        }
    }
}
