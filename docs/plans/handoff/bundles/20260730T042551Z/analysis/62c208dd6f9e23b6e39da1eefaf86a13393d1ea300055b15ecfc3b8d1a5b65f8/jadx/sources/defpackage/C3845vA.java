package defpackage;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* renamed from: vA, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3845vA {

    /* renamed from: do, reason: not valid java name */
    public final D9 f16025do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Set<InterfaceC3786uA> f16026do = Collections.newSetFromMap(new ConcurrentHashMap());

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Executor f16027do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3727tA f16028do;

    public C3845vA(D9 d9, C3727tA c3727tA, ScheduledExecutorService scheduledExecutorService) {
        this.f16025do = d9;
        this.f16028do = c3727tA;
        this.f16027do = scheduledExecutorService;
    }
}
