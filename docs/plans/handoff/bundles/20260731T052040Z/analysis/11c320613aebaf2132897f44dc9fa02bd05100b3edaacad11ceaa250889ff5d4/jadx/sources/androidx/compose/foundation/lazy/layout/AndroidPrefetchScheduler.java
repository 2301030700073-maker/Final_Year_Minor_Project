package androidx.compose.foundation.lazy.layout;

import android.os.Trace;
import android.view.Choreographer;
import android.view.View;
import androidx.appcompat.app.TwilightManager$TwilightState;
import androidx.compose.ui.node.LayoutNode$$ExternalSyntheticLambda3;
import coil3.decode.StaticImageDecoderKt;
import java.util.PriorityQueue;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AndroidPrefetchScheduler implements PrefetchScheduler, View.OnAttachStateChangeListener, Runnable, Choreographer.FrameCallback {
    public static long frameIntervalNs;
    public long frameStartTimeNanos;
    public boolean isActive;
    public boolean prefetchScheduled;
    public final View view;
    public final PriorityQueue prefetchRequests = new PriorityQueue(11, new LayoutNode$$ExternalSyntheticLambda3(1));
    public final Choreographer choreographer = Choreographer.getInstance();
    public final TwilightManager$TwilightState scope = new TwilightManager$TwilightState();

    /* JADX WARN: Code restructure failed: missing block: B:7:0x003d, code lost:
    
        if (r0 >= 30.0f) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AndroidPrefetchScheduler(android.view.View r6) {
        /*
            r5 = this;
            r5.<init>()
            r5.view = r6
            java.util.PriorityQueue r0 = new java.util.PriorityQueue
            androidx.compose.ui.node.LayoutNode$$ExternalSyntheticLambda3 r1 = new androidx.compose.ui.node.LayoutNode$$ExternalSyntheticLambda3
            r2 = 1
            r1.<init>(r2)
            r3 = 11
            r0.<init>(r3, r1)
            r5.prefetchRequests = r0
            android.view.Choreographer r0 = android.view.Choreographer.getInstance()
            r5.choreographer = r0
            androidx.appcompat.app.TwilightManager$TwilightState r0 = new androidx.appcompat.app.TwilightManager$TwilightState
            r0.<init>()
            r5.scope = r0
            long r0 = androidx.compose.foundation.lazy.layout.AndroidPrefetchScheduler.frameIntervalNs
            r3 = 0
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 != 0) goto L49
            android.view.Display r0 = r6.getDisplay()
            boolean r1 = r6.isInEditMode()
            if (r1 != 0) goto L40
            if (r0 == 0) goto L40
            float r0 = r0.getRefreshRate()
            r1 = 1106247680(0x41f00000, float:30.0)
            int r1 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r1 < 0) goto L40
            goto L42
        L40:
            r0 = 1114636288(0x42700000, float:60.0)
        L42:
            r1 = 1315859240(0x4e6e6b28, float:1.0E9)
            float r1 = r1 / r0
            long r0 = (long) r1
            androidx.compose.foundation.lazy.layout.AndroidPrefetchScheduler.frameIntervalNs = r0
        L49:
            r6.addOnAttachStateChangeListener(r5)
            boolean r6 = r6.isAttachedToWindow()
            if (r6 == 0) goto L54
            r5.isActive = r2
        L54:
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
                StaticImageDecoderKt.traceValue("compose:lazy:prefetch:available_time_nanos", 0L);
                return;
            }
        }
        this.prefetchScheduled = false;
    }

    public final boolean runRequest() {
        TwilightManager$TwilightState twilightManager$TwilightState = this.scope;
        long availableTimeNanos = twilightManager$TwilightState.availableTimeNanos();
        StaticImageDecoderKt.traceValue("compose:lazy:prefetch:available_time_nanos", availableTimeNanos);
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
