package com.google.android.exoplayer2.upstream.crypto;

import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
@Deprecated
/* loaded from: classes.dex */
public final class AesFlushingCipher {
    private final int blockSize;
    private final Cipher cipher;
    private final byte[] flushedBlock;
    private int pendingXorBytes;
    private final byte[] zerosBlock;

    public AesFlushingCipher(int i, byte[] bArr, long j, long j2) {
        try {
            Cipher cipher = Cipher.getInstance("AES/CTR/NoPadding");
            this.cipher = cipher;
            int blockSize = cipher.getBlockSize();
            this.blockSize = blockSize;
            this.zerosBlock = new byte[blockSize];
            this.flushedBlock = new byte[blockSize];
            long j3 = j2 / blockSize;
            int i2 = (int) (j2 % blockSize);
            cipher.init(i, new SecretKeySpec(bArr, Util.splitAtFirst(cipher.getAlgorithm(), "/")[0]), new IvParameterSpec(getInitializationVector(j, j3)));
            if (i2 != 0) {
                updateInPlace(new byte[i2], 0, i2);
            }
        } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | NoSuchPaddingException e) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m(e);
            throw null;
        }
    }

    private static long getFNV64Hash(String str) {
        long j = 0;
        if (str == null) {
            return 0L;
        }
        for (int i = 0; i < str.length(); i++) {
            long charAt = j ^ str.charAt(i);
            j = charAt + (charAt << 1) + (charAt << 4) + (charAt << 5) + (charAt << 7) + (charAt << 8) + (charAt << 40);
        }
        return j;
    }

    private byte[] getInitializationVector(long j, long j2) {
        return ByteBuffer.allocate(16).putLong(j).putLong(j2).array();
    }

    private int nonFlushingUpdate(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        try {
            return this.cipher.update(bArr, i, i2, bArr2, i3);
        } catch (ShortBufferException e) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m((Throwable) e);
            return 0;
        }
    }

    public void update(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        do {
            int i4 = this.pendingXorBytes;
            if (i4 <= 0) {
                int nonFlushingUpdate = nonFlushingUpdate(bArr, i, i2, bArr2, i3);
                if (i2 == nonFlushingUpdate) {
                    return;
                }
                int i5 = i2 - nonFlushingUpdate;
                int i6 = 0;
                Assertions.checkState(i5 < this.blockSize);
                int i7 = i3 + nonFlushingUpdate;
                int i8 = this.blockSize - i5;
                this.pendingXorBytes = i8;
                Assertions.checkState(nonFlushingUpdate(this.zerosBlock, 0, i8, this.flushedBlock, 0) == this.blockSize);
                while (i6 < i5) {
                    bArr2[i7] = this.flushedBlock[i6];
                    i6++;
                    i7++;
                }
                return;
            }
            bArr2[i3] = (byte) (bArr[i] ^ this.flushedBlock[this.blockSize - i4]);
            i3++;
            i++;
            this.pendingXorBytes = i4 - 1;
            i2--;
        } while (i2 != 0);
    }

    public void updateInPlace(byte[] bArr, int i, int i2) {
        update(bArr, i, i2, bArr, i);
    }

    public AesFlushingCipher(int i, byte[] bArr, String str, long j) {
        this(i, bArr, getFNV64Hash(str), j);
    }
}
