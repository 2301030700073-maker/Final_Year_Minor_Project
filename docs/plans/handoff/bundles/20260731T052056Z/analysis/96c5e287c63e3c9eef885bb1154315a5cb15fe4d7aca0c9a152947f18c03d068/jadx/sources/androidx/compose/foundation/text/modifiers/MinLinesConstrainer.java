package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.DensityImpl;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MinLinesConstrainer {
    public static MinLinesConstrainer last;
    public final DensityImpl density;
    public final FontFamily.Resolver fontFamilyResolver;
    public final TextStyle inputTextStyle;
    public final LayoutDirection layoutDirection;
    public float lineHeightCache = Float.NaN;
    public float oneLineHeightCache = Float.NaN;
    public final TextStyle resolvedStyle;

    public MinLinesConstrainer(LayoutDirection layoutDirection, TextStyle textStyle, DensityImpl densityImpl, FontFamily.Resolver resolver) {
        this.layoutDirection = layoutDirection;
        this.inputTextStyle = textStyle;
        this.density = densityImpl;
        this.fontFamilyResolver = resolver;
        this.resolvedStyle = ParagraphKt.resolveDefaults(textStyle, layoutDirection);
    }

    /* renamed from: coerceMinLines-Oh53vG4$foundation, reason: not valid java name */
    public final long m211coerceMinLinesOh53vG4$foundation(long j, int i) {
        int m682getMinHeightimpl;
        float f = this.oneLineHeightCache;
        float f2 = this.lineHeightCache;
        if (Float.isNaN(f) || Float.isNaN(f2)) {
            String str = MinLinesConstrainerKt.EmptyTextReplacement;
            long Constraints$default = ConstraintsKt.Constraints$default(0, 0, 0, 0, 15);
            TextStyle textStyle = this.resolvedStyle;
            DensityImpl densityImpl = this.density;
            float height = ParagraphKt.m632ParagraphUl8oQg4$default(str, textStyle, Constraints$default, densityImpl, this.fontFamilyResolver, 1, 96).getHeight();
            float height2 = ParagraphKt.m632ParagraphUl8oQg4$default(MinLinesConstrainerKt.TwoLineTextReplacement, textStyle, ConstraintsKt.Constraints$default(0, 0, 0, 0, 15), densityImpl, this.fontFamilyResolver, 2, 96).getHeight() - height;
            this.oneLineHeightCache = height;
            this.lineHeightCache = height2;
            f2 = height2;
            f = height;
        }
        if (i != 1) {
            int round = Math.round((f2 * (i - 1)) + f);
            m682getMinHeightimpl = round >= 0 ? round : 0;
            int m680getMaxHeightimpl = Constraints.m680getMaxHeightimpl(j);
            if (m682getMinHeightimpl > m680getMaxHeightimpl) {
                m682getMinHeightimpl = m680getMaxHeightimpl;
            }
        } else {
            m682getMinHeightimpl = Constraints.m682getMinHeightimpl(j);
        }
        return ConstraintsKt.Constraints(Constraints.m683getMinWidthimpl(j), Constraints.m681getMaxWidthimpl(j), m682getMinHeightimpl, Constraints.m680getMaxHeightimpl(j));
    }
}
