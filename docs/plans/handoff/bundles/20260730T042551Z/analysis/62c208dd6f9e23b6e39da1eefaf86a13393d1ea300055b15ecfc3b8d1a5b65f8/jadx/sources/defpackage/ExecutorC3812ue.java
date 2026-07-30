package defpackage;

import java.util.concurrent.Executor;

/* renamed from: ue, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class ExecutorC3812ue implements Executor {

    /* renamed from: do, reason: not valid java name */
    public static final ExecutorC3812ue f15942do = new ExecutorC3812ue();

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
