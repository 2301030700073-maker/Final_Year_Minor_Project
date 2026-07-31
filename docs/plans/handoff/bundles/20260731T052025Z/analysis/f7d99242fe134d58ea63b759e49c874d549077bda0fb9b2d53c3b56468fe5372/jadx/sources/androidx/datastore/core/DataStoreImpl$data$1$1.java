package androidx.datastore.core;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DataStoreImpl$data$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ DataStoreImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DataStoreImpl$data$1$1(DataStoreImpl dataStoreImpl, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = dataStoreImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        DataStoreImpl dataStoreImpl = this.this$0;
        switch (i) {
            case 0:
                return new DataStoreImpl$data$1$1(dataStoreImpl, continuation, 0);
            case 1:
                return new DataStoreImpl$data$1$1(dataStoreImpl, continuation, 1);
            default:
                return new DataStoreImpl$data$1$1(dataStoreImpl, continuation, 2);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
        }
        return ((DataStoreImpl$data$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0049, code lost:
    
        if (r10 == r6) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:?, code lost:
    
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x003f, code lost:
    
        if (androidx.datastore.core.DataStoreImpl.access$readAndInitOrPropagateAndThrowFailure(r7, r9) == r6) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x007f, code lost:
    
        if (r10 == r6) goto L41;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            int r0 = r9.$r8$classId
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            r2 = -1
            r3 = 2
            r4 = 0
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            androidx.datastore.core.DataStoreImpl r7 = r9.this$0
            r8 = 1
            switch(r0) {
                case 0: goto L9c;
                case 1: goto L57;
                default: goto L11;
            }
        L11:
            androidx.room.ObservedTableVersions r0 = r7.inMemoryCache
            int r1 = r9.label
            if (r1 == 0) goto L29
            if (r1 == r8) goto L23
            if (r1 != r3) goto L1f
            kotlin.ResultKt.throwOnFailure(r10)
            goto L4d
        L1f:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            goto L56
        L23:
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L27
            goto L42
        L27:
            r9 = move-exception
            goto L51
        L29:
            kotlin.ResultKt.throwOnFailure(r10)
            androidx.datastore.core.State r10 = r0.getCurrentState()
            boolean r10 = r10 instanceof androidx.datastore.core.Final
            if (r10 == 0) goto L39
            androidx.datastore.core.State r4 = r0.getCurrentState()
            goto L56
        L39:
            r9.label = r8     // Catch: java.lang.Throwable -> L27
            java.lang.Object r10 = androidx.datastore.core.DataStoreImpl.access$readAndInitOrPropagateAndThrowFailure(r7, r9)     // Catch: java.lang.Throwable -> L27
            if (r10 != r6) goto L42
            goto L4b
        L42:
            r9.label = r3
            r10 = 0
            java.lang.Object r10 = androidx.datastore.core.DataStoreImpl.access$readDataAndUpdateCache(r7, r10, r9)
            if (r10 != r6) goto L4d
        L4b:
            r4 = r6
            goto L56
        L4d:
            r4 = r10
            androidx.datastore.core.State r4 = (androidx.datastore.core.State) r4
            goto L56
        L51:
            androidx.datastore.core.ReadException r4 = new androidx.datastore.core.ReadException
            r4.<init>(r9, r2)
        L56:
            return r4
        L57:
            int r0 = r9.label
            if (r0 == 0) goto L6c
            if (r0 == r8) goto L68
            if (r0 != r3) goto L63
            kotlin.ResultKt.throwOnFailure(r10)
            goto L9b
        L63:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            r1 = r4
            goto L9b
        L68:
            kotlin.ResultKt.throwOnFailure(r10)
            goto L82
        L6c:
            kotlin.ResultKt.throwOnFailure(r10)
            okhttp3.Dispatcher r10 = r7.readAndInit
            r9.label = r8
            java.lang.Object r10 = r10.readyAsyncCalls
            kotlinx.coroutines.CompletableDeferredImpl r10 = (kotlinx.coroutines.CompletableDeferredImpl) r10
            java.lang.Object r10 = r10.awaitInternal(r9)
            if (r10 != r6) goto L7e
            goto L7f
        L7e:
            r10 = r1
        L7f:
            if (r10 != r6) goto L82
            goto L9a
        L82:
            androidx.datastore.core.SingleProcessCoordinator r10 = r7.getCoordinator()
            kotlinx.coroutines.flow.SafeFlow r10 = r10.updateNotifications
            kotlinx.coroutines.flow.Flow r10 = kotlinx.coroutines.flow.FlowKt.buffer$default(r10, r2)
            com.skydoves.landscapist.ImageLoadKt$ImageLoad$1$1$1 r0 = new com.skydoves.landscapist.ImageLoadKt$ImageLoad$1$1$1
            r2 = 4
            r0.<init>(r2, r7)
            r9.label = r3
            java.lang.Object r9 = r10.collect(r0, r9)
            if (r9 != r6) goto L9b
        L9a:
            r1 = r6
        L9b:
            return r1
        L9c:
            int r0 = r9.label
            if (r0 == 0) goto Lab
            if (r0 != r8) goto La6
            kotlin.ResultKt.throwOnFailure(r10)
            goto Lb7
        La6:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            r1 = r4
            goto Lb7
        Lab:
            kotlin.ResultKt.throwOnFailure(r10)
            r9.label = r8
            java.lang.Object r9 = androidx.datastore.core.DataStoreImpl.access$incrementCollector(r7, r9)
            if (r9 != r6) goto Lb7
            r1 = r6
        Lb7:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl$data$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
