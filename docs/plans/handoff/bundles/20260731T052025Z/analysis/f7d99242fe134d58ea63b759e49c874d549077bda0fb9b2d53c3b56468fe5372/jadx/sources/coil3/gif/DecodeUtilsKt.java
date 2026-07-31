package coil3.gif;

import coil3.decode.DecodeUtils;
import com.jcraft.jzlib.Adler32;
import okio.BufferedSource;
import okio.ByteString;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DecodeUtilsKt {
    private static final ByteString GIF_HEADER_87A;
    private static final ByteString GIF_HEADER_89A;
    private static final ByteString HEIF_HEADER_FTYP;
    private static final ByteString HEIF_HEADER_HEVC;
    private static final ByteString HEIF_HEADER_HEVX;
    private static final ByteString HEIF_HEADER_MSF1;
    private static final ByteString WEBP_HEADER_RIFF;
    private static final ByteString WEBP_HEADER_VPX8;
    private static final ByteString WEBP_HEADER_WEBP;

    static {
        ByteString byteString = ByteString.EMPTY;
        GIF_HEADER_87A = Adler32.encodeUtf8("GIF87a");
        GIF_HEADER_89A = Adler32.encodeUtf8("GIF89a");
        WEBP_HEADER_RIFF = Adler32.encodeUtf8("RIFF");
        WEBP_HEADER_WEBP = Adler32.encodeUtf8("WEBP");
        WEBP_HEADER_VPX8 = Adler32.encodeUtf8("VP8X");
        HEIF_HEADER_FTYP = Adler32.encodeUtf8("ftyp");
        HEIF_HEADER_MSF1 = Adler32.encodeUtf8("msf1");
        HEIF_HEADER_HEVC = Adler32.encodeUtf8("hevc");
        HEIF_HEADER_HEVX = Adler32.encodeUtf8("hevx");
    }

    public static final boolean isAnimatedHeif(DecodeUtils decodeUtils, BufferedSource bufferedSource) {
        if (isHeif(decodeUtils, bufferedSource)) {
            return bufferedSource.rangeEquals(8L, HEIF_HEADER_MSF1) || bufferedSource.rangeEquals(8L, HEIF_HEADER_HEVC) || bufferedSource.rangeEquals(8L, HEIF_HEADER_HEVX);
        }
        return false;
    }

    public static final boolean isAnimatedWebP(DecodeUtils decodeUtils, BufferedSource bufferedSource) {
        return isWebP(decodeUtils, bufferedSource) && bufferedSource.rangeEquals(12L, WEBP_HEADER_VPX8) && bufferedSource.request(21L) && ((byte) (bufferedSource.getBuffer().getByte(20L) & 2)) > 0;
    }

    public static final boolean isGif(DecodeUtils decodeUtils, BufferedSource bufferedSource) {
        return bufferedSource.rangeEquals(0L, GIF_HEADER_89A) || bufferedSource.rangeEquals(0L, GIF_HEADER_87A);
    }

    public static final boolean isHeif(DecodeUtils decodeUtils, BufferedSource bufferedSource) {
        return bufferedSource.rangeEquals(4L, HEIF_HEADER_FTYP);
    }

    public static final boolean isWebP(DecodeUtils decodeUtils, BufferedSource bufferedSource) {
        return bufferedSource.rangeEquals(0L, WEBP_HEADER_RIFF) && bufferedSource.rangeEquals(8L, WEBP_HEADER_WEBP);
    }
}
