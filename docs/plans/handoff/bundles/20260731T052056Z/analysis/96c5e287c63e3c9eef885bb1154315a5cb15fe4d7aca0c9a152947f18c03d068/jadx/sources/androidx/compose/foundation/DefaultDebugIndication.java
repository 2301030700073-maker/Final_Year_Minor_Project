package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.recyclerview.widget.RecyclerView;
import com.caverock.androidsvg.SVG;
import kotlinx.coroutines.AwaitKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
            SVG svg = layoutNodeDrawScope.canvasDrawScope.drawContext;
            if (this.isPressed) {
                Color2 = ColorKt.Color(Color.m433getRedimpl(r3), Color.m432getGreenimpl(r3), Color.m430getBlueimpl(r3), 0.3f, Color.m431getColorSpaceimpl(Color.Black));
                Modifier.CC.m350drawRectnJ9OG0$default(layoutNodeDrawScope, Color2, svg.m796getSizeNHjbRc(), RecyclerView.DECELERATION_RATE, null, 122);
            } else if (this.isHovered || this.isFocused) {
                Color = ColorKt.Color(Color.m433getRedimpl(r0), Color.m432getGreenimpl(r0), Color.m430getBlueimpl(r0), 0.1f, Color.m431getColorSpaceimpl(Color.Black));
                Modifier.CC.m350drawRectnJ9OG0$default(layoutNodeDrawScope, Color, svg.m796getSizeNHjbRc(), RecyclerView.DECELERATION_RATE, null, 122);
            }
        }

        @Override // androidx.compose.ui.Modifier.Node
        public final void onAttach() {
            AwaitKt.launch$default(getCoroutineScope(), null, null, new ThumbNode$onAttach$1(2, this, null), 3);
        }

        @Override // androidx.compose.ui.node.DrawModifierNode
        public final void onMeasureResultChanged() {
        }
    }
}
