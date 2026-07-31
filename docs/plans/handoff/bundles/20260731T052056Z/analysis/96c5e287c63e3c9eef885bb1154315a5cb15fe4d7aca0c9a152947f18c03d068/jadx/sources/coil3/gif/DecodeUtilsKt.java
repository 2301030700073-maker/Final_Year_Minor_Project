package coil3.gif;

import okio.ByteString;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class DecodeUtilsKt {
    public static final ByteString GIF_HEADER_87A;
    public static final ByteString GIF_HEADER_89A;
    public static final ByteString HEIF_HEADER_FTYP;
    public static final ByteString HEIF_HEADER_HEVC;
    public static final ByteString HEIF_HEADER_HEVX;
    public static final ByteString HEIF_HEADER_MSF1;
    public static final ByteString WEBP_HEADER_RIFF;
    public static final ByteString WEBP_HEADER_VPX8;
    public static final ByteString WEBP_HEADER_WEBP;

    static {
        ByteString byteString = ByteString.EMPTY;
        GIF_HEADER_87A = ByteString.Companion.encodeUtf8("GIF87a");
        GIF_HEADER_89A = ByteString.Companion.encodeUtf8("GIF89a");
        WEBP_HEADER_RIFF = ByteString.Companion.encodeUtf8("RIFF");
        WEBP_HEADER_WEBP = ByteString.Companion.encodeUtf8("WEBP");
        WEBP_HEADER_VPX8 = ByteString.Companion.encodeUtf8("VP8X");
        HEIF_HEADER_FTYP = ByteString.Companion.encodeUtf8("ftyp");
        HEIF_HEADER_MSF1 = ByteString.Companion.encodeUtf8("msf1");
        HEIF_HEADER_HEVC = ByteString.Companion.encodeUtf8("hevc");
        HEIF_HEADER_HEVX = ByteString.Companion.encodeUtf8("hevx");
    }
}
