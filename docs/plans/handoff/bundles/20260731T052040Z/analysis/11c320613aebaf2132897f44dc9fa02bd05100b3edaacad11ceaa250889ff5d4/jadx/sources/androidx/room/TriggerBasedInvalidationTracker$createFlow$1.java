package androidx.room;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TriggerBasedInvalidationTracker$createFlow$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ boolean $emitInitialState;
    final /* synthetic */ String[] $resolvedTableNames;
    final /* synthetic */ int[] $tableIds;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ TriggerBasedInvalidationTracker this$0;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.room.TriggerBasedInvalidationTracker$createFlow$1$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        int label;
        final /* synthetic */ TriggerBasedInvalidationTracker this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Continuation continuation) {
            super(2, continuation);
            this.this$0 = triggerBasedInvalidationTracker;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = this.this$0;
                this.label = 1;
                Object syncTriggers$room_runtime = triggerBasedInvalidationTracker.syncTriggers$room_runtime(this);
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                if (syncTriggers$room_runtime == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2, reason: invalid class name */
    public final class AnonymousClass2 implements FlowCollector {
        public final /* synthetic */ FlowCollector $$this$flow;
        public final /* synthetic */ Ref$ObjectRef $currentVersions;
        public final /* synthetic */ boolean $emitInitialState;
        public final /* synthetic */ String[] $resolvedTableNames;
        public final /* synthetic */ int[] $tableIds;

        public AnonymousClass2(Ref$ObjectRef ref$ObjectRef, boolean z, FlowCollector flowCollector, String[] strArr, int[] iArr) {
            this.$currentVersions = ref$ObjectRef;
            this.$emitInitialState = z;
            this.$$this$flow = flowCollector;
            this.$resolvedTableNames = strArr;
            this.$tableIds = iArr;
        }

        /* JADX WARN: Code restructure failed: missing block: B:21:0x0059, code lost:
        
            if (r9.emit(r0, r3) == r10) goto L37;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x00a1, code lost:
        
            return r10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x009f, code lost:
        
            if (r9.emit(r0, r3) == r10) goto L37;
         */
        /* JADX WARN: Removed duplicated region for block: B:16:0x003c  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0029  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(int[] r17, kotlin.coroutines.Continuation r18) {
            /*
                r16 = this;
                r0 = r16
                r1 = r17
                r2 = r18
                boolean r3 = r2 instanceof androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1
                if (r3 == 0) goto L19
                r3 = r2
                androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1 r3 = (androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1) r3
                int r4 = r3.label
                r5 = -2147483648(0xffffffff80000000, float:-0.0)
                r6 = r4 & r5
                if (r6 == 0) goto L19
                int r4 = r4 - r5
                r3.label = r4
                goto L1e
            L19:
                androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1 r3 = new androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1
                r3.<init>(r0, r2)
            L1e:
                java.lang.Object r2 = r3.result
                int r4 = r3.label
                r5 = 0
                kotlin.jvm.internal.Ref$ObjectRef r6 = r0.$currentVersions
                r7 = 2
                r8 = 1
                if (r4 == 0) goto L3c
                if (r4 == r8) goto L34
                if (r4 != r7) goto L2e
                goto L34
            L2e:
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r0)
                return r5
            L34:
                java.lang.Object r0 = r3.L$0
                int[] r0 = (int[]) r0
                kotlin.ResultKt.throwOnFailure(r2)
                goto La3
            L3c:
                kotlin.ResultKt.throwOnFailure(r2)
                java.lang.Object r2 = r6.element
                java.lang.String[] r4 = r0.$resolvedTableNames
                kotlinx.coroutines.flow.FlowCollector r9 = r0.$$this$flow
                kotlin.coroutines.intrinsics.CoroutineSingletons r10 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                if (r2 != 0) goto L5c
                boolean r0 = r0.$emitInitialState
                if (r0 == 0) goto La2
                java.util.Set r0 = kotlin.collections.ArraysKt.toSet(r4)
                r3.L$0 = r1
                r3.label = r8
                java.lang.Object r0 = r9.emit(r0, r3)
                if (r0 != r10) goto La2
                goto La1
            L5c:
                java.util.ArrayList r2 = new java.util.ArrayList
                r2.<init>()
                int r8 = r4.length
                r11 = 0
                r12 = r11
            L64:
                if (r11 >= r8) goto L8d
                r13 = r4[r11]
                int r14 = r12 + 1
                java.lang.Object r15 = r6.element
                if (r15 == 0) goto L85
                int[] r15 = (int[]) r15
                r18 = r5
                int[] r5 = r0.$tableIds
                r5 = r5[r12]
                r12 = r15[r5]
                r5 = r1[r5]
                if (r12 == r5) goto L7f
                r2.add(r13)
            L7f:
                int r11 = r11 + 1
                r5 = r18
                r12 = r14
                goto L64
            L85:
                r18 = r5
                java.lang.String r0 = "Required value was null."
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r0)
                return r18
            L8d:
                boolean r0 = r2.isEmpty()
                if (r0 != 0) goto La2
                java.util.Set r0 = kotlin.collections.CollectionsKt.toSet(r2)
                r3.L$0 = r1
                r3.label = r7
                java.lang.Object r0 = r9.emit(r0, r3)
                if (r0 != r10) goto La2
            La1:
                return r10
            La2:
                r0 = r1
            La3:
                r6.element = r0
                kotlin.Unit r0 = kotlin.Unit.INSTANCE
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker$createFlow$1.AnonymousClass2.emit(int[], kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TriggerBasedInvalidationTracker$createFlow$1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, int[] iArr, boolean z, String[] strArr, Continuation continuation) {
        super(2, continuation);
        this.this$0 = triggerBasedInvalidationTracker;
        this.$tableIds = iArr;
        this.$emitInitialState = z;
        this.$resolvedTableNames = strArr;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        TriggerBasedInvalidationTracker$createFlow$1 triggerBasedInvalidationTracker$createFlow$1 = new TriggerBasedInvalidationTracker$createFlow$1(this.this$0, this.$tableIds, this.$emitInitialState, this.$resolvedTableNames, continuation);
        triggerBasedInvalidationTracker$createFlow$1.L$0 = obj;
        return triggerBasedInvalidationTracker$createFlow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        ((TriggerBasedInvalidationTracker$createFlow$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        return CoroutineSingletons.COROUTINE_SUSPENDED;
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ac, code lost:
    
        if (kotlinx.coroutines.JobKt.withContext((kotlin.coroutines.CoroutineContext) r3, r4, r23) == r0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00ae, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0098, code lost:
    
        if (r3 == r0) goto L40;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00e2 A[Catch: all -> 0x00f4, TryCatch #2 {all -> 0x00f4, blocks: (B:17:0x00de, B:19:0x00e2, B:21:0x00f0, B:23:0x00f6, B:27:0x00fb, B:29:0x00ff), top: B:16:0x00de }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x008c  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r24) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker$createFlow$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
