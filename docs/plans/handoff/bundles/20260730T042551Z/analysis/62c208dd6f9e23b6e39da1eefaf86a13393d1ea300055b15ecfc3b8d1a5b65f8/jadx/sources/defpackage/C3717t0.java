package defpackage;

import android.util.Base64;
import com.facebook.internal.security.CertificateUtil;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: t0, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3717t0 {

    /* renamed from: t0$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public SecretKey f15582do;

        /* renamed from: if, reason: not valid java name */
        public SecretKey f15583if;

        public Cif(SecretKeySpec secretKeySpec, SecretKeySpec secretKeySpec2) {
            this.f15582do = secretKeySpec;
            this.f15583if = secretKeySpec2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Cif.class != obj.getClass()) {
                return false;
            }
            Cif cif = (Cif) obj;
            return this.f15583if.equals(cif.f15583if) && this.f15582do.equals(cif.f15582do);
        }

        public final int hashCode() {
            return this.f15583if.hashCode() + ((this.f15582do.hashCode() + 31) * 31);
        }

        public final String toString() {
            return Base64.encodeToString(this.f15582do.getEncoded(), 2) + CertificateUtil.DELIMITER + Base64.encodeToString(this.f15583if.getEncoded(), 2);
        }
    }

    static {
        new AtomicBoolean(false);
    }

    /* renamed from: do, reason: not valid java name */
    public static String m8190do(Cdo cdo, Cif cif) {
        byte[] bArr = cdo.f15581if;
        int length = bArr.length;
        byte[] bArr2 = cdo.f15579do;
        byte[] bArr3 = new byte[length + bArr2.length];
        boolean z = false;
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        SecretKey secretKey = cif.f15583if;
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(secretKey);
        byte[] doFinal = mac.doFinal(bArr3);
        int length2 = doFinal.length;
        byte[] bArr4 = cdo.f15580for;
        if (length2 == bArr4.length) {
            int i = 0;
            for (int i2 = 0; i2 < doFinal.length; i2++) {
                i |= doFinal[i2] ^ bArr4[i2];
            }
            if (i == 0) {
                z = true;
            }
        }
        if (!z) {
            throw new GeneralSecurityException("MAC stored in civ does not match computed MAC.");
        }
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(2, cif.f15582do, new IvParameterSpec(bArr));
        return new String(cipher.doFinal(bArr2), "UTF-8");
    }

    /* renamed from: for, reason: not valid java name */
    public static Cif m8191for(String str) {
        String[] split = str.split(CertificateUtil.DELIMITER);
        if (split.length != 2) {
            throw new IllegalArgumentException("Cannot parse aesKey:hmacKey");
        }
        byte[] decode = Base64.decode(split[0], 2);
        if (decode.length != 16) {
            throw new InvalidKeyException("Base64 decoded key is not 128 bytes");
        }
        byte[] decode2 = Base64.decode(split[1], 2);
        if (decode2.length == 32) {
            return new Cif(new SecretKeySpec(decode, 0, decode.length, "AES"), new SecretKeySpec(decode2, "HmacSHA256"));
        }
        throw new InvalidKeyException("Base64 decoded key is not 256 bytes");
    }

    /* renamed from: if, reason: not valid java name */
    public static Cdo m8192if(String str, Cif cif, byte[] bArr) {
        byte[] bytes = str.getBytes("UTF-8");
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(1, cif.f15582do, new IvParameterSpec(bArr));
        byte[] iv = cipher.getIV();
        byte[] doFinal = cipher.doFinal(bytes);
        byte[] bArr2 = new byte[iv.length + doFinal.length];
        System.arraycopy(iv, 0, bArr2, 0, iv.length);
        System.arraycopy(doFinal, 0, bArr2, iv.length, doFinal.length);
        SecretKey secretKey = cif.f15583if;
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(secretKey);
        return new Cdo(doFinal, iv, mac.doFinal(bArr2));
    }

    /* renamed from: t0$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final byte[] f15579do;

        /* renamed from: for, reason: not valid java name */
        public final byte[] f15580for;

        /* renamed from: if, reason: not valid java name */
        public final byte[] f15581if;

        public Cdo(byte[] bArr, byte[] bArr2, byte[] bArr3) {
            byte[] bArr4 = new byte[bArr.length];
            this.f15579do = bArr4;
            System.arraycopy(bArr, 0, bArr4, 0, bArr.length);
            byte[] bArr5 = new byte[bArr2.length];
            this.f15581if = bArr5;
            System.arraycopy(bArr2, 0, bArr5, 0, bArr2.length);
            byte[] bArr6 = new byte[bArr3.length];
            this.f15580for = bArr6;
            System.arraycopy(bArr3, 0, bArr6, 0, bArr3.length);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Cdo.class != obj.getClass()) {
                return false;
            }
            Cdo cdo = (Cdo) obj;
            return Arrays.equals(this.f15579do, cdo.f15579do) && Arrays.equals(this.f15581if, cdo.f15581if) && Arrays.equals(this.f15580for, cdo.f15580for);
        }

        public final int hashCode() {
            return Arrays.hashCode(this.f15580for) + ((Arrays.hashCode(this.f15581if) + ((Arrays.hashCode(this.f15579do) + 31) * 31)) * 31);
        }

        public final String toString() {
            String encodeToString = Base64.encodeToString(this.f15581if, 2);
            String encodeToString2 = Base64.encodeToString(this.f15579do, 2);
            return String.format(encodeToString + CertificateUtil.DELIMITER + Base64.encodeToString(this.f15580for, 2) + CertificateUtil.DELIMITER + encodeToString2, new Object[0]);
        }

        public Cdo(String str) {
            String[] split = str.split(CertificateUtil.DELIMITER);
            if (split.length == 3) {
                this.f15581if = Base64.decode(split[0], 2);
                this.f15580for = Base64.decode(split[1], 2);
                this.f15579do = Base64.decode(split[2], 2);
                return;
            }
            throw new IllegalArgumentException("Cannot parse iv:ciphertext:mac");
        }
    }
}
