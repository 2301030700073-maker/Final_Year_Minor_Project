package androidx.fragment.app;

import android.content.Context;
import androidx.fragment.app.FragmentManager;
import defpackage.C0278Ij;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* renamed from: androidx.fragment.app.super, reason: invalid class name */
/* loaded from: classes.dex */
public final class Csuper {

    /* renamed from: do, reason: not valid java name */
    public final FragmentManager f7036do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CopyOnWriteArrayList<Cdo> f7037do = new CopyOnWriteArrayList<>();

    /* renamed from: androidx.fragment.app.super$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final FragmentManager.Ccatch f7038do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f7039do = true;

        public Cdo(C0278Ij c0278Ij) {
            this.f7038do = c0278Ij;
        }
    }

    public Csuper(FragmentManager fragmentManager) {
        this.f7036do = fragmentManager;
    }

    /* renamed from: break, reason: not valid java name */
    public final void m4203break(boolean z) {
        Fragment fragment = this.f7036do.f6862do;
        if (fragment != null) {
            fragment.getParentFragmentManager().f6869do.m4203break(true);
        }
        Iterator<Cdo> it = this.f7037do.iterator();
        while (it.hasNext()) {
            Cdo next = it.next();
            if (!z || next.f7039do) {
                next.f7038do.getClass();
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final void m4204case(Fragment fragment, boolean z) {
        Fragment fragment2 = this.f7036do.f6862do;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f6869do.m4204case(fragment, true);
        }
        Iterator<Cdo> it = this.f7037do.iterator();
        while (it.hasNext()) {
            Cdo next = it.next();
            if (!z || next.f7039do) {
                next.f7038do.mo962do(fragment);
            }
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m4205catch(boolean z) {
        Fragment fragment = this.f7036do.f6862do;
        if (fragment != null) {
            fragment.getParentFragmentManager().f6869do.m4205catch(true);
        }
        Iterator<Cdo> it = this.f7037do.iterator();
        while (it.hasNext()) {
            Cdo next = it.next();
            if (!z || next.f7039do) {
                next.f7038do.getClass();
            }
        }
    }

    /* renamed from: class, reason: not valid java name */
    public final void m4206class(boolean z) {
        Fragment fragment = this.f7036do.f6862do;
        if (fragment != null) {
            fragment.getParentFragmentManager().f6869do.m4206class(true);
        }
        Iterator<Cdo> it = this.f7037do.iterator();
        while (it.hasNext()) {
            Cdo next = it.next();
            if (!z || next.f7039do) {
                next.f7038do.getClass();
            }
        }
    }

    /* renamed from: const, reason: not valid java name */
    public final void m4207const(boolean z) {
        Fragment fragment = this.f7036do.f6862do;
        if (fragment != null) {
            fragment.getParentFragmentManager().f6869do.m4207const(true);
        }
        Iterator<Cdo> it = this.f7037do.iterator();
        while (it.hasNext()) {
            Cdo next = it.next();
            if (!z || next.f7039do) {
                next.f7038do.getClass();
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m4208do(boolean z) {
        Fragment fragment = this.f7036do.f6862do;
        if (fragment != null) {
            fragment.getParentFragmentManager().f6869do.m4208do(true);
        }
        Iterator<Cdo> it = this.f7037do.iterator();
        while (it.hasNext()) {
            Cdo next = it.next();
            if (!z || next.f7039do) {
                next.f7038do.getClass();
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final void m4209else(boolean z) {
        FragmentManager fragmentManager = this.f7036do;
        Context context = fragmentManager.f6860do.f881do;
        Fragment fragment = fragmentManager.f6862do;
        if (fragment != null) {
            fragment.getParentFragmentManager().f6869do.m4209else(true);
        }
        Iterator<Cdo> it = this.f7037do.iterator();
        while (it.hasNext()) {
            Cdo next = it.next();
            if (!z || next.f7039do) {
                next.f7038do.getClass();
            }
        }
    }

    /* renamed from: final, reason: not valid java name */
    public final void m4210final(boolean z) {
        Fragment fragment = this.f7036do.f6862do;
        if (fragment != null) {
            fragment.getParentFragmentManager().f6869do.m4210final(true);
        }
        Iterator<Cdo> it = this.f7037do.iterator();
        while (it.hasNext()) {
            Cdo next = it.next();
            if (!z || next.f7039do) {
                next.f7038do.getClass();
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m4211for(boolean z) {
        Fragment fragment = this.f7036do.f6862do;
        if (fragment != null) {
            fragment.getParentFragmentManager().f6869do.m4211for(true);
        }
        Iterator<Cdo> it = this.f7037do.iterator();
        while (it.hasNext()) {
            Cdo next = it.next();
            if (!z || next.f7039do) {
                next.f7038do.getClass();
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m4212goto(boolean z) {
        Fragment fragment = this.f7036do.f6862do;
        if (fragment != null) {
            fragment.getParentFragmentManager().f6869do.m4212goto(true);
        }
        Iterator<Cdo> it = this.f7037do.iterator();
        while (it.hasNext()) {
            Cdo next = it.next();
            if (!z || next.f7039do) {
                next.f7038do.getClass();
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m4213if(boolean z) {
        FragmentManager fragmentManager = this.f7036do;
        Context context = fragmentManager.f6860do.f881do;
        Fragment fragment = fragmentManager.f6862do;
        if (fragment != null) {
            fragment.getParentFragmentManager().f6869do.m4213if(true);
        }
        Iterator<Cdo> it = this.f7037do.iterator();
        while (it.hasNext()) {
            Cdo next = it.next();
            if (!z || next.f7039do) {
                next.f7038do.getClass();
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final void m4214new(boolean z) {
        Fragment fragment = this.f7036do.f6862do;
        if (fragment != null) {
            fragment.getParentFragmentManager().f6869do.m4214new(true);
        }
        Iterator<Cdo> it = this.f7037do.iterator();
        while (it.hasNext()) {
            Cdo next = it.next();
            if (!z || next.f7039do) {
                next.f7038do.getClass();
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final void m4215this(Fragment fragment, boolean z) {
        Fragment fragment2 = this.f7036do.f6862do;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().f6869do.m4215this(fragment, true);
        }
        Iterator<Cdo> it = this.f7037do.iterator();
        while (it.hasNext()) {
            Cdo next = it.next();
            if (!z || next.f7039do) {
                next.f7038do.mo963if(fragment);
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final void m4216try(boolean z) {
        Fragment fragment = this.f7036do.f6862do;
        if (fragment != null) {
            fragment.getParentFragmentManager().f6869do.m4216try(true);
        }
        Iterator<Cdo> it = this.f7037do.iterator();
        while (it.hasNext()) {
            Cdo next = it.next();
            if (!z || next.f7039do) {
                next.f7038do.getClass();
            }
        }
    }
}
