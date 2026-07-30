package defpackage;

import com.facebook.internal.Utility;
import java.util.concurrent.atomic.AtomicMarkableReference;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class KJ {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0638Ys f1785do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f1786do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3162jc f1788do;

    /* renamed from: do, reason: not valid java name */
    public final Cdo f1784do = new Cdo(false);

    /* renamed from: if, reason: not valid java name */
    public final Cdo f1790if = new Cdo(true);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3609rA f1789do = new C3609rA();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicMarkableReference<String> f1787do = new AtomicMarkableReference<>(null, false);

    /* renamed from: KJ$do, reason: invalid class name */
    public class Cdo {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final AtomicMarkableReference<C0393Np> f1792do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final AtomicReference<Runnable> f1793do = new AtomicReference<>(null);

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f1794do;

        public Cdo(boolean z) {
            this.f1794do = z;
            this.f1792do = new AtomicMarkableReference<>(new C0393Np(z ? Utility.DEFAULT_STREAM_BUFFER_SIZE : 1024), false);
        }

        /* renamed from: do, reason: not valid java name */
        public final boolean m1139do(String str, String str2) {
            synchronized (this) {
                boolean m1555for = this.f1792do.getReference().m1555for(str, str2);
                boolean z = false;
                if (!m1555for) {
                    return false;
                }
                AtomicMarkableReference<C0393Np> atomicMarkableReference = this.f1792do;
                atomicMarkableReference.set(atomicMarkableReference.getReference(), true);
                RunnableC2852h9 runnableC2852h9 = new RunnableC2852h9(this, 8);
                AtomicReference<Runnable> atomicReference = this.f1793do;
                while (true) {
                    if (atomicReference.compareAndSet(null, runnableC2852h9)) {
                        z = true;
                        break;
                    }
                    if (atomicReference.get() != null) {
                        break;
                    }
                }
                if (z) {
                    KJ.this.f1788do.f13736if.m6567do(runnableC2852h9);
                }
                return true;
            }
        }
    }

    public KJ(String str, C0495Sh c0495Sh, C3162jc c3162jc) {
        this.f1786do = str;
        this.f1785do = new C0638Ys(c0495Sh);
        this.f1788do = c3162jc;
    }
}
