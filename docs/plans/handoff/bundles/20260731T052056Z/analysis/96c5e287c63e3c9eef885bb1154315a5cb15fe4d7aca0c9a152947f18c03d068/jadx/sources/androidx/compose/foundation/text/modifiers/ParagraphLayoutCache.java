package androidx.compose.foundation.text.modifiers;

import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.ui.text.AndroidParagraph;
import androidx.compose.ui.text.ParagraphIntrinsics;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.InlineClassHelperKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.TuplesKt;
import kotlin.UnsignedKt;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ParagraphLayoutCache {
    public int cachedIntrinsicHeight;
    public int cachedIntrinsicHeightInputWidth;
    public Density density;
    public boolean didOverflow;
    public FontFamily.Resolver fontFamilyResolver;
    public long historyFlag;
    public LayoutDirection intrinsicsLayoutDirection;
    public long lastDensity;
    public long layoutSize;
    public MinLinesConstrainer mMinLinesConstrainer;
    public int maxLines;
    public int minLines;
    public int overflow;
    public AndroidParagraph paragraph;
    public ParagraphIntrinsics paragraphIntrinsics;
    public long prevConstraints;
    public boolean softWrap;
    public TextStyle style;
    public String text;

    public ParagraphLayoutCache(String str, TextStyle textStyle, FontFamily.Resolver resolver, int i, boolean z, int i2, int i3) {
        this.text = str;
        this.style = textStyle;
        this.fontFamilyResolver = resolver;
        this.overflow = i;
        this.softWrap = z;
        this.maxLines = i2;
        this.minLines = i3;
        int i4 = InlineDensity.$r8$clinit;
        this.lastDensity = InlineDensity.Unspecified;
        this.layoutSize = 0L;
        if (!(true & true)) {
            InlineClassHelperKt.throwIllegalArgumentException("width and height must be >= 0");
        }
        this.prevConstraints = ConstraintsKt.createConstraints(0, 0, 0, 0);
        this.cachedIntrinsicHeightInputWidth = -1;
        this.cachedIntrinsicHeight = -1;
    }

    /* renamed from: useMinLinesConstrainer-euUD3Qg$default, reason: not valid java name */
    public static long m218useMinLinesConstrainereuUD3Qg$default(ParagraphLayoutCache paragraphLayoutCache, long j, LayoutDirection layoutDirection) {
        TextStyle textStyle = paragraphLayoutCache.style;
        MinLinesConstrainer minLinesConstrainer = paragraphLayoutCache.mMinLinesConstrainer;
        Density density = paragraphLayoutCache.density;
        density.getClass();
        MinLinesConstrainer from = UnsignedKt.from(minLinesConstrainer, layoutDirection, textStyle, density, paragraphLayoutCache.fontFamilyResolver);
        paragraphLayoutCache.mMinLinesConstrainer = from;
        return from.m211coerceMinLinesOh53vG4$foundation(j, paragraphLayoutCache.minLines);
    }

    public final int intrinsicHeight(int i, LayoutDirection layoutDirection) {
        int i2 = this.cachedIntrinsicHeightInputWidth;
        int i3 = this.cachedIntrinsicHeight;
        if (i == i2 && i2 != -1) {
            return i3;
        }
        long Constraints = ConstraintsKt.Constraints(0, i, 0, Integer.MAX_VALUE);
        if (this.minLines > 1) {
            Constraints = m218useMinLinesConstrainereuUD3Qg$default(this, Constraints, layoutDirection);
        }
        ParagraphIntrinsics layoutDirection2 = setLayoutDirection(layoutDirection);
        long m818finalConstraintstfFHcEY = TuplesKt.m818finalConstraintstfFHcEY(Constraints, this.softWrap, this.overflow, layoutDirection2.getMaxIntrinsicWidth());
        boolean z = this.softWrap;
        int i4 = this.overflow;
        int i5 = this.maxLines;
        int ceilToIntPx = BasicTextKt.ceilToIntPx(new AndroidParagraph((AndroidParagraphIntrinsics) layoutDirection2, ((z || !(i4 == 2 || i4 == 4 || i4 == 5)) && i5 >= 1) ? i5 : 1, i4, m818finalConstraintstfFHcEY).getHeight());
        int m682getMinHeightimpl = Constraints.m682getMinHeightimpl(Constraints);
        if (ceilToIntPx < m682getMinHeightimpl) {
            ceilToIntPx = m682getMinHeightimpl;
        }
        this.cachedIntrinsicHeightInputWidth = i;
        this.cachedIntrinsicHeight = ceilToIntPx;
        return ceilToIntPx;
    }

    /* renamed from: layoutWithConstraints-K40F9xA, reason: not valid java name */
    public final boolean m219layoutWithConstraintsK40F9xA(long j, LayoutDirection layoutDirection) {
        ParagraphIntrinsics paragraphIntrinsics;
        this.historyFlag = (this.historyFlag << 2) | 3;
        boolean z = true;
        long m218useMinLinesConstrainereuUD3Qg$default = this.minLines > 1 ? m218useMinLinesConstrainereuUD3Qg$default(this, j, layoutDirection) : j;
        AndroidParagraph androidParagraph = this.paragraph;
        boolean z2 = false;
        if (androidParagraph != null && (paragraphIntrinsics = this.paragraphIntrinsics) != null && !paragraphIntrinsics.getHasStaleResolvedFonts() && layoutDirection == this.intrinsicsLayoutDirection && (Constraints.m675equalsimpl0(m218useMinLinesConstrainereuUD3Qg$default, this.prevConstraints) || (Constraints.m681getMaxWidthimpl(m218useMinLinesConstrainereuUD3Qg$default) == Constraints.m681getMaxWidthimpl(this.prevConstraints) && Constraints.m683getMinWidthimpl(m218useMinLinesConstrainereuUD3Qg$default) == Constraints.m683getMinWidthimpl(this.prevConstraints) && Constraints.m680getMaxHeightimpl(m218useMinLinesConstrainereuUD3Qg$default) >= androidParagraph.getHeight() && !androidParagraph.layout.didExceedMaxLines))) {
            if (!Constraints.m675equalsimpl0(m218useMinLinesConstrainereuUD3Qg$default, this.prevConstraints)) {
                AndroidParagraph androidParagraph2 = this.paragraph;
                androidParagraph2.getClass();
                this.layoutSize = ConstraintsKt.m686constrain4WqzIAM(m218useMinLinesConstrainereuUD3Qg$default, (BasicTextKt.ceilToIntPx(Math.min(androidParagraph2.paragraphIntrinsics.layoutIntrinsics.getMaxIntrinsicWidth(), androidParagraph2.getWidth())) << 32) | (BasicTextKt.ceilToIntPx(androidParagraph2.getHeight()) & 4294967295L));
                if (this.overflow == 3 || (((int) (r12 >> 32)) >= androidParagraph2.getWidth() && ((int) (4294967295L & r12)) >= androidParagraph2.getHeight())) {
                    z = false;
                }
                this.didOverflow = z;
                this.prevConstraints = m218useMinLinesConstrainereuUD3Qg$default;
            }
            return false;
        }
        ParagraphIntrinsics layoutDirection2 = setLayoutDirection(layoutDirection);
        long m818finalConstraintstfFHcEY = TuplesKt.m818finalConstraintstfFHcEY(m218useMinLinesConstrainereuUD3Qg$default, this.softWrap, this.overflow, layoutDirection2.getMaxIntrinsicWidth());
        boolean z3 = this.softWrap;
        int i = this.overflow;
        int i2 = this.maxLines;
        AndroidParagraph androidParagraph3 = new AndroidParagraph((AndroidParagraphIntrinsics) layoutDirection2, ((z3 || !(i == 2 || i == 4 || i == 5)) && i2 >= 1) ? i2 : 1, i, m818finalConstraintstfFHcEY);
        this.prevConstraints = m218useMinLinesConstrainereuUD3Qg$default;
        this.layoutSize = ConstraintsKt.m686constrain4WqzIAM(m218useMinLinesConstrainereuUD3Qg$default, (BasicTextKt.ceilToIntPx(androidParagraph3.getHeight()) & 4294967295L) | (BasicTextKt.ceilToIntPx(androidParagraph3.getWidth()) << 32));
        if (this.overflow != 3 && (((int) (r1 >> 32)) < androidParagraph3.getWidth() || ((int) (r1 & 4294967295L)) < androidParagraph3.getHeight())) {
            z2 = true;
        }
        this.didOverflow = z2;
        this.paragraph = androidParagraph3;
        return true;
    }

    public final void markDirty() {
        this.paragraph = null;
        this.paragraphIntrinsics = null;
        this.intrinsicsLayoutDirection = null;
        this.cachedIntrinsicHeightInputWidth = -1;
        this.cachedIntrinsicHeight = -1;
        if (!(true & true)) {
            InlineClassHelperKt.throwIllegalArgumentException("width and height must be >= 0");
        }
        this.prevConstraints = ConstraintsKt.createConstraints(0, 0, 0, 0);
        this.layoutSize = 0L;
        this.didOverflow = false;
    }

    public final void setDensity$foundation(Density density) {
        long j;
        Density density2 = this.density;
        if (density != null) {
            int i = InlineDensity.$r8$clinit;
            j = InlineDensity.m209constructorimpl(density.getDensity(), density.getFontScale());
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
            markDirty();
        }
    }

    public final ParagraphIntrinsics setLayoutDirection(LayoutDirection layoutDirection) {
        ParagraphIntrinsics paragraphIntrinsics = this.paragraphIntrinsics;
        if (paragraphIntrinsics == null || layoutDirection != this.intrinsicsLayoutDirection || paragraphIntrinsics.getHasStaleResolvedFonts()) {
            this.intrinsicsLayoutDirection = layoutDirection;
            String str = this.text;
            TextStyle resolveDefaults = ParagraphKt.resolveDefaults(this.style, layoutDirection);
            Density density = this.density;
            density.getClass();
            FontFamily.Resolver resolver = this.fontFamilyResolver;
            EmptyList emptyList = EmptyList.INSTANCE;
            paragraphIntrinsics = new AndroidParagraphIntrinsics(str, resolveDefaults, emptyList, emptyList, resolver, density);
        }
        this.paragraphIntrinsics = paragraphIntrinsics;
        return paragraphIntrinsics;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ParagraphLayoutCache(paragraph=");
        sb.append(this.paragraph != null ? "<paragraph>" : "null");
        sb.append(", lastDensity=");
        sb.append((Object) InlineDensity.m210toStringimpl(this.lastDensity));
        sb.append(", history=");
        sb.append(this.historyFlag);
        sb.append(", constraints=$)");
        return sb.toString();
    }
}
