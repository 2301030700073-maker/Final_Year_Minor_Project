package com.google.protobuf;

import androidx.compose.ui.Modifier;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import kotlin.math.MathKt;
import org.jsoup.nodes.Attributes;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ByteString implements Iterable, Serializable {
    public static final LiteralByteString EMPTY = new LiteralByteString(Internal.EMPTY_BYTE_ARRAY);
    public static final ArraysByteArrayCopier byteArrayCopier;
    private static final long serialVersionUID = 1;
    private int hash = 0;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ArraysByteArrayCopier {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ ArraysByteArrayCopier(int i) {
            this.$r8$classId = i;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class BoundedByteString extends LeafByteString {
        private static final long serialVersionUID = 1;
        private final byte[] bytes;
        private final int length;
        private final int offset;

        public BoundedByteString(byte[] bArr, int i, int i2) {
            ByteString.checkRange(i, i + i2, bArr.length);
            this.bytes = bArr;
            this.offset = i;
            this.length = i2;
        }

        private void readObject(ObjectInputStream objectInputStream) {
            throw new InvalidObjectException("BoundedByteStream instances are not to be serialized directly");
        }

        @Override // com.google.protobuf.ByteString
        public final void copyToInternal(int i, byte[] bArr) {
            System.arraycopy(this.bytes, this.offset, bArr, 0, i);
        }

        @Override // com.google.protobuf.ByteString
        public final boolean equalsInternal(ByteString byteString) {
            if (!(byteString instanceof LiteralByteString) && !(byteString instanceof BoundedByteString)) {
                return byteString.equalsInternal(this);
            }
            int i = this.length;
            if (i > byteString.size()) {
                throw new IllegalArgumentException("Length too large: " + i + this.length);
            }
            if (i > byteString.size()) {
                StringBuilder m179m = Modifier.CC.m179m("Ran off end of other: 0, ", i, ", ");
                m179m.append(byteString.size());
                throw new IllegalArgumentException(m179m.toString());
            }
            if (byteString instanceof LiteralByteString) {
                return ByteString.access$500(this.bytes, this.offset, 0, ((LiteralByteString) byteString).bytes, i);
            }
            if (!(byteString instanceof BoundedByteString)) {
                LeafByteString substringNoCopy = byteString.substringNoCopy(0, i);
                int i2 = this.offset;
                return substringNoCopy.equals(substringNoCopy(i2, i + i2));
            }
            BoundedByteString boundedByteString = (BoundedByteString) byteString;
            return ByteString.access$500(this.bytes, this.offset, boundedByteString.offset, boundedByteString.bytes, i);
        }

        @Override // com.google.protobuf.ByteString
        public final byte internalByteAt(int i) {
            return this.bytes[this.offset + i];
        }

        @Override // com.google.protobuf.ByteString
        public final int partialHash(int i, int i2) {
            return Internal.partialHash(i, this.bytes, this.offset, i2);
        }

        @Override // com.google.protobuf.ByteString
        public final int size() {
            return this.length;
        }

        @Override // com.google.protobuf.ByteString
        public final LeafByteString substringNoCopy(int i, int i2) {
            int checkRange = ByteString.checkRange(i, i2, this.length);
            return checkRange == 0 ? ByteString.EMPTY : new BoundedByteString(this.bytes, this.offset + i, checkRange);
        }

        @Override // com.google.protobuf.ByteString
        public final void writeTo(CodedOutputStream$ArrayEncoder codedOutputStream$ArrayEncoder) {
            codedOutputStream$ArrayEncoder.write(this.bytes, this.offset, this.length);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class LeafByteString extends ByteString {
        private static final long serialVersionUID = 1;

        @Override // java.lang.Iterable
        public final Iterator iterator() {
            return new Attributes.AnonymousClass1(this);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class LiteralByteString extends LeafByteString {
        private static final long serialVersionUID = 1;
        private final byte[] bytes;

        public LiteralByteString(byte[] bArr) {
            bArr.getClass();
            this.bytes = bArr;
        }

        @Override // com.google.protobuf.ByteString
        public final void copyToInternal(int i, byte[] bArr) {
            System.arraycopy(this.bytes, 0, bArr, 0, i);
        }

        @Override // com.google.protobuf.ByteString
        public final boolean equalsInternal(ByteString byteString) {
            if (byteString instanceof LiteralByteString) {
                return Arrays.equals(this.bytes, ((LiteralByteString) byteString).bytes);
            }
            if (!(byteString instanceof BoundedByteString)) {
                return byteString.equalsInternal(this);
            }
            int length = this.bytes.length;
            if (length > byteString.size()) {
                throw new IllegalArgumentException("Length too large: " + length + this.bytes.length);
            }
            if (length > byteString.size()) {
                StringBuilder m179m = Modifier.CC.m179m("Ran off end of other: 0, ", length, ", ");
                m179m.append(byteString.size());
                throw new IllegalArgumentException(m179m.toString());
            }
            boolean z = byteString instanceof LiteralByteString;
            byte[] bArr = this.bytes;
            if (z) {
                return ByteString.access$500(bArr, 0, 0, ((LiteralByteString) byteString).bytes, length);
            }
            BoundedByteString boundedByteString = (BoundedByteString) byteString;
            return ByteString.access$500(bArr, 0, boundedByteString.offset, boundedByteString.bytes, length);
        }

        @Override // com.google.protobuf.ByteString
        public final byte internalByteAt(int i) {
            return this.bytes[i];
        }

        @Override // com.google.protobuf.ByteString
        public final int partialHash(int i, int i2) {
            return Internal.partialHash(i, this.bytes, 0, i2);
        }

        @Override // com.google.protobuf.ByteString
        public final int size() {
            return this.bytes.length;
        }

        @Override // com.google.protobuf.ByteString
        public final LeafByteString substringNoCopy(int i, int i2) {
            int checkRange = ByteString.checkRange(0, i2, this.bytes.length);
            return checkRange == 0 ? ByteString.EMPTY : new BoundedByteString(this.bytes, 0, checkRange);
        }

        @Override // com.google.protobuf.ByteString
        public final void writeTo(CodedOutputStream$ArrayEncoder codedOutputStream$ArrayEncoder) {
            byte[] bArr = this.bytes;
            codedOutputStream$ArrayEncoder.write(bArr, 0, bArr.length);
        }
    }

    static {
        byteArrayCopier = Android.isOnAndroidDevice() ? new ArraysByteArrayCopier(1) : new ArraysByteArrayCopier(0);
    }

    public static boolean access$500(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        int i4 = i + i3;
        checkRange(i, i4, bArr.length);
        checkRange(i2, i3 + i2, bArr2.length);
        while (i < i4) {
            if (bArr[i] != bArr2[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    public static int checkRange(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m(Modifier.CC.m("Beginning index: ", i, " < 0"));
            return 0;
        }
        if (i2 < i) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m(Modifier.CC.m(i, i2, "Beginning index larger than ending index: ", ", "));
            return 0;
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m(Modifier.CC.m(i2, i3, "End index: ", " >= "));
        return 0;
    }

    public static LiteralByteString copyFrom(byte[] bArr, int i, int i2) {
        byte[] copyOfRange;
        try {
            if (i2 == 0) {
                return EMPTY;
            }
            checkRange(i, i + i2, bArr.length);
            switch (byteArrayCopier.$r8$classId) {
                case 0:
                    copyOfRange = Arrays.copyOfRange(bArr, i, i2 + i);
                    break;
                default:
                    copyOfRange = new byte[i2];
                    System.arraycopy(bArr, i, copyOfRange, 0, i2);
                    break;
            }
            return new LiteralByteString(copyOfRange);
        } catch (InvalidProtocolBufferException e) {
            throw new AssertionError("Expected no InvalidProtocolBufferException as data UTF8 validity is not checked.", e);
        }
    }

    public abstract void copyToInternal(int i, byte[] bArr);

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ByteString)) {
            return false;
        }
        ByteString byteString = (ByteString) obj;
        int size = size();
        if (size != byteString.size()) {
            return false;
        }
        if (size == 0) {
            return true;
        }
        int i = this.hash;
        int i2 = byteString.hash;
        if (i == 0 || i2 == 0 || i == i2) {
            return equalsInternal(byteString);
        }
        return false;
    }

    public abstract boolean equalsInternal(ByteString byteString);

    public final int hashCode() {
        int i = this.hash;
        if (i == 0) {
            int size = size();
            i = partialHash(size, size);
            if (i == 0) {
                i = 1;
            }
            this.hash = i;
        }
        return i;
    }

    public abstract byte internalByteAt(int i);

    public abstract int partialHash(int i, int i2);

    public abstract int size();

    public abstract LeafByteString substringNoCopy(int i, int i2);

    public final String toString() {
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int size = size();
        String escapeBytes = size() <= 50 ? MathKt.escapeBytes(this) : MathKt.escapeBytes(substringNoCopy(0, 47)).concat("...");
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(size);
        sb.append(" contents=\"");
        return Modifier.CC.m(sb, escapeBytes, "\">");
    }

    public abstract void writeTo(CodedOutputStream$ArrayEncoder codedOutputStream$ArrayEncoder);
}
