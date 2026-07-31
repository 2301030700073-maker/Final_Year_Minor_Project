package androidx.compose.ui.graphics.vector;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        vectorComponent.invalidateCallback = new Function0() { // from class: androidx.compose.ui.graphics.vector.VectorPainter$vector$1$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                ParcelableSnapshotMutableState parcelableSnapshotMutableState = VectorPainter.this.drawInvalidation$delegate;
                Unit unit = Unit.INSTANCE;
                parcelableSnapshotMutableState.setValue(unit);
                return unit;
            }
        };
        this.vector = vectorComponent;
        this.drawInvalidation$delegate = new ParcelableSnapshotMutableState(Unit.INSTANCE, NeverEqualPolicy.INSTANCE);
        this.currentAlpha = 1.0f;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void applyAlpha(float f) {
        this.currentAlpha = f;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void applyColorFilter(BlendModeColorFilter blendModeColorFilter) {
        this.currentColorFilter = blendModeColorFilter;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* renamed from: getIntrinsicSize-NH-jbRc */
    public final long mo282getIntrinsicSizeNHjbRc() {
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
            long mo265getCenterF1C5BW0 = drawScope.mo265getCenterF1C5BW0();
            ProcessFinisher drawContext = drawScope.getDrawContext();
            long m729getSizeNHjbRc = drawContext.m729getSizeNHjbRc();
            drawContext.getCanvas().save();
            try {
                ((PopupMenu$1) drawContext.context).m3scale0AR0LA0(-1.0f, 1.0f, mo265getCenterF1C5BW0);
                vectorComponent.draw(drawScope, this.currentAlpha, blendModeColorFilter);
            } finally {
                drawContext.getCanvas().restore();
                drawContext.m730setSizeuvyYCjk(m729getSizeNHjbRc);
            }
        } else {
            vectorComponent.draw(drawScope, this.currentAlpha, blendModeColorFilter);
        }
        this.drawInvalidation$delegate.getValue();
    }
}
