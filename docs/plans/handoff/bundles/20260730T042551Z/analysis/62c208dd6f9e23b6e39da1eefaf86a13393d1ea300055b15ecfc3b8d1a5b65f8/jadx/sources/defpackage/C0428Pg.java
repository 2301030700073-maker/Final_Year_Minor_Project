package defpackage;

import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.google.firebase.messaging.Cdo;
import com.google.firebase.messaging.FirebaseMessaging;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* renamed from: Pg, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0428Pg implements InterfaceC3655ry {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f2809do;

    public /* synthetic */ C0428Pg(int i) {
        this.f2809do = i;
    }

    @Override // defpackage.InterfaceC3655ry
    public final Object get() {
        switch (this.f2809do) {
            case 0:
                C0503Sp<ScheduledExecutorService> c0503Sp = ExecutorsRegistrar.f11870do;
                return new ScheduledExecutorServiceC0403Od(Executors.newCachedThreadPool(new ThreadFactoryC0117Bc("Firebase Blocking", 11, null)), ExecutorsRegistrar.f11873new.get());
            default:
                Cdo cdo = FirebaseMessaging.f11889do;
                return null;
        }
    }
}
