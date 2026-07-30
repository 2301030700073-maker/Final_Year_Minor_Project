package defpackage;

import defpackage.Cstatic;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class E6<T> implements InterfaceFutureC3942wq<T> {

    /* renamed from: do, reason: not valid java name */
    public final Cdo f734do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final WeakReference<C6<T>> f735do;

    /* renamed from: E6$do, reason: invalid class name */
    public class Cdo extends Cstatic<T> {
        public Cdo() {
        }

        @Override // defpackage.Cstatic
        /* renamed from: const, reason: not valid java name */
        public final String mo435const() {
            C6<T> c6 = E6.this.f735do.get();
            if (c6 == null) {
                return "Completer object has been garbage collected, future will fail soon";
            }
            return "tag=[" + c6.f334do + "]";
        }
    }

    public E6(C6<T> c6) {
        this.f735do = new WeakReference<>(c6);
    }

    @Override // defpackage.InterfaceFutureC3942wq
    public final void addListener(Runnable runnable, Executor executor) {
        this.f734do.addListener(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        C6<T> c6 = this.f735do.get();
        boolean cancel = this.f734do.cancel(z);
        if (cancel && c6 != null) {
            c6.f334do = null;
            c6.f332do = null;
            c6.f333do.mo1469throw(null);
        }
        return cancel;
    }

    @Override // java.util.concurrent.Future
    public final T get() {
        return this.f734do.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return ((Cstatic) this.f734do).f15544do instanceof Cstatic.Cif;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f734do.isDone();
    }

    public final String toString() {
        return this.f734do.toString();
    }

    @Override // java.util.concurrent.Future
    public final T get(long j, TimeUnit timeUnit) {
        return this.f734do.get(j, timeUnit);
    }
}
