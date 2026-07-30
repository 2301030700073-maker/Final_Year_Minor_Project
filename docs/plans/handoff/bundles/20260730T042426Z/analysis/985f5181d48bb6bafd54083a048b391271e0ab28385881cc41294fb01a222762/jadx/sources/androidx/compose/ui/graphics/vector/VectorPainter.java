package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: VectorPainter.kt */
/* loaded from: classes.dex */
public final class VectorPainter extends Painter {
    public static final int $stable = 8;
    private float currentAlpha;
    private ColorFilter currentColorFilter;
    private int drawCount;
    private final MutableIntState invalidateCount$delegate;
    private final VectorComponent vector;
    private final MutableState size$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Size.m1198boximpl(Size.Companion.m1210getZeroNHjbRc()), null, 2, null);
    private final MutableState autoMirror$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);

    public VectorPainter(GroupComponent groupComponent) {
        VectorComponent vectorComponent = new VectorComponent(groupComponent);
        vectorComponent.setInvalidateCallback$ui_release(new Function0() { // from class: androidx.compose.ui.graphics.vector.VectorPainter$vector$1$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m1578invoke();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: collision with other method in class */
            public final void m1578invoke() {
                int i;
                int invalidateCount;
                int invalidateCount2;
                i = VectorPainter.this.drawCount;
                invalidateCount = VectorPainter.this.getInvalidateCount();
                if (i == invalidateCount) {
                    VectorPainter vectorPainter = VectorPainter.this;
                    invalidateCount2 = vectorPainter.getInvalidateCount();
                    vectorPainter.setInvalidateCount(invalidateCount2 + 1);
                }
            }
        });
        this.vector = vectorComponent;
        this.invalidateCount$delegate = SnapshotIntStateKt.mutableIntStateOf(0);
        this.currentAlpha = 1.0f;
        this.drawCount = -1;
    }

    /* renamed from: getSize-NH-jbRc$ui_release, reason: not valid java name */
    public final long m1575getSizeNHjbRc$ui_release() {
        return ((Size) this.size$delegate.getValue()).m1208unboximpl();
    }

    /* renamed from: setSize-uvyYCjk$ui_release, reason: not valid java name */
    public final void m1576setSizeuvyYCjk$ui_release(long j) {
        this.size$delegate.setValue(Size.m1198boximpl(j));
    }

    public final boolean getAutoMirror$ui_release() {
        return ((Boolean) this.autoMirror$delegate.getValue()).booleanValue();
    }

    public final void setAutoMirror$ui_release(boolean z) {
        this.autoMirror$delegate.setValue(Boolean.valueOf(z));
    }

    public final void setIntrinsicColorFilter$ui_release(ColorFilter colorFilter) {
        this.vector.setIntrinsicColorFilter$ui_release(colorFilter);
    }

    /* renamed from: setViewportSize-uvyYCjk$ui_release, reason: not valid java name */
    public final void m1577setViewportSizeuvyYCjk$ui_release(long j) {
        this.vector.m1572setViewportSizeuvyYCjk$ui_release(j);
    }

    public final void setName$ui_release(String str) {
        this.vector.setName(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getInvalidateCount() {
        return this.invalidateCount$delegate.getIntValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setInvalidateCount(int i) {
        this.invalidateCount$delegate.setIntValue(i);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* renamed from: getIntrinsicSize-NH-jbRc */
    public long mo1556getIntrinsicSizeNHjbRc() {
        return m1575getSizeNHjbRc$ui_release();
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected void onDraw(DrawScope drawScope) {
        VectorComponent vectorComponent = this.vector;
        ColorFilter colorFilter = this.currentColorFilter;
        if (colorFilter == null) {
            colorFilter = vectorComponent.getIntrinsicColorFilter$ui_release();
        }
        if (getAutoMirror$ui_release() && drawScope.getLayoutDirection() == LayoutDirection.Rtl) {
            long mo1490getCenterF1C5BW0 = drawScope.mo1490getCenterF1C5BW0();
            DrawContext drawContext = drawScope.getDrawContext();
            long mo1495getSizeNHjbRc = drawContext.mo1495getSizeNHjbRc();
            drawContext.getCanvas().save();
            try {
                drawContext.getTransform().mo1501scale0AR0LA0(-1.0f, 1.0f, mo1490getCenterF1C5BW0);
                vectorComponent.draw(drawScope, this.currentAlpha, colorFilter);
            } finally {
                drawContext.getCanvas().restore();
                drawContext.mo1496setSizeuvyYCjk(mo1495getSizeNHjbRc);
            }
        } else {
            vectorComponent.draw(drawScope, this.currentAlpha, colorFilter);
        }
        this.drawCount = getInvalidateCount();
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean applyAlpha(float f) {
        this.currentAlpha = f;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean applyColorFilter(ColorFilter colorFilter) {
        this.currentColorFilter = colorFilter;
        return true;
    }
}
