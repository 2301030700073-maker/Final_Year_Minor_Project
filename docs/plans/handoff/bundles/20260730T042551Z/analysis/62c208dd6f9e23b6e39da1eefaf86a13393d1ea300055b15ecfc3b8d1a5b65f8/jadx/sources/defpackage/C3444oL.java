package defpackage;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: oL, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3444oL {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Interpolator f14764do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public InterfaceC3503pL f14767do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f14768do;

    /* renamed from: do, reason: not valid java name */
    public long f14763do = -1;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f14766do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<C3385nL> f14765do = new ArrayList<>();

    /* renamed from: oL$do, reason: invalid class name */
    public class Cdo extends C0820cd {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f14770do;

        /* renamed from: if, reason: not valid java name */
        public int f14771if;

        public Cdo() {
            super(1);
            this.f14770do = false;
            this.f14771if = 0;
        }

        @Override // defpackage.InterfaceC3503pL
        /* renamed from: do */
        public final void mo325do() {
            int i = this.f14771if + 1;
            this.f14771if = i;
            C3444oL c3444oL = C3444oL.this;
            if (i == c3444oL.f14765do.size()) {
                InterfaceC3503pL interfaceC3503pL = c3444oL.f14767do;
                if (interfaceC3503pL != null) {
                    interfaceC3503pL.mo325do();
                }
                this.f14771if = 0;
                this.f14770do = false;
                c3444oL.f14768do = false;
            }
        }

        @Override // defpackage.C0820cd, defpackage.InterfaceC3503pL
        /* renamed from: for */
        public final void mo326for() {
            if (this.f14770do) {
                return;
            }
            this.f14770do = true;
            InterfaceC3503pL interfaceC3503pL = C3444oL.this.f14767do;
            if (interfaceC3503pL != null) {
                interfaceC3503pL.mo326for();
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m7707do() {
        if (this.f14768do) {
            Iterator<C3385nL> it = this.f14765do.iterator();
            while (it.hasNext()) {
                it.next().m7565if();
            }
            this.f14768do = false;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m7708if() {
        View view;
        if (this.f14768do) {
            return;
        }
        Iterator<C3385nL> it = this.f14765do.iterator();
        while (it.hasNext()) {
            C3385nL next = it.next();
            long j = this.f14763do;
            if (j >= 0) {
                next.m7564for(j);
            }
            Interpolator interpolator = this.f14764do;
            if (interpolator != null && (view = next.f14510do.get()) != null) {
                view.animate().setInterpolator(interpolator);
            }
            if (this.f14767do != null) {
                next.m7566new(this.f14766do);
            }
            View view2 = next.f14510do.get();
            if (view2 != null) {
                view2.animate().start();
            }
        }
        this.f14768do = true;
    }
}
