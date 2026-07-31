package org.koin.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.LazyValueHolder;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.koin.core.scope.Scope;
import org.koin.java.KoinJavaComponent$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class KoinApplicationKt {
    public static final DynamicProvidableCompositionLocal LocalKoinScopeContext;

    static {
        new LazyValueHolder(new KoinJavaComponent$$ExternalSyntheticLambda0(11));
        new LazyValueHolder(new KoinJavaComponent$$ExternalSyntheticLambda0(12));
        LocalKoinScopeContext = new DynamicProvidableCompositionLocal(new KoinJavaComponent$$ExternalSyntheticLambda0(13));
        new LazyValueHolder(new KoinJavaComponent$$ExternalSyntheticLambda0(14));
    }

    public static final Scope currentKoinScope(Composer composer) {
        DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = LocalKoinScopeContext;
        try {
            ComposeContextWrapper composeContextWrapper = (ComposeContextWrapper) ((GapComposer) composer).consume(dynamicProvidableCompositionLocal);
            if (composeContextWrapper._value == null) {
                composeContextWrapper._value = composeContextWrapper.setValue.invoke();
            }
            Object obj = composeContextWrapper._value;
            if (obj != null) {
                return (Scope) obj;
            }
            throw new IllegalStateException("Can't retrieve Koin context value. Ensure Koin is properly initialized with startKoin() or KoinApplication.");
        } catch (Exception e) {
            ComposeContextWrapper composeContextWrapper2 = (ComposeContextWrapper) ((GapComposer) composer).consume(dynamicProvidableCompositionLocal);
            Object invoke = composeContextWrapper2.setValue.invoke();
            composeContextWrapper2._value = invoke;
            Scope scope = (Scope) invoke;
            if (scope != null) {
                return scope;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) e, "Can't get Koin scope due to error: ");
            return null;
        }
    }
}
