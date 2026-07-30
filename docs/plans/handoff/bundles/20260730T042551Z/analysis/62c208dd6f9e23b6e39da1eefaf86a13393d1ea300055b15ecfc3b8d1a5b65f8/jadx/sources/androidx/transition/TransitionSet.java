package androidx.transition;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.Transition;
import defpackage.C3500pI;
import defpackage.C3559qI;
import defpackage.FM;
import defpackage.HF;
import defpackage.KI;
import defpackage.V1;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class TransitionSet extends Transition {

    /* renamed from: for, reason: not valid java name */
    public boolean f7906for;

    /* renamed from: goto, reason: not valid java name */
    public ArrayList<Transition> f7907goto;

    /* renamed from: new, reason: not valid java name */
    public int f7908new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f7909new;

    /* renamed from: try, reason: not valid java name */
    public int f7910try;

    /* renamed from: androidx.transition.TransitionSet$do, reason: invalid class name */
    public class Cdo extends Cnew {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Transition f7911do;

        public Cdo(Transition transition) {
            this.f7911do = transition;
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: else */
        public final void mo4606else(Transition transition) {
            this.f7911do.mo4640package();
            transition.mo4630default(this);
        }
    }

    /* renamed from: androidx.transition.TransitionSet$if, reason: invalid class name */
    public static class Cif extends Cnew {

        /* renamed from: do, reason: not valid java name */
        public final TransitionSet f7912do;

        public Cif(TransitionSet transitionSet) {
            this.f7912do = transitionSet;
        }

        @Override // androidx.transition.Cnew, androidx.transition.Transition.Cnew
        /* renamed from: do */
        public final void mo4605do(Transition transition) {
            TransitionSet transitionSet = this.f7912do;
            if (transitionSet.f7909new) {
                return;
            }
            transitionSet.m4642protected();
            transitionSet.f7909new = true;
        }

        @Override // androidx.transition.Transition.Cnew
        /* renamed from: else */
        public final void mo4606else(Transition transition) {
            TransitionSet transitionSet = this.f7912do;
            int i = transitionSet.f7908new - 1;
            transitionSet.f7908new = i;
            if (i == 0) {
                transitionSet.f7909new = false;
                transitionSet.m4634final();
            }
            transition.mo4630default(this);
        }
    }

    public TransitionSet() {
        this.f7907goto = new ArrayList<>();
        this.f7906for = true;
        this.f7909new = false;
        this.f7910try = 0;
    }

    public final void a(int i) {
        if (i == 0) {
            this.f7906for = true;
        } else {
            if (i != 1) {
                throw new AndroidRuntimeException(V1.m2494case("Invalid parameter for TransitionSet ordering: ", i));
            }
            this.f7906for = false;
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: abstract */
    public final void mo4624abstract(Transition.Cfor cfor) {
        ((Transition) this).f7877do = cfor;
        this.f7910try |= 8;
        int size = this.f7907goto.size();
        for (int i = 0; i < size; i++) {
            this.f7907goto.get(i).mo4624abstract(cfor);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: catch */
    public final Transition clone() {
        TransitionSet transitionSet = (TransitionSet) super.clone();
        transitionSet.f7907goto = new ArrayList<>();
        int size = this.f7907goto.size();
        for (int i = 0; i < size; i++) {
            Transition clone = this.f7907goto.get(i).clone();
            transitionSet.f7907goto.add(clone);
            clone.f7879do = transitionSet;
        }
        return transitionSet;
    }

    @Override // androidx.transition.Transition
    /* renamed from: const */
    public final void mo4628const(ViewGroup viewGroup, C3559qI c3559qI, C3559qI c3559qI2, ArrayList<C3500pI> arrayList, ArrayList<C3500pI> arrayList2) {
        long j = ((Transition) this).f7873do;
        int size = this.f7907goto.size();
        for (int i = 0; i < size; i++) {
            Transition transition = this.f7907goto.get(i);
            if (j > 0 && (this.f7906for || i == 0)) {
                long j2 = transition.f7873do;
                if (j2 > 0) {
                    transition.mo4637interface(j2 + j);
                } else {
                    transition.mo4637interface(j);
                }
            }
            transition.mo4628const(viewGroup, c3559qI, c3559qI2, arrayList, arrayList2);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: default */
    public final Transition mo4630default(Transition.Cnew cnew) {
        super.mo4630default(cnew);
        return this;
    }

    @Override // androidx.transition.Transition
    /* renamed from: do */
    public final void mo4631do(Transition.Cnew cnew) {
        super.mo4631do(cnew);
    }

    @Override // androidx.transition.Transition
    /* renamed from: else */
    public final void mo4632else(C3500pI c3500pI) {
        super.mo4632else(c3500pI);
        int size = this.f7907goto.size();
        for (int i = 0; i < size; i++) {
            this.f7907goto.get(i).mo4632else(c3500pI);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: extends */
    public final void mo4633extends(View view) {
        for (int i = 0; i < this.f7907goto.size(); i++) {
            this.f7907goto.get(i).mo4633extends(view);
        }
        ((Transition) this).f7890if.remove(view);
    }

    @Override // androidx.transition.Transition
    /* renamed from: finally */
    public final void mo4635finally(ViewGroup viewGroup) {
        super.mo4635finally(viewGroup);
        int size = this.f7907goto.size();
        for (int i = 0; i < size; i++) {
            this.f7907goto.get(i).mo4635finally(viewGroup);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: goto */
    public final void mo2720goto(C3500pI c3500pI) {
        View view = c3500pI.f14904do;
        if (m4644return(view)) {
            Iterator<Transition> it = this.f7907goto.iterator();
            while (it.hasNext()) {
                Transition next = it.next();
                if (next.m4644return(view)) {
                    next.mo2720goto(c3500pI);
                    c3500pI.f14905do.add(next);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: if */
    public final void mo4636if(View view) {
        for (int i = 0; i < this.f7907goto.size(); i++) {
            this.f7907goto.get(i).mo4636if(view);
        }
        ((Transition) this).f7890if.add(view);
    }

    /* renamed from: implements, reason: not valid java name */
    public final void m4654implements(Transition transition) {
        this.f7907goto.add(transition);
        transition.f7879do = this;
        long j = ((Transition) this).f7889if;
        if (j >= 0) {
            transition.mo4641private(j);
        }
        if ((this.f7910try & 1) != 0) {
            transition.mo4629continue(((Transition) this).f7875do);
        }
        if ((this.f7910try & 2) != 0) {
            transition.mo4652volatile(((Transition) this).f7874do);
        }
        if ((this.f7910try & 4) != 0) {
            transition.mo4645strictfp(((Transition) this).f7876do);
        }
        if ((this.f7910try & 8) != 0) {
            transition.mo4624abstract(((Transition) this).f7877do);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: instanceof, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void mo4641private(long j) {
        ArrayList<Transition> arrayList;
        ((Transition) this).f7889if = j;
        if (j < 0 || (arrayList = this.f7907goto) == null) {
            return;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            this.f7907goto.get(i).mo4641private(j);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: interface */
    public final void mo4637interface(long j) {
        ((Transition) this).f7873do = j;
    }

    @Override // androidx.transition.Transition
    /* renamed from: new */
    public final void mo4639new() {
        super.mo4639new();
        int size = this.f7907goto.size();
        for (int i = 0; i < size; i++) {
            this.f7907goto.get(i).mo4639new();
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: package */
    public final void mo4640package() {
        if (this.f7907goto.isEmpty()) {
            m4642protected();
            m4634final();
            return;
        }
        Cif cif = new Cif(this);
        Iterator<Transition> it = this.f7907goto.iterator();
        while (it.hasNext()) {
            it.next().mo4631do(cif);
        }
        this.f7908new = this.f7907goto.size();
        if (this.f7906for) {
            Iterator<Transition> it2 = this.f7907goto.iterator();
            while (it2.hasNext()) {
                it2.next().mo4640package();
            }
            return;
        }
        for (int i = 1; i < this.f7907goto.size(); i++) {
            this.f7907goto.get(i - 1).mo4631do(new Cdo(this.f7907goto.get(i)));
        }
        Transition transition = this.f7907goto.get(0);
        if (transition != null) {
            transition.mo4640package();
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: strictfp */
    public final void mo4645strictfp(PathMotion pathMotion) {
        super.mo4645strictfp(pathMotion);
        this.f7910try |= 4;
        if (this.f7907goto != null) {
            for (int i = 0; i < this.f7907goto.size(); i++) {
                this.f7907goto.get(i).mo4645strictfp(pathMotion);
            }
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: synchronized, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void mo4629continue(TimeInterpolator timeInterpolator) {
        this.f7910try |= 1;
        ArrayList<Transition> arrayList = this.f7907goto;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f7907goto.get(i).mo4629continue(timeInterpolator);
            }
        }
        ((Transition) this).f7875do = timeInterpolator;
    }

    @Override // androidx.transition.Transition
    /* renamed from: throws */
    public final void mo4650throws(View view) {
        super.mo4650throws(view);
        int size = this.f7907goto.size();
        for (int i = 0; i < size; i++) {
            this.f7907goto.get(i).mo4650throws(view);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: transient */
    public final String mo4651transient(String str) {
        String mo4651transient = super.mo4651transient(str);
        for (int i = 0; i < this.f7907goto.size(); i++) {
            StringBuilder m6916goto = defpackage.Cif.m6916goto(mo4651transient, "\n");
            m6916goto.append(this.f7907goto.get(i).mo4651transient(str + "  "));
            mo4651transient = m6916goto.toString();
        }
        return mo4651transient;
    }

    @Override // androidx.transition.Transition
    /* renamed from: try */
    public final void mo2721try(C3500pI c3500pI) {
        View view = c3500pI.f14904do;
        if (m4644return(view)) {
            Iterator<Transition> it = this.f7907goto.iterator();
            while (it.hasNext()) {
                Transition next = it.next();
                if (next.m4644return(view)) {
                    next.mo2721try(c3500pI);
                    c3500pI.f14905do.add(next);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: volatile */
    public final void mo4652volatile(FM fm) {
        ((Transition) this).f7874do = fm;
        this.f7910try |= 2;
        int size = this.f7907goto.size();
        for (int i = 0; i < size; i++) {
            this.f7907goto.get(i).mo4652volatile(fm);
        }
    }

    public TransitionSet(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7907goto = new ArrayList<>();
        this.f7906for = true;
        this.f7909new = false;
        this.f7910try = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, HF.f1328else);
        a(KI.m1135for(obtainStyledAttributes, (XmlResourceParser) attributeSet, "transitionOrdering", 0, 0));
        obtainStyledAttributes.recycle();
    }
}
