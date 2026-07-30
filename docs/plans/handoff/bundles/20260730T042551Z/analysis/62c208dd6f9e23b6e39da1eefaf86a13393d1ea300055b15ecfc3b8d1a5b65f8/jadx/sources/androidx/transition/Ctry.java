package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.joeykrim.rootcheck.R;
import defpackage.C3728tB;
import defpackage.F2;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: androidx.transition.try, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ctry {

    /* renamed from: do, reason: not valid java name */
    public static final AutoTransition f7956do = new AutoTransition();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final ThreadLocal<WeakReference<F2<ViewGroup, ArrayList<Transition>>>> f7957do = new ThreadLocal<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final ArrayList<ViewGroup> f7958do = new ArrayList<>();

    /* renamed from: androidx.transition.try$do, reason: invalid class name */
    public static class Cdo implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

        /* renamed from: do, reason: not valid java name */
        public final ViewGroup f7959do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Transition f7960do;

        /* renamed from: androidx.transition.try$do$do, reason: invalid class name and collision with other inner class name */
        public class C0045do extends Cnew {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ F2 f7961do;

            public C0045do(F2 f2) {
                this.f7961do = f2;
            }

            @Override // androidx.transition.Transition.Cnew
            /* renamed from: else */
            public final void mo4606else(Transition transition) {
                ((ArrayList) this.f7961do.getOrDefault(Cdo.this.f7959do, null)).remove(transition);
                transition.mo4630default(this);
            }
        }

        public Cdo(ViewGroup viewGroup, Transition transition) {
            this.f7960do = transition;
            this.f7959do = viewGroup;
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x004e  */
        /* JADX WARN: Removed duplicated region for block: B:128:0x01ee A[EDGE_INSN: B:128:0x01ee->B:129:0x01ee BREAK  A[LOOP:1: B:17:0x0087->B:29:0x01e4], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:132:0x01f4  */
        /* JADX WARN: Removed duplicated region for block: B:142:0x0215  */
        /* JADX WARN: Removed duplicated region for block: B:151:0x023f  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x008c  */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean onPreDraw() {
            /*
                Method dump skipped, instructions count: 701
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Ctry.Cdo.onPreDraw():boolean");
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            ViewGroup viewGroup = this.f7959do;
            viewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
            viewGroup.removeOnAttachStateChangeListener(this);
            Ctry.f7958do.remove(viewGroup);
            ArrayList<Transition> orDefault = Ctry.m4666if().getOrDefault(viewGroup, null);
            if (orDefault != null && orDefault.size() > 0) {
                Iterator<Transition> it = orDefault.iterator();
                while (it.hasNext()) {
                    it.next().mo4635finally(viewGroup);
                }
            }
            this.f7960do.m4625break(true);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m4665do(ViewGroup viewGroup, Transition transition) {
        ArrayList<ViewGroup> arrayList = f7958do;
        if (arrayList.contains(viewGroup) || !viewGroup.isLaidOut()) {
            return;
        }
        arrayList.add(viewGroup);
        if (transition == null) {
            transition = f7956do;
        }
        Transition clone = transition.clone();
        ArrayList<Transition> orDefault = m4666if().getOrDefault(viewGroup, null);
        if (orDefault != null && orDefault.size() > 0) {
            Iterator<Transition> it = orDefault.iterator();
            while (it.hasNext()) {
                it.next().mo4650throws(viewGroup);
            }
        }
        if (clone != null) {
            clone.m4648this(viewGroup, true);
        }
        if (((C3728tB) viewGroup.getTag(R.id.transition_current_scene)) != null) {
            throw null;
        }
        viewGroup.setTag(R.id.transition_current_scene, null);
        if (clone != null) {
            Cdo cdo = new Cdo(viewGroup, clone);
            viewGroup.addOnAttachStateChangeListener(cdo);
            viewGroup.getViewTreeObserver().addOnPreDrawListener(cdo);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static F2<ViewGroup, ArrayList<Transition>> m4666if() {
        F2<ViewGroup, ArrayList<Transition>> f2;
        ThreadLocal<WeakReference<F2<ViewGroup, ArrayList<Transition>>>> threadLocal = f7957do;
        WeakReference<F2<ViewGroup, ArrayList<Transition>>> weakReference = threadLocal.get();
        if (weakReference != null && (f2 = weakReference.get()) != null) {
            return f2;
        }
        F2<ViewGroup, ArrayList<Transition>> f22 = new F2<>();
        threadLocal.set(new WeakReference<>(f22));
        return f22;
    }
}
