package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.A;
import defpackage.C3893w;
import defpackage.Cimplements;
import java.util.WeakHashMap;

/* renamed from: androidx.recyclerview.widget.throws, reason: invalid class name */
/* loaded from: classes.dex */
public class Cthrows extends Cimplements {

    /* renamed from: do, reason: not valid java name */
    public final RecyclerView f7691do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f7692do;

    /* renamed from: androidx.recyclerview.widget.throws$do, reason: invalid class name */
    public static class Cdo extends Cimplements {

        /* renamed from: do, reason: not valid java name */
        public final Cthrows f7693do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final WeakHashMap f7694do = new WeakHashMap();

        public Cdo(Cthrows cthrows) {
            this.f7693do = cthrows;
        }

        @Override // defpackage.Cimplements
        /* renamed from: case */
        public final boolean mo4079case(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            Cimplements cimplements = (Cimplements) this.f7694do.get(viewGroup);
            return cimplements != null ? cimplements.mo4079case(viewGroup, view, accessibilityEvent) : super.mo4079case(viewGroup, view, accessibilityEvent);
        }

        @Override // defpackage.Cimplements
        /* renamed from: do */
        public final boolean mo4080do(View view, AccessibilityEvent accessibilityEvent) {
            Cimplements cimplements = (Cimplements) this.f7694do.get(view);
            return cimplements != null ? cimplements.mo4080do(view, accessibilityEvent) : super.mo4080do(view, accessibilityEvent);
        }

        @Override // defpackage.Cimplements
        /* renamed from: else */
        public final boolean mo3759else(@SuppressLint({"InvalidNullabilityOverride"}) View view, int i, @SuppressLint({"InvalidNullabilityOverride"}) Bundle bundle) {
            Cthrows cthrows = this.f7693do;
            RecyclerView recyclerView = cthrows.f7691do;
            if (!(!recyclerView.f7356new || recyclerView.f7361this || recyclerView.f7327do.m4508else())) {
                RecyclerView recyclerView2 = cthrows.f7691do;
                if (recyclerView2.f7312do != null) {
                    Cimplements cimplements = (Cimplements) this.f7694do.get(view);
                    if (cimplements != null) {
                        if (cimplements.mo3759else(view, i, bundle)) {
                            return true;
                        }
                    } else if (super.mo3759else(view, i, bundle)) {
                        return true;
                    }
                    RecyclerView.Cimport cimport = recyclerView2.f7312do.f7375do.f7316do;
                    return false;
                }
            }
            return super.mo3759else(view, i, bundle);
        }

        @Override // defpackage.Cimplements
        /* renamed from: for */
        public final void mo2847for(View view, AccessibilityEvent accessibilityEvent) {
            Cimplements cimplements = (Cimplements) this.f7694do.get(view);
            if (cimplements != null) {
                cimplements.mo2847for(view, accessibilityEvent);
            } else {
                super.mo2847for(view, accessibilityEvent);
            }
        }

        @Override // defpackage.Cimplements
        /* renamed from: goto, reason: not valid java name */
        public final void mo4577goto(View view, int i) {
            Cimplements cimplements = (Cimplements) this.f7694do.get(view);
            if (cimplements != null) {
                cimplements.mo4577goto(view, i);
            } else {
                super.mo4577goto(view, i);
            }
        }

        @Override // defpackage.Cimplements
        /* renamed from: if */
        public final A mo2848if(View view) {
            Cimplements cimplements = (Cimplements) this.f7694do.get(view);
            return cimplements != null ? cimplements.mo2848if(view) : super.mo2848if(view);
        }

