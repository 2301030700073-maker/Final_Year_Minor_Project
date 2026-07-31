package com.google.android.play.integrity.internal;

import com.google.android.gms.tasks.TaskCompletionSource;

/* compiled from: com.google.android.play:integrity@@1.3.0 */
/* loaded from: classes4.dex */
public abstract class t implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private final TaskCompletionSource f359a;

    t() {
        this.f359a = null;
    }

    public t(TaskCompletionSource taskCompletionSource) {
        this.f359a = taskCompletionSource;
    }

    public void a(Exception exc) {
        TaskCompletionSource taskCompletionSource = this.f359a;
        if (taskCompletionSource != null) {
            taskCompletionSource.trySetException(exc);
        }
    }

    protected abstract void b();

    final TaskCompletionSource c() {
        return this.f359a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            b();
        } catch (Exception e) {
            a(e);
        }
    }
}
