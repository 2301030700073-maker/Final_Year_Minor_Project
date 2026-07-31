package androidx.glance.appwidget;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.widget.RemoteViews;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.ui.unit.DpKt;
import androidx.glance.state.GlanceState;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.collections.EmptyMap;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeWidget;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AppWidgetSession {
    public final AtomicBoolean _isOpen;
    public final BufferedChannel eventChannel;
    public final ParcelableSnapshotMutableState glanceState$delegate;
    public final AppWidgetId id;
    public final String key;
    public Map lambdas;
    public final StateFlowImpl lastRemoteViews;
    public final ParcelableSnapshotMutableState options$delegate;
    public final JobImpl parentJob;
    public final ReadingChallengeWidget widget;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RunLambda {
        public final String key;

        public RunLambda(String str) {
            this.key = str;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class UpdateAppWidgetOptions {
        public final Bundle newOptions;

        public UpdateAppWidgetOptions(Bundle bundle) {
            this.newOptions = bundle;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class UpdateGlanceState {
        public static final UpdateGlanceState INSTANCE = new UpdateGlanceState();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class WaitForReady {
        public final JobImpl job;

        public WaitForReady(JobImpl jobImpl) {
            this.job = jobImpl;
        }
    }

    public AppWidgetSession(ReadingChallengeWidget readingChallengeWidget, AppWidgetId appWidgetId, Bundle bundle, int i) {
        bundle = (i & 4) != 0 ? null : bundle;
        GlanceState glanceState = GlanceState.INSTANCE;
        this.key = UnsignedKt.createUniqueRemoteUiName(appWidgetId.appWidgetId);
        this._isOpen = new AtomicBoolean(true);
        this.eventChannel = DpKt.Channel$default(Integer.MAX_VALUE, 6, null);
        this.widget = readingChallengeWidget;
        this.id = appWidgetId;
        int i2 = appWidgetId.appWidgetId;
        if (Integer.MIN_VALUE <= i2 && i2 < -1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("If the AppWidgetSession is not created for a bound widget, you must provide a lambda action receiver");
            throw null;
        }
        NeverEqualPolicy neverEqualPolicy = NeverEqualPolicy.INSTANCE;
        this.glanceState$delegate = new ParcelableSnapshotMutableState(null, neverEqualPolicy);
        this.options$delegate = new ParcelableSnapshotMutableState(bundle, neverEqualPolicy);
        this.lambdas = EmptyMap.INSTANCE;
        this.parentJob = AwaitKt.Job$default();
        this.lastRemoteViews = StateFlowKt.MutableStateFlow(null);
    }

    public final void notifyWidgetOfError(Context context, Throwable th) {
        Log.e("GlanceAppWidget", "Error in Glance App Widget", th);
        AppWidgetManager.getInstance(context).updateAppWidget(this.id.appWidgetId, new RemoteViews(context.getPackageName(), R.layout.glance_error_layout));
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:0|1|(2:3|(10:5|6|(1:(1:(4:19|20|21|22)(1:(2:13|14)(3:16|17|18)))(1:23))(2:58|(2:60|61)(3:62|(1:64)|39))|24|25|26|27|28|29|(7:31|32|33|34|35|36|37)(2:54|55)))|65|6|(0)(0)|24|25|26|27|28|29|(0)(0)|(3:(0)|(0)|(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00d9, code lost:
    
        if (r3.save(r5) == r6) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0133, code lost:
    
        if (r3.save(r5) != r6) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0110, code lost:
    
        if (r3.save(r5) != r6) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0120, code lost:
    
        if (r3.save(r5) != r6) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00e0, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a1 A[Catch: all -> 0x00e0, CancellationException -> 0x0127, TRY_LEAVE, TryCatch #5 {CancellationException -> 0x0127, all -> 0x00e0, blocks: (B:27:0x0094, B:29:0x0099, B:31:0x00a1, B:36:0x00c3, B:54:0x00e9, B:55:0x0100), top: B:26:0x0094 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00e9 A[Catch: all -> 0x00e0, CancellationException -> 0x0127, TRY_ENTER, TryCatch #5 {CancellationException -> 0x0127, all -> 0x00e0, blocks: (B:27:0x0094, B:29:0x0099, B:31:0x00a1, B:36:0x00c3, B:54:0x00e9, B:55:0x0100), top: B:26:0x0094 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object processEmittableTree(android.content.Context r21, androidx.glance.EmittableWithChildren r22, kotlin.coroutines.jvm.internal.ContinuationImpl r23) {
        /*
            Method dump skipped, instructions count: 313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.appwidget.AppWidgetSession.processEmittableTree(android.content.Context, androidx.glance.EmittableWithChildren, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object processEvent(android.content.Context r8, java.lang.Object r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.appwidget.AppWidgetSession.processEvent(android.content.Context, java.lang.Object, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:0|1|(2:3|(4:5|6|7|(1:(1:(5:11|12|13|14|(2:16|17)(5:19|20|(1:22)|24|25))(2:27|28))(6:29|30|20|(0)|24|25))(4:31|32|14|(0)(0))))|34|6|7|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0089, code lost:
    
        if (r2.processEvent(r8, r9, r0) == r1) goto L30;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0074 A[Catch: ClosedReceiveChannelException -> 0x008c, TRY_LEAVE, TryCatch #0 {ClosedReceiveChannelException -> 0x008c, blocks: (B:12:0x002e, B:14:0x0055, B:20:0x006c, B:22:0x0074, B:30:0x0047, B:32:0x004e), top: B:7:0x0020 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /* JADX WARN: Type inference failed for: r7v6, types: [kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r7v7, types: [kotlin.jvm.functions.Function1] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0089 -> B:13:0x0031). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object receiveEvents(android.content.Context r7, androidx.glance.session.SessionWorkerKt$runSession$6 r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof androidx.glance.session.Session$receiveEvents$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.glance.session.Session$receiveEvents$1 r0 = (androidx.glance.session.Session$receiveEvents$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.glance.session.Session$receiveEvents$1 r0 = new androidx.glance.session.Session$receiveEvents$1
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r9 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L4b
            if (r2 == r4) goto L3f
            if (r2 != r3) goto L38
            kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator r6 = r0.L$3
            kotlin.jvm.functions.Function1 r7 = r0.L$2
            android.content.Context r8 = r0.L$1
            androidx.glance.appwidget.AppWidgetSession r2 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: kotlinx.coroutines.channels.ClosedReceiveChannelException -> L8c
        L31:
            r5 = r2
            r2 = r6
            r6 = r5
            r5 = r8
            r8 = r7
            r7 = r5
            goto L55
        L38:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            r6 = 0
            return r6
        L3f:
            kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator r6 = r0.L$3
            kotlin.jvm.functions.Function1 r7 = r0.L$2
            android.content.Context r8 = r0.L$1
            androidx.glance.appwidget.AppWidgetSession r2 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: kotlinx.coroutines.channels.ClosedReceiveChannelException -> L8c
            goto L6c
        L4b:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.channels.BufferedChannel r9 = r6.eventChannel     // Catch: kotlinx.coroutines.channels.ClosedReceiveChannelException -> L8c
            kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator r2 = new kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator     // Catch: kotlinx.coroutines.channels.ClosedReceiveChannelException -> L8c
            r2.<init>()     // Catch: kotlinx.coroutines.channels.ClosedReceiveChannelException -> L8c
        L55:
            r0.L$0 = r6     // Catch: kotlinx.coroutines.channels.ClosedReceiveChannelException -> L8c
            r0.L$1 = r7     // Catch: kotlinx.coroutines.channels.ClosedReceiveChannelException -> L8c
            r0.L$2 = r8     // Catch: kotlinx.coroutines.channels.ClosedReceiveChannelException -> L8c
            r0.L$3 = r2     // Catch: kotlinx.coroutines.channels.ClosedReceiveChannelException -> L8c
            r0.label = r4     // Catch: kotlinx.coroutines.channels.ClosedReceiveChannelException -> L8c
            java.lang.Object r9 = r2.hasNext(r0)     // Catch: kotlinx.coroutines.channels.ClosedReceiveChannelException -> L8c
            if (r9 != r1) goto L66
            goto L8b
        L66:
            r5 = r2
            r2 = r6
            r6 = r5
            r5 = r8
            r8 = r7
            r7 = r5
        L6c:
            java.lang.Boolean r9 = (java.lang.Boolean) r9     // Catch: kotlinx.coroutines.channels.ClosedReceiveChannelException -> L8c
            boolean r9 = r9.booleanValue()     // Catch: kotlinx.coroutines.channels.ClosedReceiveChannelException -> L8c
            if (r9 == 0) goto L8c
            java.lang.Object r9 = r6.next()     // Catch: kotlinx.coroutines.channels.ClosedReceiveChannelException -> L8c
            r7.invoke(r9)     // Catch: kotlinx.coroutines.channels.ClosedReceiveChannelException -> L8c
            r0.L$0 = r2     // Catch: kotlinx.coroutines.channels.ClosedReceiveChannelException -> L8c
            r0.L$1 = r8     // Catch: kotlinx.coroutines.channels.ClosedReceiveChannelException -> L8c
            r0.L$2 = r7     // Catch: kotlinx.coroutines.channels.ClosedReceiveChannelException -> L8c
            r0.L$3 = r6     // Catch: kotlinx.coroutines.channels.ClosedReceiveChannelException -> L8c
            r0.label = r3     // Catch: kotlinx.coroutines.channels.ClosedReceiveChannelException -> L8c
            java.lang.Object r9 = r2.processEvent(r8, r9, r0)     // Catch: kotlinx.coroutines.channels.ClosedReceiveChannelException -> L8c
            if (r9 != r1) goto L31
        L8b:
            return r1
        L8c:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.appwidget.AppWidgetSession.receiveEvents(android.content.Context, androidx.glance.session.SessionWorkerKt$runSession$6, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final Object sendEvent(Object obj, ContinuationImpl continuationImpl) {
        Object send = this.eventChannel.send(obj, continuationImpl);
        return send == CoroutineSingletons.COROUTINE_SUSPENDED ? send : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object waitForReady(kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof androidx.glance.appwidget.AppWidgetSession$waitForReady$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.glance.appwidget.AppWidgetSession$waitForReady$1 r0 = (androidx.glance.appwidget.AppWidgetSession$waitForReady$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.glance.appwidget.AppWidgetSession$waitForReady$1 r0 = new androidx.glance.appwidget.AppWidgetSession$waitForReady$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L30
            if (r2 != r3) goto L29
            androidx.glance.appwidget.AppWidgetSession$WaitForReady r5 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4b
        L29:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            r5 = 0
            return r5
        L30:
            kotlin.ResultKt.throwOnFailure(r6)
            androidx.glance.appwidget.AppWidgetSession$WaitForReady r6 = new androidx.glance.appwidget.AppWidgetSession$WaitForReady
            kotlinx.coroutines.JobImpl r2 = new kotlinx.coroutines.JobImpl
            kotlinx.coroutines.JobImpl r4 = r5.parentJob
            r2.<init>(r4)
            r6.<init>(r2)
            r0.L$0 = r6
            r0.label = r3
            java.lang.Object r5 = r5.sendEvent(r6, r0)
            if (r5 != r1) goto L4a
            return r1
        L4a:
            r5 = r6
        L4b:
            kotlinx.coroutines.JobImpl r5 = r5.job
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.appwidget.AppWidgetSession.waitForReady(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
