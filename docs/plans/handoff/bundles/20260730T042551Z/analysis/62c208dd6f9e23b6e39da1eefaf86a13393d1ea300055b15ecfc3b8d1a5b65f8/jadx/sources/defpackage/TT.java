package defpackage;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.internal.FacebookRequestErrorClassification;

/* loaded from: classes3.dex */
public final class TT implements Application.ActivityLifecycleCallbacks {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C4041yT f3714do;

    public TT(C4041yT c4041yT) {
        this.f3714do = c4041yT;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        C4041yT c4041yT = this.f3714do;
        try {
            c4041yT.mo2249case().f13723this.m7369if("onActivityCreated");
            Intent intent = activity.getIntent();
            if (intent == null) {
                return;
            }
            Uri data = intent.getData();
            if (data == null || !data.isHierarchical()) {
                Bundle extras = intent.getExtras();
                if (extras != null) {
                    String string = extras.getString("com.android.vending.referral_url");
                    if (!TextUtils.isEmpty(string)) {
                        data = Uri.parse(string);
                    }
                }
                data = null;
            }
            Uri uri = data;
            if (uri != null && uri.isHierarchical()) {
                c4041yT.m7571break();
                c4041yT.mo2253do().m1964public(new RunnableC3804uS(this, bundle == null, uri, C3395nV.f(intent) ? "gs" : "auto", uri.getQueryParameter("referrer")));
            }
        } catch (RuntimeException e) {
            c4041yT.mo2249case().f13717do.m7368for("Throwable caught in onActivityCreated", e);
        } finally {
            c4041yT.m8799super().m6460switch(activity, bundle);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        C2638dU m8799super = this.f3714do.m8799super();
        synchronized (m8799super.f12499if) {
            if (activity == m8799super.f12493do) {
                m8799super.f12493do = null;
            }
        }
        if (m8799super.m7572else().m3000finally()) {
            m8799super.f12495do.remove(Integer.valueOf(activity.hashCode()));
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        int i;
        C2638dU m8799super = this.f3714do.m8799super();
        synchronized (m8799super.f12499if) {
            m8799super.f12497for = false;
            i = 1;
            m8799super.f12500if = true;
        }
        long elapsedRealtime = m8799super.mo2257new().elapsedRealtime();
        if (m8799super.m7572else().m3000finally()) {
            C2696eU m6457finally = m8799super.m6457finally(activity);
            m8799super.f12498if = m8799super.f12494do;
            m8799super.f12494do = null;
            m8799super.mo2253do().m1964public(new RunnableC3158jU(m8799super, m6457finally, elapsedRealtime));
        } else {
            m8799super.f12494do = null;
            m8799super.mo2253do().m1964public(new LT(m8799super, elapsedRealtime, i));
        }
        LU m8801while = this.f3714do.m8801while();
        m8801while.mo2253do().m1964public(new LT(m8801while, m8801while.mo2257new().elapsedRealtime(), 2));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        LU m8801while = this.f3714do.m8801while();
        m8801while.mo2253do().m1964public(new NU(m8801while, m8801while.mo2257new().elapsedRealtime()));
        C2638dU m8799super = this.f3714do.m8799super();
        synchronized (m8799super.f12499if) {
            m8799super.f12497for = true;
            int i = 0;
            if (activity != m8799super.f12493do) {
                synchronized (m8799super.f12499if) {
                    m8799super.f12493do = activity;
                    m8799super.f12500if = false;
                }
                if (m8799super.m7572else().m3000finally()) {
                    m8799super.f12501new = null;
                    m8799super.mo2253do().m1964public(new RunnableC2932iU(m8799super, i));
                }
            }
        }
        if (!m8799super.m7572else().m3000finally()) {
            m8799super.f12494do = m8799super.f12501new;
            m8799super.mo2253do().m1964public(new RunnableC2873hU(m8799super));
        } else {
            m8799super.m6461throws(activity, m8799super.m6457finally(activity), false);
            C0691aQ m2252const = ((TS) ((C3393nT) m8799super).f14527do).m2252const();
            m2252const.mo2253do().m1964public(new RunnableC0752bR(m2252const, m2252const.mo2257new().elapsedRealtime()));
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        C2696eU c2696eU;
        C2638dU m8799super = this.f3714do.m8799super();
        if (!m8799super.m7572else().m3000finally() || bundle == null || (c2696eU = (C2696eU) m8799super.f12495do.get(Integer.valueOf(activity.hashCode()))) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("id", c2696eU.f12680do);
        bundle2.putString(FacebookRequestErrorClassification.KEY_NAME, c2696eU.f12681do);
        bundle2.putString("referrer_name", c2696eU.f12684if);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
