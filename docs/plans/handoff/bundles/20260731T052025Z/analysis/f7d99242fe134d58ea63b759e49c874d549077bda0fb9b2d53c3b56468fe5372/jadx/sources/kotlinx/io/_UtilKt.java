package kotlinx.io;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class _UtilKt {
    public static final char[] HEX_DIGIT_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static final void checkOffsetAndCount(long j, long j2) {
        if (0 > j || j < j2 || j2 < 0) {
            throw new IllegalArgumentException("offset (0) and byteCount (" + j2 + ") are not within the range [0..size(" + j + "))");
        }
    }
}
