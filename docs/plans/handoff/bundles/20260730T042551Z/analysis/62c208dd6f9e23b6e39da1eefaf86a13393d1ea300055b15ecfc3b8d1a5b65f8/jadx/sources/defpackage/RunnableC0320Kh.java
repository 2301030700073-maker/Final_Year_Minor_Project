package defpackage;

import android.content.Context;
import com.facebook.internal.FetchedAppGateKeepersManager;
import com.google.firebase.perf.session.PerfSession;
import com.google.firebase.perf.session.SessionManager;

/* renamed from: Kh, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0320Kh implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Context f1854do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f1855do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f1856for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f1857if;

    public /* synthetic */ RunnableC0320Kh(Object obj, Context context, Object obj2, int i) {
        this.f1856for = i;
        this.f1855do = obj;
        this.f1854do = context;
        this.f1857if = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f1856for;
        Context context = this.f1854do;
        Object obj = this.f1857if;
        Object obj2 = this.f1855do;
        switch (i) {
            case 0:
                FetchedAppGateKeepersManager.m5411loadAppGateKeepersAsync$lambda0((String) obj2, context, (String) obj);
                break;
            default:
                ((SessionManager) obj2).lambda$setApplicationContext$0(context, (PerfSession) obj);
                break;
        }
    }
}
