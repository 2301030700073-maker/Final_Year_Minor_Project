package coil3.gif;

import android.graphics.drawable.Drawable;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.gif.internal.UtilsKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@DebugMetadata(c = "coil3.gif.AnimatedImageDecoder$wrapDrawable$2", f = "AnimatedImageDecoder.kt", l = {}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class AnimatedImageDecoder$wrapDrawable$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ Drawable $baseDrawable;
    final /* synthetic */ Function0 $onEnd;
    final /* synthetic */ Function0 $onStart;
    int label;

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
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((AnimatedImageDecoder$wrapDrawable$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        if (this.label != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        UriKt$$ExternalSyntheticBUOutline0.m856m((Object) this.$baseDrawable).registerAnimationCallback(UtilsKt.animatable2CallbackOf(this.$onStart, this.$onEnd));
        return Unit.INSTANCE;
    }
}
