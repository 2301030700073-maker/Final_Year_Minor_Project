package androidx.compose.runtime.internal;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeOwner;
import java.util.ArrayList;
import kotlin.Function;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Expect_jvmKt {
    public static final StackTraceElement[] EmptyStackTraceElements = new StackTraceElement[0];
    public static final ThreadMap emptyThreadMap = new ThreadMap(0, new long[0], new Object[0]);
    public static final Object lambdaKey = null;

    public static final int bitsForSlot(int i, int i2) {
        return i << (((i2 % 10) * 3) + 1);
    }

    public static final long currentThreadId() {
        return Thread.currentThread().getId();
    }

    public static final void invokeComposable(GapComposer gapComposer, Function2 function2) {
        function2.getClass();
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, function2);
        function2.invoke(gapComposer, 1);
    }

    public static final ComposableLambdaImpl rememberComposableLambda(int i, Function function, Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        Object rememberedValue = gapComposer.rememberedValue();
        if (rememberedValue == Composer.Companion.Empty) {
            rememberedValue = new ComposableLambdaImpl(i, function, true);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) rememberedValue;
        if (!Intrinsics.areEqual(composableLambdaImpl._block, function)) {
            boolean z = composableLambdaImpl._block == null;
            composableLambdaImpl._block = function;
            if (!z && composableLambdaImpl.tracked) {
                RecomposeScopeImpl recomposeScopeImpl = composableLambdaImpl.scope;
                if (recomposeScopeImpl != null) {
                    RecomposeScopeOwner recomposeScopeOwner = recomposeScopeImpl.owner;
                    if (recomposeScopeOwner != null) {
                        recomposeScopeOwner.invalidate(recomposeScopeImpl, null);
                    }
                    composableLambdaImpl.scope = null;
                }
                ArrayList arrayList = composableLambdaImpl.scopes;
                if (arrayList != null) {
                    int size = arrayList.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) arrayList.get(i2);
                        RecomposeScopeOwner recomposeScopeOwner2 = recomposeScopeImpl2.owner;
                        if (recomposeScopeOwner2 != null) {
                            recomposeScopeOwner2.invalidate(recomposeScopeImpl2, null);
                        }
                    }
                    arrayList.clear();
                }
            }
        }
        return composableLambdaImpl;
    }

    public static final boolean replacableWith(RecomposeScopeImpl recomposeScopeImpl, RecomposeScopeImpl recomposeScopeImpl2) {
        return recomposeScopeImpl == null || !recomposeScopeImpl.getValid() || recomposeScopeImpl == recomposeScopeImpl2 || Intrinsics.areEqual(recomposeScopeImpl.anchor, recomposeScopeImpl2.anchor);
    }
}
