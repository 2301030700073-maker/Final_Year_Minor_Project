package androidx.compose.foundation.text.modifiers;

import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.ui.text.AndroidParagraph;
import androidx.compose.ui.text.ParagraphIntrinsics;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily$Resolver;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.InlineClassHelperKt;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.collections.EmptyList;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ParagraphLayoutCache {
    public Density density;
    public boolean didOverflow;
    public FontFamily$Resolver fontFamilyResolver;
    public long historyFlag;
    public LayoutDirection intrinsicsLayoutDirection;
    public MinLinesConstrainer mMinLinesConstrainer;
    public int maxLines;
    public int minLines;
    public int overflow;
    public AndroidParagraph paragraph;
    public ParagraphIntrinsics paragraphIntrinsics;
    public boolean softWrap;
    public TextStyle style;
    public String text;
    public long lastDensity = InlineDensity.Unspecified;
    public long layoutSize = 0;
    public long prevConstraints = ConstraintsKt.createConstraints(0, 0, 0, 0);
    public int cachedIntrinsicHeightInputWidth = -1;
    public int cachedIntrinsicHeight = -1;

    public ParagraphLayoutCache(String str, TextStyle textStyle, FontFamily$Resolver fontFamily$Resolver, int i, boolean z, int i2, int i3) {
        this.text = str;
        this.style = textStyle;
        this.fontFamilyResolver = fontFamily$Resolver;
        this.overflow = i;
        this.softWrap = z;
        this.maxLines = i2;
        this.minLines = i3;
    }

    /* renamed from: useMinLinesConstrainer-euUD3Qg$default, reason: not valid java name */
    public static long m300useMinLinesConstrainereuUD3Qg$default(ParagraphLayoutCache paragraphLayoutCache, long j, LayoutDirection layoutDirection) {
        TextStyle textStyle = paragraphLayoutCache.style;
        MinLinesConstrainer minLinesConstrainer = paragraphLayoutCache.mMinLinesConstrainer;
        Density density = paragraphLayoutCache.density;
        density.getClass();
        MinLinesConstrainer from = Validate.from(minLinesConstrainer, layoutDirection, textStyle, density, paragraphLayoutCache.fontFamilyResolver);
        paragraphLayoutCache.mMinLinesConstrainer = from;
        return from.m295coerceMinLinesOh53vG4$foundation(paragraphLayoutCache.minLines, j);
    }

    public final int intrinsicHeight(int i, LayoutDirection layoutDirection) {
        int i2 = this.cachedIntrinsicHeightInputWidth;
        int i3 = this.cachedIntrinsicHeight;
        if (i == i2 && i2 != -1) {
            return i3;
        }
        long Constraints = ConstraintsKt.Constraints(0, i, 0, Integer.MAX_VALUE);
        if (this.minLines > 1) {
            Constraints = m300useMinLinesConstrainereuUD3Qg$default(this, Constraints, layoutDirection);
        }
        ParagraphIntrinsics layoutDirection2 = setLayoutDirection(layoutDirection);
        long m766finalConstraintstfFHcEY = IntRectKt.m766finalConstraintstfFHcEY(Constraints, this.softWrap, this.overflow, layoutDirection2.getMaxIntrinsicWidth());
        boolean z = this.softWrap;
        int i4 = this.overflow;
        int i5 = this.maxLines;
        int ceilToIntPx = BasicTextKt.ceilToIntPx(new AndroidParagraph((AndroidParagraphIntrinsics) layoutDirection2, ((z || !(i4 == 2 || i4 == 4 || i4 == 5)) && i5 >= 1) ? i5 : 1, i4, m766finalConstraintstfFHcEY).getHeight());
        int m735getMinHeightimpl = Constraints.m735getMinHeightimpl(Constraints);
        if (ceilToIntPx < m735getMinHeightimpl) {
            ceilToIntPx = m735getMinHeightimpl;
        }
        this.cachedIntrinsicHeightInputWidth = i;
        this.cachedIntrinsicHeight = ceilToIntPx;
        return ceilToIntPx;
    }

    /* renamed from: layoutWithConstraints-K40F9xA, reason: not valid java name */
    public final boolean m301layoutWithConstraintsK40F9xA(long j, LayoutDirection layoutDirection) {
        ParagraphIntrinsics paragraphIntrinsics;
        this.historyFlag = (this.historyFlag << 2) | 3;
        boolean z = true;
        long m300useMinLinesConstrainereuUD3Qg$default = this.minLines > 1 ? m300useMinLinesConstrainereuUD3Qg$default(this, j, layoutDirection) : j;
        AndroidParagraph androidParagraph = this.paragraph;
        boolean z2 = false;
        if (androidParagraph != null && (paragraphIntrinsics = this.paragraphIntrinsics) != null && !paragraphIntrinsics.getHasStaleResolvedFonts() && layoutDirection == this.intrinsicsLayoutDirection && (Constraints.m728equalsimpl0(m300useMinLinesConstrainereuUD3Qg$default, this.prevConstraints) || (Constraints.m734getMaxWidthimpl(m300useMinLinesConstrainereuUD3Qg$default) == Constraints.m734getMaxWidthimpl(this.prevConstraints) && Constraints.m736getMinWidthimpl(m300useMinLinesConstrainereuUD3Qg$default) == Constraints.m736getMinWidthimpl(this.prevConstraints) && Constraints.m733getMaxHeightimpl(m300useMinLinesConstrainereuUD3Qg$default) >= androidParagraph.getHeight() && !androidParagraph.layout.didExceedMaxLines))) {
            if (!Constraints.m728equalsimpl0(m300useMinLinesConstrainereuUD3Qg$default, this.prevConstraints)) {
                AndroidParagraph androidParagraph2 = this.paragraph;
                androidParagraph2.getClass();
                this.layoutSize = ConstraintsKt.m738constrain4WqzIAM(m300useMinLinesConstrainereuUD3Qg$default, (BasicTextKt.ceilToIntPx(Math.min(androidParagraph2.paragraphIntrinsics.layoutIntrinsics.getMaxIntrinsicWidth(), androidParagraph2.getWidth())) << 32) | (BasicTextKt.ceilToIntPx(androidParagraph2.getHeight()) & 4294967295L));
                if (this.overflow == 3 || (((int) (r12 >> 32)) >= androidParagraph2.getWidth() && ((int) (4294967295L & r12)) >= androidParagraph2.getHeight())) {
                    z = false;
                }
                this.didOverflow = z;
                this.prevConstraints = m300useMinLinesConstrainereuUD3Qg$default;
            }
            return false;
        }
        ParagraphIntrinsics layoutDirection2 = setLayoutDirection(layoutDirection);
        long m766finalConstraintstfFHcEY = IntRectKt.m766finalConstraintstfFHcEY(m300useMinLinesConstrainereuUD3Qg$default, this.softWrap, this.overflow, layoutDirection2.getMaxIntrinsicWidth());
        boolean z3 = this.softWrap;
        int i = this.overflow;
        int i2 = this.maxLines;
        AndroidParagraph androidParagraph3 = new AndroidParagraph((AndroidParagraphIntrinsics) layoutDirection2, ((z3 || !(i == 2 || i == 4 || i == 5)) && i2 >= 1) ? i2 : 1, i, m766finalConstraintstfFHcEY);
        this.prevConstraints = m300useMinLinesConstrainereuUD3Qg$default;
        this.layoutSize = ConstraintsKt.m738constrain4WqzIAM(m300useMinLinesConstrainereuUD3Qg$default, (BasicTextKt.ceilToIntPx(androidParagraph3.getHeight()) & 4294967295L) | (BasicTextKt.ceilToIntPx(androidParagraph3.getWidth()) << 32));
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
            FontFamily$Resolver fontFamily$Resolver = this.fontFamilyResolver;
            EmptyList emptyList = EmptyList.INSTANCE;
            paragraphIntrinsics = new AndroidParagraphIntrinsics(str, resolveDefaults, emptyList, emptyList, fontFamily$Resolver, density);
        }
        this.paragraphIntrinsics = paragraphIntrinsics;
        return paragraphIntrinsics;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ParagraphLayoutCache(paragraph=");
        sb.append(this.paragraph != null ? "<paragraph>" : "null");
        sb.append(", lastDensity=");
        sb.append((Object) InlineDensity.m294toStringimpl(this.lastDensity));
        sb.append(", history=");
        sb.append(this.historyFlag);
        sb.append(", constraints=$)");
        return sb.toString();
    }

    /* renamed from: update-L6sJoHM, reason: not valid java name */
    public final void m302updateL6sJoHM(String str, TextStyle textStyle, FontFamily$Resolver fontFamily$Resolver, int i, boolean z, int i2, int i3) {
        this.text = str;
        this.style = textStyle;
        this.fontFamilyResolver = fontFamily$Resolver;
        this.overflow = i;
        this.softWrap = z;
        this.maxLines = i2;
        this.minLines = i3;
        this.historyFlag = (this.historyFlag << 2) | 2;
        markDirty();
    }
}
