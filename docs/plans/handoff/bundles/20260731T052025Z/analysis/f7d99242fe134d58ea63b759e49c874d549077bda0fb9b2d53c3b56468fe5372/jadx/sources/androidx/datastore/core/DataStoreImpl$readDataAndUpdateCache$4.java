package androidx.datastore.core;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DataStoreImpl$readDataAndUpdateCache$4 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $cachedVersion;
    public final /* synthetic */ int $r8$classId;
    public Object L$0;
    public /* synthetic */ boolean Z$0;
    public int label;
    public final /* synthetic */ DataStoreImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DataStoreImpl$readDataAndUpdateCache$4(DataStoreImpl dataStoreImpl, int i, Continuation continuation, int i2) {
        super(2, continuation);
        this.$r8$classId = i2;
        this.this$0 = dataStoreImpl;
        this.$cachedVersion = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        int i2 = this.$cachedVersion;
        DataStoreImpl dataStoreImpl = this.this$0;
        switch (i) {
            case 0:
                DataStoreImpl$readDataAndUpdateCache$4 dataStoreImpl$readDataAndUpdateCache$4 = new DataStoreImpl$readDataAndUpdateCache$4(dataStoreImpl, i2, continuation, 0);
                dataStoreImpl$readDataAndUpdateCache$4.Z$0 = ((Boolean) obj).booleanValue();
                return dataStoreImpl$readDataAndUpdateCache$4;
            default:
                DataStoreImpl$readDataAndUpdateCache$4 dataStoreImpl$readDataAndUpdateCache$42 = new DataStoreImpl$readDataAndUpdateCache$4(dataStoreImpl, i2, continuation, 1);
                dataStoreImpl$readDataAndUpdateCache$42.Z$0 = ((Boolean) obj).booleanValue();
                return dataStoreImpl$readDataAndUpdateCache$42;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Boolean bool = (Boolean) obj;
        bool.booleanValue();
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((DataStoreImpl$readDataAndUpdateCache$4) create(bool, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0035, code lost:
    
        if (r10 == r4) goto L17;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005d  */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v7 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            int r0 = r9.$r8$classId
            int r1 = r9.$cachedVersion
            r2 = 0
            java.lang.String r3 = "call to 'resume' before 'invoke' with coroutine"
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            r5 = 1
            r6 = 2
            androidx.datastore.core.DataStoreImpl r7 = r9.this$0
            switch(r0) {
                case 0: goto L62;
                default: goto L10;
            }
        L10:
            int r0 = r9.label
            if (r0 == 0) goto L28
            if (r0 == r5) goto L22
            if (r0 != r6) goto L1e
            java.lang.Object r9 = r9.L$0
            kotlin.ResultKt.throwOnFailure(r10)
            goto L4d
        L1e:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r3)
            goto L61
        L22:
            boolean r0 = r9.Z$0
            kotlin.ResultKt.throwOnFailure(r10)
            goto L38
        L28:
            kotlin.ResultKt.throwOnFailure(r10)
            boolean r0 = r9.Z$0
            r9.Z$0 = r0
            r9.label = r5
            java.lang.Object r10 = r7.readDataFromFileOrDefault(r9)
            if (r10 != r4) goto L38
            goto L48
        L38:
            if (r0 == 0) goto L54
            androidx.datastore.core.SingleProcessCoordinator r0 = r7.getCoordinator()
            r9.L$0 = r10
            r9.label = r6
            java.lang.Integer r9 = r0.getVersion()
            if (r9 != r4) goto L4a
        L48:
            r2 = r4
            goto L61
        L4a:
            r8 = r10
            r10 = r9
            r9 = r8
        L4d:
            java.lang.Number r10 = (java.lang.Number) r10
            int r1 = r10.intValue()
            r10 = r9
        L54:
            androidx.datastore.core.Data r2 = new androidx.datastore.core.Data
            if (r10 == 0) goto L5d
            int r9 = r10.hashCode()
            goto L5e
        L5d:
            r9 = 0
        L5e:
            r2.<init>(r9, r1, r10)
        L61:
            return r2
        L62:
            int r0 = r9.label
            if (r0 == 0) goto L80
            if (r0 == r5) goto L78
            if (r0 != r6) goto L74
            boolean r0 = r9.Z$0
            java.lang.Object r9 = r9.L$0
            java.lang.Throwable r9 = (java.lang.Throwable) r9
            kotlin.ResultKt.throwOnFailure(r10)
            goto Laa
        L74:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r3)
            goto Lc0
        L78:
            boolean r0 = r9.Z$0
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L7e
            goto L90
        L7e:
            r10 = move-exception
            goto L93
        L80:
            kotlin.ResultKt.throwOnFailure(r10)
            boolean r0 = r9.Z$0
            r9.Z$0 = r0     // Catch: java.lang.Throwable -> L7e
            r9.label = r5     // Catch: java.lang.Throwable -> L7e
            java.lang.Object r10 = androidx.datastore.core.DataStoreImpl.access$readDataOrHandleCorruption(r7, r0, r9)     // Catch: java.lang.Throwable -> L7e
            if (r10 != r4) goto L90
            goto La5
        L90:
            androidx.datastore.core.State r10 = (androidx.datastore.core.State) r10     // Catch: java.lang.Throwable -> L7e
            goto Lb7
        L93:
            if (r0 == 0) goto Lb1
            androidx.datastore.core.SingleProcessCoordinator r1 = r7.getCoordinator()
            r9.L$0 = r10
            r9.Z$0 = r0
            r9.label = r6
            java.lang.Integer r9 = r1.getVersion()
            if (r9 != r4) goto La7
        La5:
            r2 = r4
            goto Lc0
        La7:
            r8 = r10
            r10 = r9
            r9 = r8
        Laa:
            java.lang.Number r10 = (java.lang.Number) r10
            int r1 = r10.intValue()
            r10 = r9
        Lb1:
            androidx.datastore.core.ReadException r9 = new androidx.datastore.core.ReadException
            r9.<init>(r10, r1)
            r10 = r9
        Lb7:
            java.lang.Boolean r9 = java.lang.Boolean.valueOf(r0)
            kotlin.Pair r2 = new kotlin.Pair
            r2.<init>(r10, r9)
        Lc0:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$4.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
