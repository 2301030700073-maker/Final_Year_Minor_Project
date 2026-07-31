package androidx.compose.foundation;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.Owner;
import kotlinx.coroutines.JobKt;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DefaultDebugIndication implements IndicationNodeFactory {
    public static final DefaultDebugIndication INSTANCE = new DefaultDebugIndication();

    @Override // androidx.compose.foundation.IndicationNodeFactory
    public final DelegatableNode create(InteractionSource interactionSource) {
        return new DefaultDebugIndicationInstance(interactionSource);
    }

    public final boolean equals(Object obj) {
        return obj == this;
    }

    @Override // androidx.compose.foundation.IndicationNodeFactory
    public final int hashCode() {
        return -1;
    }

    @Override // androidx.compose.foundation.IndicationNodeFactory
    public final void rememberUpdatedInstance(InteractionSource interactionSource, GapComposer gapComposer) {
        gapComposer.startReplaceGroup(1257603829);
        gapComposer.end(false);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class DefaultDebugIndicationInstance extends Modifier.Node implements DrawModifierNode {
        public final InteractionSource interactionSource;
        public boolean isFocused;
        public boolean isHovered;
        public boolean isPressed;

        public DefaultDebugIndicationInstance(InteractionSource interactionSource) {
            this.interactionSource = interactionSource;
        }

        @Override // androidx.compose.ui.node.DrawModifierNode
        public final void draw(LayoutNodeDrawScope layoutNodeDrawScope) {
            long Color;
            long Color2;
            layoutNodeDrawScope.drawContent();
            CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.canvasDrawScope;
            if (this.isPressed) {
                Color2 = Brush.Color(Color.m249getRedimpl(r3), Color.m248getGreenimpl(r3), Color.m246getBlueimpl(r3), 0.3f, Color.m247getColorSpaceimpl(Color.Black));
                Owner.CC.m367drawRectnJ9OG0$default(layoutNodeDrawScope, Color2, canvasDrawScope.drawContext.m729getSizeNHjbRc(), Token.FUNCTION);
            } else if (this.isHovered || this.isFocused) {
                Color = Brush.Color(Color.m249getRedimpl(r0), Color.m248getGreenimpl(r0), Color.m246getBlueimpl(r0), 0.1f, Color.m247getColorSpaceimpl(Color.Black));
                Owner.CC.m367drawRectnJ9OG0$default(layoutNodeDrawScope, Color, canvasDrawScope.drawContext.m729getSizeNHjbRc(), Token.FUNCTION);
            }
        }

        @Override // androidx.compose.ui.Modifier.Node
        public final void onAttach() {
            JobKt.launch$default(getCoroutineScope(), null, null, new DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1(this, null), 3);
        }

        @Override // androidx.compose.ui.node.DrawModifierNode
        public final /* synthetic */ void onMeasureResultChanged() {
        }
    }
}
