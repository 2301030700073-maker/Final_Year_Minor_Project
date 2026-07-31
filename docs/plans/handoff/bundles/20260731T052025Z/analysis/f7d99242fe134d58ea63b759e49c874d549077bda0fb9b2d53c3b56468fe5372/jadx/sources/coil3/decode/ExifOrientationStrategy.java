package coil3.decode;

import coil3.decode.ExifOrientationStrategy;
import coil3.util.UtilsKt;
import okio.BufferedSource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface ExifOrientationStrategy {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final ExifOrientationStrategy IGNORE;
    public static final ExifOrientationStrategy RESPECT_ALL;
    public static final ExifOrientationStrategy RESPECT_PERFORMANCE;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: coil3.decode.ExifOrientationStrategy$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static final /* synthetic */ int $r8$clinit = 0;

        static {
            Companion companion = ExifOrientationStrategy.Companion;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }
    }

    static {
        final int i = 0;
        IGNORE = new ExifOrientationStrategy() { // from class: coil3.decode.ExifOrientationStrategy$$ExternalSyntheticLambda0
            @Override // coil3.decode.ExifOrientationStrategy
            public final boolean supports(String str, BufferedSource bufferedSource) {
                switch (i) {
                    case 0:
                        int i2 = ExifOrientationStrategy.CC.$r8$clinit;
                        break;
                    case 1:
                        int i3 = ExifOrientationStrategy.CC.$r8$clinit;
                        if (str != null) {
                            if (str.equals(UtilsKt.MIME_TYPE_JPEG) || str.equals(UtilsKt.MIME_TYPE_WEBP) || str.equals(UtilsKt.MIME_TYPE_HEIC) || str.equals(UtilsKt.MIME_TYPE_HEIF)) {
                                break;
                            }
                        }
                        break;
                    default:
                        int i4 = ExifOrientationStrategy.CC.$r8$clinit;
                        break;
                }
                return true;
            }
        };
        final int i2 = 1;
        RESPECT_PERFORMANCE = new ExifOrientationStrategy() { // from class: coil3.decode.ExifOrientationStrategy$$ExternalSyntheticLambda0
            @Override // coil3.decode.ExifOrientationStrategy
            public final boolean supports(String str, BufferedSource bufferedSource) {
                switch (i2) {
                    case 0:
                        int i22 = ExifOrientationStrategy.CC.$r8$clinit;
                        break;
                    case 1:
                        int i3 = ExifOrientationStrategy.CC.$r8$clinit;
                        if (str != null) {
                            if (str.equals(UtilsKt.MIME_TYPE_JPEG) || str.equals(UtilsKt.MIME_TYPE_WEBP) || str.equals(UtilsKt.MIME_TYPE_HEIC) || str.equals(UtilsKt.MIME_TYPE_HEIF)) {
                                break;
                            }
                        }
                        break;
                    default:
                        int i4 = ExifOrientationStrategy.CC.$r8$clinit;
                        break;
                }
                return true;
            }
        };
        final int i3 = 2;
        RESPECT_ALL = new ExifOrientationStrategy() { // from class: coil3.decode.ExifOrientationStrategy$$ExternalSyntheticLambda0
            @Override // coil3.decode.ExifOrientationStrategy
            public final boolean supports(String str, BufferedSource bufferedSource) {
                switch (i3) {
                    case 0:
                        int i22 = ExifOrientationStrategy.CC.$r8$clinit;
                        break;
                    case 1:
                        int i32 = ExifOrientationStrategy.CC.$r8$clinit;
                        if (str != null) {
                            if (str.equals(UtilsKt.MIME_TYPE_JPEG) || str.equals(UtilsKt.MIME_TYPE_WEBP) || str.equals(UtilsKt.MIME_TYPE_HEIC) || str.equals(UtilsKt.MIME_TYPE_HEIF)) {
                                break;
                            }
                        }
                        break;
                    default:
                        int i4 = ExifOrientationStrategy.CC.$r8$clinit;
                        break;
                }
                return true;
            }
        };
    }

    boolean supports(String str, BufferedSource bufferedSource);
}
