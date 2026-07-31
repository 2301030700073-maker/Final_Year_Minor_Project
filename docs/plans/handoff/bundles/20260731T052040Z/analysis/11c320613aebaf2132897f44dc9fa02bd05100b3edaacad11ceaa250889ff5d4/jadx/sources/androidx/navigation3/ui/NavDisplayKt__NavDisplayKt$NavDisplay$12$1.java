package androidx.navigation3.ui;

import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.navigation3.scene.Scene;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NavDisplayKt__NavDisplayKt$NavDisplay$12$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Scene $scene;
    final /* synthetic */ Transition $transition;
    final /* synthetic */ SeekableTransitionState $transitionState;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavDisplayKt__NavDisplayKt$NavDisplay$12$1(SeekableTransitionState seekableTransitionState, Scene scene, Transition transition, Continuation continuation) {
        super(2, continuation);
        this.$transitionState = seekableTransitionState;
        this.$scene = scene;
        this.$transition = transition;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        NavDisplayKt__NavDisplayKt$NavDisplay$12$1 navDisplayKt__NavDisplayKt$NavDisplay$12$1 = new NavDisplayKt__NavDisplayKt$NavDisplay$12$1(this.$transitionState, this.$scene, this.$transition, continuation);
        navDisplayKt__NavDisplayKt$NavDisplay$12$1.L$0 = obj;
        return navDisplayKt__NavDisplayKt$NavDisplay$12$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NavDisplayKt__NavDisplayKt$NavDisplay$12$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00e4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00e3 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation3.ui.NavDisplayKt__NavDisplayKt$NavDisplay$12$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
