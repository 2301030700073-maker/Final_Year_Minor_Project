package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentManager;
import com.joeykrim.rootcheck.R;
import defpackage.C3385nL;
import defpackage.NE;
import defpackage.QK;
import defpackage.V1;
import defpackage.V6;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.WeakHashMap;

/* renamed from: androidx.fragment.app.static, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cstatic {

    /* renamed from: do, reason: not valid java name */
    public final ViewGroup f7009do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<Cnew> f7010do = new ArrayList<>();

    /* renamed from: if, reason: not valid java name */
    public final ArrayList<Cnew> f7012if = new ArrayList<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f7011do = false;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f7013if = false;

    /* renamed from: androidx.fragment.app.static$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cfor f7014do;

        public Cdo(Cfor cfor) {
            this.f7014do = cfor;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ArrayList<Cnew> arrayList = Cstatic.this.f7010do;
            Cfor cfor = this.f7014do;
            if (arrayList.contains(cfor)) {
                ((Cnew) cfor).f7020do.m4202do(((Cnew) cfor).f7019do.mView);
            }
        }
    }

    /* renamed from: androidx.fragment.app.static$for, reason: invalid class name */
    public static class Cfor extends Cnew {

        /* renamed from: do, reason: not valid java name */
        public final Cwhile f7016do;

        public Cfor(Cnew.Cfor cfor, Cnew.Cif cif, Cwhile cwhile, V6 v6) {
            super(cfor, cif, cwhile.f7052do, v6);
            this.f7016do = cwhile;
        }

        @Override // androidx.fragment.app.Cstatic.Cnew
        /* renamed from: if, reason: not valid java name */
        public final void mo4196if() {
            super.mo4196if();
            this.f7016do.m4220break();
        }

        @Override // androidx.fragment.app.Cstatic.Cnew
        /* renamed from: new, reason: not valid java name */
        public final void mo4197new() {
            if (((Cnew) this).f7021do == Cnew.Cif.ADDING) {
                Cwhile cwhile = this.f7016do;
                Fragment fragment = cwhile.f7052do;
                View findFocus = fragment.mView.findFocus();
                if (findFocus != null) {
                    fragment.setFocusedView(findFocus);
                    if (FragmentManager.m4115interface(2)) {
                        findFocus.toString();
                        fragment.toString();
                    }
                }
                View requireView = ((Cnew) this).f7019do.requireView();
                if (requireView.getParent() == null) {
                    cwhile.m4225do();
                    requireView.setAlpha(0.0f);
                }
                if (requireView.getAlpha() == 0.0f && requireView.getVisibility() == 0) {
                    requireView.setVisibility(4);
                }
                requireView.setAlpha(fragment.getPostOnViewCreatedAlpha());
            }
        }
    }

    /* renamed from: androidx.fragment.app.static$if, reason: invalid class name */
    public class Cif implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cfor f7017do;

        public Cif(Cfor cfor) {
            this.f7017do = cfor;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Cstatic cstatic = Cstatic.this;
            ArrayList<Cnew> arrayList = cstatic.f7010do;
            Cfor cfor = this.f7017do;
            arrayList.remove(cfor);
            cstatic.f7012if.remove(cfor);
        }
    }

    /* renamed from: androidx.fragment.app.static$new, reason: invalid class name */
    public static class Cnew {

        /* renamed from: do, reason: not valid java name */
        public final Fragment f7019do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Cfor f7020do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Cif f7021do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ArrayList f7022do = new ArrayList();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final HashSet<V6> f7023do = new HashSet<>();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f7024do = false;

        /* renamed from: if, reason: not valid java name */
        public boolean f7025if = false;

        /* renamed from: androidx.fragment.app.static$new$do, reason: invalid class name */
        public class Cdo implements V6.Cdo {
            public Cdo() {
            }

            @Override // defpackage.V6.Cdo
            public final void onCancel() {
                Cnew.this.m4198do();
            }
        }

        /* renamed from: androidx.fragment.app.static$new$for, reason: invalid class name */
        public enum Cfor {
            REMOVED,
            VISIBLE,
            GONE,
            INVISIBLE;

            /* renamed from: case, reason: not valid java name */
            public static Cfor m4200case(int i) {
                if (i == 0) {
                    return VISIBLE;
                }
                if (i == 4) {
                    return INVISIBLE;
                }
                if (i == 8) {
                    return GONE;
                }
                throw new IllegalArgumentException(V1.m2494case("Unknown visibility ", i));
            }

            /* renamed from: goto, reason: not valid java name */
            public static Cfor m4201goto(View view) {
                return (view.getAlpha() == 0.0f && view.getVisibility() == 0) ? INVISIBLE : m4200case(view.getVisibility());
            }

            /* renamed from: do, reason: not valid java name */
            public final void m4202do(View view) {
                int ordinal = ordinal();
                if (ordinal == 0) {
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (viewGroup != null) {
                        if (FragmentManager.m4115interface(2)) {
                            view.toString();
                            viewGroup.toString();
                        }
                        viewGroup.removeView(view);
                        return;
                    }
                    return;
                }
                if (ordinal == 1) {
                    if (FragmentManager.m4115interface(2)) {
                        Objects.toString(view);
                    }
                    view.setVisibility(0);
                } else if (ordinal == 2) {
                    if (FragmentManager.m4115interface(2)) {
                        Objects.toString(view);
                    }
                    view.setVisibility(8);
                } else {
                    if (ordinal != 3) {
                        return;
                    }
                    if (FragmentManager.m4115interface(2)) {
                        Objects.toString(view);
                    }
                    view.setVisibility(4);
                }
            }
        }

        /* renamed from: androidx.fragment.app.static$new$if, reason: invalid class name */
        public enum Cif {
            NONE,
            ADDING,
            REMOVING
        }

        public Cnew(Cfor cfor, Cif cif, Fragment fragment, V6 v6) {
            this.f7020do = cfor;
            this.f7021do = cif;
            this.f7019do = fragment;
            v6.m2543if(new Cdo());
        }

        /* renamed from: do, reason: not valid java name */
        public final void m4198do() {
            if (this.f7024do) {
                return;
            }
            this.f7024do = true;
            HashSet<V6> hashSet = this.f7023do;
            if (hashSet.isEmpty()) {
                mo4196if();
                return;
            }
            Iterator it = new ArrayList(hashSet).iterator();
            while (it.hasNext()) {
                ((V6) it.next()).m2542do();
            }
        }

        /* renamed from: for, reason: not valid java name */
        public final void m4199for(Cfor cfor, Cif cif) {
            int ordinal = cif.ordinal();
            Cfor cfor2 = Cfor.REMOVED;
            Fragment fragment = this.f7019do;
            if (ordinal == 0) {
                if (this.f7020do != cfor2) {
                    if (FragmentManager.m4115interface(2)) {
                        Objects.toString(fragment);
                        Objects.toString(this.f7020do);
                        Objects.toString(cfor);
                    }
                    this.f7020do = cfor;
                    return;
                }
                return;
            }
            if (ordinal == 1) {
                if (this.f7020do == cfor2) {
                    if (FragmentManager.m4115interface(2)) {
                        Objects.toString(fragment);
                        Objects.toString(this.f7021do);
                    }
                    this.f7020do = Cfor.VISIBLE;
                    this.f7021do = Cif.ADDING;
                    return;
                }
                return;
            }
            if (ordinal != 2) {
                return;
            }
            if (FragmentManager.m4115interface(2)) {
                Objects.toString(fragment);
                Objects.toString(this.f7020do);
                Objects.toString(this.f7021do);
            }
            this.f7020do = cfor2;
            this.f7021do = Cif.REMOVING;
        }

        /* renamed from: if */
        public void mo4196if() {
            if (this.f7025if) {
                return;
            }
            if (FragmentManager.m4115interface(2)) {
                toString();
            }
            this.f7025if = true;
            Iterator it = this.f7022do.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
        }

        /* renamed from: new */
        public void mo4197new() {
        }

        public final String toString() {
            return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {mFinalState = " + this.f7020do + "} {mLifecycleImpact = " + this.f7021do + "} {mFragment = " + this.f7019do + "}";
        }
    }

    public Cstatic(ViewGroup viewGroup) {
        this.f7009do = viewGroup;
    }

    /* renamed from: case, reason: not valid java name */
    public static Cstatic m4188case(ViewGroup viewGroup, NE ne) {
        Object tag = viewGroup.getTag(R.id.special_effects_controller_view_tag);
        if (tag instanceof Cstatic) {
            return (Cstatic) tag;
        }
        ((FragmentManager.Ccase) ne).getClass();
        Cbreak cbreak = new Cbreak(viewGroup);
        viewGroup.setTag(R.id.special_effects_controller_view_tag, cbreak);
        return cbreak;
    }

    /* renamed from: else, reason: not valid java name */
    public static Cstatic m4189else(ViewGroup viewGroup, FragmentManager fragmentManager) {
        return m4188case(viewGroup, fragmentManager.m4152volatile());
    }

    /* renamed from: do, reason: not valid java name */
    public final void m4190do(Cnew.Cfor cfor, Cnew.Cif cif, Cwhile cwhile) {
        synchronized (this.f7010do) {
            V6 v6 = new V6();
            Cnew m4193new = m4193new(cwhile.f7052do);
            if (m4193new != null) {
                m4193new.m4199for(cfor, cif);
                return;
            }
            Cfor cfor2 = new Cfor(cfor, cif, cwhile, v6);
            this.f7010do.add(cfor2);
            ((Cnew) cfor2).f7022do.add(new Cdo(cfor2));
            ((Cnew) cfor2).f7022do.add(new Cif(cfor2));
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m4191for() {
        if (this.f7013if) {
            return;
        }
        ViewGroup viewGroup = this.f7009do;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        if (!viewGroup.isAttachedToWindow()) {
            m4195try();
            this.f7011do = false;
            return;
        }
        synchronized (this.f7010do) {
            if (!this.f7010do.isEmpty()) {
                ArrayList arrayList = new ArrayList(this.f7012if);
                this.f7012if.clear();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Cnew cnew = (Cnew) it.next();
                    if (FragmentManager.m4115interface(2)) {
                        Objects.toString(cnew);
                    }
                    cnew.m4198do();
                    if (!cnew.f7025if) {
                        this.f7012if.add(cnew);
                    }
                }
                m4194this();
                ArrayList arrayList2 = new ArrayList(this.f7010do);
                this.f7010do.clear();
                this.f7012if.addAll(arrayList2);
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    ((Cnew) it2.next()).mo4197new();
                }
                mo4159if(arrayList2, this.f7011do);
                this.f7011do = false;
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m4192goto() {
        synchronized (this.f7010do) {
            m4194this();
            this.f7013if = false;
            int size = this.f7010do.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                Cnew cnew = this.f7010do.get(size);
                Cnew.Cfor m4201goto = Cnew.Cfor.m4201goto(cnew.f7019do.mView);
                Cnew.Cfor cfor = cnew.f7020do;
                Cnew.Cfor cfor2 = Cnew.Cfor.VISIBLE;
                if (cfor == cfor2 && m4201goto != cfor2) {
                    this.f7013if = cnew.f7019do.isPostponed();
                    break;
                }
                size--;
            }
        }
    }

    /* renamed from: if */
    public abstract void mo4159if(ArrayList arrayList, boolean z);

    /* renamed from: new, reason: not valid java name */
    public final Cnew m4193new(Fragment fragment) {
        Iterator<Cnew> it = this.f7010do.iterator();
        while (it.hasNext()) {
            Cnew next = it.next();
            if (next.f7019do.equals(fragment) && !next.f7024do) {
                return next;
            }
        }
        return null;
    }

    /* renamed from: this, reason: not valid java name */
    public final void m4194this() {
        Iterator<Cnew> it = this.f7010do.iterator();
        while (it.hasNext()) {
            Cnew next = it.next();
            if (next.f7021do == Cnew.Cif.ADDING) {
                next.m4199for(Cnew.Cfor.m4200case(next.f7019do.requireView().getVisibility()), Cnew.Cif.NONE);
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final void m4195try() {
        ViewGroup viewGroup = this.f7009do;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        boolean isAttachedToWindow = viewGroup.isAttachedToWindow();
        synchronized (this.f7010do) {
            m4194this();
            Iterator<Cnew> it = this.f7010do.iterator();
            while (it.hasNext()) {
                it.next().mo4197new();
            }
            Iterator it2 = new ArrayList(this.f7012if).iterator();
            while (it2.hasNext()) {
                Cnew cnew = (Cnew) it2.next();
                if (FragmentManager.m4115interface(2)) {
                    if (!isAttachedToWindow) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Container ");
                        sb.append(this.f7009do);
                        sb.append(" is not attached to window. ");
                    }
                    Objects.toString(cnew);
                }
                cnew.m4198do();
            }
            Iterator it3 = new ArrayList(this.f7010do).iterator();
            while (it3.hasNext()) {
                Cnew cnew2 = (Cnew) it3.next();
                if (FragmentManager.m4115interface(2)) {
                    if (!isAttachedToWindow) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Container ");
                        sb2.append(this.f7009do);
                        sb2.append(" is not attached to window. ");
                    }
                    Objects.toString(cnew2);
                }
                cnew2.m4198do();
            }
        }
    }
}
