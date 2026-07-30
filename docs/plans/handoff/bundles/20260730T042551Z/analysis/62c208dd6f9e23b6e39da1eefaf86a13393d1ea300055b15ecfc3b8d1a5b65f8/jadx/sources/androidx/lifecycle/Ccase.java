package androidx.lifecycle;

import android.app.Activity;
import android.os.Bundle;
import androidx.lifecycle.Cclass;
import defpackage.C0173Do;
import defpackage.C0383Nf;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: androidx.lifecycle.case, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ccase {

    /* renamed from: do, reason: not valid java name */
    public static final AtomicBoolean f7099do = new AtomicBoolean(false);

    /* renamed from: androidx.lifecycle.case$do, reason: invalid class name */
    public static final class Cdo extends C0383Nf {
        @Override // defpackage.C0383Nf, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            C0173Do.m401try(activity, "activity");
            int i = Cclass.f7100for;
            Cclass.Cif.m4249if(activity);
        }
    }
}
