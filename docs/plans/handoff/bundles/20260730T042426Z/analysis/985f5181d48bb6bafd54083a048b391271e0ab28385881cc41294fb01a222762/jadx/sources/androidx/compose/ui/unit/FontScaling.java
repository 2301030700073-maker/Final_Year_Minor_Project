package androidx.compose.ui.unit;

import androidx.compose.ui.unit.fontscaling.FontScaleConverter;
import androidx.compose.ui.unit.fontscaling.FontScaleConverterFactory;

/* compiled from: FontScaling.android.kt */
/* loaded from: classes.dex */
public interface FontScaling {
    float getFontScale();

    /* renamed from: toDp-GaN1DYA */
    float mo208toDpGaN1DYA(long j);

    /* renamed from: toSp-0xMU5do */
    long mo215toSp0xMU5do(float f);

    /* compiled from: FontScaling.android.kt */
    /* renamed from: androidx.compose.ui.unit.FontScaling$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        /* renamed from: $default$toSp-0xMU5do, reason: not valid java name */
        public static long m2458$default$toSp0xMU5do(FontScaling fontScaling, float f) {
            FontScaleConverterFactory fontScaleConverterFactory = FontScaleConverterFactory.INSTANCE;
            if (!fontScaleConverterFactory.isNonLinearFontScalingActive(fontScaling.getFontScale())) {
                return TextUnitKt.getSp(f / fontScaling.getFontScale());
            }
            FontScaleConverter forScale = fontScaleConverterFactory.forScale(fontScaling.getFontScale());
            return TextUnitKt.getSp(forScale != null ? forScale.convertDpToSp(f) : f / fontScaling.getFontScale());
        }

        /* renamed from: $default$toDp-GaN1DYA, reason: not valid java name */
        public static float m2457$default$toDpGaN1DYA(FontScaling fontScaling, long j) {
            if (!TextUnitType.m2511equalsimpl0(TextUnit.m2497getTypeUIouoOA(j), TextUnitType.Companion.m2516getSpUIouoOA())) {
                InlineClassHelperKt.throwIllegalStateException("Only Sp can convert to Px");
            }
            FontScaleConverterFactory fontScaleConverterFactory = FontScaleConverterFactory.INSTANCE;
            if (!fontScaleConverterFactory.isNonLinearFontScalingActive(fontScaling.getFontScale())) {
                return Dp.m2424constructorimpl(TextUnit.m2498getValueimpl(j) * fontScaling.getFontScale());
            }
            FontScaleConverter forScale = fontScaleConverterFactory.forScale(fontScaling.getFontScale());
            return forScale == null ? Dp.m2424constructorimpl(TextUnit.m2498getValueimpl(j) * fontScaling.getFontScale()) : Dp.m2424constructorimpl(forScale.convertSpToDp(TextUnit.m2498getValueimpl(j)));
        }
    }
}
