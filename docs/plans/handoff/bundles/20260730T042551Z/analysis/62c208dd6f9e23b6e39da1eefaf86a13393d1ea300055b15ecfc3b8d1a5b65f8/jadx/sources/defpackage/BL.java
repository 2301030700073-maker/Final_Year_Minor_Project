package defpackage;

import android.graphics.Matrix;
import android.view.View;

/* loaded from: classes.dex */
public final class BL extends AL {
    @Override // defpackage.C4033yL
    /* renamed from: case, reason: not valid java name */
    public final void mo176case(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override // defpackage.C3974xL
    /* renamed from: do, reason: not valid java name */
    public final float mo177do(View view) {
        float transitionAlpha;
        transitionAlpha = view.getTransitionAlpha();
        return transitionAlpha;
    }

    @Override // defpackage.C4033yL
    /* renamed from: else, reason: not valid java name */
    public final void mo178else(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }

    @Override // defpackage.C3974xL
    /* renamed from: for, reason: not valid java name */
    public final void mo179for(View view, float f) {
        view.setTransitionAlpha(f);
    }

    @Override // defpackage.C4092zL, defpackage.C3974xL
    /* renamed from: if, reason: not valid java name */
    public final void mo180if(View view, int i, int i2, int i3, int i4) {
        view.setLeftTopRightBottom(i, i2, i3, i4);
    }

    @Override // defpackage.AL, defpackage.C3974xL
    /* renamed from: new */
    public final void mo70new(View view, int i) {
        view.setTransitionVisibility(i);
    }

    @Override // defpackage.C4033yL
    /* renamed from: try, reason: not valid java name */
    public final void mo181try(View view, Matrix matrix) {
        view.setAnimationMatrix(matrix);
    }
}
