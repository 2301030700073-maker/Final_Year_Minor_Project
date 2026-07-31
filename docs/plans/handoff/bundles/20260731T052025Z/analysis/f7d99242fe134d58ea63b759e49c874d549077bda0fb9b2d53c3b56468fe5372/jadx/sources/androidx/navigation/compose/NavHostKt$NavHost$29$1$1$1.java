package androidx.navigation.compose;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.material.ripple.StateLayer;
import androidx.navigation.NavBackStackEntry;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NavHostKt$NavHost$29$1$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $backStackEntry;
    public final /* synthetic */ int $r8$classId = 0;
    public /* synthetic */ Object $transitionState;
    public float $value;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavHostKt$NavHost$29$1$1$1(float f, SeekableTransitionState seekableTransitionState, NavBackStackEntry navBackStackEntry, Continuation continuation) {
        super(2, continuation);
        this.$value = f;
        this.$transitionState = seekableTransitionState;
        this.$backStackEntry = navBackStackEntry;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$backStackEntry;
        switch (i) {
            case 0:
                return new NavHostKt$NavHost$29$1$1$1(this.$value, (SeekableTransitionState) this.$transitionState, (NavBackStackEntry) obj2, continuation);
            case 1:
                NavHostKt$NavHost$29$1$1$1 navHostKt$NavHost$29$1$1$1 = new NavHostKt$NavHost$29$1$1$1((Transition) obj2, continuation);
                navHostKt$NavHost$29$1$1$1.$transitionState = obj;
                return navHostKt$NavHost$29$1$1$1;
            default:
                return new NavHostKt$NavHost$29$1$1$1((StateLayer) this.$transitionState, this.$value, (AnimationSpec) obj2, continuation);
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
        return ((NavHostKt$NavHost$29$1$1$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x00be, code lost:
    
        if (r12.seekTo(r0, r12.targetState$delegate.getValue(), r12) == r4) goto L50;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.compose.NavHostKt$NavHost$29$1$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavHostKt$NavHost$29$1$1$1(Transition transition, Continuation continuation) {
        super(2, continuation);
        this.$backStackEntry = transition;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavHostKt$NavHost$29$1$1$1(StateLayer stateLayer, float f, AnimationSpec animationSpec, Continuation continuation) {
        super(2, continuation);
        this.$transitionState = stateLayer;
        this.$value = f;
        this.$backStackEntry = animationSpec;
    }
}
