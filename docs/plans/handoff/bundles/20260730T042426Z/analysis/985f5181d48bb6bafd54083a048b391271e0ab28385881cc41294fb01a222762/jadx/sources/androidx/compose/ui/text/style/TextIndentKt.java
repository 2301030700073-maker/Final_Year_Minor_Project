package androidx.compose.ui.text.style;

import androidx.compose.ui.text.SpanStyleKt;

/* compiled from: TextIndent.kt */
/* loaded from: classes.dex */
public abstract class TextIndentKt {
    public static final TextIndent lerp(TextIndent textIndent, TextIndent textIndent2, float f) {
        return new TextIndent(SpanStyleKt.m2101lerpTextUnitInheritableC3pnCVY(textIndent.m2370getFirstLineXSAIIZE(), textIndent2.m2370getFirstLineXSAIIZE(), f), SpanStyleKt.m2101lerpTextUnitInheritableC3pnCVY(textIndent.m2371getRestLineXSAIIZE(), textIndent2.m2371getRestLineXSAIIZE(), f), null);
    }
}
