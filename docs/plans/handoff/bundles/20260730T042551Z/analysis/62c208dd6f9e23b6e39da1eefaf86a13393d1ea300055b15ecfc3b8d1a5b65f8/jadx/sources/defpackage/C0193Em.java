package defpackage;

import com.google.firebase.perf.util.Timer;
import j$.util.concurrent.ConcurrentHashMap;

/* renamed from: Em, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0193Em {

    /* renamed from: do, reason: not valid java name */
    public static final Q0 f887do = Q0.m1818new();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0113Au f888do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Timer f889do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ConcurrentHashMap f890do = new ConcurrentHashMap();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f891do;

    public C0193Em(String str, AI ai, Timer timer) {
        this.f891do = false;
        this.f889do = timer;
        C0113Au c0113Au = new C0113Au(ai);
        c0113Au.m117throw(str);
        c0113Au.m115new("GET");
        this.f888do = c0113Au;
        c0113Au.f167if = true;
        if (L9.m1286try().m1299return()) {
            return;
        }
        f887do.m1824try("HttpMetric feature is disabled. URL %s", str);
        this.f891do = true;
    }
}
