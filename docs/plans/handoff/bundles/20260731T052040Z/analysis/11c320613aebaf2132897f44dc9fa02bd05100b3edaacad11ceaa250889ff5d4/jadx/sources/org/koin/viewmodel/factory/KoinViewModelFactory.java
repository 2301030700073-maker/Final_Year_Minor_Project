package org.koin.viewmodel.factory;

import androidx.compose.ui.Modifier;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.lifecycle.viewmodel.internal.SynchronizedObject;
import com.livefront.bridge.disk.FileDiskHandler;
import io.noties.markwon.RenderPropsImpl;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.koin.core.Koin;
import org.koin.core.error.ClosedScopeException;
import org.koin.core.logger.Level;
import org.koin.core.logger.Logger;
import org.koin.core.option.KoinOption;
import org.koin.core.qualifier.TypeQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
import org.koin.viewmodel.scope.ViewModelScopeArchetypeKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class KoinViewModelFactory implements ViewModelProvider$Factory {
    public final ClassReference kClass;
    public final Scope scope;

    public KoinViewModelFactory(ClassReference classReference, Scope scope) {
        this.kClass = classReference;
        this.scope = scope;
    }

    @Override // androidx.lifecycle.ViewModelProvider$Factory
    public final ViewModel create(ClassReference classReference, MutableCreationExtras mutableCreationExtras) {
        AndroidParametersHolder androidParametersHolder = new AndroidParametersHolder(mutableCreationExtras);
        Koin koin = this.scope._koin;
        RenderPropsImpl renderPropsImpl = (RenderPropsImpl) koin.optionRegistry;
        renderPropsImpl.getClass();
        Object obj = renderPropsImpl.values.get(KoinOption.VIEWMODEL_SCOPE_FACTORY);
        if (obj == null) {
            obj = null;
        }
        if (!Intrinsics.areEqual(obj, Boolean.TRUE)) {
            return (ViewModel) this.scope.resolve(this.kClass, androidParametersHolder);
        }
        String str = classReference.getSimpleName() + '-' + CharsKt.generateId();
        TypeQualifier typeQualifier = new TypeQualifier(classReference);
        TypeQualifier typeQualifier2 = ViewModelScopeArchetypeKt.ViewModelScopeArchetype;
        ScopeRegistry scopeRegistry = (ScopeRegistry) koin.scopeRegistry;
        ConcurrentHashMap concurrentHashMap = scopeRegistry._scopes;
        Koin koin2 = scopeRegistry._koin;
        Logger logger = (Logger) koin2.logger;
        logger.getClass();
        Level level = Level.DEBUG;
        logger.log(level, "| (+) Scope - id:'" + str + "' q:'" + typeQualifier + '\'');
        Set set = scopeRegistry._scopeDefinitions;
        if (!set.contains(typeQualifier)) {
            Logger logger2 = (Logger) koin2.logger;
            logger2.getClass();
            logger2.log(level, "| Scope '" + typeQualifier + "' not defined. Creating it ...");
            set.add(typeQualifier);
        }
        if (concurrentHashMap.containsKey(str)) {
            throw new ClosedScopeException(Modifier.CC.m("Scope with id '", str, "' is already created"));
        }
        Scope scope = new Scope(typeQualifier, str, typeQualifier2, scopeRegistry._koin, 4);
        Scope[] scopeArr = {scopeRegistry.rootScope};
        if (scope.isRoot) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Can't add scope link to a root scope");
            return null;
        }
        scope.linkedScopes.addAll(0, ArraysKt.toList(scopeArr));
        concurrentHashMap.put(str, scope);
        Scope scope2 = this.scope;
        if (!scope2.isRoot) {
            Scope[] scopeArr2 = {scope2};
            if (scope.isRoot) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Can't add scope link to a root scope");
                return null;
            }
            scope.linkedScopes.addAll(0, ArraysKt.toList(scopeArr2));
        }
        ViewModel viewModel = (ViewModel) scope.resolve(this.kClass, androidParametersHolder);
        ViewModelScopeAutoCloseable viewModelScopeAutoCloseable = new ViewModelScopeAutoCloseable(str, koin);
        FileDiskHandler fileDiskHandler = viewModel.impl;
        if (fileDiskHandler == null) {
            return viewModel;
        }
        if (fileDiskHandler.mIsLoadedOrTimedOut) {
            FileDiskHandler.closeWithRuntimeException(viewModelScopeAutoCloseable);
            return viewModel;
        }
        synchronized (((SynchronizedObject) fileDiskHandler.mDirectory)) {
            ((LinkedHashSet) fileDiskHandler.mKeyByteMap).add(viewModelScopeAutoCloseable);
        }
        return viewModel;
    }

    @Override // androidx.lifecycle.ViewModelProvider$Factory
    public final ViewModel create(Class cls) {
        throw new UnsupportedOperationException("`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error.");
    }

    @Override // androidx.lifecycle.ViewModelProvider$Factory
    public final ViewModel create(Class cls, MutableCreationExtras mutableCreationExtras) {
        create(cls);
        throw null;
    }
}
