package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.AndroidParagraph;
import androidx.compose.ui.text.ParagraphIntrinsics;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily$Resolver;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityImpl;
import androidx.compose.ui.unit.InlineClassHelperKt;
import androidx.compose.ui.unit.LayoutDirection;
import com.google.android.exoplayer2.util.Log;
import kotlin.collections.EmptyList;
import kotlin.math.MathKt;
import okhttp3.Cookie;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
    public static long m119useMinLinesConstrainereuUD3Qg$default(ParagraphLayoutCache paragraphLayoutCache, long j, LayoutDirection layoutDirection) {
        int m435getMinHeightimpl;
        TextStyle textStyle = paragraphLayoutCache.style;
        MinLinesConstrainer minLinesConstrainer = paragraphLayoutCache.mMinLinesConstrainer;
        Density density = paragraphLayoutCache.density;
        density.getClass();
        FontFamily$Resolver fontFamily$Resolver = paragraphLayoutCache.fontFamilyResolver;
        if ((minLinesConstrainer == null || layoutDirection != minLinesConstrainer.layoutDirection || !ParagraphKt.resolveDefaults(textStyle, layoutDirection).equals(minLinesConstrainer.inputTextStyle) || density.getDensity() != minLinesConstrainer.density.density || fontFamily$Resolver != minLinesConstrainer.fontFamilyResolver) && ((minLinesConstrainer = MinLinesConstrainer.last) == null || layoutDirection != minLinesConstrainer.layoutDirection || !ParagraphKt.resolveDefaults(textStyle, layoutDirection).equals(minLinesConstrainer.inputTextStyle) || density.getDensity() != minLinesConstrainer.density.density || fontFamily$Resolver != minLinesConstrainer.fontFamilyResolver)) {
            minLinesConstrainer = new MinLinesConstrainer(layoutDirection, ParagraphKt.resolveDefaults(textStyle, layoutDirection), new DensityImpl(density.getDensity(), density.getFontScale()), fontFamily$Resolver);
            MinLinesConstrainer.last = minLinesConstrainer;
        }
        paragraphLayoutCache.mMinLinesConstrainer = minLinesConstrainer;
        int i = paragraphLayoutCache.minLines;
        DensityImpl densityImpl = minLinesConstrainer.density;
        float f = minLinesConstrainer.oneLineHeightCache;
        float f2 = minLinesConstrainer.lineHeightCache;
        if (Float.isNaN(f) || Float.isNaN(f2)) {
            float height = ParagraphKt.m406ParagraphUl8oQg4$default(MinLinesConstrainerKt.EmptyTextReplacement, minLinesConstrainer.resolvedStyle, ConstraintsKt.Constraints$default(0, 0, 15), densityImpl, minLinesConstrainer.fontFamilyResolver, 1).getHeight();
            float height2 = ParagraphKt.m406ParagraphUl8oQg4$default(MinLinesConstrainerKt.TwoLineTextReplacement, minLinesConstrainer.resolvedStyle, ConstraintsKt.Constraints$default(0, 0, 15), densityImpl, minLinesConstrainer.fontFamilyResolver, 2).getHeight() - height;
            minLinesConstrainer.oneLineHeightCache = height;
            minLinesConstrainer.lineHeightCache = height2;
            f2 = height2;
            f = height;
        }
        if (i != 1) {
            int round = Math.round((f2 * (i - 1)) + f);
            m435getMinHeightimpl = round >= 0 ? round : 0;
            int m433getMaxHeightimpl = Constraints.m433getMaxHeightimpl(j);
            if (m435getMinHeightimpl > m433getMaxHeightimpl) {
                m435getMinHeightimpl = m433getMaxHeightimpl;
            }
        } else {
            m435getMinHeightimpl = Constraints.m435getMinHeightimpl(j);
        }
        return ConstraintsKt.Constraints(Constraints.m436getMinWidthimpl(j), Constraints.m434getMaxWidthimpl(j), m435getMinHeightimpl, Constraints.m433getMaxHeightimpl(j));
    }

    public final int intrinsicHeight(int i, LayoutDirection layoutDirection) {
        int i2 = this.cachedIntrinsicHeightInputWidth;
        int i3 = this.cachedIntrinsicHeight;
        if (i == i2 && i2 != -1) {
            return i3;
        }
        long Constraints = ConstraintsKt.Constraints(0, i, 0, Log.LOG_LEVEL_OFF);
        if (this.minLines > 1) {
            Constraints = m119useMinLinesConstrainereuUD3Qg$default(this, Constraints, layoutDirection);
        }
        ParagraphIntrinsics layoutDirection2 = setLayoutDirection(layoutDirection);
        long m664finalConstraintstfFHcEY = MathKt.m664finalConstraintstfFHcEY(Constraints, this.softWrap, this.overflow, layoutDirection2.getMaxIntrinsicWidth());
        boolean z = this.softWrap;
        int i4 = this.overflow;
        int i5 = this.maxLines;
        int ceilToIntPx = Cookie.Companion.ceilToIntPx(new AndroidParagraph((AndroidParagraphIntrinsics) layoutDirection2, ((z || !(i4 == 2 || i4 == 4 || i4 == 5)) && i5 >= 1) ? i5 : 1, i4, m664finalConstraintstfFHcEY).getHeight());
        int m435getMinHeightimpl = Constraints.m435getMinHeightimpl(Constraints);
        if (ceilToIntPx < m435getMinHeightimpl) {
            ceilToIntPx = m435getMinHeightimpl;
        }
        this.cachedIntrinsicHeightInputWidth = i;
        this.cachedIntrinsicHeight = ceilToIntPx;
        return ceilToIntPx;
    }

    /* renamed from: layoutWithConstraints-K40F9xA, reason: not valid java name */
    public final boolean m120layoutWithConstraintsK40F9xA(long j, LayoutDirection layoutDirection) {
        ParagraphIntrinsics paragraphIntrinsics;
        this.historyFlag = (this.historyFlag << 2) | 3;
        boolean z = true;
        long m119useMinLinesConstrainereuUD3Qg$default = this.minLines > 1 ? m119useMinLinesConstrainereuUD3Qg$default(this, j, layoutDirection) : j;
        AndroidParagraph androidParagraph = this.paragraph;
        boolean z2 = false;
        if (androidParagraph != null && (paragraphIntrinsics = this.paragraphIntrinsics) != null && !paragraphIntrinsics.getHasStaleResolvedFonts() && layoutDirection == this.intrinsicsLayoutDirection && (Constraints.m428equalsimpl0(m119useMinLinesConstrainereuUD3Qg$default, this.prevConstraints) || (Constraints.m434getMaxWidthimpl(m119useMinLinesConstrainereuUD3Qg$default) == Constraints.m434getMaxWidthimpl(this.prevConstraints) && Constraints.m436getMinWidthimpl(m119useMinLinesConstrainereuUD3Qg$default) == Constraints.m436getMinWidthimpl(this.prevConstraints) && Constraints.m433getMaxHeightimpl(m119useMinLinesConstrainereuUD3Qg$default) >= androidParagraph.getHeight() && !androidParagraph.layout.didExceedMaxLines))) {
            if (!Constraints.m428equalsimpl0(m119useMinLinesConstrainereuUD3Qg$default, this.prevConstraints)) {
                AndroidParagraph androidParagraph2 = this.paragraph;
                androidParagraph2.getClass();
                this.layoutSize = ConstraintsKt.m438constrain4WqzIAM(m119useMinLinesConstrainereuUD3Qg$default, (Cookie.Companion.ceilToIntPx(Math.min(androidParagraph2.paragraphIntrinsics.layoutIntrinsics.getMaxIntrinsicWidth(), androidParagraph2.getWidth())) << 32) | (Cookie.Companion.ceilToIntPx(androidParagraph2.getHeight()) & 4294967295L));
                if (this.overflow == 3 || (((int) (r12 >> 32)) >= androidParagraph2.getWidth() && ((int) (4294967295L & r12)) >= androidParagraph2.getHeight())) {
                    z = false;
                }
                this.didOverflow = z;
                this.prevConstraints = m119useMinLinesConstrainereuUD3Qg$default;
            }
            return false;
        }
        ParagraphIntrinsics layoutDirection2 = setLayoutDirection(layoutDirection);
        long m664finalConstraintstfFHcEY = MathKt.m664finalConstraintstfFHcEY(m119useMinLinesConstrainereuUD3Qg$default, this.softWrap, this.overflow, layoutDirection2.getMaxIntrinsicWidth());
        boolean z3 = this.softWrap;
        int i = this.overflow;
        int i2 = this.maxLines;
        AndroidParagraph androidParagraph3 = new AndroidParagraph((AndroidParagraphIntrinsics) layoutDirection2, ((z3 || !(i == 2 || i == 4 || i == 5)) && i2 >= 1) ? i2 : 1, i, m664finalConstraintstfFHcEY);
        this.prevConstraints = m119useMinLinesConstrainereuUD3Qg$default;
        this.layoutSize = ConstraintsKt.m438constrain4WqzIAM(m119useMinLinesConstrainereuUD3Qg$default, (Cookie.Companion.ceilToIntPx(androidParagraph3.getHeight()) & 4294967295L) | (Cookie.Companion.ceilToIntPx(androidParagraph3.getWidth()) << 32));
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
            j = InlineDensity.m117constructorimpl(density.getDensity(), density.getFontScale());
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
        sb.append((Object) InlineDensity.m118toStringimpl(this.lastDensity));
        sb.append(", history=");
        return Modifier.CC.m(this.historyFlag, ", constraints=$)", sb);
    }

    /* renamed from: update-L6sJoHM, reason: not valid java name */
    public final void m121updateL6sJoHM(String str, TextStyle textStyle, FontFamily$Resolver fontFamily$Resolver, int i, boolean z, int i2, int i3) {
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
