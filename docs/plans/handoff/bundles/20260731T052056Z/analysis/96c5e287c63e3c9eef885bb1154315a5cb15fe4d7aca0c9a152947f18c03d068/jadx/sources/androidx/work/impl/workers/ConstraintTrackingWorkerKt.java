package androidx.work.impl.workers;

import androidx.work.Logger$LogcatLogger;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ConstraintTrackingWorkerKt {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("ConstraintTrkngWrkr");

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object awaitConstraintsNotMet(okhttp3.Headers.Builder r5, androidx.work.impl.model.WorkSpec r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            boolean r0 = r7 instanceof androidx.work.impl.workers.ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.work.impl.workers.ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1 r0 = (androidx.work.impl.workers.ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.work.impl.workers.ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1 r0 = new androidx.work.impl.workers.ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L2e
            if (r2 != r4) goto L28
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4f
        L28:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r3
        L2e:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.flow.Flow r5 = r5.track(r6)
            coil3.disk.DiskLruCache$launchCleanup$1 r7 = new coil3.disk.DiskLruCache$launchCleanup$1
            r2 = 5
            r7.<init>(r2, r6, r3)
            kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 r6 = new kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1
            r2 = 3
            r6.<init>(r5, r7, r2)
            kotlinx.coroutines.flow.SafeFlow r5 = new kotlinx.coroutines.flow.SafeFlow
            r5.<init>(r2, r6)
            r0.label = r4
            java.lang.Object r7 = kotlinx.coroutines.flow.StateFlowKt.first(r5, r0)
            if (r7 != r1) goto L4f
            return r1
        L4f:
            androidx.work.impl.constraints.ConstraintsState$ConstraintsNotMet r7 = (androidx.work.impl.constraints.ConstraintsState.ConstraintsNotMet) r7
            int r5 = r7.reason
            java.lang.Integer r6 = new java.lang.Integer
            r6.<init>(r5)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.workers.ConstraintTrackingWorkerKt.awaitConstraintsNotMet(okhttp3.Headers$Builder, androidx.work.impl.model.WorkSpec, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
