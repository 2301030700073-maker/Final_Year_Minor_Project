package defpackage;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* renamed from: Kj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0322Kj extends AbstractC0387Nj {

    /* renamed from: Kj$do, reason: invalid class name */
    public class Cdo implements Transition.TransitionListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f1859do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ ArrayList f1860do;

        public Cdo(View view, ArrayList arrayList) {
            this.f1859do = view;
            this.f1860do = arrayList;
        }

        @Override // android.transition.Transition.TransitionListener
        public final void onTransitionCancel(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public final void onTransitionEnd(Transition transition) {
            transition.removeListener(this);
            this.f1859do.setVisibility(8);
            ArrayList arrayList = this.f1860do;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((View) arrayList.get(i)).setVisibility(0);
            }
        }

        @Override // android.transition.Transition.TransitionListener
        public final void onTransitionPause(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public final void onTransitionResume(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public final void onTransitionStart(Transition transition) {
            transition.removeListener(this);
            transition.addListener(this);
        }
    }

    /* renamed from: Kj$for, reason: invalid class name */
    public class Cfor extends Transition.EpicenterCallback {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Rect f1861do;

        public Cfor(Rect rect) {
            this.f1861do = rect;
        }

        @Override // android.transition.Transition.EpicenterCallback
        public final Rect onGetEpicenter(Transition transition) {
            Rect rect = this.f1861do;
            if (rect == null || rect.isEmpty()) {
                return null;
            }
            return rect;
        }
    }

    /* renamed from: Kj$if, reason: invalid class name */
    public class Cif implements Transition.TransitionListener {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ Object f1863do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ ArrayList f1864do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Object f1865for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public final /* synthetic */ ArrayList f1866for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Object f1867if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final /* synthetic */ ArrayList f1868if;

        public Cif(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            this.f1863do = obj;
            this.f1864do = arrayList;
            this.f1867if = obj2;
            this.f1868if = arrayList2;
            this.f1865for = obj3;
            this.f1866for = arrayList3;
        }

        @Override // android.transition.Transition.TransitionListener
        public final void onTransitionCancel(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public final void onTransitionEnd(Transition transition) {
            transition.removeListener(this);
        }

        @Override // android.transition.Transition.TransitionListener
        public final void onTransitionPause(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public final void onTransitionResume(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public final void onTransitionStart(Transition transition) {
            C0322Kj c0322Kj = C0322Kj.this;
            Object obj = this.f1863do;
            if (obj != null) {
                c0322Kj.m1200static(obj, this.f1864do, null);
            }
            Object obj2 = this.f1867if;
            if (obj2 != null) {
                c0322Kj.m1200static(obj2, this.f1868if, null);
            }
            Object obj3 = this.f1865for;
            if (obj3 != null) {
                c0322Kj.m1200static(obj3, this.f1866for, null);
            }
        }
    }

    /* renamed from: return, reason: not valid java name */
    public static boolean m1188return(Transition transition) {
        return (AbstractC0387Nj.m1547goto(transition.getTargetIds()) && AbstractC0387Nj.m1547goto(transition.getTargetNames()) && AbstractC0387Nj.m1547goto(transition.getTargetTypes())) ? false : true;
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: break, reason: not valid java name */
    public final Object mo1189break(Object obj, Object obj2, Object obj3) {
        TransitionSet transitionSet = new TransitionSet();
        if (obj != null) {
            transitionSet.addTransition((Transition) obj);
        }
        if (obj2 != null) {
            transitionSet.addTransition((Transition) obj2);
        }
        if (obj3 != null) {
            transitionSet.addTransition((Transition) obj3);
        }
        return transitionSet;
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: case, reason: not valid java name */
    public final Object mo1190case(Object obj) {
        if (obj != null) {
            return ((Transition) obj).clone();
        }
        return null;
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: class, reason: not valid java name */
    public final void mo1191class(Object obj, View view, ArrayList<View> arrayList) {
        ((Transition) obj).addListener(new Cdo(view, arrayList));
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: const, reason: not valid java name */
    public final void mo1192const(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        ((Transition) obj).addListener(new Cif(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: do, reason: not valid java name */
    public final void mo1193do(View view, Object obj) {
        if (obj != null) {
            ((Transition) obj).addTarget(view);
        }
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: final, reason: not valid java name */
    public final void mo1194final(View view, Object obj) {
        if (view != null) {
            Rect rect = new Rect();
            AbstractC0387Nj.m1546else(rect, view);
            ((Transition) obj).setEpicenterCallback(new C0300Jj(rect));
        }
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: for, reason: not valid java name */
    public final void mo1195for(ViewGroup viewGroup, Object obj) {
        TransitionManager.beginDelayedTransition(viewGroup, (Transition) obj);
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: if, reason: not valid java name */
    public final void mo1196if(Object obj, ArrayList<View> arrayList) {
        Transition transition = (Transition) obj;
        if (transition == null) {
            return;
        }
        int i = 0;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            while (i < transitionCount) {
                mo1196if(transitionSet.getTransitionAt(i), arrayList);
                i++;
            }
            return;
        }
        if (m1188return(transition) || !AbstractC0387Nj.m1547goto(transition.getTargets())) {
            return;
        }
        int size = arrayList.size();
        while (i < size) {
            transition.addTarget(arrayList.get(i));
            i++;
        }
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: import, reason: not valid java name */
    public final void mo1197import(Object obj, View view, ArrayList<View> arrayList) {
        TransitionSet transitionSet = (TransitionSet) obj;
        List<View> targets = transitionSet.getTargets();
        targets.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            AbstractC0387Nj.m1548new(arrayList.get(i), targets);
        }
        targets.add(view);
        arrayList.add(view);
        mo1196if(transitionSet, arrayList);
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: native, reason: not valid java name */
    public final void mo1198native(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        TransitionSet transitionSet = (TransitionSet) obj;
        if (transitionSet != null) {
            transitionSet.getTargets().clear();
            transitionSet.getTargets().addAll(arrayList2);
            m1200static(transitionSet, arrayList, arrayList2);
        }
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: public, reason: not valid java name */
    public final Object mo1199public(Object obj) {
        if (obj == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.addTransition((Transition) obj);
        return transitionSet;
    }

    /* renamed from: static, reason: not valid java name */
    public final void m1200static(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        List<View> targets;
        Transition transition = (Transition) obj;
        int i = 0;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            while (i < transitionCount) {
                m1200static(transitionSet.getTransitionAt(i), arrayList, arrayList2);
                i++;
            }
            return;
        }
        if (m1188return(transition) || (targets = transition.getTargets()) == null || targets.size() != arrayList.size() || !targets.containsAll(arrayList)) {
            return;
        }
        int size = arrayList2 == null ? 0 : arrayList2.size();
        while (i < size) {
            transition.addTarget(arrayList2.get(i));
            i++;
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            transition.removeTarget(arrayList.get(size2));
        }
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: super, reason: not valid java name */
    public final void mo1201super(Object obj, Rect rect) {
        if (obj != null) {
            ((Transition) obj).setEpicenterCallback(new Cfor(rect));
        }
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: this, reason: not valid java name */
    public final Object mo1202this(Object obj, Object obj2, Object obj3) {
        Transition transition = (Transition) obj;
        Transition transition2 = (Transition) obj2;
        Transition transition3 = (Transition) obj3;
        if (transition != null && transition2 != null) {
            transition = new TransitionSet().addTransition(transition).addTransition(transition2).setOrdering(1);
        } else if (transition == null) {
            transition = transition2 != null ? transition2 : null;
        }
        if (transition3 == null) {
            return transition;
        }
        TransitionSet transitionSet = new TransitionSet();
        if (transition != null) {
            transitionSet.addTransition(transition);
        }
        transitionSet.addTransition(transition3);
        return transitionSet;
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: throw, reason: not valid java name */
    public final void mo1203throw(Object obj, V6 v6, Runnable runnable) {
        ((Transition) obj).addListener(new C0344Lj(runnable));
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: try, reason: not valid java name */
    public final boolean mo1204try(Object obj) {
        return obj instanceof Transition;
    }
}
