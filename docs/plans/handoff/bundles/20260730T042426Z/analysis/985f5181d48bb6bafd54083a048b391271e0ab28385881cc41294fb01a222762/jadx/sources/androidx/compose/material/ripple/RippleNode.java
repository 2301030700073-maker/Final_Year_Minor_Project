package androidx.compose.material.ripple;

import androidx.collection.MutableObjectList;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.LayoutAwareModifierNode;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: Ripple.kt */
/* loaded from: classes.dex */
public abstract class RippleNode extends Modifier.Node implements CompositionLocalConsumerModifierNode, DrawModifierNode, LayoutAwareModifierNode {
    private final boolean bounded;
    private final ColorProducer color;
    private boolean hasValidSize;
    private final InteractionSource interactionSource;
    private final MutableObjectList pendingInteractions;
    private final float radius;
    private final Function0 rippleAlpha;
    private long rippleSize;
    private final boolean shouldAutoInvalidate;
    private StateLayer stateLayer;
    private float targetRadius;

    public /* synthetic */ RippleNode(InteractionSource interactionSource, boolean z, float f, ColorProducer colorProducer, Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        this(interactionSource, z, f, colorProducer, function0);
    }

    /* renamed from: addRipple-12SF9DM */
    public abstract void mo584addRipple12SF9DM(PressInteraction.Press press, long j, float f);

    public abstract void drawRipples(DrawScope drawScope);

    @Override // androidx.compose.ui.node.DrawModifierNode
    public /* synthetic */ void onMeasureResultChanged() {
        DrawModifierNode.CC.$default$onMeasureResultChanged(this);
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode
    public /* synthetic */ void onPlaced(LayoutCoordinates layoutCoordinates) {
        LayoutAwareModifierNode.CC.$default$onPlaced(this, layoutCoordinates);
    }

    public abstract void removeRipple(PressInteraction.Press press);

    protected final boolean getBounded() {
        return this.bounded;
    }

    protected final Function0 getRippleAlpha() {
        return this.rippleAlpha;
    }

    private RippleNode(InteractionSource interactionSource, boolean z, float f, ColorProducer colorProducer, Function0 function0) {
        this.interactionSource = interactionSource;
        this.bounded = z;
        this.radius = f;
        this.color = colorProducer;
        this.rippleAlpha = function0;
        this.rippleSize = Size.Companion.m1210getZeroNHjbRc();
        this.pendingInteractions = new MutableObjectList(0, 1, null);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return this.shouldAutoInvalidate;
    }

    /* renamed from: getRippleSize-NH-jbRc, reason: not valid java name */
    protected final long m598getRippleSizeNHjbRc() {
        return this.rippleSize;
    }

    /* renamed from: getRippleColor-0d7_KjU, reason: not valid java name */
    public final long m597getRippleColor0d7_KjU() {
        return this.color.mo678invoke0d7_KjU();
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode
    /* renamed from: onRemeasured-ozmzZPI */
    public void mo177onRemeasuredozmzZPI(long j) {
        float mo213toPx0680j_4;
        this.hasValidSize = true;
        Density requireDensity = DelegatableNodeKt.requireDensity(this);
        this.rippleSize = IntSizeKt.m2491toSizeozmzZPI(j);
        if (Float.isNaN(this.radius)) {
            mo213toPx0680j_4 = RippleAnimationKt.m589getRippleEndRadiuscSwnlzA(requireDensity, this.bounded, this.rippleSize);
        } else {
            mo213toPx0680j_4 = requireDensity.mo213toPx0680j_4(this.radius);
        }
        this.targetRadius = mo213toPx0680j_4;
        MutableObjectList mutableObjectList = this.pendingInteractions;
        Object[] objArr = mutableObjectList.content;
        int i = mutableObjectList._size;
        for (int i2 = 0; i2 < i; i2++) {
            handlePressInteraction((PressInteraction) objArr[i2]);
        }
        this.pendingInteractions.clear();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        BuildersKt__Builders_commonKt.launch$default(getCoroutineScope(), null, null, new RippleNode$onAttach$1(this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handlePressInteraction(PressInteraction pressInteraction) {
        if (pressInteraction instanceof PressInteraction.Press) {
            mo584addRipple12SF9DM((PressInteraction.Press) pressInteraction, this.rippleSize, this.targetRadius);
        } else if (pressInteraction instanceof PressInteraction.Release) {
            removeRipple(((PressInteraction.Release) pressInteraction).getPress());
        } else if (pressInteraction instanceof PressInteraction.Cancel) {
            removeRipple(((PressInteraction.Cancel) pressInteraction).getPress());
        }
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void draw(ContentDrawScope contentDrawScope) {
        contentDrawScope.drawContent();
        StateLayer stateLayer = this.stateLayer;
        if (stateLayer != null) {
            stateLayer.m602drawStateLayermxwnekA(contentDrawScope, this.targetRadius, m597getRippleColor0d7_KjU());
        }
        drawRipples(contentDrawScope);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateStateLayer(Interaction interaction, CoroutineScope coroutineScope) {
        StateLayer stateLayer = this.stateLayer;
        if (stateLayer == null) {
            stateLayer = new StateLayer(this.bounded, this.rippleAlpha);
            DrawModifierNodeKt.invalidateDraw(this);
            this.stateLayer = stateLayer;
        }
        stateLayer.handleInteraction$material_ripple_release(interaction, coroutineScope);
    }
}
