package defpackage;

import java.util.ArrayDeque;

/* loaded from: classes3.dex */
public final class GV {

    /* renamed from: do, reason: not valid java name */
    public final Object f1191do = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ArrayDeque f1192do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f1193do;

    /* renamed from: do, reason: not valid java name */
    public final void m739do(BV bv) {
        synchronized (this.f1191do) {
            if (this.f1192do == null) {
                this.f1192do = new ArrayDeque();
            }
            this.f1192do.add(bv);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m740if(FG fg) {
        BV bv;
        synchronized (this.f1191do) {
            if (this.f1192do != null && !this.f1193do) {
                this.f1193do = true;
                while (true) {
                    synchronized (this.f1191do) {
                        bv = (BV) this.f1192do.poll();
                        if (bv == null) {
                            this.f1193do = false;
                            return;
                        }
                    }
                    bv.mo189do(fg);
                }
            }
        }
    }
}
