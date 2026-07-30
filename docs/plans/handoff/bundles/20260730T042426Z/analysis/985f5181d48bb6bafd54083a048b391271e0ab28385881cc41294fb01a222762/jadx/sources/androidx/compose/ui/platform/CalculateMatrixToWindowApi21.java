package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.ui.graphics.AndroidMatrixConversions_androidKt;
import androidx.compose.ui.graphics.Matrix;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: AndroidComposeView.android.kt */
/* loaded from: classes.dex */
final class CalculateMatrixToWindowApi21 implements CalculateMatrixToWindow {
    private final int[] tmpLocation;
    private final float[] tmpMatrix;

    public /* synthetic */ CalculateMatrixToWindowApi21(float[] fArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(fArr);
    }

    private CalculateMatrixToWindowApi21(float[] fArr) {
        this.tmpMatrix = fArr;
        this.tmpLocation = new int[2];
    }

    @Override // androidx.compose.ui.platform.CalculateMatrixToWindow
    /* renamed from: calculateMatrixToWindow-EL8BTi8 */
    public void mo1958calculateMatrixToWindowEL8BTi8(View view, float[] fArr) {
        Matrix.m1369resetimpl(fArr);
        m1961transformMatrixToWindowEL8BTi8(view, fArr);
    }

    /* renamed from: transformMatrixToWindow-EL8BTi8, reason: not valid java name */
    private final void m1961transformMatrixToWindowEL8BTi8(View view, float[] fArr) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            m1961transformMatrixToWindowEL8BTi8((View) parent, fArr);
            m1960preTranslate3XD1CNM(fArr, -view.getScrollX(), -view.getScrollY());
            m1960preTranslate3XD1CNM(fArr, view.getLeft(), view.getTop());
        } else {
            view.getLocationInWindow(this.tmpLocation);
            m1960preTranslate3XD1CNM(fArr, -view.getScrollX(), -view.getScrollY());
            m1960preTranslate3XD1CNM(fArr, r0[0], r0[1]);
        }
        android.graphics.Matrix matrix = view.getMatrix();
        if (matrix.isIdentity()) {
            return;
        }
        m1959preConcattUYjHk(fArr, matrix);
    }

    /* renamed from: preConcat-tU-YjHk, reason: not valid java name */
    private final void m1959preConcattUYjHk(float[] fArr, android.graphics.Matrix matrix) {
        AndroidMatrixConversions_androidKt.m1229setFromtUYjHk(this.tmpMatrix, matrix);
        AndroidComposeView_androidKt.m1954preTransformJiSxe2E(fArr, this.tmpMatrix);
    }

    /* renamed from: preTranslate-3XD1CNM, reason: not valid java name */
    private final void m1960preTranslate3XD1CNM(float[] fArr, float f, float f2) {
        AndroidComposeView_androidKt.m1955preTranslatecG2Xzmc(fArr, f, f2, this.tmpMatrix);
    }
}
