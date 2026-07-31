package okhttp3.internal.http2;

import com.jcraft.jzlib.Adler32;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Header {
    public static final ByteString PSEUDO_PREFIX;
    public static final ByteString RESPONSE_STATUS;
    public static final ByteString TARGET_AUTHORITY;
    public static final ByteString TARGET_METHOD;
    public static final ByteString TARGET_PATH;
    public static final ByteString TARGET_SCHEME;
    public final int hpackSize;
    public final ByteString name;
    public final ByteString value;

    static {
        ByteString byteString = ByteString.EMPTY;
        PSEUDO_PREFIX = Adler32.encodeUtf8(":");
        RESPONSE_STATUS = Adler32.encodeUtf8(":status");
        TARGET_METHOD = Adler32.encodeUtf8(":method");
        TARGET_PATH = Adler32.encodeUtf8(":path");
        TARGET_SCHEME = Adler32.encodeUtf8(":scheme");
        TARGET_AUTHORITY = Adler32.encodeUtf8(":authority");
    }

    public Header(ByteString byteString, ByteString byteString2) {
        byteString.getClass();
        byteString2.getClass();
        this.name = byteString;
        this.value = byteString2;
        this.hpackSize = byteString2.getSize$okio() + byteString.getSize$okio() + 32;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Header)) {
            return false;
        }
        Header header = (Header) obj;
        return Intrinsics.areEqual(this.name, header.name) && Intrinsics.areEqual(this.value, header.value);
    }

    public final int hashCode() {
        return this.value.hashCode() + (this.name.hashCode() * 31);
    }

    public final String toString() {
        return this.name.utf8() + ": " + this.value.utf8();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Header(String str, String str2) {
        this(Adler32.encodeUtf8(str), Adler32.encodeUtf8(str2));
        ByteString byteString = ByteString.EMPTY;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Header(ByteString byteString, String str) {
        this(byteString, Adler32.encodeUtf8(str));
        byteString.getClass();
        str.getClass();
        ByteString byteString2 = ByteString.EMPTY;
    }
}
