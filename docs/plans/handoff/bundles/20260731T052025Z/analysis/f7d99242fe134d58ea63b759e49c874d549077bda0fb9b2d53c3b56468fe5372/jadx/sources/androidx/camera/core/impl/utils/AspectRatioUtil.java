package androidx.camera.core.impl.utils;

import android.util.Rational;
import android.util.Size;
import androidx.camera.core.internal.utils.SizeUtil;
import androidx.room.util.RelationUtil;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AspectRatioUtil {
    public static final Rational ASPECT_RATIO_4_3 = new Rational(4, 3);
    public static final Rational ASPECT_RATIO_3_4 = new Rational(3, 4);
    public static final Rational ASPECT_RATIO_16_9 = new Rational(16, 9);
    public static final Rational ASPECT_RATIO_9_16 = new Rational(9, 16);

    public static boolean hasMatchingAspectRatio(Rational rational, Size size) {
        Size size2 = SizeUtil.RESOLUTION_VGA;
        if (rational != null) {
            if (rational.equals(new Rational(size.getWidth(), size.getHeight()))) {
                return true;
            }
            if (size.getHeight() * size.getWidth() >= SizeUtil.getArea(size2)) {
                int width = size.getWidth();
                int height = size.getHeight();
                Rational rational2 = new Rational(rational.getDenominator(), rational.getNumerator());
                int i = width % 16;
                if (i == 0 && height % 16 == 0) {
                    if (ratioIntersectsMod16Segment(Math.max(0, height - 16), width, rational) || ratioIntersectsMod16Segment(Math.max(0, width - 16), height, rational2)) {
                        return true;
                    }
                } else {
                    if (i == 0) {
                        return ratioIntersectsMod16Segment(height, width, rational);
                    }
                    if (height % 16 == 0) {
                        return ratioIntersectsMod16Segment(width, height, rational2);
                    }
                }
            }
        }
        return false;
    }

    public static boolean ratioIntersectsMod16Segment(int i, int i2, Rational rational) {
        RelationUtil.checkArgument(i2 % 16 == 0);
        double numerator = (rational.getNumerator() * i) / rational.getDenominator();
        return numerator > ((double) Math.max(0, i2 + (-16))) && numerator < ((double) (i2 + 16));
    }
}
