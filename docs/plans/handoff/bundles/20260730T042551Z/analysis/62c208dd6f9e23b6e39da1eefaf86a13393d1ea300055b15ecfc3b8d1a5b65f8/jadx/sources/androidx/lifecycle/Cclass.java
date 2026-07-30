package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Build;
import android.os.Bundle;
import androidx.lifecycle.Ctry;
import defpackage.C0173Do;
import defpackage.InterfaceC2714eq;
import defpackage.InterfaceC2773fq;

/* renamed from: androidx.lifecycle.class, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cclass extends Fragment {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f7100for = 0;

    /* renamed from: do, reason: not valid java name */
    public Cdo f7101do;

    /* renamed from: androidx.lifecycle.class$do, reason: invalid class name */
    public interface Cdo {
        void onCreate();

        void onResume();

        void onStart();
    }

    /* renamed from: androidx.lifecycle.class$for, reason: invalid class name */
    public static final class Cfor implements Application.ActivityLifecycleCallbacks {
        public static final Cdo Companion = new Cdo();

        /* renamed from: androidx.lifecycle.class$for$do, reason: invalid class name */
        public static final class Cdo {
        }

        public static final void registerIn(Activity activity) {
            Companion.getClass();
            C0173Do.m401try(activity, "activity");
            activity.registerActivityLifecycleCallbacks(new Cfor());
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            C0173Do.m401try(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            C0173Do.m401try(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            C0173Do.m401try(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostCreated(Activity activity, Bundle bundle) {
            C0173Do.m401try(activity, "activity");
            int i = Cclass.f7100for;
            Cif.m4248do(activity, Ctry.Cdo.ON_CREATE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            C0173Do.m401try(activity, "activity");
            int i = Cclass.f7100for;
            Cif.m4248do(activity, Ctry.Cdo.ON_RESUME);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            C0173Do.m401try(activity, "activity");
            int i = Cclass.f7100for;
            Cif.m4248do(activity, Ctry.Cdo.ON_START);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreDestroyed(Activity activity) {
            C0173Do.m401try(activity, "activity");
            int i = Cclass.f7100for;
            Cif.m4248do(activity, Ctry.Cdo.ON_DESTROY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPrePaused(Activity activity) {
            C0173Do.m401try(activity, "activity");
            int i = Cclass.f7100for;
            Cif.m4248do(activity, Ctry.Cdo.ON_PAUSE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreStopped(Activity activity) {
            C0173Do.m401try(activity, "activity");
            int i = Cclass.f7100for;
            Cif.m4248do(activity, Ctry.Cdo.ON_STOP);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            C0173Do.m401try(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            C0173Do.m401try(activity, "activity");
            C0173Do.m401try(bundle, "bundle");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            C0173Do.m401try(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            C0173Do.m401try(activity, "activity");
        }
    }

    /* renamed from: androidx.lifecycle.class$if, reason: invalid class name */
    public static final class Cif {
        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: do, reason: not valid java name */
        public static void m4248do(Activity activity, Ctry.Cdo cdo) {
            C0173Do.m401try(activity, "activity");
            C0173Do.m401try(cdo, "event");
            if (activity instanceof InterfaceC2773fq) {
                ((InterfaceC2773fq) activity).m6681if().m4258case(cdo);
            } else if (activity instanceof InterfaceC2714eq) {
                Ctry lifecycle = ((InterfaceC2714eq) activity).getLifecycle();
                if (lifecycle instanceof Cgoto) {
                    ((Cgoto) lifecycle).m4258case(cdo);
                }
            }
        }

        /* renamed from: if, reason: not valid java name */
        public static void m4249if(Activity activity) {
            C0173Do.m401try(activity, "activity");
            if (Build.VERSION.SDK_INT >= 29) {
                Cfor.Companion.getClass();
                activity.registerActivityLifecycleCallbacks(new Cfor());
            }
            FragmentManager fragmentManager = activity.getFragmentManager();
            if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
                fragmentManager.beginTransaction().add(new Cclass(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
                fragmentManager.executePendingTransactions();
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m4247do(Ctry.Cdo cdo) {
        if (Build.VERSION.SDK_INT < 29) {
            Activity activity = getActivity();
            C0173Do.m399new(activity, "activity");
            Cif.m4248do(activity, cdo);
        }
    }

    @Override // android.app.Fragment
    public final void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        Cdo cdo = this.f7101do;
        if (cdo != null) {
            cdo.onCreate();
        }
        m4247do(Ctry.Cdo.ON_CREATE);
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        m4247do(Ctry.Cdo.ON_DESTROY);
        this.f7101do = null;
    }

    @Override // android.app.Fragment
    public final void onPause() {
        super.onPause();
        m4247do(Ctry.Cdo.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        Cdo cdo = this.f7101do;
        if (cdo != null) {
            cdo.onResume();
        }
        m4247do(Ctry.Cdo.ON_RESUME);
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        Cdo cdo = this.f7101do;
        if (cdo != null) {
            cdo.onStart();
        }
        m4247do(Ctry.Cdo.ON_START);
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        m4247do(Ctry.Cdo.ON_STOP);
    }
}
