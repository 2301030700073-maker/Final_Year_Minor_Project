package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.Animatable;
import androidx.compose.ui.unit.IntOffset;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyLayoutItemAnimation$release$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ LazyLayoutItemAnimation this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ LazyLayoutItemAnimation$release$1(LazyLayoutItemAnimation lazyLayoutItemAnimation, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = lazyLayoutItemAnimation;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        LazyLayoutItemAnimation lazyLayoutItemAnimation = this.this$0;
        switch (i) {
            case 0:
                return new LazyLayoutItemAnimation$release$1(lazyLayoutItemAnimation, continuation, 0);
            case 1:
                return new LazyLayoutItemAnimation$release$1(lazyLayoutItemAnimation, continuation, 1);
            case 2:
                return new LazyLayoutItemAnimation$release$1(lazyLayoutItemAnimation, continuation, 2);
            case 3:
                return new LazyLayoutItemAnimation$release$1(lazyLayoutItemAnimation, continuation, 3);
            default:
                return new LazyLayoutItemAnimation$release$1(lazyLayoutItemAnimation, continuation, 4);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((LazyLayoutItemAnimation$release$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        LazyLayoutItemAnimation lazyLayoutItemAnimation = this.this$0;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Animatable animatable = lazyLayoutItemAnimation.placementDeltaAnimation;
                    this.label = 1;
                    return animatable.stop(this) == coroutineSingletons ? coroutineSingletons : unit;
                }
                if (i2 == 1) {
                    ResultKt.throwOnFailure(obj);
                    return unit;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
            case 1:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 != 0) {
                    if (i3 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                Animatable animatable2 = lazyLayoutItemAnimation.visibilityAnimation;
                Float f = new Float(1.0f);
                this.label = 1;
                return animatable2.snapTo(f, this) == coroutineSingletons2 ? coroutineSingletons2 : unit;
            case 2:
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i4 = this.label;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Animatable animatable3 = lazyLayoutItemAnimation.placementDeltaAnimation;
                    IntOffset intOffset = new IntOffset(0L);
                    this.label = 1;
                    if (animatable3.snapTo(intOffset, this) == coroutineSingletons3) {
                        return coroutineSingletons3;
                    }
                } else {
                    if (i4 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                lazyLayoutItemAnimation.m163setPlacementDeltagyyYBs(0L);
                lazyLayoutItemAnimation.isPlacementAnimationInProgress$delegate.setValue(Boolean.FALSE);
                return unit;
            case 3:
                CoroutineSingletons coroutineSingletons4 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i5 = this.label;
                if (i5 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Animatable animatable4 = lazyLayoutItemAnimation.visibilityAnimation;
                    this.label = 1;
                    return animatable4.stop(this) == coroutineSingletons4 ? coroutineSingletons4 : unit;
                }
                if (i5 == 1) {
                    ResultKt.throwOnFailure(obj);
                    return unit;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
            default:
                CoroutineSingletons coroutineSingletons5 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i6 = this.label;
                if (i6 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Animatable animatable5 = lazyLayoutItemAnimation.visibilityAnimation;
                    this.label = 1;
                    return animatable5.stop(this) == coroutineSingletons5 ? coroutineSingletons5 : unit;
                }
                if (i6 == 1) {
                    ResultKt.throwOnFailure(obj);
                    return unit;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
    }
}
