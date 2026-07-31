package androidx.room;

import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TriggerBasedInvalidationTracker$createFlow$1$2 implements FlowCollector {
    public final /* synthetic */ Object $$this$flow;
    public final /* synthetic */ Object $currentVersions;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $resolvedTableNames;
    public final /* synthetic */ Object $tableIds;

    public TriggerBasedInvalidationTracker$createFlow$1$2(Ref$ObjectRef ref$ObjectRef, CoroutineScope coroutineScope, ChannelFlowTransformLatest channelFlowTransformLatest, FlowCollector flowCollector) {
        this.$r8$classId = 3;
        this.$currentVersions = ref$ObjectRef;
        this.$resolvedTableNames = coroutineScope;
        this.$tableIds = channelFlowTransformLatest;
        this.$$this$flow = flowCollector;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(java.lang.Object r8, kotlin.coroutines.Continuation r9) {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public /* synthetic */ TriggerBasedInvalidationTracker$createFlow$1$2(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.$r8$classId = i;
        this.$currentVersions = obj;
        this.$$this$flow = obj2;
        this.$resolvedTableNames = obj3;
        this.$tableIds = obj4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0053, code lost:
    
        if (r1.emit(r13, r3) == r4) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0097, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0095, code lost:
    
        if (r1.emit(r13, r3) == r4) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object emit(int[] r14, kotlin.coroutines.Continuation r15) {
        /*
            r13 = this;
            java.lang.Object r0 = r13.$resolvedTableNames
            java.lang.String[] r0 = (java.lang.String[]) r0
            java.lang.Object r1 = r13.$$this$flow
            kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
            java.lang.Object r2 = r13.$currentVersions
            kotlin.jvm.internal.Ref$ObjectRef r2 = (kotlin.jvm.internal.Ref$ObjectRef) r2
            boolean r3 = r15 instanceof androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1
            if (r3 == 0) goto L1f
            r3 = r15
            androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1 r3 = (androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1) r3
            int r4 = r3.label
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            r6 = r4 & r5
            if (r6 == 0) goto L1f
            int r4 = r4 - r5
            r3.label = r4
            goto L24
        L1f:
            androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1 r3 = new androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1
            r3.<init>(r13, r15)
        L24:
            java.lang.Object r15 = r3.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r5 = r3.label
            r6 = 0
            r7 = 2
            r8 = 1
            if (r5 == 0) goto L40
            if (r5 == r8) goto L3a
            if (r5 != r7) goto L34
            goto L3a
        L34:
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r13)
            return r6
        L3a:
            int[] r14 = r3.L$0
            kotlin.ResultKt.throwOnFailure(r15)
            goto L98
        L40:
            kotlin.ResultKt.throwOnFailure(r15)
            java.lang.Object r15 = r2.element
            if (r15 != 0) goto L56
            java.util.Set r13 = kotlin.collections.ArraysKt___ArraysKt.toSet(r0)
            r3.L$0 = r14
            r3.label = r8
            java.lang.Object r13 = r1.emit(r13, r3)
            if (r13 != r4) goto L98
            goto L97
        L56:
            java.lang.Object r13 = r13.$tableIds
            int[] r13 = (int[]) r13
            java.util.ArrayList r15 = new java.util.ArrayList
            r15.<init>()
            int r5 = r0.length
            r8 = 0
            r9 = r8
        L62:
            if (r8 >= r5) goto L83
            r10 = r0[r8]
            int r11 = r9 + 1
            java.lang.Object r12 = r2.element
            if (r12 == 0) goto L7d
            int[] r12 = (int[]) r12
            r9 = r13[r9]
            r12 = r12[r9]
            r9 = r14[r9]
            if (r12 == r9) goto L79
            r15.add(r10)
        L79:
            int r8 = r8 + 1
            r9 = r11
            goto L62
        L7d:
            java.lang.String r13 = "Required value was null."
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r13)
            return r6
        L83:
            boolean r13 = r15.isEmpty()
            if (r13 != 0) goto L98
            java.util.Set r13 = kotlin.collections.CollectionsKt.toSet(r15)
            r3.L$0 = r14
            r3.label = r7
            java.lang.Object r13 = r1.emit(r13, r3)
            if (r13 != r4) goto L98
        L97:
            return r4
        L98:
            r2.element = r14
            kotlin.Unit r13 = kotlin.Unit.INSTANCE
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2.emit(int[], kotlin.coroutines.Continuation):java.lang.Object");
    }
}
