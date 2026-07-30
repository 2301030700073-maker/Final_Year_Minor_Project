package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class GT implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AtomicReference f1187do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C4041yT f1188do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f1189for;

    public /* synthetic */ GT(C4041yT c4041yT, AtomicReference atomicReference, int i) {
        this.f1189for = i;
        this.f1187do = atomicReference;
        this.f1188do = c4041yT;
    }

    /* renamed from: do, reason: not valid java name */
    private final void m737do() {
        synchronized (this.f1187do) {
            try {
                AtomicReference atomicReference = this.f1187do;
                ZO m7572else = this.f1188do.m7572else();
                String m4907return = this.f1188do.m8796class().m4907return();
                m7572else.getClass();
                atomicReference.set(m7572else.m3007return(m4907return, C3684sQ.a));
            } finally {
                this.f1187do.notify();
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    private final void m738if() {
        synchronized (this.f1187do) {
            try {
                this.f1187do.set(Integer.valueOf(this.f1188do.m7572else().m3013while(this.f1188do.m8796class().m4907return(), C3684sQ.c)));
            } finally {
                this.f1187do.notify();
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1189for) {
            case 0:
                synchronized (this.f1187do) {
                    try {
                        AtomicReference atomicReference = this.f1187do;
                        ZO m7572else = this.f1188do.m7572else();
                        String m4907return = this.f1188do.m8796class().m4907return();
                        m7572else.getClass();
                        atomicReference.set(Boolean.valueOf(m7572else.m3012throws(m4907return, C3684sQ.f15483synchronized)));
                    } finally {
                        this.f1187do.notify();
                    }
                }
                return;
            case 1:
                m737do();
                return;
            default:
                m738if();
                return;
        }
    }
}
