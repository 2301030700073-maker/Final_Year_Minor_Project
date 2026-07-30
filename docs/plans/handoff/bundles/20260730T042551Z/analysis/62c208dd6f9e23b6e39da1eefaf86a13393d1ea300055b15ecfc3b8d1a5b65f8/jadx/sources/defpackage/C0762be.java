package defpackage;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

/* renamed from: be, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0762be {

    /* renamed from: do, reason: not valid java name */
    public static final ThreadLocal<Matrix> f8422do = new ThreadLocal<>();

    /* renamed from: if, reason: not valid java name */
    public static final ThreadLocal<RectF> f8423if = new ThreadLocal<>();

    /* renamed from: do, reason: not valid java name */
    public static void m4845do(ViewGroup viewGroup, View view, Rect rect) {
        rect.set(0, 0, view.getWidth(), view.getHeight());
        m4846for(viewGroup, view, rect);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m4846for(ViewGroup viewGroup, View view, Rect rect) {
        ThreadLocal<Matrix> threadLocal = f8422do;
        Matrix matrix = threadLocal.get();
        if (matrix == null) {
            matrix = new Matrix();
            threadLocal.set(matrix);
        } else {
            matrix.reset();
        }
        m4847if(viewGroup, view, matrix);
        ThreadLocal<RectF> threadLocal2 = f8423if;
        RectF rectF = threadLocal2.get();
        if (rectF == null) {
            rectF = new RectF();
            threadLocal2.set(rectF);
        }
        rectF.set(rect);
        matrix.mapRect(rectF);
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
    }

    /* renamed from: if, reason: not valid java name */
    public static void m4847if(ViewParent viewParent, View view, Matrix matrix) {
        Object parent = view.getParent();
        if ((parent instanceof View) && parent != viewParent) {
            m4847if(viewParent, (View) parent, matrix);
            matrix.preTranslate(-r0.getScrollX(), -r0.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        if (view.getMatrix().isIdentity()) {
            return;
        }
        matrix.preConcat(view.getMatrix());
    }
}
