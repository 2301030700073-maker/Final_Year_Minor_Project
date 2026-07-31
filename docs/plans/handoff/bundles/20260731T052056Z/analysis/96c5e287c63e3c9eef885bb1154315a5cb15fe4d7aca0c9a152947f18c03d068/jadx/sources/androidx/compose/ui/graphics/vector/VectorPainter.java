package androidx.compose.ui.graphics.vector;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.animation.core.Animation;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.unit.LayoutDirection;
import com.caverock.androidsvg.SVG;
import kotlin.Unit;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class VectorPainter extends Painter {
    public float currentAlpha;
    public BlendModeColorFilter currentColorFilter;
    public final ParcelableSnapshotMutableState drawInvalidation$delegate;
    public final VectorComponent vector;
    public final ParcelableSnapshotMutableState size$delegate = Updater.mutableStateOf$default(new Size(0));
    public final ParcelableSnapshotMutableState autoMirror$delegate = Updater.mutableStateOf$default(Boolean.FALSE);

    public VectorPainter(GroupComponent groupComponent) {
        VectorComponent vectorComponent = new VectorComponent(groupComponent);
        vectorComponent.invalidateCallback = new LayoutNode$_foldedChildren$1(3, this);
        this.vector = vectorComponent;
        this.drawInvalidation$delegate = new ParcelableSnapshotMutableState(Unit.INSTANCE, NeverEqualPolicy.INSTANCE);
        this.currentAlpha = 1.0f;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean applyAlpha(float f) {
        this.currentAlpha = f;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean applyColorFilter(BlendModeColorFilter blendModeColorFilter) {
        this.currentColorFilter = blendModeColorFilter;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* renamed from: getIntrinsicSize-NH-jbRc */
    public final long mo493getIntrinsicSizeNHjbRc() {
        return ((Size) this.size$delegate.getValue()).packedValue;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void onDraw(DrawScope drawScope) {
        BlendModeColorFilter blendModeColorFilter = this.currentColorFilter;
        VectorComponent vectorComponent = this.vector;
        if (blendModeColorFilter == null) {
            blendModeColorFilter = (BlendModeColorFilter) vectorComponent.intrinsicColorFilter$delegate.getValue();
        }
        if (((Boolean) this.autoMirror$delegate.getValue()).booleanValue() && drawScope.getLayoutDirection() == LayoutDirection.Rtl) {
            long mo475getCenterF1C5BW0 = drawScope.mo475getCenterF1C5BW0();
            SVG drawContext = drawScope.getDrawContext();
            long m796getSizeNHjbRc = drawContext.m796getSizeNHjbRc();
            drawContext.getCanvas().save();
            try {
                ((PopupMenu$1) drawContext.rootElement).m7scale0AR0LA0(-1.0f, 1.0f, mo475getCenterF1C5BW0);
                vectorComponent.draw(drawScope, this.currentAlpha, blendModeColorFilter);
            } finally {
                Animation.CC.m(drawContext, m796getSizeNHjbRc);
            }
        } else {
            vectorComponent.draw(drawScope, this.currentAlpha, blendModeColorFilter);
        }
        this.drawInvalidation$delegate.getValue();
    }
}
