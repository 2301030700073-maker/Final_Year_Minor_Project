package defpackage;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import defpackage.QK;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;

@SuppressLint({"UnknownNullness"})
/* renamed from: Nj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0387Nj {
    /* renamed from: catch, reason: not valid java name */
    public static ArrayList m1545catch(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            View view = (View) arrayList.get(i);
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            arrayList2.add(QK.Cnew.m1920catch(view));
            QK.Cnew.m1936static(view, null);
        }
        return arrayList2;
    }

    /* renamed from: else, reason: not valid java name */
    public static void m1546else(Rect rect, View view) {
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        if (view.isAttachedToWindow()) {
            RectF rectF = new RectF();
            rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
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
            rectF.offset(r1[0], r1[1]);
            rect.set(Math.round(rectF.left), Math.round(rectF.top), Math.round(rectF.right), Math.round(rectF.bottom));
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m1547goto(List list) {
        return list == null || list.isEmpty();
    }

    /* renamed from: new, reason: not valid java name */
    public static void m1548new(View view, List list) {
        boolean z;
        boolean z2;
        int size = list.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                z = false;
                break;
            } else {
                if (list.get(i) == view) {
                    z = true;
                    break;
                }
                i++;
            }
        }
        if (z) {
            return;
        }
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        if (QK.Cnew.m1920catch(view) != null) {
            list.add(view);
        }
        for (int i2 = size; i2 < list.size(); i2++) {
            View view2 = (View) list.get(i2);
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                int childCount = viewGroup.getChildCount();
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = viewGroup.getChildAt(i3);
                    int i4 = 0;
                    while (true) {
                        if (i4 >= size) {
                            z2 = false;
                            break;
                        } else {
                            if (list.get(i4) == childAt) {
                                z2 = true;
                                break;
                            }
                            i4++;
                        }
                    }
                    if (!z2 && QK.Cnew.m1920catch(childAt) != null) {
                        list.add(childAt);
                    }
                }
            }
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static void m1549while(ViewGroup viewGroup, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, F2 f2) {
        int size = arrayList2.size();
        ArrayList arrayList4 = new ArrayList();
        for (int i = 0; i < size; i++) {
            View view = (View) arrayList.get(i);
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            String m1920catch = QK.Cnew.m1920catch(view);
            arrayList4.add(m1920catch);
            if (m1920catch != null) {
                QK.Cnew.m1936static(view, null);
                String str = (String) f2.getOrDefault(m1920catch, null);
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    }
                    if (str.equals(arrayList3.get(i2))) {
                        QK.Cnew.m1936static((View) arrayList2.get(i2), m1920catch);
                        break;
                    }
                    i2++;
                }
            }
        }
        ViewTreeObserverOnPreDrawListenerC0663Zv.m3081do(viewGroup, new RunnableC0365Mj(size, arrayList2, arrayList3, arrayList, arrayList4));
    }

    /* renamed from: break */
    public abstract Object mo1189break(Object obj, Object obj2, Object obj3);

    /* renamed from: case */
    public abstract Object mo1190case(Object obj);

    /* renamed from: class */
    public abstract void mo1191class(Object obj, View view, ArrayList<View> arrayList);

    /* renamed from: const */
    public abstract void mo1192const(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3);

    /* renamed from: do */
    public abstract void mo1193do(View view, Object obj);

    /* renamed from: final */
    public abstract void mo1194final(View view, Object obj);

    /* renamed from: for */
    public abstract void mo1195for(ViewGroup viewGroup, Object obj);

    /* renamed from: if */
    public abstract void mo1196if(Object obj, ArrayList<View> arrayList);

    /* renamed from: import */
    public abstract void mo1197import(Object obj, View view, ArrayList<View> arrayList);

    /* renamed from: native */
    public abstract void mo1198native(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* renamed from: public */
    public abstract Object mo1199public(Object obj);

    /* renamed from: super */
    public abstract void mo1201super(Object obj, Rect rect);

    /* renamed from: this */
    public abstract Object mo1202this(Object obj, Object obj2, Object obj3);

    /* renamed from: throw */
    public void mo1203throw(Object obj, V6 v6, Runnable runnable) {
        runnable.run();
    }

    /* renamed from: try */
    public abstract boolean mo1204try(Object obj);
}
