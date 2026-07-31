package androidx.compose.foundation.lazy.layout;

import android.os.Trace;
import android.view.Choreographer;
import android.view.View;
import androidx.appcompat.app.TwilightManager$TwilightState;
import androidx.compose.ui.node.LayoutNode$$ExternalSyntheticLambda0;
import androidx.tracing.TraceApi29Impl;
import java.util.PriorityQueue;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidPrefetchScheduler implements PrefetchScheduler, View.OnAttachStateChangeListener, Runnable, Choreographer.FrameCallback {
    public static long frameIntervalNs;
    public long frameStartTimeNanos;
    public boolean isActive;
    public boolean prefetchScheduled;
    public final View view;
    public final PriorityQueue prefetchRequests = new PriorityQueue(11, new LayoutNode$$ExternalSyntheticLambda0(2));
    public final Choreographer choreographer = Choreographer.getInstance();
    public final TwilightManager$TwilightState scope = new TwilightManager$TwilightState();

    /* JADX WARN: Code restructure failed: missing block: B:6:0x003a, code lost:
    
        if (r0 >= 30.0f) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AndroidPrefetchScheduler(android.view.View r5) {
        /*
            r4 = this;
            r4.<init>()
            r4.view = r5
            java.util.PriorityQueue r0 = new java.util.PriorityQueue
            androidx.compose.ui.node.LayoutNode$$ExternalSyntheticLambda0 r1 = new androidx.compose.ui.node.LayoutNode$$ExternalSyntheticLambda0
            r2 = 2
            r1.<init>(r2)
            r2 = 11
            r0.<init>(r2, r1)
            r4.prefetchRequests = r0
            android.view.Choreographer r0 = android.view.Choreographer.getInstance()
            r4.choreographer = r0
            androidx.appcompat.app.TwilightManager$TwilightState r0 = new androidx.appcompat.app.TwilightManager$TwilightState
            r0.<init>()
            r4.scope = r0
            long r0 = androidx.compose.foundation.lazy.layout.AndroidPrefetchScheduler.frameIntervalNs
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 != 0) goto L46
            android.view.Display r0 = r5.getDisplay()
            r5.isInEditMode()
            if (r0 == 0) goto L3d
            float r0 = r0.getRefreshRate()
            r1 = 1106247680(0x41f00000, float:30.0)
            int r1 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r1 < 0) goto L3d
            goto L3f
        L3d:
            r0 = 1114636288(0x42700000, float:60.0)
        L3f:
            r1 = 1315859240(0x4e6e6b28, float:1.0E9)
            float r1 = r1 / r0
            long r0 = (long) r1
            androidx.compose.foundation.lazy.layout.AndroidPrefetchScheduler.frameIntervalNs = r0
        L46:
            r5.addOnAttachStateChangeListener(r4)
            boolean r5 = r5.isAttachedToWindow()
            if (r5 == 0) goto L52
            r5 = 1
            r4.isActive = r5
        L52:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.layout.AndroidPrefetchScheduler.<init>(android.view.View):void");
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        if (this.isActive) {
            this.frameStartTimeNanos = j;
            this.view.post(this);
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.isActive = true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.isActive = false;
        this.view.removeCallbacks(this);
        this.choreographer.removeFrameCallback(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        PriorityQueue priorityQueue = this.prefetchRequests;
        if (!priorityQueue.isEmpty() && this.prefetchScheduled && this.isActive) {
            View view = this.view;
            if (view.getWindowVisibility() == 0) {
                long nanos = TimeUnit.MILLISECONDS.toNanos(view.getDrawingTime());
                boolean z = System.nanoTime() > (2 * frameIntervalNs) + nanos;
                TwilightManager$TwilightState twilightManager$TwilightState = this.scope;
                twilightManager$TwilightState.isNight = z;
                twilightManager$TwilightState.nextUpdate = Math.max(this.frameStartTimeNanos, nanos) + frameIntervalNs;
                boolean z2 = false;
                while (!priorityQueue.isEmpty() && !z2) {
                    if (twilightManager$TwilightState.isNight) {
                        Trace.beginSection("compose:lazy:prefetch:idle_frame");
                        try {
                            z2 = runRequest();
                        } finally {
                            Trace.endSection();
                        }
                    } else {
                        z2 = runRequest();
                    }
                }
                if (z2) {
                    this.choreographer.postFrameCallback(this);
                } else {
                    this.prefetchScheduled = false;
                }
                TraceApi29Impl.traceValue(0L, "compose:lazy:prefetch:available_time_nanos");
                return;
            }
        }
        this.prefetchScheduled = false;
    }

    public final boolean runRequest() {
        TwilightManager$TwilightState twilightManager$TwilightState = this.scope;
        long availableTimeNanos = twilightManager$TwilightState.availableTimeNanos();
        TraceApi29Impl.traceValue(availableTimeNanos, "compose:lazy:prefetch:available_time_nanos");
        boolean z = true;
        if (availableTimeNanos > 0) {
            PriorityQueue priorityQueue = this.prefetchRequests;
            Object peek = priorityQueue.peek();
            peek.getClass();
            if (!((PriorityTask) peek).request.execute(twilightManager$TwilightState)) {
                priorityQueue.poll();
                z = false;
            }
            twilightManager$TwilightState.isNight = false;
        }
        return z;
    }

    @Override // androidx.compose.foundation.lazy.layout.PrefetchScheduler
    public final void schedulePrefetch(PrefetchHandleProvider$HandleAndRequestImpl prefetchHandleProvider$HandleAndRequestImpl) {
        this.prefetchRequests.add(new PriorityTask(1, prefetchHandleProvider$HandleAndRequestImpl));
        if (this.prefetchScheduled) {
            return;
        }
        this.prefetchScheduled = true;
        this.view.post(this);
    }
}
