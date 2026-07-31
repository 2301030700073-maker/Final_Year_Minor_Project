package kotlinx.coroutines.flow;

import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.google.common.base.Joiner;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowKt__ShareKt$launchSharing$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Object $initialValue;
    final /* synthetic */ MutableSharedFlow $shared;
    final /* synthetic */ SharingStarted $started;
    final /* synthetic */ Flow $upstream;
    int label;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        /* synthetic */ int I$0;
        int label;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(2, continuation);
            anonymousClass1.I$0 = ((Number) obj).intValue();
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create(Integer.valueOf(((Number) obj).intValue()), (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            int i = this.I$0;
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                return Boolean.valueOf(i > 0);
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2, reason: invalid class name */
    public final class AnonymousClass2 extends SuspendLambda implements Function2 {
        final /* synthetic */ Object $initialValue;
        final /* synthetic */ MutableSharedFlow $shared;
        final /* synthetic */ Flow $upstream;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Flow flow, MutableSharedFlow mutableSharedFlow, Object obj, Continuation continuation) {
            super(2, continuation);
            this.$upstream = flow;
            this.$shared = mutableSharedFlow;
            this.$initialValue = obj;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$upstream, this.$shared, this.$initialValue, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((SharingCommand) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            SharingCommand sharingCommand = (SharingCommand) this.L$0;
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                int ordinal = sharingCommand.ordinal();
                if (ordinal == 0) {
                    Flow flow = this.$upstream;
                    MutableSharedFlow mutableSharedFlow = this.$shared;
                    this.L$0 = null;
                    this.label = 1;
                    Object collect = flow.collect(mutableSharedFlow, this);
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    if (collect == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else if (ordinal != 1) {
                    if (ordinal != 2) {
                        DecodeUtils$$ExternalSyntheticBUOutline0.m();
                        return null;
                    }
                    Object obj2 = this.$initialValue;
                    Joiner joiner = FlowKt.NO_VALUE;
                    MutableSharedFlow mutableSharedFlow2 = this.$shared;
                    if (obj2 == joiner) {
                        mutableSharedFlow2.resetReplayCache();
                    } else {
                        mutableSharedFlow2.tryEmit(obj2);
                    }
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ShareKt$launchSharing$1(SharingStarted sharingStarted, Flow flow, MutableSharedFlow mutableSharedFlow, Object obj, Continuation continuation) {
        super(2, continuation);
        this.$started = sharingStarted;
        this.$upstream = flow;
        this.$shared = mutableSharedFlow;
        this.$initialValue = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FlowKt__ShareKt$launchSharing$1(this.$started, this.$upstream, this.$shared, this.$initialValue, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FlowKt__ShareKt$launchSharing$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0052, code lost:
    
        if (kotlinx.coroutines.flow.FlowKt.first(r15, r0, r14) == r7) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00a4 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            r14 = this;
            int r0 = r14.label
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            r2 = 0
            r3 = 4
            r4 = 3
            r5 = 1
            r6 = 2
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 == 0) goto L25
            if (r0 == r5) goto L20
            if (r0 == r6) goto L1c
            if (r0 == r4) goto L20
            if (r0 != r3) goto L16
            goto L20
        L16:
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r14)
            return r2
        L1c:
            kotlin.ResultKt.throwOnFailure(r15)
            goto L55
        L20:
            kotlin.ResultKt.throwOnFailure(r15)
            goto La4
        L25:
            kotlin.ResultKt.throwOnFailure(r15)
            kotlinx.coroutines.flow.SharingStarted r15 = r14.$started
            kotlinx.coroutines.flow.StartedLazily r0 = kotlinx.coroutines.flow.SharingStarted.Companion.Eagerly
            if (r15 != r0) goto L3b
            kotlinx.coroutines.flow.Flow r15 = r14.$upstream
            kotlinx.coroutines.flow.MutableSharedFlow r0 = r14.$shared
            r14.label = r5
            java.lang.Object r14 = r15.collect(r0, r14)
            if (r14 != r7) goto La4
            goto La3
        L3b:
            kotlinx.coroutines.flow.MutableSharedFlow r0 = r14.$shared
            kotlinx.coroutines.flow.StartedLazily r5 = kotlinx.coroutines.flow.SharingStarted.Companion.Lazily
            if (r15 != r5) goto L62
            kotlinx.coroutines.flow.internal.AbstractSharedFlow r0 = (kotlinx.coroutines.flow.internal.AbstractSharedFlow) r0
            kotlinx.coroutines.flow.internal.SubscriptionCountStateFlow r15 = r0.getSubscriptionCount()
            kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1 r0 = new kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1
            r0.<init>(r6, r2)
            r14.label = r6
            java.lang.Object r15 = kotlinx.coroutines.flow.FlowKt.first(r15, r0, r14)
            if (r15 != r7) goto L55
            goto La3
        L55:
            kotlinx.coroutines.flow.Flow r15 = r14.$upstream
            kotlinx.coroutines.flow.MutableSharedFlow r0 = r14.$shared
            r14.label = r4
            java.lang.Object r14 = r15.collect(r0, r14)
            if (r14 != r7) goto La4
            goto La3
        L62:
            kotlinx.coroutines.flow.internal.AbstractSharedFlow r0 = (kotlinx.coroutines.flow.internal.AbstractSharedFlow) r0
            kotlinx.coroutines.flow.internal.SubscriptionCountStateFlow r0 = r0.getSubscriptionCount()
            kotlinx.coroutines.flow.Flow r15 = r15.command(r0)
            kotlinx.coroutines.flow.Flow r10 = kotlinx.coroutines.flow.FlowKt.distinctUntilChanged(r15)
            kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2 r15 = new kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2
            kotlinx.coroutines.flow.Flow r0 = r14.$upstream
            kotlinx.coroutines.flow.MutableSharedFlow r4 = r14.$shared
            java.lang.Object r5 = r14.$initialValue
            r15.<init>(r0, r4, r5, r2)
            r14.label = r3
            int r0 = kotlinx.coroutines.flow.FlowKt__MergeKt.$r8$clinit
            kotlinx.coroutines.flow.FlowKt__MergeKt$mapLatest$1 r9 = new kotlinx.coroutines.flow.FlowKt__MergeKt$mapLatest$1
            r9.<init>(r15, r2)
            kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest r8 = new kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest
            r12 = -2
            kotlinx.coroutines.channels.BufferOverflow r13 = kotlinx.coroutines.channels.BufferOverflow.SUSPEND
            kotlin.coroutines.EmptyCoroutineContext r11 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE
            r8.<init>(r9, r10, r11, r12, r13)
            r15 = 0
            kotlinx.coroutines.flow.Flow r15 = kotlinx.coroutines.flow.FlowKt.buffer$default(r8, r15)
            kotlinx.coroutines.flow.internal.NopCollector r0 = kotlinx.coroutines.flow.internal.NopCollector.INSTANCE
            java.lang.Object r14 = r15.collect(r0, r14)
            if (r14 != r7) goto L9c
            goto L9d
        L9c:
            r14 = r1
        L9d:
            if (r14 != r7) goto La0
            goto La1
        La0:
            r14 = r1
        La1:
            if (r14 != r7) goto La4
        La3:
            return r7
        La4:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
