package com.facebook.internal;

import defpackage.C0173Do;
import defpackage.C3756th;
import defpackage.CallableC0394Nq;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.FutureTask;

/* loaded from: classes.dex */
public final class LockOnGetVariable<T> {
    private CountDownLatch initLatch;
    private T storedValue;

    public LockOnGetVariable(T t) {
        this.storedValue = t;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _init_$lambda-0, reason: not valid java name */
    public static final Void m5429_init_$lambda0(LockOnGetVariable lockOnGetVariable, Callable callable) {
        C0173Do.m401try(lockOnGetVariable, "this$0");
        C0173Do.m401try(callable, "$callable");
        try {
            lockOnGetVariable.storedValue = (T) callable.call();
        } finally {
            CountDownLatch countDownLatch = lockOnGetVariable.initLatch;
            if (countDownLatch != null) {
                countDownLatch.countDown();
            }
        }
    }

    private final void waitOnInit() {
        CountDownLatch countDownLatch = this.initLatch;
        if (countDownLatch == null) {
            return;
        }
        try {
            countDownLatch.await();
        } catch (InterruptedException unused) {
        }
    }

    public final T getValue() {
        waitOnInit();
        return this.storedValue;
    }

    public LockOnGetVariable(Callable<T> callable) {
        C0173Do.m401try(callable, "callable");
        this.initLatch = new CountDownLatch(1);
        C3756th.m8304new().execute(new FutureTask(new CallableC0394Nq(0, this, callable)));
    }
}
