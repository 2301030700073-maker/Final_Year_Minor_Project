package androidx.room.coroutines;

import androidx.room.RoomDatabase;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowUtil$createFlow$$inlined$map$1 implements Flow {
    public final /* synthetic */ Function1 $block$inlined;
    public final /* synthetic */ RoomDatabase $db$inlined;
    public final /* synthetic */ boolean $inTransaction$inlined;
    public final /* synthetic */ Flow $this_unsafeTransform$inlined;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2, reason: invalid class name */
    public final class AnonymousClass2 implements FlowCollector {
        public final /* synthetic */ Function1 $block$inlined;
        public final /* synthetic */ RoomDatabase $db$inlined;
        public final /* synthetic */ boolean $inTransaction$inlined;
        public final /* synthetic */ FlowCollector $this_unsafeFlow;

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        /* renamed from: androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2$1, reason: invalid class name */
        public final class AnonymousClass1 extends ContinuationImpl {
            Object L$0;
            int label;
            /* synthetic */ Object result;

            public AnonymousClass1(Continuation continuation) {
                super(continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                this.result = obj;
                this.label |= Integer.MIN_VALUE;
                return AnonymousClass2.this.emit(null, this);
            }
        }

        public AnonymousClass2(FlowCollector flowCollector, RoomDatabase roomDatabase, boolean z, Function1 function1) {
            this.$this_unsafeFlow = flowCollector;
            this.$db$inlined = roomDatabase;
            this.$inTransaction$inlined = z;
            this.$block$inlined = function1;
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x005a, code lost:
        
            if (r6.emit(r8, r0) != r5) goto L23;
         */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0039  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(java.lang.Object r7, kotlin.coroutines.Continuation r8) {
            /*
                r6 = this;
                boolean r0 = r8 instanceof androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1.AnonymousClass2.AnonymousClass1
                if (r0 == 0) goto L13
                r0 = r8
                androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2$1 r0 = (androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2$1 r0 = new androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2$1
                r0.<init>(r8)
            L18:
                java.lang.Object r8 = r0.result
                int r1 = r0.label
                r2 = 0
                r3 = 2
                r4 = 1
                kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                if (r1 == 0) goto L39
                if (r1 == r4) goto L31
                if (r1 != r3) goto L2b
                kotlin.ResultKt.throwOnFailure(r8)
                goto L5d
            L2b:
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r6)
                return r2
            L31:
                java.lang.Object r6 = r0.L$0
                kotlinx.coroutines.flow.FlowCollector r6 = (kotlinx.coroutines.flow.FlowCollector) r6
                kotlin.ResultKt.throwOnFailure(r8)
                goto L52
            L39:
                kotlin.ResultKt.throwOnFailure(r8)
                java.util.Set r7 = (java.util.Set) r7
                kotlinx.coroutines.flow.FlowCollector r7 = r6.$this_unsafeFlow
                r0.L$0 = r7
                r0.label = r4
                androidx.room.RoomDatabase r8 = r6.$db$inlined
                boolean r1 = r6.$inTransaction$inlined
                kotlin.jvm.functions.Function1 r6 = r6.$block$inlined
                java.lang.Object r8 = androidx.room.util.DBUtil.performSuspending(r8, r4, r1, r6, r0)
                if (r8 != r5) goto L51
                goto L5c
            L51:
                r6 = r7
            L52:
                r0.L$0 = r2
                r0.label = r3
                java.lang.Object r6 = r6.emit(r8, r0)
                if (r6 != r5) goto L5d
            L5c:
                return r5
            L5d:
                kotlin.Unit r6 = kotlin.Unit.INSTANCE
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    public FlowUtil$createFlow$$inlined$map$1(Flow flow, RoomDatabase roomDatabase, boolean z, Function1 function1) {
        this.$this_unsafeTransform$inlined = flow;
        this.$db$inlined = roomDatabase;
        this.$inTransaction$inlined = z;
        this.$block$inlined = function1;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public final Object collect(FlowCollector flowCollector, Continuation continuation) {
        Object collect = this.$this_unsafeTransform$inlined.collect(new AnonymousClass2(flowCollector, this.$db$inlined, this.$inTransaction$inlined, this.$block$inlined), continuation);
        return collect == CoroutineSingletons.COROUTINE_SUSPENDED ? collect : Unit.INSTANCE;
    }
}
