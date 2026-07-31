package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Matrix;
import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
    public void mo662calculateMatrixToWindowEL8BTi8(View view, float[] fArr) {
        Matrix.m506resetimpl(fArr);
        m663transformMatrixToWindowEL8BTi8(view, fArr);
    }

    /* renamed from: transformMatrixToWindow-EL8BTi8, reason: not valid java name */
    public void m663transformMatrixToWindowEL8BTi8(View view, float[] fArr) {
        Object parent = view.getParent();
        boolean z = parent instanceof View;
        float[] fArr2 = this.tmpMatrix;
        if (z) {
            m663transformMatrixToWindowEL8BTi8((View) parent, fArr);
            Matrix.m506resetimpl(fArr2);
            Matrix.m508translateimpl(fArr2, -view.getScrollX(), -view.getScrollY());
            TestTagKt.m671preTransformJiSxe2E(fArr, fArr2);
            float left = view.getLeft();
            float top = view.getTop();
            Matrix.m506resetimpl(fArr2);
            Matrix.m508translateimpl(fArr2, left, top);
            TestTagKt.m671preTransformJiSxe2E(fArr, fArr2);
        } else {
            int[] iArr = this.tmpLocation;
            view.getLocationInWindow(iArr);
            Matrix.m506resetimpl(fArr2);
            Matrix.m508translateimpl(fArr2, -view.getScrollX(), -view.getScrollY());
            TestTagKt.m671preTransformJiSxe2E(fArr, fArr2);
            float f = iArr[0];
            float f2 = iArr[1];
            Matrix.m506resetimpl(fArr2);
            Matrix.m508translateimpl(fArr2, f, f2);
            TestTagKt.m671preTransformJiSxe2E(fArr, fArr2);
        }
        android.graphics.Matrix matrix = view.getMatrix();
        if (matrix.isIdentity()) {
            return;
        }
        ColorKt.m498setFromtUYjHk(matrix, fArr2);
        TestTagKt.m671preTransformJiSxe2E(fArr, fArr2);
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
