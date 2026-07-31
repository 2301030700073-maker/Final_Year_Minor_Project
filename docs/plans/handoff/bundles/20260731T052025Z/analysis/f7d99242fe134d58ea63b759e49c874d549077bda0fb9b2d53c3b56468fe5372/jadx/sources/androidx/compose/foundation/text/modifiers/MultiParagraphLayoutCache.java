package androidx.compose.foundation.text.modifiers;

import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily$Resolver;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.unit.LayoutDirection;
import com.fsck.k9.mailstore.LocalStore;
import java.util.List;
import kotlin.collections.EmptyList;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MultiParagraphLayoutCache {
    public Density density;
    public FontFamily$Resolver fontFamilyResolver;
    public long historyFlag;
    public LayoutDirection intrinsicsLayoutDirection;
    public TextLayoutResult layoutCache;
    public MinLinesConstrainer mMinLinesConstrainer;
    public int maxLines;
    public int minLines;
    public int overflow;
    public LocalStore.AnonymousClass7 paragraphIntrinsics;
    public List placeholders;
    public boolean softWrap;
    public TextStyle style;
    public AnnotatedString text;
    public long lastDensity = InlineDensity.Unspecified;
    public int cachedIntrinsicHeightInputWidth = -1;
    public int cachedIntrinsicHeight = -1;

    public MultiParagraphLayoutCache(AnnotatedString annotatedString, TextStyle textStyle, FontFamily$Resolver fontFamily$Resolver, int i, boolean z, int i2, int i3, List list) {
        this.text = annotatedString;
        this.fontFamilyResolver = fontFamily$Resolver;
        this.overflow = i;
        this.softWrap = z;
        this.maxLines = i2;
        this.minLines = i3;
        this.placeholders = list;
        this.style = textStyle;
    }

    public final int intrinsicHeight(int i, LayoutDirection layoutDirection) {
        int i2 = this.cachedIntrinsicHeightInputWidth;
        int i3 = this.cachedIntrinsicHeight;
        if (i == i2 && i2 != -1) {
            return i3;
        }
        long Constraints = ConstraintsKt.Constraints(0, i, 0, Integer.MAX_VALUE);
        if (this.minLines > 1) {
            MinLinesConstrainer minLinesConstrainer = this.mMinLinesConstrainer;
            TextStyle textStyle = this.style;
            Density density = this.density;
            density.getClass();
            MinLinesConstrainer from = Validate.from(minLinesConstrainer, layoutDirection, textStyle, density, this.fontFamilyResolver);
            this.mMinLinesConstrainer = from;
            Constraints = from.m295coerceMinLinesOh53vG4$foundation(this.minLines, Constraints);
        }
        int ceilToIntPx = BasicTextKt.ceilToIntPx(m296layoutTextK40F9xA(Constraints, layoutDirection).height);
        int m735getMinHeightimpl = Constraints.m735getMinHeightimpl(Constraints);
        if (ceilToIntPx < m735getMinHeightimpl) {
            ceilToIntPx = m735getMinHeightimpl;
        }
        this.cachedIntrinsicHeightInputWidth = i;
        this.cachedIntrinsicHeight = ceilToIntPx;
        return ceilToIntPx;
    }

    /* renamed from: layoutText-K40F9xA, reason: not valid java name */
    public final MultiParagraph m296layoutTextK40F9xA(long j, LayoutDirection layoutDirection) {
        LocalStore.AnonymousClass7 layoutDirection2 = setLayoutDirection(layoutDirection);
        long m766finalConstraintstfFHcEY = IntRectKt.m766finalConstraintstfFHcEY(j, this.softWrap, this.overflow, layoutDirection2.getMaxIntrinsicWidth());
        boolean z = this.softWrap;
        int i = this.overflow;
        int i2 = this.maxLines;
        return new MultiParagraph(layoutDirection2, m766finalConstraintstfFHcEY, ((z || !(i == 2 || i == 4 || i == 5)) && i2 >= 1) ? i2 : 1, i);
    }

    /* renamed from: layoutWithConstraints-K40F9xA, reason: not valid java name */
    public final boolean m297layoutWithConstraintsK40F9xA(long j, LayoutDirection layoutDirection) {
        this.historyFlag = (this.historyFlag << 2) | 3;
        if (this.minLines > 1) {
            MinLinesConstrainer minLinesConstrainer = this.mMinLinesConstrainer;
            TextStyle textStyle = this.style;
            Density density = this.density;
            density.getClass();
            MinLinesConstrainer from = Validate.from(minLinesConstrainer, layoutDirection, textStyle, density, this.fontFamilyResolver);
            this.mMinLinesConstrainer = from;
            j = from.m295coerceMinLinesOh53vG4$foundation(this.minLines, j);
        }
        TextLayoutResult textLayoutResult = this.layoutCache;
        if (textLayoutResult != null) {
            MultiParagraph multiParagraph = textLayoutResult.multiParagraph;
            TextLayoutInput textLayoutInput = textLayoutResult.layoutInput;
            if (!multiParagraph.intrinsics.getHasStaleResolvedFonts()) {
                LayoutDirection layoutDirection2 = textLayoutInput.layoutDirection;
                long j2 = textLayoutInput.constraints;
                if (layoutDirection == layoutDirection2 && (Constraints.m728equalsimpl0(j, j2) || (Constraints.m734getMaxWidthimpl(j) == Constraints.m734getMaxWidthimpl(j2) && Constraints.m736getMinWidthimpl(j) == Constraints.m736getMinWidthimpl(j2) && Constraints.m733getMaxHeightimpl(j) >= multiParagraph.height && !multiParagraph.didExceedMaxLines))) {
                    TextLayoutResult textLayoutResult2 = this.layoutCache;
                    textLayoutResult2.getClass();
                    if (Constraints.m728equalsimpl0(j, textLayoutResult2.layoutInput.constraints)) {
                        return false;
                    }
                    TextLayoutResult textLayoutResult3 = this.layoutCache;
                    textLayoutResult3.getClass();
                    this.layoutCache = m298textLayoutResultVKLhPVY(layoutDirection, j, textLayoutResult3.multiParagraph);
                    return true;
                }
            }
        }
        this.layoutCache = m298textLayoutResultVKLhPVY(layoutDirection, j, m296layoutTextK40F9xA(j, layoutDirection));
        return true;
    }

    public final void setDensity$foundation(Density density) {
        long j;
        Density density2 = this.density;
        if (density != null) {
            int i = InlineDensity.$r8$clinit;
            j = InlineDensity.m293constructorimpl(density.getDensity(), density.getFontScale());
        } else {
            j = InlineDensity.Unspecified;
        }
        if (density2 == null) {
            this.density = density;
            this.lastDensity = j;
        } else if (density == null || this.lastDensity != j) {
            this.density = density;
            this.lastDensity = j;
            this.historyFlag = (this.historyFlag << 2) | 1;
            this.paragraphIntrinsics = null;
            this.layoutCache = null;
            this.cachedIntrinsicHeight = -1;
            this.cachedIntrinsicHeightInputWidth = -1;
        }
    }

    public final LocalStore.AnonymousClass7 setLayoutDirection(LayoutDirection layoutDirection) {
        LocalStore.AnonymousClass7 anonymousClass7 = this.paragraphIntrinsics;
        if (anonymousClass7 == null || layoutDirection != this.intrinsicsLayoutDirection || anonymousClass7.getHasStaleResolvedFonts()) {
            this.intrinsicsLayoutDirection = layoutDirection;
            AnnotatedString annotatedString = this.text;
            TextStyle resolveDefaults = ParagraphKt.resolveDefaults(this.style, layoutDirection);
            Density density = this.density;
            density.getClass();
            FontFamily$Resolver fontFamily$Resolver = this.fontFamilyResolver;
            List list = this.placeholders;
            if (list == null) {
                list = EmptyList.INSTANCE;
            }
            anonymousClass7 = new LocalStore.AnonymousClass7(annotatedString, resolveDefaults, list, density, fontFamily$Resolver);
        }
        this.paragraphIntrinsics = anonymousClass7;
        return anonymousClass7;
    }

    /* renamed from: textLayoutResult-VKLhPVY, reason: not valid java name */
    public final TextLayoutResult m298textLayoutResultVKLhPVY(LayoutDirection layoutDirection, long j, MultiParagraph multiParagraph) {
        float min = Math.min(multiParagraph.intrinsics.getMaxIntrinsicWidth(), multiParagraph.width);
        AnnotatedString annotatedString = this.text;
        TextStyle textStyle = this.style;
        List list = this.placeholders;
        if (list == null) {
            list = EmptyList.INSTANCE;
        }
        int i = this.maxLines;
        boolean z = this.softWrap;
        int i2 = this.overflow;
        Density density = this.density;
        density.getClass();
        return new TextLayoutResult(new TextLayoutInput(annotatedString, textStyle, list, i, z, i2, density, layoutDirection, this.fontFamilyResolver, j), multiParagraph, ConstraintsKt.m738constrain4WqzIAM(j, (BasicTextKt.ceilToIntPx(min) << 32) | (BasicTextKt.ceilToIntPx(multiParagraph.height) & 4294967295L)));
    }

    public final String toString() {
        TextLayoutInput textLayoutInput;
        StringBuilder sb = new StringBuilder("MultiParagraphLayoutCache(textLayoutResult=");
        Object obj = "null";
        sb.append(this.layoutCache != null ? "<TextLayoutResult>" : "null");
        sb.append(", lastDensity=");
        sb.append((Object) InlineDensity.m294toStringimpl(this.lastDensity));
        sb.append(", history=");
        sb.append(this.historyFlag);
        sb.append(", constraints=");
        TextLayoutResult textLayoutResult = this.layoutCache;
        if (textLayoutResult != null && (textLayoutInput = textLayoutResult.layoutInput) != null) {
            obj = new Constraints(textLayoutInput.constraints);
        }
        sb.append(obj);
        sb.append(')');
        return sb.toString();
    }

    /* renamed from: update-J2qo7bo, reason: not valid java name */
    public final void m299updateJ2qo7bo(AnnotatedString annotatedString, TextStyle textStyle, FontFamily$Resolver fontFamily$Resolver, int i, boolean z, int i2, int i3, List list) {
        this.text = annotatedString;
        boolean hasSameLayoutAffectingAttributes = textStyle.hasSameLayoutAffectingAttributes(this.style);
        this.style = textStyle;
        if (!hasSameLayoutAffectingAttributes) {
            this.historyFlag <<= 2;
            this.paragraphIntrinsics = null;
            this.layoutCache = null;
            this.cachedIntrinsicHeight = -1;
            this.cachedIntrinsicHeightInputWidth = -1;
        }
        this.fontFamilyResolver = fontFamily$Resolver;
        this.overflow = i;
        this.softWrap = z;
        this.maxLines = i2;
        this.minLines = i3;
        this.placeholders = list;
        this.historyFlag = (this.historyFlag << 2) | 2;
        this.paragraphIntrinsics = null;
        this.layoutCache = null;
        this.cachedIntrinsicHeight = -1;
        this.cachedIntrinsicHeightInputWidth = -1;
    }
}
