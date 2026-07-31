package androidx.datastore.core;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$IntRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DataStoreImpl$writeData$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $newData;
    public final /* synthetic */ Ref$IntRef $newVersion;
    public final /* synthetic */ boolean $updateCache;
    public /* synthetic */ Object L$0;
    public Ref$IntRef L$1;
    public int label;
    public final /* synthetic */ DataStoreImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$writeData$2(Ref$IntRef ref$IntRef, DataStoreImpl dataStoreImpl, Object obj, boolean z, Continuation continuation) {
        super(2, continuation);
        this.$newVersion = ref$IntRef;
        this.this$0 = dataStoreImpl;
        this.$newData = obj;
        this.$updateCache = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        DataStoreImpl$writeData$2 dataStoreImpl$writeData$2 = new DataStoreImpl$writeData$2(this.$newVersion, this.this$0, this.$newData, this.$updateCache, continuation);
        dataStoreImpl$writeData$2.L$0 = obj;
        return dataStoreImpl$writeData$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DataStoreImpl$writeData$2) create((FileWriteScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0075, code lost:
    
        if (r10 == r8) goto L21;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            int r0 = r9.label
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            java.lang.Object r2 = r9.$newData
            androidx.datastore.core.DataStoreImpl r3 = r9.this$0
            kotlin.jvm.internal.Ref$IntRef r4 = r9.$newVersion
            r5 = 2
            r6 = 1
            r7 = 0
            kotlin.coroutines.intrinsics.CoroutineSingletons r8 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 == 0) goto L29
            if (r0 == r6) goto L1f
            if (r0 != r5) goto L19
            kotlin.ResultKt.throwOnFailure(r10)
            goto L78
        L19:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r9)
            return r7
        L1f:
            kotlin.jvm.internal.Ref$IntRef r0 = r9.L$1
            java.lang.Object r6 = r9.L$0
            androidx.datastore.core.FileWriteScope r6 = (androidx.datastore.core.FileWriteScope) r6
            kotlin.ResultKt.throwOnFailure(r10)
            goto L50
        L29:
            kotlin.ResultKt.throwOnFailure(r10)
            java.lang.Object r10 = r9.L$0
            androidx.datastore.core.FileWriteScope r10 = (androidx.datastore.core.FileWriteScope) r10
            androidx.datastore.core.SingleProcessCoordinator r0 = r3.getCoordinator()
            r9.L$0 = r10
            r9.L$1 = r4
            r9.label = r6
            androidx.fragment.app.Fragment$7 r0 = r0.version
            java.lang.Object r0 = r0.this$0
            java.util.concurrent.atomic.AtomicInteger r0 = (java.util.concurrent.atomic.AtomicInteger) r0
            int r0 = r0.incrementAndGet()
            java.lang.Integer r6 = new java.lang.Integer
            r6.<init>(r0)
            if (r6 != r8) goto L4c
            goto L77
        L4c:
            r0 = r6
            r6 = r10
            r10 = r0
            r0 = r4
        L50:
            java.lang.Number r10 = (java.lang.Number) r10
            int r10 = r10.intValue()
            r0.element = r10
            r9.L$0 = r7
            r9.L$1 = r7
            r9.label = r5
            java.util.concurrent.atomic.AtomicBoolean r10 = r6.closed
            boolean r10 = r10.get()
            if (r10 != 0) goto L91
            java.io.File r10 = r6.file
            androidx.datastore.core.FileWriteScope$writeData$2 r0 = new androidx.datastore.core.FileWriteScope$writeData$2
            r0.<init>(r6, r2, r7)
            java.lang.Object r10 = com.fsck.k9.sasl.OAuthBearer.access$runFileDiagnosticsIfNotCorruption(r10, r0, r9)
            if (r10 != r8) goto L74
            goto L75
        L74:
            r10 = r1
        L75:
            if (r10 != r8) goto L78
        L77:
            return r8
        L78:
            boolean r9 = r9.$updateCache
            if (r9 == 0) goto L90
            androidx.room.ObservedTableVersions r9 = r3.inMemoryCache
            androidx.datastore.core.Data r10 = new androidx.datastore.core.Data
            if (r2 == 0) goto L87
            int r0 = r2.hashCode()
            goto L88
        L87:
            r0 = 0
        L88:
            int r3 = r4.element
            r10.<init>(r0, r3, r2)
            r9.tryUpdate(r10)
        L90:
            return r1
        L91:
            java.lang.String r9 = "This scope has already been closed."
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r9)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl$writeData$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
