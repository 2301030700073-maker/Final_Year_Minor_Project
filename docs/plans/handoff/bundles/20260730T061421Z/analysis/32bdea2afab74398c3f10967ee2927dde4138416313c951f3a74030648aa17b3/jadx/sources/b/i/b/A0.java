package b.i.b;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import com.android.quickstep.fallback.RecentsState;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@SuppressLint({"UnknownNullness"})
/* loaded from: classes.dex */
public abstract class A0 {
    public static boolean d(List list, View view, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (list.get(i2) == view) {
                return true;
            }
        }
        return false;
    }

    public static boolean g(List list) {
        return list == null || list.isEmpty();
    }

    public abstract void a(Object obj, ArrayList arrayList);

    public void b(ArrayList arrayList, View view) {
        if (view.getVisibility() == 0) {
            if (!(view instanceof ViewGroup)) {
                arrayList.add(view);
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            if (viewGroup.isTransitionGroup()) {
                arrayList.add(viewGroup);
                return;
            }
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                b(arrayList, viewGroup.getChildAt(i));
            }
        }
    }

    public abstract Object c(Object obj);

    public void e(Map map, View view) {
        if (view.getVisibility() == 0) {
            String m = b.e.i.q.m(view);
            if (m != null) {
                map.put(m, view);
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    e(map, viewGroup.getChildAt(i));
                }
            }
        }
    }

    public void f(View view, Rect rect) {
        if (b.e.i.q.s(view)) {
            RectF rectF = new RectF();
            rectF.set(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, view.getWidth(), view.getHeight());
            view.getMatrix().mapRect(rectF);
            rectF.offset(view.getLeft(), view.getTop());
            Object parent = view.getParent();
            while (parent instanceof View) {
                View view2 = (View) parent;
                rectF.offset(-view2.getScrollX(), -view2.getScrollY());
                view2.getMatrix().mapRect(rectF);
                rectF.offset(view2.getLeft(), view2.getTop());
                parent = view2.getParent();
            }
            view.getRootView().getLocationOnScreen(new int[2]);
            rectF.offset(r0[0], r0[1]);
            rect.set(Math.round(rectF.left), Math.round(rectF.top), Math.round(rectF.right), Math.round(rectF.bottom));
        }
    }

    public abstract Object h(Object obj, Object obj2, Object obj3);

    public abstract Object i(Object obj, Object obj2, Object obj3);

    public ArrayList j(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            View view = (View) arrayList.get(i);
            arrayList2.add(b.e.i.q.m(view));
            view.setTransitionName(null);
        }
        return arrayList2;
    }

    public abstract void k(Object obj, ArrayList arrayList, ArrayList arrayList2);

    public abstract void l(Object obj, Object obj2, ArrayList arrayList, Object obj3, ArrayList arrayList2, Object obj4, ArrayList arrayList3);

    public abstract void m(Object obj, Rect rect);

    public abstract void n(Object obj, View view);

    public void o(r rVar, Object obj, b.e.f.b bVar, Runnable runnable) {
        runnable.run();
    }

    public void p(View view, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Map map) {
        int size = arrayList2.size();
        ArrayList arrayList4 = new ArrayList();
        for (int i = 0; i < size; i++) {
            View view2 = (View) arrayList.get(i);
            String m = b.e.i.q.m(view2);
            arrayList4.add(m);
            if (m != null) {
                view2.setTransitionName(null);
                String str = (String) map.get(m);
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    }
                    if (str.equals(arrayList3.get(i2))) {
                        ((View) arrayList2.get(i2)).setTransitionName(m);
                        break;
                    }
                    i2++;
                }
            }
        }
        b.e.i.j.a(view, new x0(this, size, arrayList2, arrayList3, arrayList, arrayList4));
    }

    public abstract void q(Object obj, View view, ArrayList arrayList);

    public abstract void r(Object obj, ArrayList arrayList, ArrayList arrayList2);
}
