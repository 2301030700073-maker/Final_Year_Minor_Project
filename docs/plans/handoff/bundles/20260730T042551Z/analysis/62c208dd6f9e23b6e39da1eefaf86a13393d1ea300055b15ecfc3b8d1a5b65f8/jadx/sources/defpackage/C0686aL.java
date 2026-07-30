package defpackage;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewParent;

/* renamed from: aL, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0686aL {

    /* renamed from: do, reason: not valid java name */
    public static final ThreadLocal<Matrix> f4941do = new ThreadLocal<>();

    /* renamed from: if, reason: not valid java name */
    public static final ThreadLocal<RectF> f4942if = new ThreadLocal<>();

    /* renamed from: do, reason: not valid java name */
    public static void m3120do(ViewParent viewParent, View view, Matrix matrix) {
        Object parent = view.getParent();
        if ((parent instanceof View) && parent != viewParent) {
            m3120do(viewParent, (View) parent, matrix);
            matrix.preTranslate(-r0.getScrollX(), -r0.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        if (view.getMatrix().isIdentity()) {
            return;
        }
        matrix.preConcat(view.getMatrix());
    }
}
