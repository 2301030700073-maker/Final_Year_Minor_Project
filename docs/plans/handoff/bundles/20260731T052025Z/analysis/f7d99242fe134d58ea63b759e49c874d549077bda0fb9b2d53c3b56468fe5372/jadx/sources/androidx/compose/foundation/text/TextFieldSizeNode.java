package androidx.compose.foundation.text;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.FillNode$$ExternalSyntheticLambda0;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
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
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily$Resolver;
import androidx.compose.ui.text.font.FontFamilyResolverImpl;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.SystemFontFamily;
import androidx.compose.ui.text.font.TypefaceResult$Immutable;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.collections.EmptyMap;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextFieldSizeNode extends Modifier.Node implements CompositionLocalConsumerModifierNode, LayoutModifierNode {
    public TypefaceResult$Immutable fontResolutionState;
    public TextFieldSize minSizeState;
    public final TextStyle style;

    public TextFieldSizeNode(TextStyle textStyle) {
        this.style = textStyle;
    }

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
        long computeSizeForDefaultText;
        TextFieldSize textFieldSize = this.minSizeState;
        if (textFieldSize == null) {
            InlineClassHelperKt.throwIllegalArgumentExceptionForNullCheck("Min size state is not set.");
            _UtilJvmKt$$ExternalSyntheticLambda0.m();
            return null;
        }
        ParcelableSnapshotMutableState parcelableSnapshotMutableState = textFieldSize.dirty$delegate;
        TypefaceResult$Immutable typefaceResult$Immutable = this.fontResolutionState;
        if (typefaceResult$Immutable == null) {
            InlineClassHelperKt.throwIllegalArgumentExceptionForNullCheck("Font resolution state is not set.");
            _UtilJvmKt$$ExternalSyntheticLambda0.m();
            return null;
        }
        Object obj = typefaceResult$Immutable.value;
        if (!Intrinsics.areEqual(obj, textFieldSize.typeface)) {
            textFieldSize.typeface = obj;
            parcelableSnapshotMutableState.setValue(Boolean.TRUE);
        }
        if (((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue()) {
            computeSizeForDefaultText = TextFieldDelegateKt.computeSizeForDefaultText(textFieldSize.resolvedStyle, textFieldSize.density, textFieldSize.fontFamilyResolver, TextFieldDelegateKt.EmptyTextReplacement, 1);
            textFieldSize.minSize = computeSizeForDefaultText;
            parcelableSnapshotMutableState.setValue(Boolean.FALSE);
        }
        long j2 = textFieldSize.minSize;
        Placeable mo571measureBRTryo0 = measurable.mo571measureBRTryo0(ConstraintsKt.m739constrainN9IONVI(j, ConstraintsKt.Constraints$default((int) (j2 >> 32), 0, (int) (j2 & 4294967295L), 0, 10)));
        return measureScope.layout(mo571measureBRTryo0.width, mo571measureBRTryo0.height, EmptyMap.INSTANCE, new FillNode$$ExternalSyntheticLambda0(mo571measureBRTryo0, 6));
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
        TextStyle resolveDefaults = ParagraphKt.resolveDefaults(this.style, HitTestResultKt.requireLayoutNode(this).layoutDirection);
        FontFamily$Resolver fontFamily$Resolver = (FontFamily$Resolver) HitTestResultKt.currentValueOf(this, CompositionLocalsKt.LocalFontFamilyResolver);
        updateFontResolutionState(resolveDefaults, fontFamily$Resolver);
        LayoutDirection layoutDirection = HitTestResultKt.requireLayoutNode(this).layoutDirection;
        Density density = HitTestResultKt.requireLayoutNode(this).density;
        TypefaceResult$Immutable typefaceResult$Immutable = this.fontResolutionState;
        if (typefaceResult$Immutable != null) {
            this.minSizeState = new TextFieldSize(layoutDirection, density, fontFamily$Resolver, resolveDefaults, typefaceResult$Immutable.value);
        } else {
            InlineClassHelperKt.throwIllegalArgumentExceptionForNullCheck("Font resolution state is not set.");
            _UtilJvmKt$$ExternalSyntheticLambda0.m();
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDensityChange() {
        TextFieldSize textFieldSize = this.minSizeState;
        if (textFieldSize != null) {
            TextFieldSize.update$default(textFieldSize, null, HitTestResultKt.requireLayoutNode(this).density, null, 29);
        }
        HitTestResultKt.invalidateMeasurement(this);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        this.fontResolutionState = null;
        this.minSizeState = null;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onLayoutDirectionChange() {
        TextFieldSize textFieldSize = this.minSizeState;
        if (textFieldSize != null) {
            TextFieldSize.update$default(textFieldSize, HitTestResultKt.requireLayoutNode(this).layoutDirection, null, null, 30);
        }
        HitTestResultKt.invalidateMeasurement(this);
    }

    public final void updateFontResolutionState(TextStyle textStyle, FontFamily$Resolver fontFamily$Resolver) {
        SpanStyle spanStyle = textStyle.spanStyle;
        SystemFontFamily systemFontFamily = spanStyle.fontFamily;
        FontWeight fontWeight = spanStyle.fontWeight;
        if (fontWeight == null) {
            fontWeight = FontWeight.Normal;
        }
        FontStyle fontStyle = spanStyle.fontStyle;
        int i = fontStyle != null ? fontStyle.value : 0;
        FontSynthesis fontSynthesis = spanStyle.fontSynthesis;
        this.fontResolutionState = ((FontFamilyResolverImpl) fontFamily$Resolver).m708resolveDPcqOEQ(systemFontFamily, fontWeight, i, fontSynthesis != null ? fontSynthesis.value : 65535);
        HitTestResultKt.invalidateMeasurement(this);
    }
}
