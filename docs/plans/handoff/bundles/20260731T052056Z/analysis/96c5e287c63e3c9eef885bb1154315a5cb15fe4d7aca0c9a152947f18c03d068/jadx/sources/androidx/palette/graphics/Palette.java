package androidx.palette.graphics;

import android.graphics.Color;
import androidx.core.graphics.ColorUtils;
import java.util.Arrays;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Palette {
    public static final AnonymousClass1 DEFAULT_FILTER = new AnonymousClass1();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.palette.graphics.Palette$1, reason: invalid class name */
    public final class AnonymousClass1 {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Swatch {
        public final int mBlue;
        public int mBodyTextColor;
        public boolean mGeneratedTextColors;
        public final int mGreen;
        public float[] mHsl;
        public final int mPopulation;
        public final int mRed;
        public final int mRgb;
        public int mTitleTextColor;

        public Swatch(int i, int i2) {
            this.mRed = Color.red(i);
            this.mGreen = Color.green(i);
            this.mBlue = Color.blue(i);
            this.mRgb = i;
            this.mPopulation = i2;
        }

        public final void ensureTextColorsGenerated() {
            if (this.mGeneratedTextColors) {
                return;
            }
            int i = this.mRgb;
            int calculateMinimumAlpha = ColorUtils.calculateMinimumAlpha(-1, 4.5f, i);
            int calculateMinimumAlpha2 = ColorUtils.calculateMinimumAlpha(-1, 3.0f, i);
            if (calculateMinimumAlpha != -1 && calculateMinimumAlpha2 != -1) {
                this.mBodyTextColor = ColorUtils.setAlphaComponent(-1, calculateMinimumAlpha);
                this.mTitleTextColor = ColorUtils.setAlphaComponent(-1, calculateMinimumAlpha2);
                this.mGeneratedTextColors = true;
                return;
            }
            int calculateMinimumAlpha3 = ColorUtils.calculateMinimumAlpha(-16777216, 4.5f, i);
            int calculateMinimumAlpha4 = ColorUtils.calculateMinimumAlpha(-16777216, 3.0f, i);
            if (calculateMinimumAlpha3 == -1 || calculateMinimumAlpha4 == -1) {
                this.mBodyTextColor = calculateMinimumAlpha != -1 ? ColorUtils.setAlphaComponent(-1, calculateMinimumAlpha) : ColorUtils.setAlphaComponent(-16777216, calculateMinimumAlpha3);
                this.mTitleTextColor = calculateMinimumAlpha2 != -1 ? ColorUtils.setAlphaComponent(-1, calculateMinimumAlpha2) : ColorUtils.setAlphaComponent(-16777216, calculateMinimumAlpha4);
                this.mGeneratedTextColors = true;
            } else {
                this.mBodyTextColor = ColorUtils.setAlphaComponent(-16777216, calculateMinimumAlpha3);
                this.mTitleTextColor = ColorUtils.setAlphaComponent(-16777216, calculateMinimumAlpha4);
                this.mGeneratedTextColors = true;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && Swatch.class == obj.getClass()) {
                Swatch swatch = (Swatch) obj;
                if (this.mPopulation == swatch.mPopulation && this.mRgb == swatch.mRgb) {
                    return true;
                }
            }
            return false;
        }

        public final float[] getHsl() {
            float[] fArr = this.mHsl;
            if (fArr == null) {
                fArr = new float[3];
                this.mHsl = fArr;
            }
            ColorUtils.RGBToHSL(this.mRed, this.mGreen, this.mBlue, fArr);
            return this.mHsl;
        }

        public final int hashCode() {
            return (this.mRgb * 31) + this.mPopulation;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(Swatch.class.getSimpleName());
            sb.append(" [RGB: #");
            sb.append(Integer.toHexString(this.mRgb));
            sb.append("] [HSL: ");
            sb.append(Arrays.toString(getHsl()));
            sb.append("] [Population: ");
            sb.append(this.mPopulation);
            sb.append("] [Title Text: #");
            ensureTextColorsGenerated();
            sb.append(Integer.toHexString(this.mTitleTextColor));
            sb.append("] [Body Text: #");
            ensureTextColorsGenerated();
            sb.append(Integer.toHexString(this.mBodyTextColor));
            sb.append(']');
            return sb.toString();
        }
    }
}
