package kotlin.reflect.jvm.internal.impl.protobuf;

import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Stack;
import org.jsoup.nodes.Attributes;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RopeByteString extends ByteString {
    public static final int[] minLengthByDepth;
    public int hash = 0;
    public final ByteString left;
    public final int leftLength;
    public final ByteString right;
    public final int totalLength;
    public final int treeDepth;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PieceIterator implements Iterator {
        public final Stack breadCrumbs = new Stack();
        public LiteralByteString next;

        public PieceIterator(ByteString byteString) {
            while (byteString instanceof RopeByteString) {
                RopeByteString ropeByteString = (RopeByteString) byteString;
                this.breadCrumbs.push(ropeByteString);
                byteString = ropeByteString.left;
            }
            this.next = (LiteralByteString) byteString;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.next != null;
        }

        @Override // java.util.Iterator
        public final LiteralByteString next() {
            LiteralByteString literalByteString = this.next;
            LiteralByteString literalByteString2 = null;
            if (literalByteString == null) {
                Utils$$ExternalSyntheticBUOutline0.m();
                return null;
            }
            while (true) {
                Stack stack = this.breadCrumbs;
                if (!stack.isEmpty()) {
                    ByteString byteString = ((RopeByteString) stack.pop()).right;
                    while (byteString instanceof RopeByteString) {
                        RopeByteString ropeByteString = (RopeByteString) byteString;
                        stack.push(ropeByteString);
                        byteString = ropeByteString.left;
                    }
                    LiteralByteString literalByteString3 = (LiteralByteString) byteString;
                    if (literalByteString3.bytes.length != 0) {
                        literalByteString2 = literalByteString3;
                        break;
                    }
                } else {
                    break;
                }
            }
            this.next = literalByteString2;
            return literalByteString;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RopeByteIterator implements Iterator {
        public Attributes.AnonymousClass1 bytes;
        public int bytesRemaining;
        public final PieceIterator pieces;

        public RopeByteIterator(RopeByteString ropeByteString) {
            PieceIterator pieceIterator = new PieceIterator(ropeByteString);
            this.pieces = pieceIterator;
            this.bytes = new Attributes.AnonymousClass1(pieceIterator.next());
            this.bytesRemaining = ropeByteString.totalLength;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.bytesRemaining > 0;
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (!this.bytes.hasNext()) {
                this.bytes = new Attributes.AnonymousClass1(this.pieces.next());
            }
            this.bytesRemaining--;
            return Byte.valueOf(this.bytes.nextByte());
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        int i = 1;
        int i2 = 1;
        while (i > 0) {
            arrayList.add(Integer.valueOf(i));
            int i3 = i2 + i;
            i2 = i;
            i = i3;
        }
        arrayList.add(Integer.MAX_VALUE);
        minLengthByDepth = new int[arrayList.size()];
        int i4 = 0;
        while (true) {
            int[] iArr = minLengthByDepth;
            if (i4 >= iArr.length) {
                return;
            }
            iArr[i4] = ((Integer) arrayList.get(i4)).intValue();
            i4++;
        }
    }

    public RopeByteString(ByteString byteString, ByteString byteString2) {
        this.left = byteString;
        this.right = byteString2;
        int size = byteString.size();
        this.leftLength = size;
        this.totalLength = byteString2.size() + size;
        this.treeDepth = Math.max(byteString.getTreeDepth(), byteString2.getTreeDepth()) + 1;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public final void copyToInternal(int i, int i2, int i3, byte[] bArr) {
        int i4 = i + i3;
        ByteString byteString = this.left;
        int i5 = this.leftLength;
        if (i4 <= i5) {
            byteString.copyToInternal(i, i2, i3, bArr);
            return;
        }
        ByteString byteString2 = this.right;
        if (i >= i5) {
            byteString2.copyToInternal(i - i5, i2, i3, bArr);
            return;
        }
        int i6 = i5 - i;
        byteString.copyToInternal(i, i2, i6, bArr);
        byteString2.copyToInternal(0, i2 + i6, i3 - i6, bArr);
    }

    public final boolean equals(Object obj) {
        int peekCachedHashCode;
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            int size = byteString.size();
            int i = this.totalLength;
            if (i == size) {
                if (i == 0) {
                    return true;
                }
                if (this.hash == 0 || (peekCachedHashCode = byteString.peekCachedHashCode()) == 0 || this.hash == peekCachedHashCode) {
                    PieceIterator pieceIterator = new PieceIterator(this);
                    LiteralByteString next = pieceIterator.next();
                    PieceIterator pieceIterator2 = new PieceIterator(byteString);
                    LiteralByteString next2 = pieceIterator2.next();
                    int i2 = 0;
                    int i3 = 0;
                    int i4 = 0;
                    while (true) {
                        int length = next.bytes.length - i2;
                        int length2 = next2.bytes.length - i3;
                        int min = Math.min(length, length2);
                        if (!(i2 == 0 ? next.equalsRange(next2, i3, min) : next2.equalsRange(next, i2, min))) {
                            break;
                        }
                        i4 += min;
                        if (i4 >= i) {
                            if (i4 == i) {
                                return true;
                            }
                            Gson$$ExternalSyntheticBUOutline0.m();
                            return false;
                        }
                        if (min == length) {
                            next = pieceIterator.next();
                            i2 = 0;
                        } else {
                            i2 += min;
                        }
                        if (min == length2) {
                            next2 = pieceIterator2.next();
                            i3 = 0;
                        } else {
                            i3 += min;
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public final int getTreeDepth() {
        return this.treeDepth;
    }

    public final int hashCode() {
        int i = this.hash;
        if (i == 0) {
            int i2 = this.totalLength;
            i = partialHash(i2, 0, i2);
            if (i == 0) {
                i = 1;
            }
            this.hash = i;
        }
        return i;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public final boolean isBalanced() {
        return this.totalLength >= minLengthByDepth[this.treeDepth];
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public final boolean isValidUtf8() {
        int partialIsValidUtf8 = this.left.partialIsValidUtf8(0, 0, this.leftLength);
        ByteString byteString = this.right;
        return byteString.partialIsValidUtf8(partialIsValidUtf8, 0, byteString.size()) == 0;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new RopeByteIterator(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public final int partialHash(int i, int i2, int i3) {
        int i4 = i2 + i3;
        ByteString byteString = this.left;
        int i5 = this.leftLength;
        if (i4 <= i5) {
            return byteString.partialHash(i, i2, i3);
        }
        ByteString byteString2 = this.right;
        if (i2 >= i5) {
            return byteString2.partialHash(i, i2 - i5, i3);
        }
        int i6 = i5 - i2;
        return byteString2.partialHash(byteString.partialHash(i, i2, i6), 0, i3 - i6);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public final int partialIsValidUtf8(int i, int i2, int i3) {
        int i4 = i2 + i3;
        ByteString byteString = this.left;
        int i5 = this.leftLength;
        if (i4 <= i5) {
            return byteString.partialIsValidUtf8(i, i2, i3);
        }
        ByteString byteString2 = this.right;
        if (i2 >= i5) {
            return byteString2.partialIsValidUtf8(i, i2 - i5, i3);
        }
        int i6 = i5 - i2;
        return byteString2.partialIsValidUtf8(byteString.partialIsValidUtf8(i, i2, i6), 0, i3 - i6);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public final int peekCachedHashCode() {
        return this.hash;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public final int size() {
        return this.totalLength;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public final String toString$1() {
        byte[] bArr;
        int i = this.totalLength;
        if (i == 0) {
            bArr = Internal.EMPTY_BYTE_ARRAY;
        } else {
            byte[] bArr2 = new byte[i];
            copyToInternal(0, 0, i, bArr2);
            bArr = bArr2;
        }
        return new String(bArr, "UTF-8");
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.ByteString
    public final void writeToInternal(OutputStream outputStream, int i, int i2) {
        int i3 = i + i2;
        ByteString byteString = this.left;
        int i4 = this.leftLength;
        if (i3 <= i4) {
            byteString.writeToInternal(outputStream, i, i2);
            return;
        }
        ByteString byteString2 = this.right;
        if (i >= i4) {
            byteString2.writeToInternal(outputStream, i - i4, i2);
            return;
        }
        int i5 = i4 - i;
        byteString.writeToInternal(outputStream, i, i5);
        byteString2.writeToInternal(outputStream, 0, i2 - i5);
    }
}
