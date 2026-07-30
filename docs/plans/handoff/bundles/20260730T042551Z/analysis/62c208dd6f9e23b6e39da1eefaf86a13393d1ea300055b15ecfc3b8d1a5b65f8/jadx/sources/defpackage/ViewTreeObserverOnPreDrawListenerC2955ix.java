package defpackage;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewTreeObserver;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: ix, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class ViewTreeObserverOnPreDrawListenerC2955ix implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: do, reason: not valid java name */
    @SuppressLint({"ThreadPoolCreation"})
    public final Handler f13598do = new Handler(Looper.getMainLooper());

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Runnable f13599do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicReference<View> f13600do;

    /* renamed from: if, reason: not valid java name */
    public final Runnable f13601if;

    public ViewTreeObserverOnPreDrawListenerC2955ix(View view, Y1 y1, RunnableC2617d9 runnableC2617d9) {
        this.f13600do = new AtomicReference<>(view);
        this.f13599do = y1;
        this.f13601if = runnableC2617d9;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        View andSet = this.f13600do.getAndSet(null);
        if (andSet == null) {
            return true;
        }
        andSet.getViewTreeObserver().removeOnPreDrawListener(this);
        Handler handler = this.f13598do;
        handler.post(this.f13599do);
        handler.postAtFrontOfQueue(this.f13601if);
        return true;
    }
}
