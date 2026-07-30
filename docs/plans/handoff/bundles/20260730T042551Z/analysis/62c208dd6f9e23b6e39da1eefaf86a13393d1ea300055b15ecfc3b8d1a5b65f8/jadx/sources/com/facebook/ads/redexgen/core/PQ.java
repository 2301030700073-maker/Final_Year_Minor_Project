package com.facebook.ads.redexgen.core;

import android.util.SparseArray;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.HashMap;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: assets/audience_network.dex */
public class PQ implements InterfaceC2002ej {
    public static byte[] A07;
    public static String[] A08 = {"Z16lAJXikWhNEVLB7TbNlTWIkixZt69O", "x8BWvnJKkZY12LRW0xsaLDyjlvFaKZ9M", "YkkZSyZAuNxQWrRbBjAJwsc9pw0lbB9X", "uC0LA2AdDEeMxSQcCwrePMe78jx1NV8D", "2OnTtgLqSvUHSfgCuCeaYEqbPB9dHKR8", "qLyOsF0aZf4uxPzAqdSdr5x7hsuXUpsQ", "SGOKETwnnHRPULmcUin3YwIngjuAXgpx", "dTnXmBnDqMR0i06QWD3fpNeqUSszGkXO"};
    public C2009eq A00;
    public boolean A01;
    public final C2013eu A02;
    public final SecureRandom A03;
    public final Cipher A04;
    public final SecretKeySpec A05;
    public final boolean A06;

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 43);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A07 = new byte[]{24, 28, 10};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A05(HashMap<String, C2001ei> hashMap) throws IOException {
        try {
            C2012et A03 = this.A02.A03();
            if (this.A00 == null) {
                this.A00 = new C2009eq(A03);
            } else {
                this.A00.A00(A03);
            }
            C2009eq c2009eq = this.A00;
            DataOutputStream dataOutputStream = new DataOutputStream(c2009eq);
            dataOutputStream.writeInt(2);
            boolean z = this.A06;
            String[] strArr = A08;
            if (strArr[4].charAt(15) == strArr[0].charAt(15)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A08;
            strArr2[6] = "X3FBm64xbPi7kLcoCSztdikMVUSOqSUd";
            strArr2[1] = "sQ5XcoQVEYuAfLxtC1B2xUlG5tj4rnIK";
            dataOutputStream.writeInt(z ? 1 : 0);
            if (this.A06) {
                byte[] bArr = new byte[16];
                ((SecureRandom) AbstractC2094gE.A0f(this.A03)).nextBytes(bArr);
                dataOutputStream.write(bArr);
                try {
                    ((Cipher) AbstractC2094gE.A0f(this.A04)).init(1, (Key) AbstractC2094gE.A0f(this.A05), new IvParameterSpec(bArr));
                    dataOutputStream.flush();
                    dataOutputStream = new DataOutputStream(new CipherOutputStream(c2009eq, this.A04));
                } catch (InvalidAlgorithmParameterException | InvalidKeyException e) {
                    throw new IllegalStateException(e);
                }
            }
            dataOutputStream.writeInt(hashMap.size());
            int i = 0;
            for (C2001ei c2001ei : hashMap.values()) {
                A04(c2001ei, dataOutputStream);
                i += A00(c2001ei, 2);
            }
            dataOutputStream.writeInt(i);
            this.A02.A06(dataOutputStream);
            AbstractC2094gE.A10(null);
        } catch (Throwable th) {
            AbstractC2094gE.A10(null);
            throw th;
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private boolean A06(HashMap<String, C2001ei> hashMap, SparseArray<String> sparseArray) {
        if (!this.A02.A07()) {
            return true;
        }
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(this.A02.A04());
            DataInputStream dataInputStream = new DataInputStream(bufferedInputStream);
            int readInt = dataInputStream.readInt();
            if (readInt < 0 || readInt > 2) {
                AbstractC2094gE.A10(dataInputStream);
                return false;
            }
            if ((dataInputStream.readInt() & 1) != 0) {
                if (this.A04 == null) {
                    AbstractC2094gE.A10(dataInputStream);
                    return false;
                }
                byte[] bArr = new byte[16];
                dataInputStream.readFully(bArr);
                try {
                    this.A04.init(2, (Key) AbstractC2094gE.A0f(this.A05), new IvParameterSpec(bArr));
                    dataInputStream = new DataInputStream(new CipherInputStream(bufferedInputStream, this.A04));
                } catch (InvalidAlgorithmParameterException | InvalidKeyException e) {
                    throw new IllegalStateException(e);
                }
            } else if (this.A06) {
                this.A01 = true;
            }
            int readInt2 = dataInputStream.readInt();
            int i = 0;
            for (int i2 = 0; i2 < readInt2; i2++) {
                C2001ei A01 = A01(readInt, dataInputStream);
                hashMap.put(A01.A02, A01);
                sparseArray.put(A01.A01, A01.A02);
                i += A00(A01, readInt);
            }
            int readInt3 = dataInputStream.readInt();
            boolean z = dataInputStream.read() == -1;
            if (readInt3 == i && z) {
                AbstractC2094gE.A10(dataInputStream);
                return true;
            }
            AbstractC2094gE.A10(dataInputStream);
            return false;
        } catch (IOException unused) {
            if (0 != 0) {
                AbstractC2094gE.A10(null);
            }
            return false;
        } catch (Throwable th) {
            if (0 != 0) {
                AbstractC2094gE.A10(null);
            }
            throw th;
        }
    }

    static {
        A03();
    }

    public PQ(File file, byte[] bArr, boolean z) {
        AbstractC2011es.A08((bArr == null && z) ? false : true);
        Cipher cipher = null;
        SecretKeySpec secretKeySpec = null;
        if (bArr != null) {
            AbstractC2011es.A07(bArr.length == 16);
            try {
                cipher = C2003ek.A06();
                secretKeySpec = new SecretKeySpec(bArr, A02(0, 3, 114));
            } catch (NoSuchAlgorithmException | NoSuchPaddingException e) {
                throw new IllegalStateException(e);
            }
        } else {
            AbstractC2011es.A07(!z);
        }
        this.A06 = z;
        this.A04 = cipher;
        this.A05 = secretKeySpec;
        this.A03 = z ? new SecureRandom() : null;
        this.A02 = new C2013eu(file);
    }

    private int A00(C2001ei c2001ei, int i) {
        int result = c2001ei.A01;
        int i2 = result * 31;
        int result2 = c2001ei.A02.hashCode();
        int result3 = i2 + result2;
        if (i < 2) {
            long A00 = AbstractC2004el.A00(c2001ei.A03());
            return (result3 * 31) + ((int) ((A00 >>> 32) ^ A00));
        }
        return (result3 * 31) + c2001ei.A03().hashCode();
    }

    private C2001ei A01(int i, DataInputStream dataInputStream) throws IOException {
        PO A02;
        int readInt = dataInputStream.readInt();
        String readUTF = dataInputStream.readUTF();
        if (i < 2) {
            long length = dataInputStream.readLong();
            C2006en c2006en = new C2006en();
            C2006en.A00(c2006en, length);
            A02 = PO.A03.A05(c2006en);
        } else {
            A02 = C2003ek.A02(dataInputStream);
        }
        return new C2001ei(readInt, readUTF, A02);
    }

    private void A04(C2001ei c2001ei, DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(c2001ei.A01);
        dataOutputStream.writeUTF(c2001ei.A02);
        C2003ek.A08(c2001ei.A03(), dataOutputStream);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2002ej
    public final void A5f() {
        this.A02.A05();
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2002ej
    public final boolean A6I() {
        return this.A02.A07();
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2002ej
    public final void AA5(long j) {
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2002ej
    public final void AAh(HashMap<String, C2001ei> hashMap, SparseArray<String> idToKey) {
        AbstractC2011es.A08(!this.A01);
        if (!A06(hashMap, idToKey)) {
            hashMap.clear();
            idToKey.clear();
            this.A02.A05();
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2002ej
    public final void AEn(C2001ei c2001ei, boolean z) {
        this.A01 = true;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2002ej
    public final void AFS(C2001ei c2001ei) {
        this.A01 = true;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2002ej
    public final void AJN(HashMap<String, C2001ei> hashMap) throws IOException {
        A05(hashMap);
        this.A01 = false;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2002ej
    public final void AJO(HashMap<String, C2001ei> hashMap) throws IOException {
        if (!this.A01) {
            return;
        }
        AJN(hashMap);
    }
}
