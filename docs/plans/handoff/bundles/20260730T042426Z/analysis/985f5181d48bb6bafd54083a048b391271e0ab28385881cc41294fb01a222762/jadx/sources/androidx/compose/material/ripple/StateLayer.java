package androidx.compose.material.ripple;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.foundation.interaction.DragInteraction$Cancel;
import androidx.compose.foundation.interaction.DragInteraction$Start;
import androidx.compose.foundation.interaction.DragInteraction$Stop;
import androidx.compose.foundation.interaction.FocusInteraction$Focus;
import androidx.compose.foundation.interaction.FocusInteraction$Unfocus;
import androidx.compose.foundation.interaction.HoverInteraction$Enter;
import androidx.compose.foundation.interaction.HoverInteraction$Exit;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: Ripple.kt */
/* loaded from: classes.dex */
final class StateLayer {
    private final boolean bounded;
    private Interaction currentInteraction;
    private final Function0 rippleAlpha;
    private final Animatable animatedAlpha = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);
    private final List interactions = new ArrayList();

    public StateLayer(boolean z, Function0 function0) {
        this.bounded = z;
        this.rippleAlpha = function0;
    }

    public final void handleInteraction$material_ripple_release(Interaction interaction, CoroutineScope coroutineScope) {
        AnimationSpec outgoingStateLayerAnimationSpecFor;
        float draggedAlpha;
        AnimationSpec incomingStateLayerAnimationSpecFor;
        boolean z = interaction instanceof HoverInteraction$Enter;
        if (z) {
            this.interactions.add(interaction);
        } else if (interaction instanceof HoverInteraction$Exit) {
            this.interactions.remove(((HoverInteraction$Exit) interaction).getEnter());
        } else if (interaction instanceof FocusInteraction$Focus) {
            this.interactions.add(interaction);
        } else if (interaction instanceof FocusInteraction$Unfocus) {
            this.interactions.remove(((FocusInteraction$Unfocus) interaction).getFocus());
        } else if (interaction instanceof DragInteraction$Start) {
            this.interactions.add(interaction);
        } else if (interaction instanceof DragInteraction$Stop) {
            this.interactions.remove(((DragInteraction$Stop) interaction).getStart());
        } else if (!(interaction instanceof DragInteraction$Cancel)) {
            return;
        } else {
            this.interactions.remove(((DragInteraction$Cancel) interaction).getStart());
        }
        Interaction interaction2 = (Interaction) CollectionsKt.lastOrNull(this.interactions);
        if (Intrinsics.areEqual(this.currentInteraction, interaction2)) {
            return;
        }
        if (interaction2 == null) {
            outgoingStateLayerAnimationSpecFor = RippleKt.outgoingStateLayerAnimationSpecFor(this.currentInteraction);
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new StateLayer$handleInteraction$2(this, outgoingStateLayerAnimationSpecFor, null), 3, null);
        } else {
            RippleAlpha rippleAlpha = (RippleAlpha) this.rippleAlpha.invoke();
            if (z) {
                draggedAlpha = rippleAlpha.getHoveredAlpha();
            } else if (interaction instanceof FocusInteraction$Focus) {
                draggedAlpha = rippleAlpha.getFocusedAlpha();
            } else {
                draggedAlpha = interaction instanceof DragInteraction$Start ? rippleAlpha.getDraggedAlpha() : 0.0f;
            }
            incomingStateLayerAnimationSpecFor = RippleKt.incomingStateLayerAnimationSpecFor(interaction2);
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new StateLayer$handleInteraction$1(this, draggedAlpha, incomingStateLayerAnimationSpecFor, null), 3, null);
        }
        this.currentInteraction = interaction2;
    }

    /* renamed from: drawStateLayer-mxwnekA, reason: not valid java name */
    public final void m602drawStateLayermxwnekA(DrawScope drawScope, float f, long j) {
        long j2;
        float floatValue = ((Number) this.animatedAlpha.getValue()).floatValue();
        if (floatValue <= 0.0f) {
            return;
        }
        long m1302copywmQWz5c$default = Color.m1302copywmQWz5c$default(j, floatValue, 0.0f, 0.0f, 0.0f, 14, null);
        if (this.bounded) {
            float m1204getWidthimpl = Size.m1204getWidthimpl(drawScope.mo1491getSizeNHjbRc());
            float m1202getHeightimpl = Size.m1202getHeightimpl(drawScope.mo1491getSizeNHjbRc());
            int m1297getIntersectrtfAjoo = ClipOp.Companion.m1297getIntersectrtfAjoo();
            DrawContext drawContext = drawScope.getDrawContext();
            long mo1495getSizeNHjbRc = drawContext.mo1495getSizeNHjbRc();
            drawContext.getCanvas().save();
            try {
                drawContext.getTransform().mo1498clipRectN_I0leg(0.0f, 0.0f, m1204getWidthimpl, m1202getHeightimpl, m1297getIntersectrtfAjoo);
                j2 = mo1495getSizeNHjbRc;
                try {
                    DrawScope.CC.m1507drawCircleVaOC9Bg$default(drawScope, m1302copywmQWz5c$default, f, 0L, 0.0f, null, null, 0, 124, null);
                    drawContext.getCanvas().restore();
                    drawContext.mo1496setSizeuvyYCjk(j2);
                } catch (Throwable th) {
                    th = th;
                    drawContext.getCanvas().restore();
                    drawContext.mo1496setSizeuvyYCjk(j2);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                j2 = mo1495getSizeNHjbRc;
            }
        } else {
            DrawScope.CC.m1507drawCircleVaOC9Bg$default(drawScope, m1302copywmQWz5c$default, f, 0L, 0.0f, null, null, 0, 124, null);
        }
    }
}
