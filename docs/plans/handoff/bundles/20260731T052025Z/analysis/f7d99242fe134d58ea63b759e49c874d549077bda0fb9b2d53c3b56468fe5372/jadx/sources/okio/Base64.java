package okio;

import com.jcraft.jzlib.Adler32;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* renamed from: okio.-Base64, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Base64 {
    public static final byte[] BASE64;

    static {
        ByteString byteString = ByteString.EMPTY;
        BASE64 = Adler32.encodeUtf8("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/").data;
        Adler32.encodeUtf8("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_");
    }
}
