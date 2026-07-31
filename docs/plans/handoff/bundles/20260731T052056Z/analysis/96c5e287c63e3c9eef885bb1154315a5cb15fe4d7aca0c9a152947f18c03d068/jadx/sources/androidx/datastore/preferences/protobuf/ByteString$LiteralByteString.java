package androidx.datastore.preferences.protobuf;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;
import org.jsoup.nodes.Attributes;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class ByteString$LiteralByteString implements Iterable, Serializable {
    public static final ByteString$LiteralByteString EMPTY = new ByteString$LiteralByteString(Internal.EMPTY_BYTE_ARRAY);
    public static final ByteString$ArraysByteArrayCopier byteArrayCopier;
    public final byte[] bytes;
    public int hash = 0;

    static {
        byteArrayCopier = Android.isOnAndroidDevice() ? new ByteString$ArraysByteArrayCopier(1) : new ByteString$ArraysByteArrayCopier(0);
    }

    public ByteString$LiteralByteString(byte[] bArr) {
        bArr.getClass();
        this.bytes = bArr;
    }

    public static ByteString$LiteralByteString copyFrom(byte[] bArr, int i, int i2) {
        byte[] copyOfRange;
        int i3 = i + i2;
        int length = bArr.length;
        if (((i3 - i) | i | i3 | (length - i3)) < 0) {
            if (i < 0) {
                Gson$$ExternalSyntheticBUOutline0.m$2(Animation.CC.m(i, "Beginning index: ", " < 0"));
            } else if (i3 < i) {
                Gson$$ExternalSyntheticBUOutline0.m$2(Modifier.CC.m(i, i3, "Beginning index larger than ending index: ", ", "));
            } else {
                Gson$$ExternalSyntheticBUOutline0.m$2(Modifier.CC.m(i3, length, "End index: ", " >= "));
            }
        }
        switch (byteArrayCopier.$r8$classId) {
            case 0:
                copyOfRange = Arrays.copyOfRange(bArr, i, i2 + i);
                break;
            default:
                copyOfRange = new byte[i2];
                System.arraycopy(bArr, i, copyOfRange, 0, i2);
                break;
        }
        return new ByteString$LiteralByteString(copyOfRange);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ByteString$LiteralByteString) || size() != ((ByteString$LiteralByteString) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof ByteString$LiteralByteString)) {
            return obj.equals(this);
        }
        ByteString$LiteralByteString byteString$LiteralByteString = (ByteString$LiteralByteString) obj;
        int i = this.hash;
        int i2 = byteString$LiteralByteString.hash;
        if (i != 0 && i2 != 0 && i != i2) {
            return false;
        }
        int size = size();
        if (size > byteString$LiteralByteString.size()) {
            throw new IllegalArgumentException("Length too large: " + size + size());
        }
        if (size > byteString$LiteralByteString.size()) {
            StringBuilder m20m = Animation.CC.m20m(size, "Ran off end of other: 0, ", ", ");
            m20m.append(byteString$LiteralByteString.size());
            throw new IllegalArgumentException(m20m.toString());
        }
        byte[] bArr = byteString$LiteralByteString.bytes;
        int offsetIntoBytes = getOffsetIntoBytes() + size;
        int offsetIntoBytes2 = getOffsetIntoBytes();
        int offsetIntoBytes3 = byteString$LiteralByteString.getOffsetIntoBytes();
        while (offsetIntoBytes2 < offsetIntoBytes) {
            if (this.bytes[offsetIntoBytes2] != bArr[offsetIntoBytes3]) {
                return false;
            }
            offsetIntoBytes2++;
            offsetIntoBytes3++;
        }
        return true;
    }

    public int getOffsetIntoBytes() {
        return 0;
    }

    public final int hashCode() {
        int i = this.hash;
        if (i != 0) {
            return i;
        }
        int size = size();
        int offsetIntoBytes = getOffsetIntoBytes();
        int i2 = size;
        for (int i3 = offsetIntoBytes; i3 < offsetIntoBytes + size; i3++) {
            i2 = (i2 * 31) + this.bytes[i3];
        }
        if (i2 == 0) {
            i2 = 1;
        }
        this.hash = i2;
        return i2;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new Attributes.AnonymousClass1(this);
    }

    public int size() {
        return this.bytes.length;
    }

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }
}
