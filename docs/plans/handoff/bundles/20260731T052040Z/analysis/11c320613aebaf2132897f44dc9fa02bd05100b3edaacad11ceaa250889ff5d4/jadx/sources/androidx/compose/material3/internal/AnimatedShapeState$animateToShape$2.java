package androidx.compose.material3.internal;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.shape.CornerBasedShape;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AnimatedShapeState$animateToShape$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ CornerBasedShape $shape;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ AnimatedShapeState this$0;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.compose.material3.internal.AnimatedShapeState$animateToShape$2$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        final /* synthetic */ CornerBasedShape $shape;
        int label;
        final /* synthetic */ AnimatedShapeState this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(AnimatedShapeState animatedShapeState, CornerBasedShape cornerBasedShape, Continuation continuation) {
            super(2, continuation);
            this.this$0 = animatedShapeState;
            this.$shape = cornerBasedShape;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.this$0, this.$shape, continuation);
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
                AnimatedShapeState animatedShapeState = this.this$0;
                Animatable animatable = animatedShapeState.topStart;
                if (animatable != null) {
                    Float f = new Float(this.$shape.topStart.mo115toPxTmRCtEA(animatedShapeState.size, animatedShapeState.density));
                    FiniteAnimationSpec finiteAnimationSpec = this.this$0.spec;
                    this.label = 1;
                    obj = Animatable.animateTo$default(animatable, f, finiteAnimationSpec, this);
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    if (obj == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.INSTANCE;
            }
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.compose.material3.internal.AnimatedShapeState$animateToShape$2$2, reason: invalid class name */
    public final class AnonymousClass2 extends SuspendLambda implements Function2 {
        final /* synthetic */ CornerBasedShape $shape;
        int label;
        final /* synthetic */ AnimatedShapeState this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(AnimatedShapeState animatedShapeState, CornerBasedShape cornerBasedShape, Continuation continuation) {
            super(2, continuation);
            this.this$0 = animatedShapeState;
            this.$shape = cornerBasedShape;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass2(this.this$0, this.$shape, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                AnimatedShapeState animatedShapeState = this.this$0;
                Animatable animatable = animatedShapeState.topEnd;
                if (animatable != null) {
                    Float f = new Float(this.$shape.topEnd.mo115toPxTmRCtEA(animatedShapeState.size, animatedShapeState.density));
                    FiniteAnimationSpec finiteAnimationSpec = this.this$0.spec;
                    this.label = 1;
                    obj = Animatable.animateTo$default(animatable, f, finiteAnimationSpec, this);
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    if (obj == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.INSTANCE;
            }
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.compose.material3.internal.AnimatedShapeState$animateToShape$2$3, reason: invalid class name */
    public final class AnonymousClass3 extends SuspendLambda implements Function2 {
        final /* synthetic */ CornerBasedShape $shape;
        int label;
        final /* synthetic */ AnimatedShapeState this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(AnimatedShapeState animatedShapeState, CornerBasedShape cornerBasedShape, Continuation continuation) {
            super(2, continuation);
            this.this$0 = animatedShapeState;
            this.$shape = cornerBasedShape;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass3(this.this$0, this.$shape, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                AnimatedShapeState animatedShapeState = this.this$0;
                Animatable animatable = animatedShapeState.bottomStart;
                if (animatable != null) {
                    Float f = new Float(this.$shape.bottomStart.mo115toPxTmRCtEA(animatedShapeState.size, animatedShapeState.density));
                    FiniteAnimationSpec finiteAnimationSpec = this.this$0.spec;
                    this.label = 1;
                    obj = Animatable.animateTo$default(animatable, f, finiteAnimationSpec, this);
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    if (obj == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.INSTANCE;
            }
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.compose.material3.internal.AnimatedShapeState$animateToShape$2$4, reason: invalid class name */
    public final class AnonymousClass4 extends SuspendLambda implements Function2 {
        final /* synthetic */ CornerBasedShape $shape;
        int label;
        final /* synthetic */ AnimatedShapeState this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(AnimatedShapeState animatedShapeState, CornerBasedShape cornerBasedShape, Continuation continuation) {
            super(2, continuation);
            this.this$0 = animatedShapeState;
            this.$shape = cornerBasedShape;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass4(this.this$0, this.$shape, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass4) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                AnimatedShapeState animatedShapeState = this.this$0;
                Animatable animatable = animatedShapeState.bottomEnd;
                if (animatable != null) {
                    Float f = new Float(this.$shape.bottomEnd.mo115toPxTmRCtEA(animatedShapeState.size, animatedShapeState.density));
                    FiniteAnimationSpec finiteAnimationSpec = this.this$0.spec;
                    this.label = 1;
                    obj = Animatable.animateTo$default(animatable, f, finiteAnimationSpec, this);
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    if (obj == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.INSTANCE;
            }
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimatedShapeState$animateToShape$2(AnimatedShapeState animatedShapeState, CornerBasedShape cornerBasedShape, Continuation continuation) {
        super(2, continuation);
        this.this$0 = animatedShapeState;
        this.$shape = cornerBasedShape;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        AnimatedShapeState$animateToShape$2 animatedShapeState$animateToShape$2 = new AnimatedShapeState$animateToShape$2(this.this$0, this.$shape, continuation);
        animatedShapeState$animateToShape$2.L$0 = obj;
        return animatedShapeState$animateToShape$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AnimatedShapeState$animateToShape$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        if (this.label != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
        JobKt.launch$default(coroutineScope, null, null, new AnonymousClass1(this.this$0, this.$shape, null), 3);
        JobKt.launch$default(coroutineScope, null, null, new AnonymousClass2(this.this$0, this.$shape, null), 3);
        JobKt.launch$default(coroutineScope, null, null, new AnonymousClass3(this.this$0, this.$shape, null), 3);
        return JobKt.launch$default(coroutineScope, null, null, new AnonymousClass4(this.this$0, this.$shape, null), 3);
    }
}
