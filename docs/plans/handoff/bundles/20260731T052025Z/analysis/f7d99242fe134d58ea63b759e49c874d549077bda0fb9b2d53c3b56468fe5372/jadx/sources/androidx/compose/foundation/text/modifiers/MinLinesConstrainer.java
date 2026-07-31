package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily$Resolver;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.DensityImpl;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MinLinesConstrainer {
    public static MinLinesConstrainer last;
    public final DensityImpl density;
    public final FontFamily$Resolver fontFamilyResolver;
    public final TextStyle inputTextStyle;
    public final LayoutDirection layoutDirection;
    public float lineHeightCache = Float.NaN;
    public float oneLineHeightCache = Float.NaN;
    public final TextStyle resolvedStyle;

    public MinLinesConstrainer(LayoutDirection layoutDirection, TextStyle textStyle, DensityImpl densityImpl, FontFamily$Resolver fontFamily$Resolver) {
        this.layoutDirection = layoutDirection;
        this.inputTextStyle = textStyle;
        this.density = densityImpl;
        this.fontFamilyResolver = fontFamily$Resolver;
        this.resolvedStyle = ParagraphKt.resolveDefaults(textStyle, layoutDirection);
    }

    /* renamed from: coerceMinLines-Oh53vG4$foundation, reason: not valid java name */
    public final long m295coerceMinLinesOh53vG4$foundation(int i, long j) {
        int m735getMinHeightimpl;
        float f = this.oneLineHeightCache;
        float f2 = this.lineHeightCache;
        if (Float.isNaN(f) || Float.isNaN(f2)) {
            String str = MinLinesConstrainerKt.EmptyTextReplacement;
            long Constraints$default = ConstraintsKt.Constraints$default(0, 0, 0, 0, 15);
            TextStyle textStyle = this.resolvedStyle;
            DensityImpl densityImpl = this.density;
            float height = ParagraphKt.m690ParagraphUl8oQg4$default(str, textStyle, Constraints$default, densityImpl, this.fontFamilyResolver, 1, 96).getHeight();
            float height2 = ParagraphKt.m690ParagraphUl8oQg4$default(MinLinesConstrainerKt.TwoLineTextReplacement, this.resolvedStyle, ConstraintsKt.Constraints$default(0, 0, 0, 0, 15), densityImpl, this.fontFamilyResolver, 2, 96).getHeight() - height;
            this.oneLineHeightCache = height;
            this.lineHeightCache = height2;
            f2 = height2;
            f = height;
        }
        if (i != 1) {
            int round = Math.round((f2 * (i - 1)) + f);
            m735getMinHeightimpl = round >= 0 ? round : 0;
            int m733getMaxHeightimpl = Constraints.m733getMaxHeightimpl(j);
            if (m735getMinHeightimpl > m733getMaxHeightimpl) {
                m735getMinHeightimpl = m733getMaxHeightimpl;
            }
        } else {
            m735getMinHeightimpl = Constraints.m735getMinHeightimpl(j);
        }
        return ConstraintsKt.Constraints(Constraints.m736getMinWidthimpl(j), Constraints.m734getMaxWidthimpl(j), m735getMinHeightimpl, Constraints.m733getMaxHeightimpl(j));
    }
}
