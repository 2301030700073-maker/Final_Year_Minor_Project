package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* renamed from: androidx.recyclerview.widget.finally, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cfinally extends RecyclerView.Cfinal {

    /* renamed from: do, reason: not valid java name */
    public RecyclerView f7636do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f7637do = new Cdo();

    /* renamed from: androidx.recyclerview.widget.finally$do, reason: invalid class name */
    public class Cdo extends RecyclerView.Cthrow {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f7639do = false;

        public Cdo() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Cthrow
        /* renamed from: do */
        public final void mo4457do(int i, RecyclerView recyclerView) {
            if (i == 0 && this.f7639do) {
                this.f7639do = false;
                Cfinally.this.m4519new();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Cthrow
        /* renamed from: if */
        public final void mo4458if(RecyclerView recyclerView, int i, int i2) {
            if (i == 0 && i2 == 0) {
                return;
            }
            this.f7639do = true;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m4516do(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f7636do;
        if (recyclerView2 == recyclerView) {
            return;
        }
        Cdo cdo = this.f7637do;
        if (recyclerView2 != null) {
            ArrayList arrayList = recyclerView2.f7364try;
            if (arrayList != null) {
                arrayList.remove(cdo);
            }
            this.f7636do.f7314do = null;
        }
        this.f7636do = recyclerView;
        if (recyclerView != null) {
            if (recyclerView.f7314do != null) {
                throw new IllegalStateException("An instance of OnFlingListener already set.");
            }
            recyclerView.m4341break(cdo);
            this.f7636do.f7314do = this;
            new Scroller(this.f7636do.getContext(), new DecelerateInterpolator());
            m4519new();
        }
    }

    @SuppressLint({"UnknownNullness"})
    /* renamed from: for, reason: not valid java name */
    public abstract View mo4517for(RecyclerView.Cclass cclass);

    /* renamed from: if, reason: not valid java name */
    public abstract int[] mo4518if(RecyclerView.Cclass cclass, View view);

    /* renamed from: new, reason: not valid java name */
    public final void m4519new() {
        RecyclerView.Cclass cclass;
        View mo4517for;
        RecyclerView recyclerView = this.f7636do;
        if (recyclerView == null || (cclass = recyclerView.f7312do) == null || (mo4517for = mo4517for(cclass)) == null) {
            return;
        }
        int[] mo4518if = mo4518if(cclass, mo4517for);
        int i = mo4518if[0];
        if (i == 0 && mo4518if[1] == 0) {
            return;
        }
        this.f7636do.x(i, mo4518if[1], false);
    }
}
