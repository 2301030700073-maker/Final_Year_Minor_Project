package b.e.g;

import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public class m implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f732a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Callable f733b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ReentrantLock f734c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ AtomicBoolean f735d;
    public final /* synthetic */ Condition e;

    public m(o oVar, AtomicReference atomicReference, Callable callable, ReentrantLock reentrantLock, AtomicBoolean atomicBoolean, Condition condition) {
        this.f732a = atomicReference;
        this.f733b = callable;
        this.f734c = reentrantLock;
        this.f735d = atomicBoolean;
        this.e = condition;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f732a.set(this.f733b.call());
        } catch (Exception unused) {
        }
        this.f734c.lock();
        try {
            this.f735d.set(false);
            this.e.signal();
        } finally {
            this.f734c.unlock();
        }
    }
}
