package androidx.compose.material3;

import androidx.compose.animation.CrossfadeKt$Crossfade$3$1;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.TwoWayConverterImpl;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.compose.ui.draw.CacheDrawModifierNodeImpl;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.compose.ui.unit.Dp;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class IndicatorLineNode extends DelegatingNode implements CompositionLocalConsumerModifierNode {
    public TextFieldColors _colors;
    public Shape _shape;
    public Animatable colorAnimatable;
    public final CacheDrawModifierNodeImpl drawWithCacheModifierNode;
    public boolean enabled;
    public boolean focused;
    public MutableInteractionSourceImpl interactionSource;
    public StandaloneCoroutine trackFocusStateJob;
    public final Animatable widthAnimatable;
    public float focusedIndicatorWidth = 2.0f;
    public float unfocusedIndicatorWidth = 1.0f;

    public IndicatorLineNode(boolean z, MutableInteractionSourceImpl mutableInteractionSourceImpl, TextFieldColors textFieldColors, Shape shape) {
        this.enabled = z;
        this.interactionSource = mutableInteractionSourceImpl;
        this._colors = textFieldColors;
        this._shape = shape;
        this.widthAnimatable = new Animatable(new Dp((this.focused && z) ? 2.0f : 1.0f), ArcSplineKt.DpToVector, null, 12);
        CacheDrawModifierNodeImpl cacheDrawModifierNodeImpl = new CacheDrawModifierNodeImpl(new CacheDrawScope(), new AppBarKt$$ExternalSyntheticLambda11(29, this));
        delegate(cacheDrawModifierNodeImpl);
        this.drawWithCacheModifierNode = cacheDrawModifierNodeImpl;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return false;
    }

    public final void invalidateIndicator() {
        Continuation continuation = null;
        AwaitKt.launch$default(getCoroutineScope(), null, null, new IndicatorLineNode$update$1(this, continuation, 1), 3);
        AwaitKt.launch$default(getCoroutineScope(), null, null, new IndicatorLineNode$update$1(this, continuation, 2), 3);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        this.trackFocusStateJob = AwaitKt.launch$default(getCoroutineScope(), null, null, new IndicatorLineNode$update$1(this, null, 3), 3);
        if (this.colorAnimatable == null) {
            TextFieldColors textFieldColors = this._colors;
            if (textFieldColors == null) {
                textFieldColors = TextFieldDefaults.defaultTextFieldColors$material3((ColorScheme) HitTestResultKt.currentValueOf(this, ColorSchemeKt.LocalColorScheme), (TextSelectionColors) HitTestResultKt.currentValueOf(this, TextSelectionColorsKt.LocalTextSelectionColors));
            }
            long m303indicatorColorXeAY9LY$material3 = textFieldColors.m303indicatorColorXeAY9LY$material3(this.enabled, false, this.focused);
            this.colorAnimatable = new Animatable(new Color(m303indicatorColorXeAY9LY$material3), new TwoWayConverterImpl(CrossfadeKt$Crossfade$3$1.INSTANCE$5, new NodeChainKt$fillVector$1(2, Color.m431getColorSpaceimpl(m303indicatorColorXeAY9LY$material3))), null, 12);
        }
    }

    public final Object trackFocusState(SuspendLambda suspendLambda) {
        this.focused = false;
        CoroutineSingletons collect$suspendImpl = SharedFlowImpl.collect$suspendImpl(this.interactionSource.interactions, new ThumbNode$onAttach$1.AnonymousClass1(5, new ArrayList(), this), suspendLambda);
        return collect$suspendImpl == CoroutineSingletons.COROUTINE_SUSPENDED ? collect$suspendImpl : Unit.INSTANCE;
    }
}
