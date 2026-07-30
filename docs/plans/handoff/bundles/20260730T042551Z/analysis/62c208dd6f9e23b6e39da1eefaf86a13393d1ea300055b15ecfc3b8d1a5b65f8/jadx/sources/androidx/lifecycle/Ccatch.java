package androidx.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.lifecycle.Cbreak;
import androidx.lifecycle.Ctry;
import defpackage.C0173Do;
import defpackage.C0383Nf;

/* renamed from: androidx.lifecycle.catch, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ccatch extends C0383Nf {
    final /* synthetic */ Cbreak this$0;

    /* renamed from: androidx.lifecycle.catch$do, reason: invalid class name */
    public static final class Cdo extends C0383Nf {
        final /* synthetic */ Cbreak this$0;

        public Cdo(Cbreak cbreak) {
            this.this$0 = cbreak;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            C0173Do.m401try(activity, "activity");
            this.this$0.m4245do();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            C0173Do.m401try(activity, "activity");
            Cbreak cbreak = this.this$0;
            int i = cbreak.f7095for + 1;
            cbreak.f7095for = i;
            if (i == 1 && cbreak.f7096if) {
                cbreak.f7092do.m4258case(Ctry.Cdo.ON_START);
                cbreak.f7096if = false;
            }
        }
    }

    public Ccatch(Cbreak cbreak) {
        this.this$0 = cbreak;
    }

    @Override // defpackage.C0383Nf, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        C0173Do.m401try(activity, "activity");
        if (Build.VERSION.SDK_INT < 29) {
            int i = Cclass.f7100for;
            Fragment findFragmentByTag = activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag");
            C0173Do.m396for(findFragmentByTag, "null cannot be cast to non-null type androidx.lifecycle.ReportFragment");
            ((Cclass) findFragmentByTag).f7101do = this.this$0.f7091do;
        }
    }

    @Override // defpackage.C0383Nf, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        C0173Do.m401try(activity, "activity");
        Cbreak cbreak = this.this$0;
        int i = cbreak.f7097new - 1;
        cbreak.f7097new = i;
        if (i == 0) {
            Handler handler = cbreak.f7090do;
            C0173Do.m398if(handler);
            handler.postDelayed(cbreak.f7093do, 700L);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreCreated(Activity activity, Bundle bundle) {
        C0173Do.m401try(activity, "activity");
        Cbreak.Cdo.m4246do(activity, new Cdo(this.this$0));
    }

    @Override // defpackage.C0383Nf, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        C0173Do.m401try(activity, "activity");
        Cbreak cbreak = this.this$0;
        int i = cbreak.f7095for - 1;
        cbreak.f7095for = i;
        if (i == 0 && cbreak.f7094do) {
            cbreak.f7092do.m4258case(Ctry.Cdo.ON_STOP);
            cbreak.f7096if = true;
        }
    }
}
