package androidx.room.coroutines;

import androidx.room.RoomDatabase;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAll$$inlined$map$1;
import net.thunderbird.core.common.action.SwipeActions;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.BuildSwipeActions;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FlowUtil$createFlow$$inlined$map$1 implements Flow {
    public final /* synthetic */ Object $block$inlined;
    public final /* synthetic */ Object $db$inlined;
    public final /* synthetic */ boolean $inTransaction$inlined;
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Flow $this_unsafeTransform$inlined;

    public FlowUtil$createFlow$$inlined$map$1(DefaultLegacyAccountManager$getAll$$inlined$map$1 defaultLegacyAccountManager$getAll$$inlined$map$1, BuildSwipeActions buildSwipeActions, SwipeActions swipeActions, boolean z) {
        this.$this_unsafeTransform$inlined = defaultLegacyAccountManager$getAll$$inlined$map$1;
        this.$db$inlined = buildSwipeActions;
        this.$block$inlined = swipeActions;
        this.$inTransaction$inlined = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003d  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object collect(kotlinx.coroutines.flow.FlowCollector r11, kotlin.coroutines.Continuation r12) {
        /*
            r10 = this;
            int r0 = r10.$r8$classId
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            boolean r2 = r10.$inTransaction$inlined
            java.lang.Object r3 = r10.$block$inlined
            java.lang.Object r4 = r10.$db$inlined
            kotlinx.coroutines.flow.Flow r5 = r10.$this_unsafeTransform$inlined
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            switch(r0) {
                case 0: goto L55;
                default: goto L11;
            }
        L11:
            boolean r0 = r12 instanceof net.thunderbird.feature.mail.message.list.internal.domain.usecase.BuildSwipeActions$swipeActions$1$invokeSuspend$$inlined$map$1$1
            if (r0 == 0) goto L24
            r0 = r12
            net.thunderbird.feature.mail.message.list.internal.domain.usecase.BuildSwipeActions$swipeActions$1$invokeSuspend$$inlined$map$1$1 r0 = (net.thunderbird.feature.mail.message.list.internal.domain.usecase.BuildSwipeActions$swipeActions$1$invokeSuspend$$inlined$map$1$1) r0
            int r7 = r0.label
            r8 = -2147483648(0xffffffff80000000, float:-0.0)
            r9 = r7 & r8
            if (r9 == 0) goto L24
            int r7 = r7 - r8
            r0.label = r7
            goto L29
        L24:
            net.thunderbird.feature.mail.message.list.internal.domain.usecase.BuildSwipeActions$swipeActions$1$invokeSuspend$$inlined$map$1$1 r0 = new net.thunderbird.feature.mail.message.list.internal.domain.usecase.BuildSwipeActions$swipeActions$1$invokeSuspend$$inlined$map$1$1
            r0.<init>(r10, r12)
        L29:
            java.lang.Object r10 = r0.result
            int r12 = r0.label
            r7 = 1
            if (r12 == 0) goto L3d
            if (r12 != r7) goto L36
            kotlin.ResultKt.throwOnFailure(r10)
            goto L54
        L36:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r10)
            r1 = 0
            goto L54
        L3d:
            kotlin.ResultKt.throwOnFailure(r10)
            net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAll$$inlined$map$1 r5 = (net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAll$$inlined$map$1) r5
            androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2 r10 = new androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2
            net.thunderbird.feature.mail.message.list.internal.domain.usecase.BuildSwipeActions r4 = (net.thunderbird.feature.mail.message.list.internal.domain.usecase.BuildSwipeActions) r4
            net.thunderbird.core.common.action.SwipeActions r3 = (net.thunderbird.core.common.action.SwipeActions) r3
            r10.<init>(r11, r4, r3, r2)
            r0.label = r7
            java.lang.Object r10 = r5.collect(r10, r0)
            if (r10 != r6) goto L54
            r1 = r6
        L54:
            return r1
        L55:
            androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2 r10 = new androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2
            androidx.room.RoomDatabase r4 = (androidx.room.RoomDatabase) r4
            kotlin.jvm.functions.Function1 r3 = (kotlin.jvm.functions.Function1) r3
            r10.<init>(r11, r4, r2, r3)
            java.lang.Object r10 = r5.collect(r10, r12)
            if (r10 != r6) goto L65
            r1 = r10
        L65:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2, reason: invalid class name */
    public final class AnonymousClass2 implements FlowCollector {
        public final /* synthetic */ Object $block$inlined;
        public final /* synthetic */ Object $db$inlined;
        public final /* synthetic */ boolean $inTransaction$inlined;
        public final /* synthetic */ int $r8$classId = 0;
        public final /* synthetic */ FlowCollector $this_unsafeFlow;

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        /* renamed from: androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2$1, reason: invalid class name */
        public final class AnonymousClass1 extends ContinuationImpl {
            public FlowCollector L$0;
            public int label;
            public /* synthetic */ Object result;

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

        /* JADX WARN: Code restructure failed: missing block: B:50:0x00cd, code lost:
        
            if (r13 == r4) goto L44;
         */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0037  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0042  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00a9  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x00bc  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(java.lang.Object r14, kotlin.coroutines.Continuation r15) {
            /*
                Method dump skipped, instructions count: 226
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
        }

        public AnonymousClass2(FlowCollector flowCollector, BuildSwipeActions buildSwipeActions, SwipeActions swipeActions, boolean z) {
            this.$this_unsafeFlow = flowCollector;
            this.$db$inlined = buildSwipeActions;
            this.$block$inlined = swipeActions;
            this.$inTransaction$inlined = z;
        }
    }

    public FlowUtil$createFlow$$inlined$map$1(Flow flow, RoomDatabase roomDatabase, boolean z, Function1 function1) {
        this.$this_unsafeTransform$inlined = flow;
        this.$db$inlined = roomDatabase;
        this.$inTransaction$inlined = z;
        this.$block$inlined = function1;
    }
}
