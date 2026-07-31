package androidx.room;

import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TriggerBasedInvalidationTracker$createFlow$1$2 implements FlowCollector {
    public final /* synthetic */ Object $$this$flow;
    public final /* synthetic */ Object $currentVersions;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $resolvedTableNames;
    public final /* synthetic */ Object $tableIds;

    public TriggerBasedInvalidationTracker$createFlow$1$2(Ref$ObjectRef ref$ObjectRef, CoroutineScope coroutineScope, ChannelFlowTransformLatest channelFlowTransformLatest, FlowCollector flowCollector) {
        this.$r8$classId = 5;
        this.$currentVersions = ref$ObjectRef;
        this.$resolvedTableNames = coroutineScope;
        this.$tableIds = channelFlowTransformLatest;
        this.$$this$flow = flowCollector;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0041  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(java.lang.Object r12, kotlin.coroutines.Continuation r13) {
        /*
            Method dump skipped, instructions count: 680
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

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0062, code lost:
    
        if (r4.emit(r2, r5) == r10) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00ac, code lost:
    
        return r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00aa, code lost:
    
        if (r4.emit(r2, r5) == r10) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object emit(int[] r18, kotlin.coroutines.Continuation r19) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            r2 = r19
            java.lang.Object r3 = r0.$resolvedTableNames
            java.lang.String[] r3 = (java.lang.String[]) r3
            java.lang.Object r4 = r0.$$this$flow
            kotlinx.coroutines.flow.FlowCollector r4 = (kotlinx.coroutines.flow.FlowCollector) r4
            boolean r5 = r2 instanceof androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1
            if (r5 == 0) goto L21
            r5 = r2
            androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1 r5 = (androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1) r5
            int r6 = r5.label
            r7 = -2147483648(0xffffffff80000000, float:-0.0)
            r8 = r6 & r7
            if (r8 == 0) goto L21
            int r6 = r6 - r7
            r5.label = r6
            goto L26
        L21:
            androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1 r5 = new androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2$emit$1
            r5.<init>(r0, r2)
        L26:
            java.lang.Object r2 = r5.result
            int r6 = r5.label
            r7 = 0
            r8 = 2
            r9 = 1
            if (r6 == 0) goto L47
            if (r6 == r9) goto L3a
            if (r6 != r8) goto L34
            goto L3a
        L34:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r0)
            return r7
        L3a:
            int[] r0 = r5.L$1
            androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2 r1 = r5.L$0
            kotlin.ResultKt.throwOnFailure(r2)
            r16 = r1
            r1 = r0
            r0 = r16
            goto Lad
        L47:
            kotlin.ResultKt.throwOnFailure(r2)
            java.lang.Object r2 = r0.$currentVersions
            kotlin.jvm.internal.Ref$ObjectRef r2 = (kotlin.jvm.internal.Ref$ObjectRef) r2
            java.lang.Object r6 = r2.element
            kotlin.coroutines.intrinsics.CoroutineSingletons r10 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r6 != 0) goto L65
            java.util.Set r2 = kotlin.collections.ArraysKt___ArraysKt.toSet(r3)
            r5.L$0 = r0
            r5.L$1 = r1
            r5.label = r9
            java.lang.Object r2 = r4.emit(r2, r5)
            if (r2 != r10) goto Lad
            goto Lac
        L65:
            java.lang.Object r6 = r0.$tableIds
            int[] r6 = (int[]) r6
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
            int r11 = r3.length
            r12 = 0
            r13 = r12
        L71:
            if (r12 >= r11) goto L96
            r14 = r3[r12]
            int r15 = r13 + 1
            r19 = r7
            java.lang.Object r7 = r2.element
            if (r7 == 0) goto L90
            int[] r7 = (int[]) r7
            r13 = r6[r13]
            r7 = r7[r13]
            r13 = r1[r13]
            if (r7 == r13) goto L8a
            r9.add(r14)
        L8a:
            int r12 = r12 + 1
            r7 = r19
            r13 = r15
            goto L71
        L90:
            java.lang.String r0 = "Required value was null."
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r0)
            return r19
        L96:
            boolean r2 = r9.isEmpty()
            if (r2 != 0) goto Lad
            java.util.Set r2 = kotlin.collections.CollectionsKt.toSet(r9)
            r5.L$0 = r0
            r5.L$1 = r1
            r5.label = r8
            java.lang.Object r2 = r4.emit(r2, r5)
            if (r2 != r10) goto Lad
        Lac:
            return r10
        Lad:
            java.lang.Object r0 = r0.$currentVersions
            kotlin.jvm.internal.Ref$ObjectRef r0 = (kotlin.jvm.internal.Ref$ObjectRef) r0
            r0.element = r1
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2.emit(int[], kotlin.coroutines.Continuation):java.lang.Object");
    }
}
