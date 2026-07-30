package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.Transition;
import defpackage.AbstractC0387Nj;
import defpackage.C0409Oj;
import defpackage.V6;
import java.util.ArrayList;

/* renamed from: androidx.transition.if, reason: invalid class name */
/* loaded from: classes.dex */
public class Cif extends AbstractC0387Nj {

    /* renamed from: androidx.transition.if$do, reason: invalid class name */
    public class Cdo implements Transition.Cnew {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f7946do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ ArrayList f7947do;

        public Cdo(View view, ArrayList arrayList) {
            this.f7946do = view;
            this.f7947do = arrayList;
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: case */
        public final void mo4604case(Transition transition) {
            transition.mo4630default(this);
            transition.mo4631do(this);
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: do */
        public final void mo4605do(Transition transition) {
            transition.mo4630default(this);
            transition.mo4631do(this);
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: else */
        public final void mo4606else(Transition transition) {
            transition.mo4630default(this);
            this.f7946do.setVisibility(8);
            ArrayList arrayList = this.f7947do;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((View) arrayList.get(i)).setVisibility(0);
            }
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: for */
        public final void mo4607for(Transition transition) {
            mo4606else(transition);
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: if */
        public final void mo4608if() {
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: new */
        public final void mo4609new(Transition transition) {
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: try */
        public final void mo4610try() {
        }
    }

    /* renamed from: androidx.transition.if$for, reason: invalid class name */
    public class Cfor extends Transition.Cfor {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Rect f7948do;

        public Cfor(Rect rect) {
            this.f7948do = rect;
        }

        @Override // androidx.transition.Transition.Cfor
        /* renamed from: do */
        public final Rect mo4653do() {
            Rect rect = this.f7948do;
            if (rect == null || rect.isEmpty()) {
                return null;
            }
            return rect;
        }
    }

    /* renamed from: androidx.transition.if$if, reason: invalid class name and collision with other inner class name */
    public class C0044if extends Cnew {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ Object f7950do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ ArrayList f7951do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Object f7952for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public final /* synthetic */ ArrayList f7953for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Object f7954if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final /* synthetic */ ArrayList f7955if;

        public C0044if(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            this.f7950do = obj;
            this.f7951do = arrayList;
            this.f7954if = obj2;
            this.f7955if = arrayList2;
            this.f7952for = obj3;
            this.f7953for = arrayList3;
        }

        @Override // androidx.transition.Cnew, androidx.transition.Transition.Cnew
        /* renamed from: do */
        public final void mo4605do(Transition transition) {
            Cif cif = Cif.this;
            Object obj = this.f7950do;
            if (obj != null) {
                cif.m4664static(obj, this.f7951do, null);
            }
            Object obj2 = this.f7954if;
            if (obj2 != null) {
                cif.m4664static(obj2, this.f7955if, null);
            }
            Object obj3 = this.f7952for;
            if (obj3 != null) {
                cif.m4664static(obj3, this.f7953for, null);
            }
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: else */
        public final void mo4606else(Transition transition) {
            transition.mo4630default(this);
        }
    }

    /* renamed from: return, reason: not valid java name */
    public static boolean m4663return(Transition transition) {
        return (AbstractC0387Nj.m1547goto(transition.f7880do) && AbstractC0387Nj.m1547goto(null) && AbstractC0387Nj.m1547goto(null)) ? false : true;
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: break */
    public final Object mo1189break(Object obj, Object obj2, Object obj3) {
        TransitionSet transitionSet = new TransitionSet();
        if (obj != null) {
            transitionSet.m4654implements((Transition) obj);
        }
        if (obj2 != null) {
            transitionSet.m4654implements((Transition) obj2);
        }
        if (obj3 != null) {
            transitionSet.m4654implements((Transition) obj3);
        }
        return transitionSet;
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: case */
    public final Object mo1190case(Object obj) {
        if (obj != null) {
            return ((Transition) obj).clone();
        }
        return null;
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: class */
    public final void mo1191class(Object obj, View view, ArrayList<View> arrayList) {
        ((Transition) obj).mo4631do(new Cdo(view, arrayList));
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: const */
    public final void mo1192const(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        ((Transition) obj).mo4631do(new C0044if(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: do */
    public final void mo1193do(View view, Object obj) {
        if (obj != null) {
            ((Transition) obj).mo4636if(view);
        }
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: final */
    public final void mo1194final(View view, Object obj) {
        if (view != null) {
            Rect rect = new Rect();
            AbstractC0387Nj.m1546else(rect, view);
            ((Transition) obj).mo4624abstract(new androidx.transition.Cdo(rect));
        }
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: for */
    public final void mo1195for(ViewGroup viewGroup, Object obj) {
        Ctry.m4665do(viewGroup, (Transition) obj);
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: if */
    public final void mo1196if(Object obj, ArrayList<View> arrayList) {
        Transition transition = (Transition) obj;
        if (transition == null) {
            return;
        }
        int i = 0;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int size = transitionSet.f7907goto.size();
            while (i < size) {
                mo1196if((i < 0 || i >= transitionSet.f7907goto.size()) ? null : transitionSet.f7907goto.get(i), arrayList);
                i++;
            }
            return;
        }
        if (m4663return(transition) || !AbstractC0387Nj.m1547goto(transition.f7890if)) {
            return;
        }
        int size2 = arrayList.size();
        while (i < size2) {
            transition.mo4636if(arrayList.get(i));
            i++;
        }
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: import */
    public final void mo1197import(Object obj, View view, ArrayList<View> arrayList) {
        TransitionSet transitionSet = (TransitionSet) obj;
        ArrayList<View> arrayList2 = ((Transition) transitionSet).f7890if;
        arrayList2.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            AbstractC0387Nj.m1548new(arrayList.get(i), arrayList2);
        }
        arrayList2.add(view);
        arrayList.add(view);
        mo1196if(transitionSet, arrayList);
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: native */
    public final void mo1198native(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        TransitionSet transitionSet = (TransitionSet) obj;
        if (transitionSet != null) {
            ArrayList<View> arrayList3 = ((Transition) transitionSet).f7890if;
            arrayList3.clear();
            arrayList3.addAll(arrayList2);
            m4664static(transitionSet, arrayList, arrayList2);
        }
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: public */
    public final Object mo1199public(Object obj) {
        if (obj == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.m4654implements((Transition) obj);
        return transitionSet;
    }

    /* renamed from: static, reason: not valid java name */
    public final void m4664static(Object obj, @SuppressLint({"UnknownNullness"}) ArrayList<View> arrayList, @SuppressLint({"UnknownNullness"}) ArrayList<View> arrayList2) {
        Transition transition = (Transition) obj;
        int i = 0;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int size = transitionSet.f7907goto.size();
            while (i < size) {
                m4664static((i < 0 || i >= transitionSet.f7907goto.size()) ? null : transitionSet.f7907goto.get(i), arrayList, arrayList2);
                i++;
            }
            return;
        }
        if (m4663return(transition)) {
            return;
        }
        ArrayList<View> arrayList3 = transition.f7890if;
        if (arrayList3.size() != arrayList.size() || !arrayList3.containsAll(arrayList)) {
            return;
        }
        int size2 = arrayList2 == null ? 0 : arrayList2.size();
        while (i < size2) {
            transition.mo4636if(arrayList2.get(i));
            i++;
        }
        int size3 = arrayList.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                return;
            } else {
                transition.mo4633extends(arrayList.get(size3));
            }
        }
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: super */
    public final void mo1201super(Object obj, Rect rect) {
        if (obj != null) {
            ((Transition) obj).mo4624abstract(new Cfor(rect));
        }
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: this */
    public final Object mo1202this(Object obj, Object obj2, Object obj3) {
        Transition transition = (Transition) obj;
        Transition transition2 = (Transition) obj2;
        Transition transition3 = (Transition) obj3;
        if (transition != null && transition2 != null) {
            TransitionSet transitionSet = new TransitionSet();
            transitionSet.m4654implements(transition);
            transitionSet.m4654implements(transition2);
            transitionSet.a(1);
            transition = transitionSet;
        } else if (transition == null) {
            transition = transition2 != null ? transition2 : null;
        }
        if (transition3 == null) {
            return transition;
        }
        TransitionSet transitionSet2 = new TransitionSet();
        if (transition != null) {
            transitionSet2.m4654implements(transition);
        }
        transitionSet2.m4654implements(transition3);
        return transitionSet2;
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: throw */
    public final void mo1203throw(Object obj, V6 v6, Runnable runnable) {
        Transition transition = (Transition) obj;
        v6.m2543if(new C0409Oj(transition, runnable));
        transition.mo4631do(new androidx.transition.Cfor(runnable));
    }

    @Override // defpackage.AbstractC0387Nj
    /* renamed from: try */
    public final boolean mo1204try(Object obj) {
        return obj instanceof Transition;
    }
}
