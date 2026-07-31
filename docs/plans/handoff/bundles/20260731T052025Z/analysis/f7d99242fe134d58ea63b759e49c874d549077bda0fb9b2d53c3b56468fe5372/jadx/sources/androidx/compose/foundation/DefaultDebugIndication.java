package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultDebugIndication implements IndicationNodeFactory {
    public static final DefaultDebugIndication INSTANCE = new DefaultDebugIndication();

    @Override // androidx.compose.foundation.IndicationNodeFactory
    public final DelegatableNode create(MutableInteractionSourceImpl mutableInteractionSourceImpl) {
        return new DefaultDebugIndicationInstance(mutableInteractionSourceImpl);
    }

    public final boolean equals(Object obj) {
        return obj == this;
    }

    @Override // androidx.compose.foundation.IndicationNodeFactory
    public final int hashCode() {
        return -1;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class DefaultDebugIndicationInstance extends Modifier.Node implements DrawModifierNode {
        public final MutableInteractionSourceImpl interactionSource;
        public boolean isFocused;
        public boolean isHovered;
        public boolean isPressed;

        public DefaultDebugIndicationInstance(MutableInteractionSourceImpl mutableInteractionSourceImpl) {
            this.interactionSource = mutableInteractionSourceImpl;
        }

        @Override // androidx.compose.ui.node.DrawModifierNode
        public final void draw(LayoutNodeDrawScope layoutNodeDrawScope) {
            long Color;
            long Color2;
            layoutNodeDrawScope.drawContent();
            CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.canvasDrawScope;
            if (this.isPressed) {
                Color2 = ColorKt.Color(Color.m487getRedimpl(r3), Color.m486getGreenimpl(r3), Color.m484getBlueimpl(r3), 0.3f, Color.m485getColorSpaceimpl(Color.Black));
                Modifier.CC.m402drawRectnJ9OG0$default(layoutNodeDrawScope, Color2, canvasDrawScope.drawContext.m795getSizeNHjbRc(), 0.0f, null, 122);
            } else if (this.isHovered || this.isFocused) {
                Color = ColorKt.Color(Color.m487getRedimpl(r0), Color.m486getGreenimpl(r0), Color.m484getBlueimpl(r0), 0.1f, Color.m485getColorSpaceimpl(Color.Black));
                Modifier.CC.m402drawRectnJ9OG0$default(layoutNodeDrawScope, Color, canvasDrawScope.drawContext.m795getSizeNHjbRc(), 0.0f, null, 122);
            }
        }

        @Override // androidx.compose.ui.Modifier.Node
        public final void onAttach() {
            JobKt.launch$default(getCoroutineScope(), null, null, new ThumbNode$onAttach$1(this, (Continuation) null, 14), 3);
        }

        @Override // androidx.compose.ui.node.DrawModifierNode
        public final /* synthetic */ void onMeasureResultChanged() {
        }
    }
}
