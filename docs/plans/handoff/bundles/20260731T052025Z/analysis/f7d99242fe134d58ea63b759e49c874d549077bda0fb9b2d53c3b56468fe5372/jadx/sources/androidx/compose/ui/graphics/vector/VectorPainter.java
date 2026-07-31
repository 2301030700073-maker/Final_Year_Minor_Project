package androidx.compose.ui.graphics.vector;

import androidx.camera.core.impl.Config;
import androidx.camera.view.PreviewView;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.view.MenuHostHelper;
import kotlin.Unit;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class VectorPainter extends Painter {
    public float currentAlpha;
    public ColorFilter currentColorFilter;
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
    public final boolean applyColorFilter(ColorFilter colorFilter) {
        this.currentColorFilter = colorFilter;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* renamed from: getIntrinsicSize-NH-jbRc */
    public final long mo550getIntrinsicSizeNHjbRc() {
        return ((Size) this.size$delegate.getValue()).packedValue;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void onDraw(LayoutNodeDrawScope layoutNodeDrawScope) {
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.canvasDrawScope;
        ColorFilter colorFilter = this.currentColorFilter;
        VectorComponent vectorComponent = this.vector;
        if (colorFilter == null) {
            colorFilter = (ColorFilter) vectorComponent.intrinsicColorFilter$delegate.getValue();
        }
        if (((Boolean) this.autoMirror$delegate.getValue()).booleanValue() && layoutNodeDrawScope.getLayoutDirection() == LayoutDirection.Rtl) {
            long mo533getCenterF1C5BW0 = canvasDrawScope.mo533getCenterF1C5BW0();
            MenuHostHelper menuHostHelper = canvasDrawScope.drawContext;
            long m795getSizeNHjbRc = menuHostHelper.m795getSizeNHjbRc();
            menuHostHelper.getCanvas().save();
            try {
                ((PreviewView.AnonymousClass1) menuHostHelper.mOnInvalidateMenuCallback).m99scale0AR0LA0(-1.0f, 1.0f, mo533getCenterF1C5BW0);
                vectorComponent.draw(layoutNodeDrawScope, this.currentAlpha, colorFilter);
            } finally {
                Config.CC.m(menuHostHelper, m795getSizeNHjbRc);
            }
        } else {
            vectorComponent.draw(layoutNodeDrawScope, this.currentAlpha, colorFilter);
        }
        this.drawInvalidation$delegate.getValue();
    }
}