        @Override // defpackage.Cimplements
        /* renamed from: new */
        public final void mo1356new(@SuppressLint({"InvalidNullabilityOverride"}) View view, @SuppressLint({"InvalidNullabilityOverride"}) C3893w c3893w) {
            RecyclerView.Cclass cclass;
            Cthrows cthrows = this.f7693do;
            RecyclerView recyclerView = cthrows.f7691do;
            boolean z = !recyclerView.f7356new || recyclerView.f7361this || recyclerView.f7327do.m4508else();
            AccessibilityNodeInfo accessibilityNodeInfo = c3893w.f16161do;
            View.AccessibilityDelegate accessibilityDelegate = ((Cimplements) this).f13562do;
            if (z || (cclass = cthrows.f7691do.f7312do) == null) {
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                return;
            }
            cclass.o(view, c3893w);
            Cimplements cimplements = (Cimplements) this.f7694do.get(view);
            if (cimplements != null) {
                cimplements.mo1356new(view, c3893w);
            } else {
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            }
        }

        @Override // defpackage.Cimplements
        /* renamed from: this, reason: not valid java name */
        public final void mo4578this(View view, AccessibilityEvent accessibilityEvent) {
            Cimplements cimplements = (Cimplements) this.f7694do.get(view);
            if (cimplements != null) {
                cimplements.mo4578this(view, accessibilityEvent);
            } else {
                super.mo4578this(view, accessibilityEvent);
            }
        }

        @Override // defpackage.Cimplements
        /* renamed from: try, reason: not valid java name */
        public final void mo4579try(View view, AccessibilityEvent accessibilityEvent) {
            Cimplements cimplements = (Cimplements) this.f7694do.get(view);
            if (cimplements != null) {
                cimplements.mo4579try(view, accessibilityEvent);
            } else {
                super.mo4579try(view, accessibilityEvent);
            }
        }
    }

    public Cthrows(RecyclerView recyclerView) {
        this.f7691do = recyclerView;
        Cdo cdo = this.f7692do;
        if (cdo != null) {
            this.f7692do = cdo;
        } else {
            this.f7692do = new Cdo(this);
        }
    }

    @Override // defpackage.Cimplements
    /* renamed from: else */
    public final boolean mo3759else(@SuppressLint({"InvalidNullabilityOverride"}) View view, int i, @SuppressLint({"InvalidNullabilityOverride"}) Bundle bundle) {
        RecyclerView.Cclass cclass;
        boolean z = true;
        if (super.mo3759else(view, i, bundle)) {
            return true;
        }
        RecyclerView recyclerView = this.f7691do;
        if (recyclerView.f7356new && !recyclerView.f7361this && !recyclerView.f7327do.m4508else()) {
            z = false;
        }
        if (z || (cclass = recyclerView.f7312do) == null) {
            return false;
        }
        RecyclerView recyclerView2 = cclass.f7375do;
        return cclass.A(recyclerView2.f7316do, recyclerView2.f7319do, i, bundle);
    }

    @Override // defpackage.Cimplements
    /* renamed from: for */
    public final void mo2847for(@SuppressLint({"InvalidNullabilityOverride"}) View view, @SuppressLint({"InvalidNullabilityOverride"}) AccessibilityEvent accessibilityEvent) {
        RecyclerView.Cclass cclass;
        super.mo2847for(view, accessibilityEvent);
        if (view instanceof RecyclerView) {
            RecyclerView recyclerView = this.f7691do;
            if ((!recyclerView.f7356new || recyclerView.f7361this || recyclerView.f7327do.m4508else()) || (cclass = ((RecyclerView) view).f7312do) == null) {
                return;
            }
            cclass.m(accessibilityEvent);
        }
    }

    @Override // defpackage.Cimplements
    /* renamed from: new */
    public void mo1356new(@SuppressLint({"InvalidNullabilityOverride"}) View view, @SuppressLint({"InvalidNullabilityOverride"}) C3893w c3893w) {
        RecyclerView.Cclass cclass;
        ((Cimplements) this).f13562do.onInitializeAccessibilityNodeInfo(view, c3893w.f16161do);
        RecyclerView recyclerView = this.f7691do;
        if ((!recyclerView.f7356new || recyclerView.f7361this || recyclerView.f7327do.m4508else()) || (cclass = recyclerView.f7312do) == null) {
            return;
        }
        RecyclerView recyclerView2 = cclass.f7375do;
        cclass.n(recyclerView2.f7316do, recyclerView2.f7319do, c3893w);
    }
}
