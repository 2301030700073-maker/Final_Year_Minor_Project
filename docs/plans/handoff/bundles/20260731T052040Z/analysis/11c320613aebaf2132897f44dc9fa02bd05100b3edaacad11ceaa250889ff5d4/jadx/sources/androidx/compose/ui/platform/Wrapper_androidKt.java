package androidx.compose.ui.platform;

import android.view.ViewGroup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Wrapper_androidKt {
    public static final ViewGroup.LayoutParams DefaultLayoutParams = new ViewGroup.LayoutParams(-2, -2);

    /* JADX WARN: Removed duplicated region for block: B:21:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.ui.platform.WrappedComposition setContent(androidx.compose.ui.platform.AbstractComposeView r7, androidx.compose.ui.platform.ComposeViewContext r8, androidx.compose.runtime.internal.ComposableLambdaImpl r9) {
        /*
            java.util.concurrent.atomic.AtomicBoolean r0 = androidx.compose.ui.platform.GlobalSnapshotManager.started
            r1 = 0
            r2 = 1
            boolean r0 = r0.compareAndSet(r1, r2)
            r3 = 0
            if (r0 == 0) goto L3d
            r0 = 6
            kotlinx.coroutines.channels.BufferedChannel r0 = kotlinx.coroutines.channels.ProduceKt.Channel$default(r2, r0, r3)
            kotlin.SynchronizedLazyImpl r4 = androidx.compose.ui.platform.AndroidUiDispatcher.Main$delegate
            java.lang.Object r4 = r4.getValue()
            kotlin.coroutines.CoroutineContext r4 = (kotlin.coroutines.CoroutineContext) r4
            kotlinx.coroutines.internal.ContextScope r4 = kotlinx.coroutines.JobKt.CoroutineScope(r4)
            androidx.compose.ui.platform.GlobalSnapshotManager$ensureStarted$1 r5 = new androidx.compose.ui.platform.GlobalSnapshotManager$ensureStarted$1
            r5.<init>(r0, r3)
            r6 = 3
            kotlinx.coroutines.JobKt.launch$default(r4, r3, r3, r5, r6)
            androidx.compose.ui.platform.GlobalSnapshotManager$ensureStarted$2 r4 = new androidx.compose.ui.platform.GlobalSnapshotManager$ensureStarted$2
            r4.<init>()
            java.lang.Object r0 = androidx.compose.runtime.snapshots.SnapshotKt.lock
            monitor-enter(r0)
            java.util.List r5 = androidx.compose.runtime.snapshots.SnapshotKt.globalWriteObservers     // Catch: java.lang.Throwable -> L3a
            java.util.ArrayList r4 = kotlin.collections.CollectionsKt.plus(r5, r4)     // Catch: java.lang.Throwable -> L3a
            androidx.compose.runtime.snapshots.SnapshotKt.globalWriteObservers = r4     // Catch: java.lang.Throwable -> L3a
            monitor-exit(r0)
            androidx.compose.runtime.snapshots.SnapshotKt.access$advanceGlobalSnapshot()
            goto L3d
        L3a:
            r7 = move-exception
            monitor-exit(r0)
            throw r7
        L3d:
            int r0 = r7.getChildCount()
            if (r0 <= 0) goto L57
            android.view.View r0 = r7.getChildAt(r1)
            boolean r1 = r0 instanceof androidx.compose.ui.platform.AndroidComposeView
            if (r1 == 0) goto L4e
            androidx.compose.ui.platform.AndroidComposeView r0 = (androidx.compose.ui.platform.AndroidComposeView) r0
            goto L4f
        L4e:
            r0 = r3
        L4f:
            if (r0 == 0) goto L55
            r0.setComposeViewContext(r8)
            goto L5b
        L55:
            r0 = r3
            goto L5b
        L57:
            r7.removeAllViews()
            goto L55
        L5b:
            if (r0 != 0) goto L6f
            androidx.compose.ui.platform.AndroidComposeView r0 = new androidx.compose.ui.platform.AndroidComposeView
            android.content.Context r1 = r7.getContext()
            r0.<init>(r1, r8)
            android.view.View r1 = r0.getView()
            android.view.ViewGroup$LayoutParams r4 = androidx.compose.ui.platform.Wrapper_androidKt.DefaultLayoutParams
            r7.addView(r1, r4)
        L6f:
            r0.setComposeViewContext(r8)
            androidx.compose.ui.platform.ComposeViewContext r7 = r7.getComposeViewContext$ui()
            if (r7 == 0) goto L7e
            r8.incrementViewCount$ui()
            r0.setComposeViewContextIncrementedDuringInit$ui(r2)
        L7e:
            r7 = 2131362878(0x7f0a043e, float:1.834555E38)
            java.lang.Object r1 = r0.getTag(r7)
            boolean r2 = r1 instanceof androidx.compose.ui.platform.WrappedComposition
            if (r2 == 0) goto L8c
            r3 = r1
            androidx.compose.ui.platform.WrappedComposition r3 = (androidx.compose.ui.platform.WrappedComposition) r3
        L8c:
            if (r3 != 0) goto La6
            androidx.compose.ui.platform.WrappedComposition r3 = new androidx.compose.ui.platform.WrappedComposition
            org.acra.util.ProcessFinisher r1 = new org.acra.util.ProcessFinisher
            androidx.compose.ui.node.LayoutNode r2 = r0.getRoot()
            r1.<init>(r2)
            androidx.compose.runtime.CompositionContext r2 = r8.compositionContext
            androidx.compose.runtime.CompositionImpl r4 = new androidx.compose.runtime.CompositionImpl
            r4.<init>(r2, r1)
            r3.<init>(r0, r4)
            r0.setTag(r7, r3)
        La6:
            r3.setContent(r9)
            androidx.compose.runtime.CompositionContext r7 = r8.compositionContext
            androidx.compose.ui.platform.Wrapper_androidKt$setContent$1 r8 = new androidx.compose.ui.platform.Wrapper_androidKt$setContent$1
            r8.<init>(r7)
            r0.setFrameEndScheduler$ui(r8)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.Wrapper_androidKt.setContent(androidx.compose.ui.platform.AbstractComposeView, androidx.compose.ui.platform.ComposeViewContext, androidx.compose.runtime.internal.ComposableLambdaImpl):androidx.compose.ui.platform.WrappedComposition");
    }
}
