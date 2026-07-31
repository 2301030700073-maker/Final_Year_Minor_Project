package kotlinx.serialization.json.internal;

import kotlin.collections.ArrayDeque;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ByteArrayPoolBase {
    public final ArrayDeque arrays;
    public int bytesTotal;

    public ByteArrayPoolBase(int i) {
        switch (i) {
            case 1:
                this.arrays = new ArrayDeque();
                break;
            default:
                this.arrays = new ArrayDeque();
                break;
        }
    }

    public void releaseImpl(byte[] bArr) {
        bArr.getClass();
        synchronized (this) {
            int i = this.bytesTotal;
            if (bArr.length + i < ArrayPoolsKt.MAX_CHARS_IN_POOL) {
                this.bytesTotal = i + (bArr.length / 2);
                this.arrays.addLast(bArr);
            }
        }
    }

    public byte[] take(int i) {
        byte[] bArr;
        synchronized (this) {
            ArrayDeque arrayDeque = this.arrays;
            bArr = null;
            byte[] bArr2 = (byte[]) (arrayDeque.isEmpty() ? null : arrayDeque.removeLast());
            if (bArr2 != null) {
                this.bytesTotal -= bArr2.length / 2;
                bArr = bArr2;
            }
        }
        return bArr == null ? new byte[i] : bArr;
    }

    public void releaseImpl(char[] cArr) {
        cArr.getClass();
        synchronized (this) {
            int i = this.bytesTotal;
            if (cArr.length + i < ArrayPoolsKt.MAX_CHARS_IN_POOL) {
                this.bytesTotal = i + cArr.length;
                this.arrays.addLast(cArr);
            }
        }
    }

    /* renamed from: take, reason: collision with other method in class */
    public char[] m697take(int i) {
        char[] cArr;
        synchronized (this) {
            ArrayDeque arrayDeque = this.arrays;
            cArr = null;
            char[] cArr2 = (char[]) (arrayDeque.isEmpty() ? null : arrayDeque.removeLast());
            if (cArr2 != null) {
                this.bytesTotal -= cArr2.length;
                cArr = cArr2;
            }
        }
        return cArr == null ? new char[i] : cArr;
    }
}
