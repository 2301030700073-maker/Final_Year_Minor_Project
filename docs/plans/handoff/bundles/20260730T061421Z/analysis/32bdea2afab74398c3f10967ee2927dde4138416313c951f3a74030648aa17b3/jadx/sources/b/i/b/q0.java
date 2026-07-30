package b.i.b;

import android.transition.Transition;
import android.transition.TransitionSet;
import android.view.View;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class q0 {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f940a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};

    /* renamed from: b, reason: collision with root package name */
    public static final A0 f941b = new w0();

    /* renamed from: c, reason: collision with root package name */
    public static final A0 f942c;

    static {
        A0 a0;
        try {
            a0 = (A0) Class.forName("androidx.transition.FragmentTransitionSupport").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            a0 = null;
        }
        f942c = a0;
    }

    public static void a(ArrayList arrayList, b.d.g gVar, Collection collection) {
        int i = gVar.f656c;
        while (true) {
            i--;
            if (i < 0) {
                return;
            }
            View view = (View) gVar.j(i);
            if (collection.contains(b.e.i.q.m(view))) {
                arrayList.add(view);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x0039, code lost:
    
        if (r0.mAdded != false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x008a, code lost:
    
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0077, code lost:
    
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0088, code lost:
    
        if (r0.mHidden == false) goto L69;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ac A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00cc A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(b.i.b.C0096a r8, b.i.b.C0113i0 r9, android.util.SparseArray r10, boolean r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b.i.b.q0.b(b.i.b.a, b.i.b.i0, android.util.SparseArray, boolean, boolean):void");
    }

    public static void c(r rVar, r rVar2, boolean z, b.d.g gVar, boolean z2) {
        if ((z ? rVar2.getEnterTransitionCallback() : rVar.getEnterTransitionCallback()) != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int i = gVar == null ? 0 : gVar.f656c;
            for (int i2 = 0; i2 < i; i2++) {
                arrayList2.add(gVar.g(i2));
                arrayList.add(gVar.j(i2));
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public static boolean d(A0 a0, List list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Object obj = list.get(i);
            Objects.requireNonNull((w0) a0);
            if (!(obj instanceof Transition)) {
                return false;
            }
        }
        return true;
    }

    public static b.d.g e(A0 a0, b.d.g gVar, Object obj, p0 p0Var) {
        b.e.b.n enterTransitionCallback;
        ArrayList arrayList;
        r rVar = p0Var.f936a;
        View view = rVar.getView();
        if (gVar.isEmpty() || obj == null || view == null) {
            gVar.clear();
            return null;
        }
        b.d.g gVar2 = new b.d.g();
        a0.e(gVar2, view);
        C0096a c0096a = p0Var.f938c;
        if (p0Var.f937b) {
            enterTransitionCallback = rVar.getExitTransitionCallback();
            arrayList = c0096a.n;
        } else {
            enterTransitionCallback = rVar.getEnterTransitionCallback();
            arrayList = c0096a.o;
        }
        if (arrayList != null) {
            gVar2.l(arrayList);
            gVar2.l(gVar.values());
        }
        if (enterTransitionCallback != null) {
            throw null;
        }
        n(gVar, gVar2);
        return gVar2;
    }

    public static b.d.g f(A0 a0, b.d.g gVar, Object obj, p0 p0Var) {
        b.e.b.n exitTransitionCallback;
        ArrayList arrayList;
        if (gVar.isEmpty() || obj == null) {
            gVar.clear();
            return null;
        }
        r rVar = p0Var.f939d;
        b.d.g gVar2 = new b.d.g();
        a0.e(gVar2, rVar.requireView());
        C0096a c0096a = p0Var.f;
        if (p0Var.e) {
            exitTransitionCallback = rVar.getEnterTransitionCallback();
            arrayList = c0096a.o;
        } else {
            exitTransitionCallback = rVar.getExitTransitionCallback();
            arrayList = c0096a.n;
        }
        if (arrayList != null) {
            gVar2.l(arrayList);
        }
        if (exitTransitionCallback != null) {
            throw null;
        }
        gVar.l(gVar2.keySet());
        return gVar2;
    }

    public static A0 g(r rVar, r rVar2) {
        A0 a0 = f941b;
        ArrayList arrayList = new ArrayList();
        if (rVar != null) {
            Object exitTransition = rVar.getExitTransition();
            if (exitTransition != null) {
                arrayList.add(exitTransition);
            }
            Object returnTransition = rVar.getReturnTransition();
            if (returnTransition != null) {
                arrayList.add(returnTransition);
            }
            Object sharedElementReturnTransition = rVar.getSharedElementReturnTransition();
            if (sharedElementReturnTransition != null) {
                arrayList.add(sharedElementReturnTransition);
            }
        }
        if (rVar2 != null) {
            Object enterTransition = rVar2.getEnterTransition();
            if (enterTransition != null) {
                arrayList.add(enterTransition);
            }
            Object reenterTransition = rVar2.getReenterTransition();
            if (reenterTransition != null) {
                arrayList.add(reenterTransition);
            }
            Object sharedElementEnterTransition = rVar2.getSharedElementEnterTransition();
            if (sharedElementEnterTransition != null) {
                arrayList.add(sharedElementEnterTransition);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        if (d(a0, arrayList)) {
            return a0;
        }
        A0 a02 = f942c;
        if (a02 == null || !d(a02, arrayList)) {
            throw new IllegalArgumentException("Invalid Transition types");
        }
        return f942c;
    }

    public static ArrayList h(A0 a0, Object obj, r rVar, ArrayList arrayList, View view) {
        if (obj == null) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        View view2 = rVar.getView();
        if (view2 != null) {
            a0.b(arrayList2, view2);
        }
        if (arrayList != null) {
            arrayList2.removeAll(arrayList);
        }
        if (arrayList2.isEmpty()) {
            return arrayList2;
        }
        arrayList2.add(view);
        a0.a(obj, arrayList2);
        return arrayList2;
    }

    public static Object i(A0 a0, r rVar, boolean z) {
        if (rVar == null) {
            return null;
        }
        return a0.c(z ? rVar.getReenterTransition() : rVar.getEnterTransition());
    }

    public static Object j(A0 a0, r rVar, boolean z) {
        if (rVar == null) {
            return null;
        }
        return a0.c(z ? rVar.getReturnTransition() : rVar.getExitTransition());
    }

    public static View k(b.d.g gVar, p0 p0Var, Object obj, boolean z) {
        ArrayList arrayList;
        C0096a c0096a = p0Var.f938c;
        if (obj == null || gVar == null || (arrayList = c0096a.n) == null || arrayList.isEmpty()) {
            return null;
        }
        return (View) gVar.get(z ? (String) c0096a.n.get(0) : (String) c0096a.o.get(0));
    }

    public static Object l(A0 a0, r rVar, r rVar2, boolean z) {
        Object c2 = a0.c(z ? rVar2.getSharedElementReturnTransition() : rVar.getSharedElementEnterTransition());
        if (c2 == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.addTransition((Transition) c2);
        return transitionSet;
    }

    public static Object m(A0 a0, Object obj, Object obj2, Object obj3, r rVar, boolean z) {
        return (obj == null || obj2 == null || rVar == null) ? true : z ? rVar.getAllowReturnTransitionOverlap() : rVar.getAllowEnterTransitionOverlap() ? a0.i(obj2, obj, obj3) : a0.h(obj2, obj, obj3);
    }

    public static void n(b.d.g gVar, b.d.g gVar2) {
        int i = gVar.f656c;
        while (true) {
            i--;
            if (i < 0) {
                return;
            }
            if (!gVar2.containsKey((String) gVar.j(i))) {
                gVar.h(i);
            }
        }
    }

    public static void o(A0 a0, Object obj, Object obj2, b.d.g gVar, boolean z, C0096a c0096a) {
        ArrayList arrayList = c0096a.n;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        View view = (View) gVar.get(z ? (String) c0096a.o.get(0) : (String) c0096a.n.get(0));
        a0.n(obj, view);
        if (obj2 != null) {
            a0.n(obj2, view);
        }
    }

    public static void p(ArrayList arrayList, int i) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((View) arrayList.get(size)).setVisibility(i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:139:0x03a0  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x03e0  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0424 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x023e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void q(android.content.Context r38, b.i.b.A r39, java.util.ArrayList r40, java.util.ArrayList r41, int r42, int r43, boolean r44, b.i.b.K r45) {
        /*
            Method dump skipped, instructions count: 1081
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b.i.b.q0.q(android.content.Context, b.i.b.A, java.util.ArrayList, java.util.ArrayList, int, int, boolean, b.i.b.K):void");
    }
}
