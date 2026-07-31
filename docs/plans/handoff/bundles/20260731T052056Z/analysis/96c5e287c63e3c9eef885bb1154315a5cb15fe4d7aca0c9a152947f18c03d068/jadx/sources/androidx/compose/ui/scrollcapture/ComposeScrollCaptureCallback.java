package androidx.compose.ui.scrollcapture;

import android.graphics.Rect;
import android.os.CancellationSignal;
import android.view.ScrollCaptureCallback;
import android.view.ScrollCaptureSession;
import androidx.compose.foundation.text.input.internal.HandwritingGestureApi34$$ExternalSyntheticLambda0;
import androidx.compose.material3.ThumbNode$measure$1;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.unit.IntRect;
import androidx.datastore.core.SimpleActor$offer$2;
import androidx.paging.FlowExtKt$simpleScan$1;
import androidx.recyclerview.widget.RecyclerView;
import java.util.function.Consumer;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.NonCancellable;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.internal.ContextScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ComposeScrollCaptureCallback implements ScrollCaptureCallback {
    public final AndroidComposeView composeView;
    public final ContextScope coroutineScope;
    public final ScrollCapture listener;
    public final SemanticsNode node;
    public final RelativeScroller scrollTracker;
    public final IntRect viewportBoundsInWindow;

    public ComposeScrollCaptureCallback(SemanticsNode semanticsNode, IntRect intRect, ContextScope contextScope, ScrollCapture scrollCapture, AndroidComposeView androidComposeView) {
        this.node = semanticsNode;
        this.viewportBoundsInWindow = intRect;
        this.listener = scrollCapture;
        this.composeView = androidComposeView;
        this.coroutineScope = new ContextScope(contextScope.coroutineContext.plus(DisableAnimationMotionDurationScale.INSTANCE));
        this.scrollTracker = new RelativeScroller(intRect.getHeight(), new ThumbNode$measure$1(this, null));
    }

    public final void onScrollCaptureEnd(Runnable runnable) {
        AwaitKt.launch$default(this.coroutineScope, NonCancellable.INSTANCE, null, new SimpleActor$offer$2(this, runnable, null, 26), 2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x008b, code lost:
    
        if (r9 == r1) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object onScrollCaptureImageRequest(android.view.ScrollCaptureSession r12, androidx.compose.ui.unit.IntRect r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback.onScrollCaptureImageRequest(android.view.ScrollCaptureSession, androidx.compose.ui.unit.IntRect, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void onScrollCaptureSearch(CancellationSignal cancellationSignal, Consumer consumer) {
        consumer.n(ColorKt.toAndroidRect(this.viewportBoundsInWindow));
    }

    public final void onScrollCaptureStart(ScrollCaptureSession scrollCaptureSession, CancellationSignal cancellationSignal, Runnable runnable) {
        this.scrollTracker.scrollAmount = RecyclerView.DECELERATION_RATE;
        ((ParcelableSnapshotMutableState) this.listener.scrollCaptureInProgress$delegate).setValue(Boolean.TRUE);
        runnable.run();
    }

    public final void onScrollCaptureImageRequest(ScrollCaptureSession scrollCaptureSession, CancellationSignal cancellationSignal, Rect rect, Consumer consumer) {
        StandaloneCoroutine launch$default = AwaitKt.launch$default(this.coroutineScope, null, null, new FlowExtKt$simpleScan$1(this, scrollCaptureSession, rect, consumer, null, 8, false), 3);
        launch$default.invokeOnCompletion(new NodeChainKt$fillVector$1(22, cancellationSignal));
        cancellationSignal.setOnCancelListener(new HandwritingGestureApi34$$ExternalSyntheticLambda0(1, launch$default));
    }
}
