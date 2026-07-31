package com.google.android.gms.internal.ads;

import java.math.RoundingMode;
import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzgru {
    final int zza;
    final int zzb;
    final int zzc;
    final int zzd;
    private final String zze;
    private final char[] zzf;
    private final byte[] zzg;
    private final boolean[] zzh;
    private final boolean zzi;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    zzgru(java.lang.String r10, char[] r11) {
        /*
            r9 = this;
            r0 = 128(0x80, float:1.8E-43)
            byte[] r1 = new byte[r0]
            r2 = -1
            java.util.Arrays.fill(r1, r2)
            r3 = 0
            r4 = r3
        La:
            int r5 = r11.length
            if (r4 >= r5) goto L2b
            char r5 = r11[r4]
            r6 = 1
            if (r5 >= r0) goto L14
            r7 = r6
            goto L15
        L14:
            r7 = r3
        L15:
            java.lang.String r8 = "Non-ASCII character: %s"
            com.google.android.gms.internal.ads.zzgmd.zzc(r7, r8, r5)
            r7 = r1[r5]
            if (r7 != r2) goto L1f
            goto L20
        L1f:
            r6 = r3
        L20:
            java.lang.String r7 = "Duplicate character: %s"
            com.google.android.gms.internal.ads.zzgmd.zzc(r6, r7, r5)
            byte r6 = (byte) r4
            r1[r5] = r6
            int r4 = r4 + 1
            goto La
        L2b:
            r9.<init>(r10, r11, r1, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgru.<init>(java.lang.String, char[]):void");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzgru) {
            zzgru zzgruVar = (zzgru) obj;
            if (this.zzi == zzgruVar.zzi && Arrays.equals(this.zzf, zzgruVar.zzf)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zzf) + (true != this.zzi ? 1237 : 1231);
    }

    public final String toString() {
        return this.zze;
    }

    final char zza(int i) {
        return this.zzf[i];
    }

    final boolean zzb(int i) {
        return this.zzh[i % this.zzc];
    }

    final int zzc(char c) throws zzgrx {
        if (c > 127) {
            String hexString = Integer.toHexString(c);
            String.valueOf(hexString);
            throw new zzgrx("Unrecognized character: 0x".concat(String.valueOf(hexString)));
        }
        byte b = this.zzg[c];
        if (b != -1) {
            return b;
        }
        if (c <= ' ' || c == 127) {
            String hexString2 = Integer.toHexString(c);
            String.valueOf(hexString2);
            throw new zzgrx("Unrecognized character: 0x".concat(String.valueOf(hexString2)));
        }
        StringBuilder sb = new StringBuilder(String.valueOf(c).length() + 24);
        sb.append("Unrecognized character: ");
        sb.append(c);
        throw new zzgrx(sb.toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v11 */
    final zzgru zzd() {
        boolean z;
        int i = 0;
        while (true) {
            char[] cArr = this.zzf;
            int length = cArr.length;
            if (i >= length) {
                return this;
            }
            if (zzglm.zzd(cArr[i])) {
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        z = false;
                        break;
                    }
                    if (zzglm.zzc(cArr[i2])) {
                        z = true;
                        break;
                    }
                    i2++;
                }
                zzgmd.zzi(!z, "Cannot call lowerCase() on a mixed-case alphabet");
                char[] cArr2 = new char[cArr.length];
                for (int i3 = 0; i3 < cArr.length; i3++) {
                    char c = cArr[i3];
                    if (zzglm.zzd(c)) {
                        c ^= 32;
                    }
                    cArr2[i3] = (char) c;
                }
                zzgru zzgruVar = new zzgru(this.zze.concat(".lowerCase()"), cArr2);
                if (!this.zzi || zzgruVar.zzi) {
                    return zzgruVar;
                }
                byte[] bArr = zzgruVar.zzg;
                byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
                for (int i4 = 65; i4 <= 90; i4++) {
                    int i5 = i4 | 32;
                    byte b = bArr[i4];
                    byte b2 = bArr[i5];
                    if (b == -1) {
                        copyOf[i4] = b2;
                    } else {
                        char c2 = (char) i4;
                        char c3 = (char) i5;
                        if (b2 != -1) {
                            throw new IllegalStateException(zzgmu.zzd("Can't ignoreCase() since '%s' and '%s' encode different values", Character.valueOf(c2), Character.valueOf(c3)));
                        }
                        copyOf[i5] = b;
                    }
                }
                return new zzgru(zzgruVar.zze.concat(".ignoreCase()"), zzgruVar.zzf, copyOf, true);
            }
            i++;
        }
    }

    public final boolean zze(char c) {
        byte[] bArr = this.zzg;
        return bArr.length > 61 && bArr[61] != -1;
    }

    final /* synthetic */ char[] zzf() {
        return this.zzf;
    }

    private zzgru(String str, char[] cArr, byte[] bArr, boolean z) {
        this.zze = str;
        cArr.getClass();
        this.zzf = cArr;
        try {
            int length = cArr.length;
            int zza = zzgsm.zza(length, RoundingMode.UNNECESSARY);
            this.zzb = zza;
            int numberOfTrailingZeros = Integer.numberOfTrailingZeros(zza);
            int i = 1 << (3 - numberOfTrailingZeros);
            this.zzc = i;
            this.zzd = zza >> numberOfTrailingZeros;
            this.zza = length - 1;
            this.zzg = bArr;
            boolean[] zArr = new boolean[i];
            for (int i2 = 0; i2 < this.zzd; i2++) {
                zArr[zzgsm.zzb(i2 * 8, this.zzb, RoundingMode.CEILING)] = true;
            }
            this.zzh = zArr;
            this.zzi = z;
        } catch (ArithmeticException e) {
            int length2 = cArr.length;
            StringBuilder sb = new StringBuilder(String.valueOf(length2).length() + 24);
            sb.append("Illegal alphabet length ");
            sb.append(length2);
            throw new IllegalArgumentException(sb.toString(), e);
        }
    }
}
