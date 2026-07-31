package androidx.glance.session;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.Data;
import androidx.work.WorkerParameters;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineDispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rB\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\f\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/glance/session/SessionWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "appContext", "Landroidx/work/WorkerParameters;", "params", "Landroidx/glance/session/SessionManager;", "sessionManager", "Landroidx/glance/session/TimeoutOptions;", "timeouts", "Lkotlinx/coroutines/CoroutineDispatcher;", "coroutineContext", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;Landroidx/glance/session/SessionManager;Landroidx/glance/session/TimeoutOptions;Lkotlinx/coroutines/CoroutineDispatcher;)V", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "glance_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SessionWorker extends CoroutineWorker {
    public final CoroutineDispatcher coroutineContext;
    public final String key;
    public final WorkerParameters params;
    public final SessionManager sessionManager;
    public final TimeoutOptions timeouts;

    public SessionWorker(Context context, WorkerParameters workerParameters, SessionManager sessionManager, TimeoutOptions timeoutOptions, CoroutineDispatcher coroutineDispatcher) {
        super(context, workerParameters);
        this.params = workerParameters;
        this.sessionManager = sessionManager;
        this.timeouts = timeoutOptions;
        this.coroutineContext = coroutineDispatcher;
        Data data = this.mWorkerParams.mInputData;
        sessionManager.getClass();
        Object obj = data.values.get("KEY");
        String str = obj instanceof String ? (String) obj : null;
        if (str != null) {
            this.key = str;
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("SessionWorker must be started with a key");
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0067 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @Override // androidx.work.CoroutineWorker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object doWork(kotlin.coroutines.Continuation r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof androidx.glance.session.SessionWorker$doWork$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.glance.session.SessionWorker$doWork$1 r0 = (androidx.glance.session.SessionWorker$doWork$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L1a
        L13:
            androidx.glance.session.SessionWorker$doWork$1 r0 = new androidx.glance.session.SessionWorker$doWork$1
            kotlin.coroutines.jvm.internal.ContinuationImpl r6 = (kotlin.coroutines.jvm.internal.ContinuationImpl) r6
            r0.<init>(r5, r6)
        L1a:
            java.lang.Object r6 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L30
            if (r2 != r4) goto L2a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L49
        L2a:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r3
        L30:
            kotlin.ResultKt.throwOnFailure(r6)
            androidx.glance.session.TimeoutOptions r6 = r5.timeouts
            r6.getClass()
            androidx.paging.PageFetcher$flow$1 r6 = new androidx.paging.PageFetcher$flow$1
            r2 = 6
            r6.<init>(r2, r5, r3)
            r0.label = r4
            androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0 r5 = androidx.glance.session.TimeSource$Companion.Monotonic
            java.lang.Object r6 = coil3.util.ContextsKt.withTimerOrNull(r5, r6, r0)
            if (r6 != r1) goto L49
            return r1
        L49:
            androidx.work.ListenableWorker$Result r6 = (androidx.work.ListenableWorker.Result) r6
            if (r6 != 0) goto L67
            java.util.LinkedHashMap r5 = new java.util.LinkedHashMap
            r5.<init>()
            java.lang.String r6 = "TIMEOUT_EXIT_REASON"
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            r5.put(r6, r0)
            androidx.work.Data r6 = new androidx.work.Data
            r6.<init>(r5)
            kotlin.uuid.UuidKt.toByteArrayInternalV1(r6)
            androidx.work.ListenableWorker$Result$Success r5 = new androidx.work.ListenableWorker$Result$Success
            r5.<init>(r6)
            return r5
        L67:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.session.SessionWorker.doWork(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.work.CoroutineWorker
    public final CoroutineDispatcher getCoroutineContext() {
        return this.coroutineContext;
    }

    public SessionWorker(Context context, WorkerParameters workerParameters) {
        this(context, workerParameters, SessionManagerKt.GlanceSessionManager, null, null, 24, null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SessionWorker(android.content.Context r7, androidx.work.WorkerParameters r8, androidx.glance.session.SessionManager r9, androidx.glance.session.TimeoutOptions r10, kotlinx.coroutines.CoroutineDispatcher r11, int r12, kotlin.jvm.internal.DefaultConstructorMarker r13) {
        /*
            r6 = this;
            r13 = r12 & 4
            if (r13 == 0) goto L6
            androidx.glance.session.SessionManagerImpl r9 = androidx.glance.session.SessionManagerKt.GlanceSessionManager
        L6:
            r3 = r9
            r9 = r12 & 8
            if (r9 == 0) goto L10
            androidx.glance.session.TimeoutOptions r10 = new androidx.glance.session.TimeoutOptions
            r10.<init>()
        L10:
            r4 = r10
            r9 = r12 & 16
            if (r9 == 0) goto L19
            kotlinx.coroutines.scheduling.DefaultScheduler r9 = kotlinx.coroutines.Dispatchers.Default
            kotlinx.coroutines.android.HandlerContext r11 = kotlinx.coroutines.internal.MainDispatcherLoader.dispatcher
        L19:
            r0 = r6
            r1 = r7
            r2 = r8
            r5 = r11
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.session.SessionWorker.<init>(android.content.Context, androidx.work.WorkerParameters, androidx.glance.session.SessionManager, androidx.glance.session.TimeoutOptions, kotlinx.coroutines.CoroutineDispatcher, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
