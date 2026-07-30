package androidx.lifecycle;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import androidx.lifecycle.Ccase;
import androidx.lifecycle.Ctry;
import defpackage.C0173Do;
import defpackage.C0471Rf;
import defpackage.C2727f2;
import defpackage.InterfaceC0260Hn;
import defpackage.InterfaceC2714eq;
import java.util.List;

/* loaded from: classes.dex */
public final class ProcessLifecycleInitializer implements InterfaceC0260Hn<InterfaceC2714eq> {
    @Override // defpackage.InterfaceC0260Hn
    /* renamed from: do */
    public final InterfaceC2714eq mo883do(Context context) {
        C0173Do.m401try(context, "context");
        C2727f2 m6630for = C2727f2.m6630for(context);
        C0173Do.m399new(m6630for, "getInstance(context)");
        if (!m6630for.f12799do.contains(ProcessLifecycleInitializer.class)) {
            throw new IllegalStateException("ProcessLifecycleInitializer cannot be initialized lazily.\n               Please ensure that you have:\n               <meta-data\n                   android:name='androidx.lifecycle.ProcessLifecycleInitializer'\n                   android:value='androidx.startup' />\n               under InitializationProvider in your AndroidManifest.xml".toString());
        }
        if (!Ccase.f7099do.getAndSet(true)) {
            Context applicationContext = context.getApplicationContext();
            C0173Do.m396for(applicationContext, "null cannot be cast to non-null type android.app.Application");
            ((Application) applicationContext).registerActivityLifecycleCallbacks(new Ccase.Cdo());
        }
        Cbreak cbreak = Cbreak.f7089do;
        cbreak.getClass();
        cbreak.f7090do = new Handler();
        cbreak.f7092do.m4258case(Ctry.Cdo.ON_CREATE);
        Context applicationContext2 = context.getApplicationContext();
        C0173Do.m396for(applicationContext2, "null cannot be cast to non-null type android.app.Application");
        ((Application) applicationContext2).registerActivityLifecycleCallbacks(new Ccatch(cbreak));
        return cbreak;
    }

    @Override // defpackage.InterfaceC0260Hn
    /* renamed from: if */
    public final List<Class<? extends InterfaceC0260Hn<?>>> mo884if() {
        return C0471Rf.f3217do;
    }
}
