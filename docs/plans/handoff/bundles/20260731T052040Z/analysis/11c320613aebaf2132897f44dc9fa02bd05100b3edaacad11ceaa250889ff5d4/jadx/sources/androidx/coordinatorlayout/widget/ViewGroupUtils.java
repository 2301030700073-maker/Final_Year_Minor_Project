package androidx.coordinatorlayout.widget;

import android.graphics.Matrix;
import android.view.View;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ViewGroupUtils {
    public static final ThreadLocal sMatrix = new ThreadLocal();
    public static final ThreadLocal sRectF = new ThreadLocal();

    public static void offsetDescendantMatrix(CoordinatorLayout coordinatorLayout, View view, Matrix matrix) {
        Object parent = view.getParent();
        if ((parent instanceof View) && parent != coordinatorLayout) {
            offsetDescendantMatrix(coordinatorLayout, (View) parent, matrix);
            matrix.preTranslate(-r0.getScrollX(), -r0.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        if (view.getMatrix().isIdentity()) {
            return;
        }
        matrix.preConcat(view.getMatrix());
    }
}
