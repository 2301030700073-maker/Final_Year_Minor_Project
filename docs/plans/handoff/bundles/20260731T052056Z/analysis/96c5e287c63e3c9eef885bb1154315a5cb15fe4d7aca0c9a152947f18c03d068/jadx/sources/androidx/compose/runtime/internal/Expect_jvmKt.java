package androidx.compose.runtime.internal;

import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import kotlin.Function;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Expect_jvmKt {
    public static final Object lambdaKey = new Object();
    public static final StackTraceElement[] EmptyStackTraceElements = new StackTraceElement[0];
    public static final ThreadMap emptyThreadMap = new ThreadMap(0, new long[0], new Object[0]);

    public static final int bitsForSlot(int i, int i2) {
        return i << (((i2 % 10) * 3) + 1);
    }

    public static final ComposableLambdaImpl composableLambda(GapComposer gapComposer, int i, Lambda lambda) {
        ComposableLambdaImpl composableLambdaImpl;
        gapComposer.startMovableGroup(Integer.rotateLeft(i, 1), lambdaKey);
        Object rememberedValue = gapComposer.rememberedValue();
        if (rememberedValue == Composer$Companion.Empty) {
            composableLambdaImpl = new ComposableLambdaImpl(lambda, true, i);
            gapComposer.updateRememberedValue(composableLambdaImpl);
        } else {
            rememberedValue.getClass();
            composableLambdaImpl = (ComposableLambdaImpl) rememberedValue;
            composableLambdaImpl.update(lambda);
        }
        gapComposer.end(false);
        return composableLambdaImpl;
    }

    public static final long currentThreadId() {
        return Thread.currentThread().getId();
    }

    public static final void invokeComposable(GapComposer gapComposer, Function2 function2) {
        function2.getClass();
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, function2);
        function2.invoke(gapComposer, 1);
    }

    public static final ComposableLambdaImpl rememberComposableLambda(int i, Function function, GapComposer gapComposer) {
        Object rememberedValue = gapComposer.rememberedValue();
        if (rememberedValue == Composer$Companion.Empty) {
            rememberedValue = new ComposableLambdaImpl(function, true, i);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) rememberedValue;
        composableLambdaImpl.update(function);
        return composableLambdaImpl;
    }

    public static final boolean replacableWith(RecomposeScopeImpl recomposeScopeImpl, RecomposeScopeImpl recomposeScopeImpl2) {
        return recomposeScopeImpl == null || !recomposeScopeImpl.getValid() || recomposeScopeImpl == recomposeScopeImpl2 || Intrinsics.areEqual(recomposeScopeImpl.anchor, recomposeScopeImpl2.anchor);
    }
}
