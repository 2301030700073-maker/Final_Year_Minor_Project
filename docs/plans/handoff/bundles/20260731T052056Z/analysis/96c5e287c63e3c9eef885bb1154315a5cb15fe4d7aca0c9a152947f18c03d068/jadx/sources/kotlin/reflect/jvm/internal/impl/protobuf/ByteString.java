package kotlin.reflect.jvm.internal.impl.protobuf;

import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Stack;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ByteString implements Iterable {
    public static final LiteralByteString EMPTY = new LiteralByteString(new byte[0]);

    public static ByteString balancedConcat(Iterator it, int i) {
        if (i == 1) {
            return (ByteString) it.next();
        }
        int i2 = i >>> 1;
        return balancedConcat(it, i2).concat(balancedConcat(it, i - i2));
    }

    public static Output newOutput() {
        return new Output();
    }

    public final ByteString concat(ByteString byteString) {
        int size = size();
        int size2 = byteString.size();
        if (size + size2 >= 2147483647L) {
            StringBuilder sb = new StringBuilder(53);
            sb.append("ByteString would be too long: ");
            sb.append(size);
            sb.append("+");
            sb.append(size2);
            throw new IllegalArgumentException(sb.toString());
        }
        int[] iArr = RopeByteString.minLengthByDepth;
        RopeByteString ropeByteString = this instanceof RopeByteString ? (RopeByteString) this : null;
        if (byteString.size() == 0) {
            return this;
        }
        if (size() == 0) {
            return byteString;
        }
        int size3 = byteString.size() + size();
        if (size3 < 128) {
            int size4 = size();
            int size5 = byteString.size();
            byte[] bArr = new byte[size4 + size5];
            copyTo(0, 0, size4, bArr);
            byteString.copyTo(0, size4, size5, bArr);
            return new LiteralByteString(bArr);
        }
        if (ropeByteString != null) {
            ByteString byteString2 = ropeByteString.right;
            if (byteString.size() + byteString2.size() < 128) {
                int size6 = byteString2.size();
                int size7 = byteString.size();
                byte[] bArr2 = new byte[size6 + size7];
                byteString2.copyTo(0, 0, size6, bArr2);
                byteString.copyTo(0, size6, size7, bArr2);
                return new RopeByteString(ropeByteString.left, new LiteralByteString(bArr2));
            }
        }
        if (ropeByteString != null) {
            ByteString byteString3 = ropeByteString.right;
            ByteString byteString4 = ropeByteString.left;
            if (byteString4.getTreeDepth() > byteString3.getTreeDepth() && ropeByteString.treeDepth > byteString.getTreeDepth()) {
                return new RopeByteString(byteString4, new RopeByteString(byteString3, byteString));
            }
        }
        if (size3 >= RopeByteString.minLengthByDepth[Math.max(getTreeDepth(), byteString.getTreeDepth()) + 1]) {
            return new RopeByteString(this, byteString);
        }
        ConnectionPool connectionPool = new ConnectionPool(7);
        connectionPool.doBalance(this);
        connectionPool.doBalance(byteString);
        Stack stack = (Stack) connectionPool.delegate;
        ByteString byteString5 = (ByteString) stack.pop();
        while (!stack.isEmpty()) {
            byteString5 = new RopeByteString((ByteString) stack.pop(), byteString5);
        }
        return byteString5;
    }

    public final void copyTo(int i, int i2, int i3, byte[] bArr) {
        if (i < 0) {
            Gson$$ExternalSyntheticBUOutline0.m(30, i, "Source offset < 0: ");
            return;
        }
        if (i2 < 0) {
            Gson$$ExternalSyntheticBUOutline0.m(30, i2, "Target offset < 0: ");
            return;
        }
        if (i3 < 0) {
            Gson$$ExternalSyntheticBUOutline0.m(23, i3, "Length < 0: ");
            return;
        }
        int i4 = i + i3;
        if (i4 > size()) {
            Gson$$ExternalSyntheticBUOutline0.m(34, i4, "Source end offset < 0: ");
            return;
        }
        int i5 = i2 + i3;
        if (i5 > bArr.length) {
            Gson$$ExternalSyntheticBUOutline0.m(34, i5, "Target end offset < 0: ");
        } else if (i3 > 0) {
            copyToInternal(i, i2, i3, bArr);
        }
    }

    public abstract void copyToInternal(int i, int i2, int i3, byte[] bArr);

    public abstract int getTreeDepth();

    public abstract boolean isBalanced();

    public abstract boolean isValidUtf8();

    public abstract int partialHash(int i, int i2, int i3);

    public abstract int partialIsValidUtf8(int i, int i2, int i3);

    public abstract int peekCachedHashCode();

    public abstract int size();

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    public abstract String toString$1();

    public final String toStringUtf8() {
        try {
            return toString$1();
        } catch (UnsupportedEncodingException e) {
            ContextsKt$$ExternalSyntheticBUOutline0.m("UTF-8 not supported?", (Throwable) e);
            return null;
        }
    }

    public abstract void writeToInternal(OutputStream outputStream, int i, int i2);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Output extends OutputStream {
        public static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
        public int bufferPos;
        public int flushedBuffersTotalBytes;
        public final ArrayList flushedBuffers = new ArrayList();
        public byte[] buffer = new byte[128];

        public final void flushFullBuffer(int i) {
            this.flushedBuffers.add(new LiteralByteString(this.buffer));
            int length = this.flushedBuffersTotalBytes + this.buffer.length;
            this.flushedBuffersTotalBytes = length;
            this.buffer = new byte[Math.max(128, Math.max(i, length >>> 1))];
            this.bufferPos = 0;
        }

        public final void flushLastBuffer() {
            int i = this.bufferPos;
            byte[] bArr = this.buffer;
            int length = bArr.length;
            ArrayList arrayList = this.flushedBuffers;
            if (i >= length) {
                arrayList.add(new LiteralByteString(bArr));
                this.buffer = EMPTY_BYTE_ARRAY;
            } else if (i > 0) {
                byte[] bArr2 = new byte[i];
                System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, i));
                arrayList.add(new LiteralByteString(bArr2));
            }
            this.flushedBuffersTotalBytes += this.bufferPos;
            this.bufferPos = 0;
        }

        public final synchronized ByteString toByteString() {
            ArrayList arrayList;
            flushLastBuffer();
            arrayList = this.flushedBuffers;
            return arrayList.isEmpty() ? ByteString.EMPTY : ByteString.balancedConcat(arrayList.iterator(), arrayList.size());
        }

        public final String toString() {
            int i;
            String hexString = Integer.toHexString(System.identityHashCode(this));
            synchronized (this) {
                i = this.flushedBuffersTotalBytes + this.bufferPos;
            }
            return String.format("<ByteString.Output@%s size=%d>", hexString, Integer.valueOf(i));
        }

        @Override // java.io.OutputStream
        public final synchronized void write(byte[] bArr, int i, int i2) {
            try {
                byte[] bArr2 = this.buffer;
                int length = bArr2.length;
                int i3 = this.bufferPos;
                if (i2 <= length - i3) {
                    System.arraycopy(bArr, i, bArr2, i3, i2);
                    this.bufferPos += i2;
                } else {
                    int length2 = bArr2.length - i3;
                    System.arraycopy(bArr, i, bArr2, i3, length2);
                    int i4 = i2 - length2;
                    flushFullBuffer(i4);
                    System.arraycopy(bArr, i + length2, this.buffer, 0, i4);
                    this.bufferPos = i4;
                }
            } catch (Throwable th) {
                throw th;
            }
        }

        @Override // java.io.OutputStream
        public final synchronized void write(int i) {
            try {
                if (this.bufferPos == this.buffer.length) {
                    flushFullBuffer(1);
                }
                byte[] bArr = this.buffer;
                int i2 = this.bufferPos;
                this.bufferPos = i2 + 1;
                bArr[i2] = (byte) i;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
