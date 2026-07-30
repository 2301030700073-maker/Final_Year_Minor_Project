package defpackage;

import java.util.concurrent.ExecutorService;

/* renamed from: jc, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3162jc {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f13733do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ExecutorC2700ec f13734do;

    /* renamed from: for, reason: not valid java name */
    public final ExecutorC2700ec f13735for;

    /* renamed from: if, reason: not valid java name */
    public final ExecutorC2700ec f13736if;

    /* renamed from: jc$do, reason: invalid class name */
    public static final class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static void m7144do(InterfaceC0768bk interfaceC0768bk, InterfaceC0768bk interfaceC0768bk2) {
            if (((Boolean) interfaceC0768bk.mo585new()).booleanValue()) {
                return;
            }
            Cdo cdo = C3162jc.f13733do;
        }

        /* renamed from: if, reason: not valid java name */
        public static String m7145if() {
            return Thread.currentThread().getName();
        }
    }

    public C3162jc(ExecutorService executorService, ExecutorService executorService2) {
        C0173Do.m401try(executorService, "backgroundExecutorService");
        C0173Do.m401try(executorService2, "blockingExecutorService");
        this.f13734do = new ExecutorC2700ec(executorService);
        this.f13736if = new ExecutorC2700ec(executorService);
        LG.m1320try(null);
        this.f13735for = new ExecutorC2700ec(executorService2);
    }

    /* renamed from: do, reason: not valid java name */
    public static final void m7143do() {
        f13733do.getClass();
        String m7145if = Cdo.m7145if();
        C0173Do.m399new(m7145if, "threadName");
        if (Boolean.valueOf(EF.k(m7145if, "Firebase Background Thread #")).booleanValue()) {
            return;
        }
        C2759fc.f12951do.mo585new();
    }
}
