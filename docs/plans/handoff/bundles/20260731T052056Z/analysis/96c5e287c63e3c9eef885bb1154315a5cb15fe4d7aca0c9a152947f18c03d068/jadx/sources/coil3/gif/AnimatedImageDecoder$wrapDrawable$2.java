package coil3.gif;

import android.graphics.drawable.Animatable2;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnimatedImageDecoder$wrapDrawable$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Drawable $baseDrawable;
    public final /* synthetic */ Function0 $onEnd;
    public final /* synthetic */ Function0 $onStart;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimatedImageDecoder$wrapDrawable$2(Drawable drawable, Function0 function0, Function0 function02, Continuation continuation) {
        super(2, continuation);
        this.$baseDrawable = drawable;
        this.$onStart = function0;
        this.$onEnd = function02;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AnimatedImageDecoder$wrapDrawable$2(this.$baseDrawable, this.$onStart, this.$onEnd, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        AnimatedImageDecoder$wrapDrawable$2 animatedImageDecoder$wrapDrawable$2 = (AnimatedImageDecoder$wrapDrawable$2) create((CoroutineScope) obj, (Continuation) obj2);
        Unit unit = Unit.INSTANCE;
        animatedImageDecoder$wrapDrawable$2.invokeSuspend(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ResultKt.throwOnFailure(obj);
        AnimatedImageDrawable animatedImageDrawable = (AnimatedImageDrawable) this.$baseDrawable;
        final Function0 function0 = this.$onStart;
        final Function0 function02 = this.$onEnd;
        animatedImageDrawable.registerAnimationCallback(new Animatable2.AnimationCallback() { // from class: coil3.gif.internal.UtilsKt$animatable2CallbackOf$1
            @Override // android.graphics.drawable.Animatable2.AnimationCallback
            public final void onAnimationEnd(Drawable drawable) {
                Function0 function03 = function02;
                if (function03 != null) {
                    function03.invoke();
                }
            }

            @Override // android.graphics.drawable.Animatable2.AnimationCallback
            public final void onAnimationStart(Drawable drawable) {
                Function0 function03 = Function0.this;
                if (function03 != null) {
                    function03.invoke();
                }
            }
        });
        return Unit.INSTANCE;
    }
}
