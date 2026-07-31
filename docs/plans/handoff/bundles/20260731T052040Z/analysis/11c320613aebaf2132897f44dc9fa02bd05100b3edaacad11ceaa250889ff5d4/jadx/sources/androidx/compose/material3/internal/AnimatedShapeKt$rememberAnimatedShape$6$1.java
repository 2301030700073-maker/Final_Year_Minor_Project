package androidx.compose.material3.internal;

import androidx.compose.foundation.shape.CornerBasedShape;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.Channel;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AnimatedShapeKt$rememberAnimatedShape$6$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Channel $channel;
    final /* synthetic */ AnimatedCornerBasedShapeState $state;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.compose.material3.internal.AnimatedShapeKt$rememberAnimatedShape$6$1$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        final /* synthetic */ CornerBasedShape $newTarget;
        final /* synthetic */ AnimatedCornerBasedShapeState $state;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(AnimatedCornerBasedShapeState animatedCornerBasedShapeState, CornerBasedShape cornerBasedShape, Continuation continuation) {
            super(2, continuation);
            this.$state = animatedCornerBasedShapeState;
            this.$newTarget = cornerBasedShape;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.$state, this.$newTarget, continuation);
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
                AnimatedCornerBasedShapeState animatedCornerBasedShapeState = this.$state;
                CornerBasedShape cornerBasedShape = this.$newTarget;
                this.label = 1;
                animatedCornerBasedShapeState.getClass();
                Object coroutineScope = JobKt.coroutineScope(new AnimatedCornerBasedShapeState$animateToShape$2(animatedCornerBasedShapeState, cornerBasedShape, null), this);
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                if (coroutineScope == coroutineSingletons) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimatedShapeKt$rememberAnimatedShape$6$1(Channel channel, AnimatedCornerBasedShapeState animatedCornerBasedShapeState, Continuation continuation) {
        super(2, continuation);
        this.$channel = channel;
        this.$state = animatedCornerBasedShapeState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        AnimatedShapeKt$rememberAnimatedShape$6$1 animatedShapeKt$rememberAnimatedShape$6$1 = new AnimatedShapeKt$rememberAnimatedShape$6$1(this.$channel, this.$state, continuation);
        animatedShapeKt$rememberAnimatedShape$6$1.L$0 = obj;
        return animatedShapeKt$rememberAnimatedShape$6$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AnimatedShapeKt$rememberAnimatedShape$6$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0036 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x003f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0034 -> B:5:0x0037). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            int r0 = r6.label
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L1a
            if (r0 != r2) goto L14
            java.lang.Object r0 = r6.L$1
            kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator r0 = (kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator) r0
            java.lang.Object r3 = r6.L$0
            kotlinx.coroutines.CoroutineScope r3 = (kotlinx.coroutines.CoroutineScope) r3
            kotlin.ResultKt.throwOnFailure(r7)
            goto L37
        L14:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r6)
            return r1
        L1a:
            kotlin.ResultKt.throwOnFailure(r7)
            java.lang.Object r7 = r6.L$0
            kotlinx.coroutines.CoroutineScope r7 = (kotlinx.coroutines.CoroutineScope) r7
            kotlinx.coroutines.channels.Channel r0 = r6.$channel
            kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator r0 = r0.iterator()
            r3 = r7
        L28:
            r6.L$0 = r3
            r6.L$1 = r0
            r6.label = r2
            java.lang.Object r7 = r0.hasNext(r6)
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r7 != r4) goto L37
            return r4
        L37:
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 == 0) goto L61
            java.lang.Object r7 = r0.next()
            androidx.compose.foundation.shape.CornerBasedShape r7 = (androidx.compose.foundation.shape.CornerBasedShape) r7
            kotlinx.coroutines.channels.Channel r4 = r6.$channel
            java.lang.Object r4 = r4.mo690tryReceivePtdJZtk()
            java.lang.Object r4 = kotlinx.coroutines.channels.ChannelResult.m692getOrNullimpl(r4)
            androidx.compose.foundation.shape.CornerBasedShape r4 = (androidx.compose.foundation.shape.CornerBasedShape) r4
            if (r4 != 0) goto L54
            goto L55
        L54:
            r7 = r4
        L55:
            androidx.compose.material3.internal.AnimatedShapeKt$rememberAnimatedShape$6$1$1 r4 = new androidx.compose.material3.internal.AnimatedShapeKt$rememberAnimatedShape$6$1$1
            androidx.compose.material3.internal.AnimatedCornerBasedShapeState r5 = r6.$state
            r4.<init>(r5, r7, r1)
            r7 = 3
            kotlinx.coroutines.JobKt.launch$default(r3, r1, r1, r4, r7)
            goto L28
        L61:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.internal.AnimatedShapeKt$rememberAnimatedShape$6$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
