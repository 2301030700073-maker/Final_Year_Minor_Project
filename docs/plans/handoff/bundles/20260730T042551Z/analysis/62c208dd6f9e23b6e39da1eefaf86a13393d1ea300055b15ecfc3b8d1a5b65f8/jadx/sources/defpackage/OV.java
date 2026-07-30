package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class OV implements Executor {
    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
