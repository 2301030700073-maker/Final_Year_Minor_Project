package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* renamed from: com.facebook.ads.redexgen.X.Cx, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class ExecutorC1143Cx implements Executor {
    public static final ExecutorC1143Cx A01 = new ExecutorC1143Cx();
    public final Handler A00 = new Handler(Looper.getMainLooper());

    public static void A00(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            A01.execute(runnable);
        }
    }

    public final Handler A01() {
        return this.A00;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.A00.post(runnable);
    }
}
