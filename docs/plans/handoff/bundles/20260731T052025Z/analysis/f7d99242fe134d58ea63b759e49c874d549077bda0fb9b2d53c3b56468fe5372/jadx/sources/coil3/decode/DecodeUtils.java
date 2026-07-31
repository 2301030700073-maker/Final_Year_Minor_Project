package coil3.decode;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.Dimension;
import coil3.size.Scale;
import coil3.size.Size;
import coil3.size.SizeKt;
import coil3.util.IntPair;
import coil3.util.UtilsKt;
import kotlin.Deprecated;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DecodeUtils {
    public static final DecodeUtils INSTANCE = new DecodeUtils();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Scale.values().length];
            try {
                iArr[Scale.FILL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Scale.FIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private DecodeUtils() {
    }

    public static final int calculateInSampleSize(int i, int i2, int i3, int i4, Scale scale) {
        int min;
        int highestOneBit = Integer.highestOneBit(i / i3);
        int highestOneBit2 = Integer.highestOneBit(i2 / i4);
        int i5 = WhenMappings.$EnumSwitchMapping$0[scale.ordinal()];
        if (i5 == 1) {
            min = Math.min(highestOneBit, highestOneBit2);
        } else {
            if (i5 != 2) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return 0;
            }
            min = Math.max(highestOneBit, highestOneBit2);
        }
        if (min < 1) {
            return 1;
        }
        return min;
    }

    /* renamed from: computeDstSize-sEdh43o, reason: not valid java name */
    public static final long m858computeDstSizesEdh43o(int i, int i2, Size size, Scale scale, Size size2) {
        int m908unboximpl;
        int m908unboximpl2;
        if (!SizeKt.isOriginal(size)) {
            DecodeUtils decodeUtils = INSTANCE;
            int px = decodeUtils.toPx(size.getWidth(), scale);
            i2 = decodeUtils.toPx(size.getHeight(), scale);
            i = px;
        }
        if ((size2.getWidth() instanceof Dimension.Pixels) && !UtilsKt.isMinOrMax(i) && i > (m908unboximpl2 = ((Dimension.Pixels) size2.getWidth()).m908unboximpl())) {
            i = m908unboximpl2;
        }
        if ((size2.getHeight() instanceof Dimension.Pixels) && !UtilsKt.isMinOrMax(i2) && i2 > (m908unboximpl = ((Dimension.Pixels) size2.getHeight()).m908unboximpl())) {
            i2 = m908unboximpl;
        }
        return IntPair.m913constructorimpl(i, i2);
    }

    public static final double computeSizeMultiplier(int i, int i2, int i3, int i4, Scale scale, Size size) {
        double max;
        double d = i;
        double d2 = i3 / d;
        double d3 = i2;
        double d4 = i4 / d3;
        int i5 = WhenMappings.$EnumSwitchMapping$0[scale.ordinal()];
        if (i5 == 1) {
            max = Math.max(d2, d4);
        } else {
            if (i5 != 2) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return 0.0d;
            }
            max = Math.min(d2, d4);
        }
        if (size.getWidth() instanceof Dimension.Pixels) {
            double m908unboximpl = ((Dimension.Pixels) size.getWidth()).m908unboximpl() / d;
            if (max > m908unboximpl) {
                max = m908unboximpl;
            }
        }
        if (size.getHeight() instanceof Dimension.Pixels) {
            double m908unboximpl2 = ((Dimension.Pixels) size.getHeight()).m908unboximpl() / d3;
            if (max > m908unboximpl2) {
                return m908unboximpl2;
            }
        }
        return max;
    }

    private final int toPx(Dimension dimension, Scale scale) {
        if (dimension instanceof Dimension.Pixels) {
            return ((Dimension.Pixels) dimension).m908unboximpl();
        }
        int i = WhenMappings.$EnumSwitchMapping$0[scale.ordinal()];
        if (i == 1) {
            return Integer.MIN_VALUE;
        }
        if (i == 2) {
            return Integer.MAX_VALUE;
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return 0;
    }

    @Deprecated
    public static final double computeSizeMultiplier(int i, int i2, int i3, int i4, Scale scale) {
        return computeSizeMultiplier(i, i2, i3, i4, scale, Size.ORIGINAL);
    }

    @Deprecated
    public static final float computeSizeMultiplier(float f, float f2, float f3, float f4, Scale scale) {
        return computeSizeMultiplier(f, f2, f3, f4, scale, Size.ORIGINAL);
    }

    public static final float computeSizeMultiplier(float f, float f2, float f3, float f4, Scale scale, Size size) {
        float max;
        float f5 = f3 / f;
        float f6 = f4 / f2;
        int i = WhenMappings.$EnumSwitchMapping$0[scale.ordinal()];
        if (i == 1) {
            max = Math.max(f5, f6);
        } else if (i == 2) {
            max = Math.min(f5, f6);
        } else {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return 0.0f;
        }
        if (size.getWidth() instanceof Dimension.Pixels) {
            float m908unboximpl = ((Dimension.Pixels) size.getWidth()).m908unboximpl() / f;
            if (max > m908unboximpl) {
                max = m908unboximpl;
            }
        }
        if (size.getHeight() instanceof Dimension.Pixels) {
            float m908unboximpl2 = ((Dimension.Pixels) size.getHeight()).m908unboximpl() / f2;
            if (max > m908unboximpl2) {
                return m908unboximpl2;
            }
        }
        return max;
    }

    @Deprecated
    public static final double computeSizeMultiplier(double d, double d2, double d3, double d4, Scale scale) {
        return computeSizeMultiplier(d, d2, d3, d4, scale, Size.ORIGINAL);
    }

    public static final double computeSizeMultiplier(double d, double d2, double d3, double d4, Scale scale, Size size) {
        double max;
        double d5 = d3 / d;
        double d6 = d4 / d2;
        int i = WhenMappings.$EnumSwitchMapping$0[scale.ordinal()];
        if (i == 1) {
            max = Math.max(d5, d6);
        } else if (i == 2) {
            max = Math.min(d5, d6);
        } else {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return 0.0d;
        }
        if (size.getWidth() instanceof Dimension.Pixels) {
            double m908unboximpl = ((Dimension.Pixels) size.getWidth()).m908unboximpl() / d;
            if (max > m908unboximpl) {
                max = m908unboximpl;
            }
        }
        if (size.getHeight() instanceof Dimension.Pixels) {
            double m908unboximpl2 = ((Dimension.Pixels) size.getHeight()).m908unboximpl() / d2;
            if (max > m908unboximpl2) {
                return m908unboximpl2;
            }
        }
        return max;
    }
}
