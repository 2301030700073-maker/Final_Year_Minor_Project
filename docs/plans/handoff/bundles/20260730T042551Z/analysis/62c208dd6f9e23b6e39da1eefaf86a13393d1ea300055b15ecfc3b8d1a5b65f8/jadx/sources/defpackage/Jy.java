package defpackage;

import android.util.Base64;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.UUID;

/* loaded from: classes3.dex */
public final class Jy {

    /* renamed from: do, reason: not valid java name */
    public static final byte f1733do = Byte.parseByte("01110000", 2);

    /* renamed from: if, reason: not valid java name */
    public static final byte f1734if = Byte.parseByte("00001111", 2);

    /* renamed from: do, reason: not valid java name */
    public static String m1091do() {
        UUID randomUUID = UUID.randomUUID();
        ByteBuffer wrap = ByteBuffer.wrap(new byte[17]);
        wrap.putLong(randomUUID.getMostSignificantBits());
        wrap.putLong(randomUUID.getLeastSignificantBits());
        byte[] array = wrap.array();
        byte b = array[0];
        array[16] = b;
        array[0] = (byte) ((b & f1734if) | f1733do);
        return new String(Base64.encode(array, 11), Charset.defaultCharset()).substring(0, 22);
    }
}
