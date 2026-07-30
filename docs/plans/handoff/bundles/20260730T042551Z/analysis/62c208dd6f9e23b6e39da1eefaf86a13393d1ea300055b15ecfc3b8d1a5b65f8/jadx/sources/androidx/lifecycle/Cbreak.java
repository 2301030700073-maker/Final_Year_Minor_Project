package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.os.Handler;
import androidx.lifecycle.Cclass;
import androidx.lifecycle.Ctry;
import defpackage.C0173Do;
import defpackage.InterfaceC2714eq;
import defpackage.RunnableC2852h9;

/* renamed from: androidx.lifecycle.break, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cbreak implements InterfaceC2714eq {

    /* renamed from: do, reason: not valid java name */
    public static final Cbreak f7089do = new Cbreak();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Handler f7090do;

    /* renamed from: for, reason: not valid java name */
    public int f7095for;

    /* renamed from: new, reason: not valid java name */
    public int f7097new;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f7094do = true;

    /* renamed from: if, reason: not valid java name */
    public boolean f7096if = true;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cgoto f7092do = new Cgoto(this);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RunnableC2852h9 f7093do = new RunnableC2852h9(this, 2);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f7091do = new Cif();

    /* renamed from: androidx.lifecycle.break$do, reason: invalid class name */
    public static final class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static final void m4246do(Activity activity, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
            C0173Do.m401try(activity, "activity");
            C0173Do.m401try(activityLifecycleCallbacks, "callback");
            activity.registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
        }
    }

    /* renamed from: androidx.lifecycle.break$if, reason: invalid class name */
    public static final class Cif implements Cclass.Cdo {
        public Cif() {
        }

        @Override // androidx.lifecycle.Cclass.Cdo
        public final void onCreate() {
        }

        @Override // androidx.lifecycle.Cclass.Cdo
        public final void onResume() {
            Cbreak.this.m4245do();
        }

        @Override // androidx.lifecycle.Cclass.Cdo
        public final void onStart() {
            Cbreak cbreak = Cbreak.this;
            int i = cbreak.f7095for + 1;
            cbreak.f7095for = i;
            if (i == 1 && cbreak.f7096if) {
                cbreak.f7092do.m4258case(Ctry.Cdo.ON_START);
                cbreak.f7096if = false;
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m4245do() {
        int i = this.f7097new + 1;
        this.f7097new = i;
        if (i == 1) {
            if (this.f7094do) {
                this.f7092do.m4258case(Ctry.Cdo.ON_RESUME);
                this.f7094do = false;
            } else {
                Handler handler = this.f7090do;
                C0173Do.m398if(handler);
                handler.removeCallbacks(this.f7093do);
            }
        }
    }

    @Override // defpackage.InterfaceC2714eq
    public final Ctry getLifecycle() {
        return this.f7092do;
    }
}
