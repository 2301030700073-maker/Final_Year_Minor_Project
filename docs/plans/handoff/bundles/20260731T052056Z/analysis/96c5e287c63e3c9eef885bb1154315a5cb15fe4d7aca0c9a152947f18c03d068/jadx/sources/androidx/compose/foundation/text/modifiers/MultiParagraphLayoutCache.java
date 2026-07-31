package androidx.compose.foundation.text.modifiers;

import androidx.compose.foundation.text.AutoSizeStepBased;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.TextUnit;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import kotlin.TuplesKt;
import kotlin.UnsignedKt;
import kotlin.collections.EmptyList;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MultiParagraphLayoutCache {
    public TextAutoSizeLayoutScopeImpl _textAutoSizeLayoutScope;
    public AutoSizeStepBased autoSize;
    public int cachedIntrinsicHeight;
    public int cachedIntrinsicHeightInputWidth;
    public Density density;
    public FontFamily.Resolver fontFamilyResolver;
    public long historyFlag;
    public LayoutDirection intrinsicsLayoutDirection;
    public long lastDensity;
    public TextLayoutResult layoutCache;
    public MinLinesConstrainer mMinLinesConstrainer;
    public int maxLines;
    public int minLines;
    public int overflow;
    public Request.Builder paragraphIntrinsics;
    public List placeholders;
    public boolean softWrap;
    public TextStyle style;
    public AnnotatedString text;

    public MultiParagraphLayoutCache(AnnotatedString annotatedString, TextStyle textStyle, FontFamily.Resolver resolver, int i, boolean z, int i2, int i3, List list, AutoSizeStepBased autoSizeStepBased) {
        this.text = annotatedString;
        this.fontFamilyResolver = resolver;
        this.overflow = i;
        this.softWrap = z;
        this.maxLines = i2;
        this.minLines = i3;
        this.placeholders = list;
        this.autoSize = autoSizeStepBased;
        int i4 = InlineDensity.$r8$clinit;
        this.lastDensity = InlineDensity.Unspecified;
        this.style = textStyle;
        this.cachedIntrinsicHeightInputWidth = -1;
        this.cachedIntrinsicHeight = -1;
    }

    public final int intrinsicHeight(int i, LayoutDirection layoutDirection) {
        int i2 = this.cachedIntrinsicHeightInputWidth;
        int i3 = this.cachedIntrinsicHeight;
        if (i == i2 && i2 != -1) {
            return i3;
        }
        long Constraints = ConstraintsKt.Constraints(0, i, 0, Integer.MAX_VALUE);
        if (this.minLines > 1) {
            Constraints = m215useMinLinesConstrainerOh53vG4(Constraints, layoutDirection);
        }
        int ceilToIntPx = BasicTextKt.ceilToIntPx(m212layoutTextK40F9xA(Constraints, layoutDirection).height);
        int m682getMinHeightimpl = Constraints.m682getMinHeightimpl(Constraints);
        if (ceilToIntPx < m682getMinHeightimpl) {
            ceilToIntPx = m682getMinHeightimpl;
        }
        this.cachedIntrinsicHeightInputWidth = i;
        this.cachedIntrinsicHeight = ceilToIntPx;
        return ceilToIntPx;
    }

    /* renamed from: layoutText-K40F9xA, reason: not valid java name */
    public final MultiParagraph m212layoutTextK40F9xA(long j, LayoutDirection layoutDirection) {
        Request.Builder layoutDirection2 = setLayoutDirection(layoutDirection);
        long m818finalConstraintstfFHcEY = TuplesKt.m818finalConstraintstfFHcEY(j, this.softWrap, this.overflow, layoutDirection2.getMaxIntrinsicWidth());
        boolean z = this.softWrap;
        int i = this.overflow;
        int i2 = this.maxLines;
        return new MultiParagraph(layoutDirection2, m818finalConstraintstfFHcEY, ((z || !(i == 2 || i == 4 || i == 5)) && i2 >= 1) ? i2 : 1, i);
    }

    /* renamed from: layoutWithConstraints-K40F9xA, reason: not valid java name */
    public final boolean m213layoutWithConstraintsK40F9xA(long j, LayoutDirection layoutDirection) {
        this.historyFlag = (this.historyFlag << 2) | 3;
        long m215useMinLinesConstrainerOh53vG4 = this.minLines > 1 ? m215useMinLinesConstrainerOh53vG4(j, layoutDirection) : j;
        TextLayoutResult textLayoutResult = this.layoutCache;
        if (textLayoutResult != null) {
            MultiParagraph multiParagraph = textLayoutResult.multiParagraph;
            TextLayoutInput textLayoutInput = textLayoutResult.layoutInput;
            if (!multiParagraph.intrinsics.getHasStaleResolvedFonts()) {
                LayoutDirection layoutDirection2 = textLayoutInput.layoutDirection;
                long j2 = textLayoutInput.constraints;
                if (layoutDirection == layoutDirection2 && (Constraints.m675equalsimpl0(m215useMinLinesConstrainerOh53vG4, j2) || (Constraints.m681getMaxWidthimpl(m215useMinLinesConstrainerOh53vG4) == Constraints.m681getMaxWidthimpl(j2) && Constraints.m683getMinWidthimpl(m215useMinLinesConstrainerOh53vG4) == Constraints.m683getMinWidthimpl(j2) && Constraints.m680getMaxHeightimpl(m215useMinLinesConstrainerOh53vG4) >= multiParagraph.height && !multiParagraph.didExceedMaxLines))) {
                    TextLayoutResult textLayoutResult2 = this.layoutCache;
                    textLayoutResult2.getClass();
                    if (Constraints.m675equalsimpl0(m215useMinLinesConstrainerOh53vG4, textLayoutResult2.layoutInput.constraints)) {
                        return false;
                    }
                    TextLayoutResult textLayoutResult3 = this.layoutCache;
                    textLayoutResult3.getClass();
                    this.layoutCache = m214textLayoutResultVKLhPVY(layoutDirection, m215useMinLinesConstrainerOh53vG4, textLayoutResult3.multiParagraph);
                    return true;
                }
            }
        }
        AutoSizeStepBased autoSizeStepBased = this.autoSize;
        if (autoSizeStepBased != null) {
            this.intrinsicsLayoutDirection = layoutDirection;
            long j3 = this.style.spanStyle.fontSize;
            TextAutoSizeLayoutScopeImpl textAutoSizeLayoutScopeImpl = this._textAutoSizeLayoutScope;
            if (textAutoSizeLayoutScopeImpl == null) {
                textAutoSizeLayoutScopeImpl = new TextAutoSizeLayoutScopeImpl();
                this._textAutoSizeLayoutScope = textAutoSizeLayoutScopeImpl;
            }
            float mo86toPxR2X_6o = textAutoSizeLayoutScopeImpl.mo86toPxR2X_6o(autoSizeStepBased.stepSize);
            float mo86toPxR2X_6o2 = textAutoSizeLayoutScopeImpl.mo86toPxR2X_6o(autoSizeStepBased.minFontSize);
            float mo86toPxR2X_6o3 = textAutoSizeLayoutScopeImpl.mo86toPxR2X_6o(autoSizeStepBased.maxFontSize);
            float f = 2.0f;
            float f2 = (mo86toPxR2X_6o2 + mo86toPxR2X_6o3) / 2.0f;
            float f3 = mo86toPxR2X_6o3;
            float f4 = mo86toPxR2X_6o2;
            while (f3 - f4 >= mo86toPxR2X_6o) {
                float f5 = f;
                float f6 = f3;
                if (AutoSizeStepBased.didOverflow(textAutoSizeLayoutScopeImpl.m216performLayout5ZSfY2I(j, textAutoSizeLayoutScopeImpl.mo89toSpkPz2Gy4(f2)))) {
                    f3 = f2;
                } else {
                    f4 = f2;
                    f3 = f6;
                }
                f2 = (f4 + f3) / f5;
                f = f5;
            }
            float floor = (((float) Math.floor((f4 - mo86toPxR2X_6o2) / mo86toPxR2X_6o)) * mo86toPxR2X_6o) + mo86toPxR2X_6o2;
            float f7 = mo86toPxR2X_6o + floor;
            if (f7 <= mo86toPxR2X_6o3 && !AutoSizeStepBased.didOverflow(textAutoSizeLayoutScopeImpl.m216performLayout5ZSfY2I(j, textAutoSizeLayoutScopeImpl.mo89toSpkPz2Gy4(f7)))) {
                floor = f7;
            }
            long mo89toSpkPz2Gy4 = textAutoSizeLayoutScopeImpl.mo89toSpkPz2Gy4(floor);
            if (TextUnit.m726isEmimpl(mo89toSpkPz2Gy4)) {
                mo89toSpkPz2Gy4 = MultiParagraphLayoutCacheKt.m217timesNB67dxo(j3, mo89toSpkPz2Gy4);
            }
            long j4 = mo89toSpkPz2Gy4;
            TextAutoSizeLayoutScopeImpl textAutoSizeLayoutScopeImpl2 = this._textAutoSizeLayoutScope;
            if (textAutoSizeLayoutScopeImpl2 == null) {
                textAutoSizeLayoutScopeImpl2 = new TextAutoSizeLayoutScopeImpl();
                this._textAutoSizeLayoutScope = textAutoSizeLayoutScopeImpl2;
            }
            TextLayoutResult textLayoutResult4 = textAutoSizeLayoutScopeImpl2.lastLayoutResult;
            if (textLayoutResult4 != null) {
                TextLayoutInput textLayoutInput2 = textLayoutResult4.layoutInput;
                if (TextUnit.m723equalsimpl0(j4, textLayoutInput2.style.spanStyle.fontSize) && textLayoutInput2.overflow == this.overflow) {
                    this.layoutCache = textLayoutResult4;
                    return true;
                }
            }
            setStyle(TextStyle.m647copyp1EtxEg$default(this.style, 0L, j4, null, null, 0L, 0L, null, 16777213));
        }
        this.layoutCache = m214textLayoutResultVKLhPVY(layoutDirection, m215useMinLinesConstrainerOh53vG4, m212layoutTextK40F9xA(m215useMinLinesConstrainerOh53vG4, layoutDirection));
        return true;
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
            return;
        }
        if (density == null || this.lastDensity != j) {
            this.density = density;
            this.lastDensity = j;
            this.historyFlag = (this.historyFlag << 2) | 1;
            this.paragraphIntrinsics = null;
            this.layoutCache = null;
            this.cachedIntrinsicHeight = -1;
            this.cachedIntrinsicHeightInputWidth = -1;
            this._textAutoSizeLayoutScope = null;
        }
    }

    public final Request.Builder setLayoutDirection(LayoutDirection layoutDirection) {
        Request.Builder builder = this.paragraphIntrinsics;
        if (builder == null || layoutDirection != this.intrinsicsLayoutDirection || builder.getHasStaleResolvedFonts()) {
            this.intrinsicsLayoutDirection = layoutDirection;
            AnnotatedString annotatedString = this.text;
            TextStyle resolveDefaults = ParagraphKt.resolveDefaults(this.style, layoutDirection);
            Density density = this.density;
            density.getClass();
            FontFamily.Resolver resolver = this.fontFamilyResolver;
            List list = this.placeholders;
            if (list == null) {
                list = EmptyList.INSTANCE;
            }
            builder = new Request.Builder(annotatedString, resolveDefaults, list, density, resolver);
        }
        this.paragraphIntrinsics = builder;
        return builder;
    }

    public final void setStyle(TextStyle textStyle) {
        boolean hasSameLayoutAffectingAttributes = textStyle.hasSameLayoutAffectingAttributes(this.style);
        this.style = textStyle;
        if (hasSameLayoutAffectingAttributes) {
            return;
        }
        this.historyFlag <<= 2;
        this.paragraphIntrinsics = null;
        this.layoutCache = null;
        this.cachedIntrinsicHeight = -1;
        this.cachedIntrinsicHeightInputWidth = -1;
    }

    /* renamed from: textLayoutResult-VKLhPVY, reason: not valid java name */
    public final TextLayoutResult m214textLayoutResultVKLhPVY(LayoutDirection layoutDirection, long j, MultiParagraph multiParagraph) {
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
        return new TextLayoutResult(new TextLayoutInput(annotatedString, textStyle, list, i, z, i2, density, layoutDirection, this.fontFamilyResolver, j), multiParagraph, ConstraintsKt.m686constrain4WqzIAM(j, (BasicTextKt.ceilToIntPx(min) << 32) | (BasicTextKt.ceilToIntPx(multiParagraph.height) & 4294967295L)));
    }

    public final String toString() {
        TextLayoutInput textLayoutInput;
        StringBuilder sb = new StringBuilder("MultiParagraphLayoutCache(textLayoutResult=");
        Object obj = "null";
        sb.append(this.layoutCache != null ? "<TextLayoutResult>" : "null");
        sb.append(", lastDensity=");
        sb.append((Object) InlineDensity.m210toStringimpl(this.lastDensity));
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

    /* renamed from: useMinLinesConstrainer-Oh53vG4, reason: not valid java name */
    public final long m215useMinLinesConstrainerOh53vG4(long j, LayoutDirection layoutDirection) {
        MinLinesConstrainer minLinesConstrainer = this.mMinLinesConstrainer;
        TextStyle textStyle = this.style;
        Density density = this.density;
        density.getClass();
        MinLinesConstrainer from = UnsignedKt.from(minLinesConstrainer, layoutDirection, textStyle, density, this.fontFamilyResolver);
        this.mMinLinesConstrainer = from;
        return from.m211coerceMinLinesOh53vG4$foundation(j, this.minLines);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class TextAutoSizeLayoutScopeImpl implements Density {
        public TextLayoutResult lastLayoutResult;

        public TextAutoSizeLayoutScopeImpl() {
        }

        @Override // androidx.compose.ui.unit.Density
        public final float getDensity() {
            Density density = MultiParagraphLayoutCache.this.density;
            density.getClass();
            return density.getDensity();
        }

        @Override // androidx.compose.ui.unit.Density
        public final float getFontScale() {
            Density density = MultiParagraphLayoutCache.this.density;
            density.getClass();
            return density.getFontScale();
        }

        /* renamed from: performLayout-5ZSfY2I, reason: not valid java name */
        public final TextLayoutResult m216performLayout5ZSfY2I(long j, long j2) {
            long j3;
            MultiParagraphLayoutCache multiParagraphLayoutCache = MultiParagraphLayoutCache.this;
            TextStyle textStyle = multiParagraphLayoutCache.style;
            long m217timesNB67dxo = TextUnit.m726isEmimpl(j2) ? MultiParagraphLayoutCacheKt.m217timesNB67dxo(multiParagraphLayoutCache.style.spanStyle.fontSize, j2) : j2;
            if (!TextUnit.m723equalsimpl0(m217timesNB67dxo, multiParagraphLayoutCache.style.spanStyle.fontSize)) {
                multiParagraphLayoutCache.setStyle(TextStyle.m647copyp1EtxEg$default(multiParagraphLayoutCache.style, 0L, m217timesNB67dxo, null, null, 0L, 0L, null, 16777213));
            }
            if (multiParagraphLayoutCache.minLines > 1) {
                LayoutDirection layoutDirection = multiParagraphLayoutCache.intrinsicsLayoutDirection;
                layoutDirection.getClass();
                j3 = multiParagraphLayoutCache.m215useMinLinesConstrainerOh53vG4(j, layoutDirection);
            } else {
                j3 = j;
            }
            LayoutDirection layoutDirection2 = multiParagraphLayoutCache.intrinsicsLayoutDirection;
            layoutDirection2.getClass();
            MultiParagraph m212layoutTextK40F9xA = multiParagraphLayoutCache.m212layoutTextK40F9xA(j3, layoutDirection2);
            LayoutDirection layoutDirection3 = multiParagraphLayoutCache.intrinsicsLayoutDirection;
            layoutDirection3.getClass();
            TextLayoutResult m214textLayoutResultVKLhPVY = multiParagraphLayoutCache.m214textLayoutResultVKLhPVY(layoutDirection3, j3, m212layoutTextK40F9xA);
            this.lastLayoutResult = m214textLayoutResultVKLhPVY;
            multiParagraphLayoutCache.setStyle(textStyle);
            return m214textLayoutResultVKLhPVY;
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: roundToPx--R2X_6o */
        public final int mo80roundToPxR2X_6o(long j) {
            return Math.round(mo86toPxR2X_6o(j));
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: roundToPx-0680j_4 */
        public final /* synthetic */ int mo81roundToPx0680j_4(float f) {
            return Modifier.CC.m334$default$roundToPx0680j_4(this, f);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-GaN1DYA */
        public final /* synthetic */ float mo82toDpGaN1DYA(long j) {
            return Modifier.CC.m335$default$toDpGaN1DYA(j, this);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-u2uoSUM */
        public final float mo84toDpu2uoSUM(int i) {
            return i / getDensity();
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDpSize-k-rfVVM */
        public final /* synthetic */ long mo85toDpSizekrfVVM(long j) {
            return Modifier.CC.m336$default$toDpSizekrfVVM(j, this);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toPx--R2X_6o */
        public final float mo86toPxR2X_6o(long j) {
            if (!TextUnit.m726isEmimpl(j)) {
                return getDensity() * Modifier.CC.m335$default$toDpGaN1DYA(j, this);
            }
            MultiParagraphLayoutCache multiParagraphLayoutCache = MultiParagraphLayoutCache.this;
            if (TextUnit.m726isEmimpl(multiParagraphLayoutCache.style.spanStyle.fontSize)) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("InternalAutoSize -> toPx(): Cannot convert Em to Px when style.fontSize is Em\nDeclare the composable's style.fontSize with Sp units instead.");
                return RecyclerView.DECELERATION_RATE;
            }
            if (TextUnit.m723equalsimpl0(multiParagraphLayoutCache.style.spanStyle.fontSize, TextUnit.Unspecified)) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("InternalAutoSize -> toPx(): Cannot convert Em to Px when style.fontSize is not set. Please specify a font size.");
                return RecyclerView.DECELERATION_RATE;
            }
            return TextUnit.m725getValueimpl(j) * mo86toPxR2X_6o(multiParagraphLayoutCache.style.spanStyle.fontSize);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toPx-0680j_4 */
        public final float mo87toPx0680j_4(float f) {
            return getDensity() * f;
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSize-XkaWNTQ */
        public final /* synthetic */ long mo88toSizeXkaWNTQ(long j) {
            return Modifier.CC.m338$default$toSizeXkaWNTQ(j, this);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSp-kPz2Gy4 */
        public final long mo89toSpkPz2Gy4(float f) {
            return Modifier.CC.m339$default$toSp0xMU5do(this, mo83toDpu2uoSUM(f));
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-u2uoSUM */
        public final float mo83toDpu2uoSUM(float f) {
            return f / getDensity();
        }
    }
}
