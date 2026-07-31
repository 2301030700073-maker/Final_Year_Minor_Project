package androidx.compose.foundation.text;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.FillNode$$ExternalSyntheticLambda0;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.DefaultIntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicsMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.node.NodeMeasuringIntrinsics$IntrinsicMinMax;
import androidx.compose.ui.node.NodeMeasuringIntrinsics$IntrinsicWidthHeight;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily$Resolver;
import androidx.compose.ui.text.font.FontFamilyResolverImpl;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.SystemFontFamily;
import androidx.compose.ui.text.font.TypefaceResult$Immutable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import kotlin.collections.EmptyMap;
import kotlin.ranges.RangesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class HeightInLinesNode extends Modifier.Node implements CompositionLocalConsumerModifierNode, LayoutModifierNode, ObserverModifierNode {
    public boolean dirty;
    public TypefaceResult$Immutable fontResolutionState;
    public int maxLines;
    public int minLines;
    public int precomputedMaxLinesHeight;
    public int precomputedMinLinesHeight;
    public TextStyle resolvedStyle;
    public TextStyle textStyle;

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return false;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final /* synthetic */ int maxIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int height;
        height = mo109measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Max, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Height, 2), ConstraintsKt.Constraints$default(0, i, 0, 0, 13)).getHeight();
        return height;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final /* synthetic */ int maxIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int width;
        width = mo109measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Max, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Width, 2), ConstraintsKt.Constraints$default(0, 0, 0, i, 7)).getWidth();
        return width;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo109measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        if (this.dirty) {
            TextStyle requireResolvedStyle = requireResolvedStyle();
            FontFamily$Resolver fontFamily$Resolver = (FontFamily$Resolver) HitTestResultKt.currentValueOf(this, CompositionLocalsKt.LocalFontFamilyResolver);
            String str = TextFieldDelegateKt.EmptyTextReplacement;
            int computeSizeForDefaultText = (int) (TextFieldDelegateKt.computeSizeForDefaultText(requireResolvedStyle, measureScope, fontFamily$Resolver, str, 1) & 4294967295L);
            int computeSizeForDefaultText2 = ((int) (TextFieldDelegateKt.computeSizeForDefaultText(requireResolvedStyle, measureScope, fontFamily$Resolver, str + '\n' + str, 2) & 4294967295L)) - computeSizeForDefaultText;
            int i = this.minLines;
            this.precomputedMinLinesHeight = i == 1 ? -1 : ((i - 1) * computeSizeForDefaultText2) + computeSizeForDefaultText;
            int i2 = this.maxLines;
            this.precomputedMaxLinesHeight = i2 == Integer.MAX_VALUE ? -1 : ((i2 - 1) * computeSizeForDefaultText2) + computeSizeForDefaultText;
            this.dirty = false;
        }
        int i3 = this.precomputedMinLinesHeight;
        int coerceIn = i3 != -1 ? RangesKt.coerceIn(i3, Constraints.m735getMinHeightimpl(j), Constraints.m733getMaxHeightimpl(j)) : Constraints.m735getMinHeightimpl(j);
        int i4 = this.precomputedMaxLinesHeight;
        Placeable mo571measureBRTryo0 = measurable.mo571measureBRTryo0(Constraints.m727copyZbe2FdA$default(j, 0, 0, coerceIn, i4 != -1 ? RangesKt.coerceIn(i4, Constraints.m735getMinHeightimpl(j), Constraints.m733getMaxHeightimpl(j)) : Constraints.m733getMaxHeightimpl(j), 3));
        return measureScope.layout(mo571measureBRTryo0.width, mo571measureBRTryo0.height, EmptyMap.INSTANCE, new FillNode$$ExternalSyntheticLambda0(mo571measureBRTryo0, 5));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final /* synthetic */ int minIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int height;
        height = mo109measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Min, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Height, 2), ConstraintsKt.Constraints$default(0, i, 0, 0, 13)).getHeight();
        return height;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final /* synthetic */ int minIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int width;
        width = mo109measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Min, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Width, 2), ConstraintsKt.Constraints$default(0, 0, 0, i, 7)).getWidth();
        return width;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        FontFamily$Resolver fontFamily$Resolver = (FontFamily$Resolver) HitTestResultKt.currentValueOf(this, CompositionLocalsKt.LocalFontFamilyResolver);
        this.resolvedStyle = ParagraphKt.resolveDefaults(this.textStyle, HitTestResultKt.requireLayoutNode(this).layoutDirection);
        SystemFontFamily systemFontFamily = requireResolvedStyle().spanStyle.fontFamily;
        FontWeight fontWeight = requireResolvedStyle().spanStyle.fontWeight;
        if (fontWeight == null) {
            fontWeight = FontWeight.Normal;
        }
        FontStyle fontStyle = requireResolvedStyle().spanStyle.fontStyle;
        int i = fontStyle != null ? fontStyle.value : 0;
        FontSynthesis fontSynthesis = requireResolvedStyle().spanStyle.fontSynthesis;
        this.fontResolutionState = ((FontFamilyResolverImpl) fontFamily$Resolver).m708resolveDPcqOEQ(systemFontFamily, fontWeight, i, fontSynthesis != null ? fontSynthesis.value : 65535);
        HitTestResultKt.observeReads(this, new HeightInLinesNode$$ExternalSyntheticLambda0(this, 0));
        this.dirty = true;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDensityChange() {
        this.dirty = true;
        HitTestResultKt.invalidateMeasurement(this);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        this.resolvedStyle = null;
        this.fontResolutionState = null;
        this.dirty = false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onLayoutDirectionChange() {
        this.resolvedStyle = ParagraphKt.resolveDefaults(this.textStyle, HitTestResultKt.requireLayoutNode(this).layoutDirection);
        this.dirty = true;
        HitTestResultKt.invalidateMeasurement(this);
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void onObservedReadsChanged() {
        if (this.fontResolutionState != null) {
            HitTestResultKt.observeReads(this, new HeightInLinesNode$$ExternalSyntheticLambda0(this, 1));
        }
        this.dirty = true;
        HitTestResultKt.invalidateMeasurement(this);
    }

    public final TextStyle requireResolvedStyle() {
        TextStyle textStyle = this.resolvedStyle;
        if (textStyle != null) {
            return textStyle;
        }
        InlineClassHelperKt.throwIllegalArgumentExceptionForNullCheck("Resolved style is not set.");
        _UtilJvmKt$$ExternalSyntheticLambda0.m();
        return null;
    }
}
