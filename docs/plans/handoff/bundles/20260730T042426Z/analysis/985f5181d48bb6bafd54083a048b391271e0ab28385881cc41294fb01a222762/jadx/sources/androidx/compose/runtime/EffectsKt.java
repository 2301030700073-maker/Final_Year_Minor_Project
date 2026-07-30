package androidx.compose.runtime;

import java.util.Arrays;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.JobKt__JobKt;

/* compiled from: Effects.kt */
/* loaded from: classes.dex */
public abstract class EffectsKt {
    private static final DisposableEffectScope InternalDisposableEffectScope = new DisposableEffectScope();

    public static final void SideEffect(Function0 function0, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1288466761, i, -1, "androidx.compose.runtime.SideEffect (Effects.kt:48)");
        }
        composer.recordSideEffect(function0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    public static final void DisposableEffect(Object obj, Function1 function1, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1371986847, i, -1, "androidx.compose.runtime.DisposableEffect (Effects.kt:155)");
        }
        boolean changed = composer.changed(obj);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new DisposableEffectImpl(function1);
            composer.updateRememberedValue(rememberedValue);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    public static final void DisposableEffect(Object obj, Object obj2, Function1 function1, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1429097729, i, -1, "androidx.compose.runtime.DisposableEffect (Effects.kt:195)");
        }
        boolean changed = composer.changed(obj) | composer.changed(obj2);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new DisposableEffectImpl(function1);
            composer.updateRememberedValue(rememberedValue);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    public static final void DisposableEffect(Object obj, Object obj2, Object obj3, Function1 function1, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1239538271, i, -1, "androidx.compose.runtime.DisposableEffect (Effects.kt:236)");
        }
        boolean changed = composer.changed(obj) | composer.changed(obj2) | composer.changed(obj3);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new DisposableEffectImpl(function1);
            composer.updateRememberedValue(rememberedValue);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    public static final void DisposableEffect(Object[] objArr, Function1 function1, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1307627122, i, -1, "androidx.compose.runtime.DisposableEffect (Effects.kt:276)");
        }
        boolean z = false;
        for (Object obj : Arrays.copyOf(objArr, objArr.length)) {
            z |= composer.changed(obj);
        }
        Object rememberedValue = composer.rememberedValue();
        if (z || rememberedValue == Composer.Companion.getEmpty()) {
            composer.updateRememberedValue(new DisposableEffectImpl(function1));
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    public static final void LaunchedEffect(Object obj, Function2 function2, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1179185413, i, -1, "androidx.compose.runtime.LaunchedEffect (Effects.kt:337)");
        }
        CoroutineContext applyCoroutineContext = composer.getApplyCoroutineContext();
        boolean changed = composer.changed(obj);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new LaunchedEffectImpl(applyCoroutineContext, function2);
            composer.updateRememberedValue(rememberedValue);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    public static final void LaunchedEffect(Object obj, Object obj2, Function2 function2, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(590241125, i, -1, "androidx.compose.runtime.LaunchedEffect (Effects.kt:360)");
        }
        CoroutineContext applyCoroutineContext = composer.getApplyCoroutineContext();
        boolean changed = composer.changed(obj) | composer.changed(obj2);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new LaunchedEffectImpl(applyCoroutineContext, function2);
            composer.updateRememberedValue(rememberedValue);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    public static final CoroutineScope createCompositionCoroutineScope(CoroutineContext coroutineContext, Composer composer) {
        CompletableJob Job$default;
        Job.Key key = Job.Key;
        if (coroutineContext.get(key) != null) {
            Job$default = JobKt__JobKt.Job$default(null, 1, null);
            Job$default.completeExceptionally(new IllegalArgumentException("CoroutineContext supplied to rememberCoroutineScope may not include a parent job"));
            return CoroutineScopeKt.CoroutineScope(Job$default);
        }
        CoroutineContext applyCoroutineContext = composer.getApplyCoroutineContext();
        return CoroutineScopeKt.CoroutineScope(applyCoroutineContext.plus(JobKt.Job((Job) applyCoroutineContext.get(key))).plus(coroutineContext));
    }
}
