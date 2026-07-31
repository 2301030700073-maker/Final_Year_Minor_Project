package androidx.navigation3.ui;

import androidx.compose.animation.core.SeekableTransitionState;
import androidx.navigation3.scene.Scene;
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
public final class NavDisplayKt__NavDisplayKt$NavDisplay$11$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Scene $previousScene;
    final /* synthetic */ float $progress;
    final /* synthetic */ SeekableTransitionState $transitionState;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavDisplayKt__NavDisplayKt$NavDisplay$11$1(SeekableTransitionState seekableTransitionState, float f, Scene scene, Continuation continuation) {
        super(2, continuation);
        this.$transitionState = seekableTransitionState;
        this.$progress = f;
        this.$previousScene = scene;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NavDisplayKt__NavDisplayKt$NavDisplay$11$1(this.$transitionState, this.$progress, this.$previousScene, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NavDisplayKt__NavDisplayKt$NavDisplay$11$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            SeekableTransitionState seekableTransitionState = this.$transitionState;
            float f = this.$progress;
            Scene scene = this.$previousScene;
            this.label = 1;
            Object seekTo = seekableTransitionState.seekTo(f, scene, this);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (seekTo == coroutineSingletons) {
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
