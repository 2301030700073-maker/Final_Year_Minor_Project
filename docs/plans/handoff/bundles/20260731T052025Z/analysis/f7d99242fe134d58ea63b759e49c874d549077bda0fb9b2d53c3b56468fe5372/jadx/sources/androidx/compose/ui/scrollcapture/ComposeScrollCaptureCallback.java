package androidx.compose.ui.scrollcapture;

import android.graphics.Rect;
import android.os.CancellationSignal;
import android.view.ScrollCaptureCallback;
import android.view.ScrollCaptureSession;
import androidx.compose.foundation.text.input.internal.HandwritingGestureApi34$$ExternalSyntheticLambda0;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.unit.IntRect;
import androidx.lifecycle.BlockRunner$maybeRun$1;
import androidx.navigation.compose.NavHostKt$NavHost$29$1;
import java.util.function.Consumer;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.NonCancellable;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.internal.ContextScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        this.coroutineScope = new ContextScope(contextScope.getCoroutineContext().plus(DisableAnimationMotionDurationScale.INSTANCE));
        this.scrollTracker = new RelativeScroller(intRect.getHeight(), new ComposeScrollCaptureCallback$scrollTracker$1(this, null));
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x008b, code lost:
    
        if (r9 == r5) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$onScrollCaptureImageRequest(androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback r11, android.view.ScrollCaptureSession r12, androidx.compose.ui.unit.IntRect r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback.access$onScrollCaptureImageRequest(androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback, android.view.ScrollCaptureSession, androidx.compose.ui.unit.IntRect, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void onScrollCaptureEnd(Runnable runnable) {
        JobKt.launch$default(this.coroutineScope, NonCancellable.INSTANCE, null, new BlockRunner$maybeRun$1(this, runnable, null, 3), 2);
    }

    public final void onScrollCaptureImageRequest(ScrollCaptureSession scrollCaptureSession, CancellationSignal cancellationSignal, Rect rect, Consumer consumer) {
        StandaloneCoroutine launch$default = JobKt.launch$default(this.coroutineScope, null, null, new NavHostKt$NavHost$29$1(this, scrollCaptureSession, rect, consumer, (Continuation) null, 11), 3);
        launch$default.invokeOnCompletion(new NodeChainKt$fillVector$1(22, cancellationSignal));
        cancellationSignal.setOnCancelListener(new HandwritingGestureApi34$$ExternalSyntheticLambda0(1, launch$default));
    }

    public final void onScrollCaptureSearch(CancellationSignal cancellationSignal, Consumer consumer) {
        consumer.r(ColorKt.toAndroidRect(this.viewportBoundsInWindow));
    }

    public final void onScrollCaptureStart(ScrollCaptureSession scrollCaptureSession, CancellationSignal cancellationSignal, Runnable runnable) {
        this.scrollTracker.scrollAmount = 0.0f;
        ((ParcelableSnapshotMutableState) this.listener.scrollCaptureInProgress$delegate).setValue(Boolean.TRUE);
        runnable.run();
    }
}
