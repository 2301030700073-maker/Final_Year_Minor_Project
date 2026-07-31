package okhttp3.tls.internal.der;

import androidx.compose.animation.core.Animation;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BitString {
    public final ByteString byteString;
    public final int unusedBitsCount;

    public BitString(ByteString byteString, int i) {
        byteString.getClass();
        this.byteString = byteString;
        this.unusedBitsCount = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BitString)) {
            return false;
        }
        BitString bitString = (BitString) obj;
        return Intrinsics.areEqual(this.byteString, bitString.byteString) && this.unusedBitsCount == bitString.unusedBitsCount;
    }

    public final int hashCode() {
        return (this.byteString.hashCode() * 31) + this.unusedBitsCount;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BitString(byteString=");
        sb.append(this.byteString);
        sb.append(", unusedBitsCount=");
        return Animation.CC.m(sb, this.unusedBitsCount, ')');
    }
}
