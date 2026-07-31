package androidx.compose.animation.core;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SeekableTransitionState$animateTo$2 extends SuspendLambda implements Function1 {
    final /* synthetic */ FiniteAnimationSpec $animationSpec;
    final /* synthetic */ Object $targetState;
    final /* synthetic */ Transition $transition;
    int label;
    final /* synthetic */ SeekableTransitionState this$0;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.compose.animation.core.SeekableTransitionState$animateTo$2$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        final /* synthetic */ FiniteAnimationSpec $animationSpec;
        final /* synthetic */ Object $targetState;
        final /* synthetic */ Transition $transition;
        Object L$0;
        Object L$1;
        int label;
        final /* synthetic */ SeekableTransitionState this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(FiniteAnimationSpec finiteAnimationSpec, SeekableTransitionState seekableTransitionState, Transition transition, Object obj, Continuation continuation) {
            super(2, continuation);
            this.this$0 = seekableTransitionState;
            this.$targetState = obj;
            this.$transition = transition;
            this.$animationSpec = finiteAnimationSpec;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            SeekableTransitionState seekableTransitionState = this.this$0;
            Object obj2 = this.$targetState;
            return new AnonymousClass1(this.$animationSpec, seekableTransitionState, this.$transition, obj2, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        }

        /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r1v11 java.lang.Object, still in use, count: 2, list:
              (r1v11 java.lang.Object) from 0x00c8: IF  (r1v11 java.lang.Object) == (r14v0 kotlin.coroutines.intrinsics.CoroutineSingletons)  -> B:73:0x00cc A[HIDDEN] (LINE:201)
              (r1v11 java.lang.Object) from 0x00cc: PHI (r1v12 java.lang.Object) = (r1v11 java.lang.Object), (r1v13 java.lang.Object), (r1v15 java.lang.Object) binds: [B:75:0x00c8, B:72:0x00cb, B:71:0x00c1] A[DONT_GENERATE, DONT_INLINE]
            	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
            	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
            	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:125)
            	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:62)
            	at jadx.core.dex.visitors.regions.TernaryMod.visitRegion(TernaryMod.java:53)
            	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
            	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
            */
        /* JADX WARN: Removed duplicated region for block: B:21:0x00ec  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r25) {
            /*
                Method dump skipped, instructions count: 477
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.SeekableTransitionState$animateTo$2.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SeekableTransitionState$animateTo$2(FiniteAnimationSpec finiteAnimationSpec, SeekableTransitionState seekableTransitionState, Transition transition, Object obj, Continuation continuation) {
        super(1, continuation);
        this.$transition = transition;
        this.this$0 = seekableTransitionState;
        this.$targetState = obj;
        this.$animationSpec = finiteAnimationSpec;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Transition transition = this.$transition;
        SeekableTransitionState seekableTransitionState = this.this$0;
        Object obj2 = this.$targetState;
        return new SeekableTransitionState$animateTo$2(this.$animationSpec, seekableTransitionState, transition, obj2, (Continuation) obj).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            SeekableTransitionState seekableTransitionState = this.this$0;
            Object obj2 = this.$targetState;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$animationSpec, seekableTransitionState, this.$transition, obj2, null);
            this.label = 1;
            Object coroutineScope = JobKt.coroutineScope(anonymousClass1, this);
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
        this.$transition.onTransitionEnd$animation_core();
        return Unit.INSTANCE;
    }
}
