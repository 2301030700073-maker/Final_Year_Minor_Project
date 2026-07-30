package androidx.compose.ui.text;

import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.NoWhenBranchMatchedException;

/* compiled from: TextStyle.kt */
/* loaded from: classes.dex */
public abstract class TextStyleKt {

    /* compiled from: TextStyle.kt */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            try {
                iArr[LayoutDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final TextStyle lerp(TextStyle textStyle, TextStyle textStyle2, float f) {
        return new TextStyle(SpanStyleKt.lerp(textStyle.toSpanStyle(), textStyle2.toSpanStyle(), f), ParagraphStyleKt.lerp(textStyle.toParagraphStyle(), textStyle2.toParagraphStyle(), f));
    }

    public static final TextStyle resolveDefaults(TextStyle textStyle, LayoutDirection layoutDirection) {
        return new TextStyle(SpanStyleKt.resolveSpanStyleDefaults(textStyle.getSpanStyle$ui_text_release()), ParagraphStyleKt.resolveParagraphStyleDefaults(textStyle.getParagraphStyle$ui_text_release(), layoutDirection), textStyle.getPlatformStyle());
    }

    /* renamed from: resolveTextDirection-IhaHGbI, reason: not valid java name */
    public static final int m2149resolveTextDirectionIhaHGbI(LayoutDirection layoutDirection, int i) {
        TextDirection.Companion companion = TextDirection.Companion;
        if (TextDirection.m2358equalsimpl0(i, companion.m2362getContents_7Xco())) {
            int i2 = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
            if (i2 == 1) {
                return companion.m2363getContentOrLtrs_7Xco();
            }
            if (i2 == 2) {
                return companion.m2364getContentOrRtls_7Xco();
            }
            throw new NoWhenBranchMatchedException();
        }
        if (!TextDirection.m2358equalsimpl0(i, companion.m2367getUnspecifieds_7Xco())) {
            return i;
        }
        int i3 = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
        if (i3 == 1) {
            return companion.m2365getLtrs_7Xco();
        }
        if (i3 == 2) {
            return companion.m2366getRtls_7Xco();
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PlatformTextStyle createPlatformTextStyleInternal(PlatformSpanStyle platformSpanStyle, PlatformParagraphStyle platformParagraphStyle) {
        if (platformSpanStyle == null && platformParagraphStyle == null) {
            return null;
        }
        return AndroidTextStyle_androidKt.createPlatformTextStyle(platformSpanStyle, platformParagraphStyle);
    }
}
