package androidx.fragment.app;

import android.content.Context;
import android.transition.Transition;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Cclass;
import androidx.fragment.app.Cstatic;
import defpackage.AbstractC0387Nj;
import defpackage.AbstractC3884vr;
import defpackage.C0322Kj;
import defpackage.C3385nL;
import defpackage.F2;
import defpackage.QK;
import defpackage.V6;
import defpackage.WK;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.WeakHashMap;

/* renamed from: androidx.fragment.app.break, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cbreak extends Cstatic {

    /* renamed from: androidx.fragment.app.break$do, reason: invalid class name */
    public static class Cdo extends Cif {

        /* renamed from: do, reason: not valid java name */
        public Cclass.Cdo f6927do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f6928do;

        /* renamed from: if, reason: not valid java name */
        public boolean f6929if;

        public Cdo(Cstatic.Cnew cnew, V6 v6, boolean z) {
            super(cnew, v6);
            this.f6929if = false;
            this.f6928do = z;
        }

        /* renamed from: for, reason: not valid java name */
        public final Cclass.Cdo m4160for(Context context) {
            if (this.f6929if) {
                return this.f6927do;
            }
            Cstatic.Cnew cnew = ((Cif) this).f6934do;
            Cclass.Cdo m4164do = Cclass.m4164do(context, cnew.f7019do, cnew.f7020do == Cstatic.Cnew.Cfor.VISIBLE, this.f6928do);
            this.f6927do = m4164do;
            this.f6929if = true;
            return m4164do;
        }
    }

    /* renamed from: androidx.fragment.app.break$for, reason: invalid class name */
    public static class Cfor extends Cif {

        /* renamed from: do, reason: not valid java name */
        public final Object f6930do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f6931do;

        /* renamed from: if, reason: not valid java name */
        public final Object f6932if;

        public Cfor(Cstatic.Cnew cnew, V6 v6, boolean z, boolean z2) {
            super(cnew, v6);
            Cstatic.Cnew.Cfor cfor = cnew.f7020do;
            Cstatic.Cnew.Cfor cfor2 = Cstatic.Cnew.Cfor.VISIBLE;
            Fragment fragment = cnew.f7019do;
            if (cfor == cfor2) {
                this.f6930do = z ? fragment.getReenterTransition() : fragment.getEnterTransition();
                this.f6931do = z ? fragment.getAllowReturnTransitionOverlap() : fragment.getAllowEnterTransitionOverlap();
            } else {
                this.f6930do = z ? fragment.getReturnTransition() : fragment.getExitTransition();
                this.f6931do = true;
            }
            if (!z2) {
                this.f6932if = null;
            } else if (z) {
                this.f6932if = fragment.getSharedElementReturnTransition();
            } else {
                this.f6932if = fragment.getSharedElementEnterTransition();
            }
        }

        /* renamed from: for, reason: not valid java name */
        public final AbstractC0387Nj m4161for(Object obj) {
            if (obj == null) {
                return null;
            }
            C0322Kj c0322Kj = Creturn.f7007do;
            if (c0322Kj != null && (obj instanceof Transition)) {
                return c0322Kj;
            }
            AbstractC0387Nj abstractC0387Nj = Creturn.f7008do;
            if (abstractC0387Nj != null && abstractC0387Nj.mo1204try(obj)) {
                return abstractC0387Nj;
            }
            throw new IllegalArgumentException("Transition " + obj + " for fragment " + ((Cif) this).f6934do.f7019do + " is not a valid framework Transition or AndroidX Transition");
        }
    }

    /* renamed from: androidx.fragment.app.break$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public final V6 f6933do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Cstatic.Cnew f6934do;

        public Cif(Cstatic.Cnew cnew, V6 v6) {
            this.f6934do = cnew;
            this.f6933do = v6;
        }

        /* renamed from: do, reason: not valid java name */
        public final void m4162do() {
            Cstatic.Cnew cnew = this.f6934do;
            HashSet<V6> hashSet = cnew.f7023do;
            if (hashSet.remove(this.f6933do) && hashSet.isEmpty()) {
                cnew.mo4196if();
            }
        }

        /* renamed from: if, reason: not valid java name */
        public final boolean m4163if() {
            Cstatic.Cnew.Cfor cfor;
            Cstatic.Cnew cnew = this.f6934do;
            Cstatic.Cnew.Cfor m4201goto = Cstatic.Cnew.Cfor.m4201goto(cnew.f7019do.mView);
            Cstatic.Cnew.Cfor cfor2 = cnew.f7020do;
            return m4201goto == cfor2 || !(m4201goto == (cfor = Cstatic.Cnew.Cfor.VISIBLE) || cfor2 == cfor);
        }
    }

    public Cbreak(ViewGroup viewGroup) {
        super(viewGroup);
    }

    /* renamed from: break, reason: not valid java name */
    public static void m4156break(View view, ArrayList arrayList) {
        if (!(view instanceof ViewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(view);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (WK.m2732if(viewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(viewGroup);
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt.getVisibility() == 0) {
                m4156break(childAt, arrayList);
            }
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m4157catch(View view, F2 f2) {
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        String m1920catch = QK.Cnew.m1920catch(view);
        if (m1920catch != null) {
            f2.put(m1920catch, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() == 0) {
                    m4157catch(childAt, f2);
                }
            }
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static void m4158class(F2 f2, Collection collection) {
        Iterator it = ((AbstractC3884vr.Cif) f2.entrySet()).iterator();
        while (true) {
            AbstractC3884vr.Cnew cnew = (AbstractC3884vr.Cnew) it;
            if (!cnew.hasNext()) {
                return;
            }
            cnew.next();
            View view = (View) cnew.getValue();
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            if (!collection.contains(QK.Cnew.m1920catch(view))) {
                cnew.remove();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:126:0x056e  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x05db A[LOOP:6: B:153:0x05d5->B:155:0x05db, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x04e2  */
    @Override // androidx.fragment.app.Cstatic
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo4159if(java.util.ArrayList r36, boolean r37) {
        /*
            Method dump skipped, instructions count: 1519
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.Cbreak.mo4159if(java.util.ArrayList, boolean):void");
    }
}
