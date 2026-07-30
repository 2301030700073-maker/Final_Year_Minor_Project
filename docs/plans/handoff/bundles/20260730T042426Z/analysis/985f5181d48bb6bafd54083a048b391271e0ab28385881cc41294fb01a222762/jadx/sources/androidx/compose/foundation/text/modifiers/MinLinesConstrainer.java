package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.text.Paragraph;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: MinLinesConstrainer.kt */
/* loaded from: classes.dex */
public final class MinLinesConstrainer {
    private static MinLinesConstrainer last;
    private final Density density;
    private final FontFamily.Resolver fontFamilyResolver;
    private final TextStyle inputTextStyle;
    private final LayoutDirection layoutDirection;
    private float lineHeightCache;
    private float oneLineHeightCache;
    private final TextStyle resolvedStyle;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    public /* synthetic */ MinLinesConstrainer(LayoutDirection layoutDirection, TextStyle textStyle, Density density, FontFamily.Resolver resolver, DefaultConstructorMarker defaultConstructorMarker) {
        this(layoutDirection, textStyle, density, resolver);
    }

    private MinLinesConstrainer(LayoutDirection layoutDirection, TextStyle textStyle, Density density, FontFamily.Resolver resolver) {
        this.layoutDirection = layoutDirection;
        this.inputTextStyle = textStyle;
        this.density = density;
        this.fontFamilyResolver = resolver;
        this.resolvedStyle = TextStyleKt.resolveDefaults(textStyle, layoutDirection);
        this.lineHeightCache = Float.NaN;
        this.oneLineHeightCache = Float.NaN;
    }

    public final LayoutDirection getLayoutDirection() {
        return this.layoutDirection;
    }

    public final TextStyle getInputTextStyle() {
        return this.inputTextStyle;
    }

    public final Density getDensity() {
        return this.density;
    }

    public final FontFamily.Resolver getFontFamilyResolver() {
        return this.fontFamilyResolver;
    }

    /* compiled from: MinLinesConstrainer.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final MinLinesConstrainer from(MinLinesConstrainer minLinesConstrainer, LayoutDirection layoutDirection, TextStyle textStyle, Density density, FontFamily.Resolver resolver) {
            if (minLinesConstrainer != null && layoutDirection == minLinesConstrainer.getLayoutDirection() && Intrinsics.areEqual(textStyle, minLinesConstrainer.getInputTextStyle()) && density.getDensity() == minLinesConstrainer.getDensity().getDensity() && resolver == minLinesConstrainer.getFontFamilyResolver()) {
                return minLinesConstrainer;
            }
            MinLinesConstrainer minLinesConstrainer2 = MinLinesConstrainer.last;
            if (minLinesConstrainer2 != null && layoutDirection == minLinesConstrainer2.getLayoutDirection() && Intrinsics.areEqual(textStyle, minLinesConstrainer2.getInputTextStyle()) && density.getDensity() == minLinesConstrainer2.getDensity().getDensity() && resolver == minLinesConstrainer2.getFontFamilyResolver()) {
                return minLinesConstrainer2;
            }
            MinLinesConstrainer minLinesConstrainer3 = new MinLinesConstrainer(layoutDirection, TextStyleKt.resolveDefaults(textStyle, layoutDirection), DensityKt.Density(density.getDensity(), density.getFontScale()), resolver, null);
            MinLinesConstrainer.last = minLinesConstrainer3;
            return minLinesConstrainer3;
        }
    }

    /* renamed from: coerceMinLines-Oh53vG4$foundation_release, reason: not valid java name */
    public final long m525coerceMinLinesOh53vG4$foundation_release(long j, int i) {
        String str;
        Paragraph m2069ParagraphUdtVg6A;
        String str2;
        Paragraph m2069ParagraphUdtVg6A2;
        int m2398getMinHeightimpl;
        float f = this.oneLineHeightCache;
        float f2 = this.lineHeightCache;
        if (Float.isNaN(f) || Float.isNaN(f2)) {
            str = MinLinesConstrainerKt.EmptyTextReplacement;
            m2069ParagraphUdtVg6A = ParagraphKt.m2069ParagraphUdtVg6A(str, this.resolvedStyle, ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null), this.density, this.fontFamilyResolver, (r22 & 32) != 0 ? CollectionsKt.emptyList() : null, (r22 & 64) != 0 ? CollectionsKt.emptyList() : null, (r22 & 128) != 0 ? Integer.MAX_VALUE : 1, (r22 & 256) != 0 ? false : false);
            f = m2069ParagraphUdtVg6A.getHeight();
            str2 = MinLinesConstrainerKt.TwoLineTextReplacement;
            m2069ParagraphUdtVg6A2 = ParagraphKt.m2069ParagraphUdtVg6A(str2, this.resolvedStyle, ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null), this.density, this.fontFamilyResolver, (r22 & 32) != 0 ? CollectionsKt.emptyList() : null, (r22 & 64) != 0 ? CollectionsKt.emptyList() : null, (r22 & 128) != 0 ? Integer.MAX_VALUE : 2, (r22 & 256) != 0 ? false : false);
            f2 = m2069ParagraphUdtVg6A2.getHeight() - f;
            this.oneLineHeightCache = f;
            this.lineHeightCache = f2;
        }
        if (i != 1) {
            m2398getMinHeightimpl = RangesKt.coerceAtMost(RangesKt.coerceAtLeast(Math.round(f + (f2 * (i - 1))), 0), Constraints.m2396getMaxHeightimpl(j));
        } else {
            m2398getMinHeightimpl = Constraints.m2398getMinHeightimpl(j);
        }
        return ConstraintsKt.Constraints(Constraints.m2399getMinWidthimpl(j), Constraints.m2397getMaxWidthimpl(j), m2398getMinHeightimpl, Constraints.m2396getMaxHeightimpl(j));
    }
}
