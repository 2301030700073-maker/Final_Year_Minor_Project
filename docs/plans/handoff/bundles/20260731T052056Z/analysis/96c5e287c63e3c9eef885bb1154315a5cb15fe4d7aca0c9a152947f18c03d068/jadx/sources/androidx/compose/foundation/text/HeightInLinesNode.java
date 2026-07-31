package androidx.compose.foundation.text;

import androidx.compose.foundation.lazy.LazyItemScope$CC;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda12;
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
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontFamilyResolverImpl;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.TypefaceResult$Immutable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import kotlin.collections.EmptyMap;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        height = mo16measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Max, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Height, 2), ConstraintsKt.Constraints$default(0, i, 0, 0, 13)).getHeight();
        return height;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final /* synthetic */ int maxIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int width;
        width = mo16measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Max, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Width, 2), ConstraintsKt.Constraints$default(0, 0, 0, i, 7)).getWidth();
        return width;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo16measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        if (this.dirty) {
            TextStyle requireResolvedStyle = requireResolvedStyle();
            FontFamily.Resolver resolver = (FontFamily.Resolver) HitTestResultKt.currentValueOf(this, CompositionLocalsKt.LocalFontFamilyResolver);
            String str = TextFieldDelegateKt.EmptyTextReplacement;
            int computeSizeForDefaultText = (int) (TextFieldDelegateKt.computeSizeForDefaultText(requireResolvedStyle, measureScope, resolver, str, 1) & 4294967295L);
            int computeSizeForDefaultText2 = ((int) (TextFieldDelegateKt.computeSizeForDefaultText(requireResolvedStyle, measureScope, resolver, str + '\n' + str, 2) & 4294967295L)) - computeSizeForDefaultText;
            int i = this.minLines;
            this.precomputedMinLinesHeight = i == 1 ? -1 : ((i - 1) * computeSizeForDefaultText2) + computeSizeForDefaultText;
            int i2 = this.maxLines;
            this.precomputedMaxLinesHeight = i2 == Integer.MAX_VALUE ? -1 : ((i2 - 1) * computeSizeForDefaultText2) + computeSizeForDefaultText;
            this.dirty = false;
        }
        int i3 = this.precomputedMinLinesHeight;
        int coerceIn = i3 != -1 ? RegexKt.coerceIn(i3, Constraints.m682getMinHeightimpl(j), Constraints.m680getMaxHeightimpl(j)) : Constraints.m682getMinHeightimpl(j);
        int i4 = this.precomputedMaxLinesHeight;
        Placeable mo512measureBRTryo0 = measurable.mo512measureBRTryo0(Constraints.m674copyZbe2FdA$default(j, 0, 0, coerceIn, i4 != -1 ? RegexKt.coerceIn(i4, Constraints.m682getMinHeightimpl(j), Constraints.m680getMaxHeightimpl(j)) : Constraints.m680getMaxHeightimpl(j), 3));
        return measureScope.layout(mo512measureBRTryo0.width, mo512measureBRTryo0.height, EmptyMap.INSTANCE, new AppBarKt$$ExternalSyntheticLambda12(mo512measureBRTryo0, 8));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final /* synthetic */ int minIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int height;
        height = mo16measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Min, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Height, 2), ConstraintsKt.Constraints$default(0, i, 0, 0, 13)).getHeight();
        return height;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final /* synthetic */ int minIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int width;
        width = mo16measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Min, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Width, 2), ConstraintsKt.Constraints$default(0, 0, 0, i, 7)).getWidth();
        return width;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        FontFamily.Resolver resolver = (FontFamily.Resolver) HitTestResultKt.currentValueOf(this, CompositionLocalsKt.LocalFontFamilyResolver);
        this.resolvedStyle = ParagraphKt.resolveDefaults(this.textStyle, HitTestResultKt.requireLayoutNode(this).layoutDirection);
        FontFamily fontFamily = requireResolvedStyle().spanStyle.fontFamily;
        FontWeight fontWeight = requireResolvedStyle().spanStyle.fontWeight;
        if (fontWeight == null) {
            fontWeight = FontWeight.Normal;
        }
        FontStyle fontStyle = requireResolvedStyle().spanStyle.fontStyle;
        int i = fontStyle != null ? fontStyle.value : 0;
        FontSynthesis fontSynthesis = requireResolvedStyle().spanStyle.fontSynthesis;
        this.fontResolutionState = ((FontFamilyResolverImpl) resolver).m650resolveDPcqOEQ(fontFamily, fontWeight, i, fontSynthesis != null ? fontSynthesis.value : 65535);
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
        throw LazyItemScope$CC.m("Resolved style is not set.");
    }
}
