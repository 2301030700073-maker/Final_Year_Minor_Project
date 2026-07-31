package org.koin.compose;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.LazyValueHolder;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.newpipe.app.ComposeActivity$$ExternalSyntheticLambda2;
import okhttp3.ConnectionPool;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.koin.compose.application.CompositionKoinApplicationLoader;
import org.koin.core.Koin;
import org.koin.core.KoinApplication;
import org.koin.core.context.GlobalContext;
import org.koin.core.logger.Level;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class KoinApplicationKt {
    public static final DynamicProvidableCompositionLocal LocalKoinApplicationContext;
    public static final DynamicProvidableCompositionLocal LocalKoinScopeContext;

    static {
        new LazyValueHolder(new KoinApplicationKt$$ExternalSyntheticLambda0(5));
        new LazyValueHolder(new KoinApplicationKt$$ExternalSyntheticLambda0(6));
        LocalKoinScopeContext = new DynamicProvidableCompositionLocal(new KoinApplicationKt$$ExternalSyntheticLambda0(7));
        LocalKoinApplicationContext = new DynamicProvidableCompositionLocal(new KoinApplicationKt$$ExternalSyntheticLambda0(8));
    }

    public static final void KoinApplication(ConnectionPool connectionPool, Level level, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        Level level2;
        KoinApplication koinApplication;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-579738367);
        int i2 = (gapComposer.changedInstance(connectionPool) ? 4 : 2) | i | 48;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & Token.EXPR_VOID) != 146)) {
            Context applicationContext = ((Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext)).getApplicationContext();
            if (applicationContext == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Android ApplicationContext not found in current Compose context!");
                return;
            }
            boolean changedInstance = gapComposer.changedInstance(applicationContext) | gapComposer.changedInstance(connectionPool);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            Level level3 = Level.INFO;
            if (changedInstance || rememberedValue == neverEqualPolicy) {
                rememberedValue = new ComposeActivity$$ExternalSyntheticLambda2(7, applicationContext, level3, connectionPool);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function1 function1 = (Function1) rememberedValue;
            function1.getClass();
            boolean changed = gapComposer.changed(new ConnectionPool(function1));
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed || rememberedValue2 == neverEqualPolicy) {
                if (GlobalContext._koin == null) {
                    koinApplication = new KoinApplication();
                    function1.invoke(koinApplication);
                    koinApplication.koin.createEagerInstances();
                } else {
                    koinApplication = null;
                }
                rememberedValue2 = new CompositionKoinApplicationLoader(koinApplication);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Koin koin = ((CompositionKoinApplicationLoader) rememberedValue2).koin;
            if (koin == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Koin context has not been initialized in rememberKoinApplication");
                return;
            }
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new KoinApplicationKt$$ExternalSyntheticLambda0(0);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            ProvidedValue defaultProvidedValue$runtime = LocalKoinApplicationContext.defaultProvidedValue$runtime(new ComposeContextWrapper(koin, (Function0) rememberedValue3));
            Scope scope = ((ScopeRegistry) koin.scopeRegistry).rootScope;
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (rememberedValue4 == neverEqualPolicy) {
                rememberedValue4 = new KoinApplicationKt$$ExternalSyntheticLambda0(4);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            Updater.CompositionLocalProvider(new ProvidedValue[]{defaultProvidedValue$runtime, LocalKoinScopeContext.defaultProvidedValue$runtime(new ComposeContextWrapper(scope, (Function0) rememberedValue4))}, composableLambdaImpl, gapComposer, 56);
            level2 = level3;
        } else {
            gapComposer.skipToGroupEnd();
            level2 = level;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new KoinApplicationKt$$ExternalSyntheticLambda2(connectionPool, level2, composableLambdaImpl, i, 0);
        }
    }

    public static final Scope currentKoinScope(Composer composer) {
        try {
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = LocalKoinScopeContext;
            GapComposer gapComposer = (GapComposer) composer;
            ComposeContextWrapper composeContextWrapper = (ComposeContextWrapper) gapComposer.consume(dynamicProvidableCompositionLocal);
            if (composeContextWrapper._value == null) {
                Function0 function0 = composeContextWrapper.setValue;
                composeContextWrapper._value = function0 != null ? function0.invoke() : null;
            }
            Object obj = composeContextWrapper._value;
            if (obj == null) {
                throw new IllegalStateException("Can't retrieve Koin context value. Ensure Koin is properly initialized with startKoin() or KoinApplication.");
            }
            Scope scope = (Scope) obj;
            if (!scope._closed) {
                return scope;
            }
            ComposeContextWrapper composeContextWrapper2 = (ComposeContextWrapper) gapComposer.consume(dynamicProvidableCompositionLocal);
            Function0 function02 = composeContextWrapper2.setValue;
            Object invoke = function02 != null ? function02.invoke() : null;
            composeContextWrapper2._value = invoke;
            Scope scope2 = (Scope) invoke;
            if (scope2 != null) {
                return scope2;
            }
            throw new IllegalStateException(("Can't get Koin scope. Scope '" + scope + "' is closed").toString());
        } catch (Exception e) {
            ComposeContextWrapper composeContextWrapper3 = (ComposeContextWrapper) ((GapComposer) composer).consume(LocalKoinScopeContext);
            Function0 function03 = composeContextWrapper3.setValue;
            Object invoke2 = function03 != null ? function03.invoke() : null;
            composeContextWrapper3._value = invoke2;
            Scope scope3 = (Scope) invoke2;
            if (scope3 != null) {
                return scope3;
            }
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1(e, "Can't get Koin scope due to error: ");
            return null;
        }
    }
}
