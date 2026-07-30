package androidx.compose.material.ripple;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;

/* compiled from: RippleTheme.kt */
/* loaded from: classes.dex */
public interface RippleTheme {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* renamed from: defaultColor-WaAFU9c */
    long mo586defaultColorWaAFU9c(Composer composer, int i);

    RippleAlpha rippleAlpha(Composer composer, int i);

    /* compiled from: RippleTheme.kt */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        /* renamed from: defaultRippleColor-5vOe2sY, reason: not valid java name */
        public final long m600defaultRippleColor5vOe2sY(long j, boolean z) {
            return (z || ((double) ColorKt.m1323luminance8_81llA(j)) >= 0.5d) ? j : Color.Companion.m1318getWhite0d7_KjU();
        }

        /* renamed from: defaultRippleAlpha-DxMtmZc, reason: not valid java name */
        public final RippleAlpha m599defaultRippleAlphaDxMtmZc(long j, boolean z) {
            RippleAlpha rippleAlpha;
            RippleAlpha rippleAlpha2;
            RippleAlpha rippleAlpha3;
            if (!z) {
                rippleAlpha = RippleThemeKt.DarkThemeRippleAlpha;
                return rippleAlpha;
            }
            if (ColorKt.m1323luminance8_81llA(j) > 0.5d) {
                rippleAlpha3 = RippleThemeKt.LightThemeHighContrastRippleAlpha;
                return rippleAlpha3;
            }
            rippleAlpha2 = RippleThemeKt.LightThemeLowContrastRippleAlpha;
            return rippleAlpha2;
        }
    }
}
