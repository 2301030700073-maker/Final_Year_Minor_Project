package coil3.svg;

import okio.ByteString;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class DecodeUtilsKt {
    public static final ByteString LEFT_ANGLE_BRACKET;
    public static final ByteString SVG_TAG;

    static {
        ByteString byteString = ByteString.EMPTY;
        SVG_TAG = ByteString.Companion.encodeUtf8("<svg");
        LEFT_ANGLE_BRACKET = ByteString.Companion.encodeUtf8("<");
    }
}
