package androidx.compose.ui.platform;

import android.graphics.Matrix;
import android.view.View;
import androidx.compose.ui.graphics.Brush;
import java.util.ArrayList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CalculateMatrixToWindowApi21 implements CalculateMatrixToWindow {
    public final int[] tmpLocation;
    public final float[] tmpMatrix;

    public CalculateMatrixToWindowApi21(ArrayList arrayList, ArrayList arrayList2) {
        int size = arrayList.size();
        this.tmpLocation = new int[size];
        this.tmpMatrix = new float[size];
        for (int i = 0; i < size; i++) {
            this.tmpLocation[i] = ((Integer) arrayList.get(i)).intValue();
            this.tmpMatrix[i] = ((Float) arrayList2.get(i)).floatValue();
        }
    }

    @Override // androidx.compose.ui.platform.CalculateMatrixToWindow
    /* renamed from: calculateMatrixToWindow-EL8BTi8 */
    public void mo387calculateMatrixToWindowEL8BTi8(View view, float[] fArr) {
        Brush.m232resetimpl(fArr);
        m388transformMatrixToWindowEL8BTi8(view, fArr);
    }

    /* renamed from: transformMatrixToWindow-EL8BTi8, reason: not valid java name */
    public void m388transformMatrixToWindowEL8BTi8(View view, float[] fArr) {
        Object parent = view.getParent();
        boolean z = parent instanceof View;
        float[] fArr2 = this.tmpMatrix;
        if (z) {
            m388transformMatrixToWindowEL8BTi8((View) parent, fArr);
            Brush.m232resetimpl(fArr2);
            Brush.m237translateimpl$default(fArr2, -view.getScrollX(), -view.getScrollY());
            TestTagKt.m396preTransformJiSxe2E(fArr, fArr2);
            float left = view.getLeft();
            float top = view.getTop();
            Brush.m232resetimpl(fArr2);
            Brush.m237translateimpl$default(fArr2, left, top);
            TestTagKt.m396preTransformJiSxe2E(fArr, fArr2);
        } else {
            int[] iArr = this.tmpLocation;
            view.getLocationInWindow(iArr);
            Brush.m232resetimpl(fArr2);
            Brush.m237translateimpl$default(fArr2, -view.getScrollX(), -view.getScrollY());
            TestTagKt.m396preTransformJiSxe2E(fArr, fArr2);
            float f = iArr[0];
            float f2 = iArr[1];
            Brush.m232resetimpl(fArr2);
            Brush.m237translateimpl$default(fArr2, f, f2);
            TestTagKt.m396preTransformJiSxe2E(fArr, fArr2);
        }
        Matrix matrix = view.getMatrix();
        if (matrix.isIdentity()) {
            return;
        }
        Brush.m233setFromtUYjHk(fArr2, matrix);
        TestTagKt.m396preTransformJiSxe2E(fArr, fArr2);
    }

    public CalculateMatrixToWindowApi21(int i, int i2) {
        this.tmpLocation = new int[]{i, i2};
        this.tmpMatrix = new float[]{0.0f, 1.0f};
    }

    public CalculateMatrixToWindowApi21(int i, int i2, int i3) {
        this.tmpLocation = new int[]{i, i2, i3};
        this.tmpMatrix = new float[]{0.0f, 0.5f, 1.0f};
    }

    public CalculateMatrixToWindowApi21(float[] fArr) {
        this.tmpMatrix = fArr;
        this.tmpLocation = new int[2];
    }
}
