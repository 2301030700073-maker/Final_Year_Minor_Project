package org.koin.viewmodel.factory;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.lifecycle.viewmodel.internal.ViewModelImpl;
import com.bumptech.glide.load.engine.Jobs;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.CacheControl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.koin.core.Koin;
import org.koin.core.error.InstanceCreationException;
import org.koin.core.logger.Level;
import org.koin.core.option.KoinOption;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.TypeQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
import org.koin.viewmodel.scope.ViewModelScopeArchetypeKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class KoinViewModelFactory implements ViewModelProvider$Factory {
    public final ClassReference kClass;
    public final Function0 params;
    public final Qualifier qualifier;
    public final Scope scope;

    public KoinViewModelFactory(ClassReference classReference, Scope scope, Qualifier qualifier, Function0 function0) {
        scope.getClass();
        this.kClass = classReference;
        this.scope = scope;
        this.qualifier = qualifier;
        this.params = function0;
    }

    @Override // androidx.lifecycle.ViewModelProvider$Factory
    public final ViewModel create(ClassReference classReference, MutableCreationExtras mutableCreationExtras) {
        AndroidParametersHolder androidParametersHolder = new AndroidParametersHolder(this.params, mutableCreationExtras);
        Koin koin = this.scope._koin;
        Jobs jobs = koin.optionRegistry;
        jobs.getClass();
        Object obj = jobs.jobs.get(KoinOption.VIEWMODEL_SCOPE_FACTORY);
        if (obj == null) {
            obj = null;
        }
        if (!Intrinsics.areEqual(obj, Boolean.TRUE)) {
            return (ViewModel) this.scope.resolve(this.kClass, androidParametersHolder, this.qualifier);
        }
        String str = classReference.getSimpleName() + '-' + CacheControl.Companion.generateId();
        TypeQualifier typeQualifier = new TypeQualifier(classReference);
        TypeQualifier typeQualifier2 = ViewModelScopeArchetypeKt.ViewModelScopeArchetype;
        ScopeRegistry scopeRegistry = koin.scopeRegistry;
        ConcurrentHashMap concurrentHashMap = scopeRegistry._scopes;
        scopeRegistry._koin.logger.getClass();
        Level level = Level.DEBUG;
        Level level2 = Level.NONE;
        level2.compareTo(level);
        Set set = scopeRegistry._scopeDefinitions;
        if (!set.contains(typeQualifier)) {
            level2.compareTo(level);
            set.add(typeQualifier);
        }
        if (concurrentHashMap.containsKey(str)) {
            throw new InstanceCreationException(CameraDevices$CC.m("Scope with id '", str, "' is already created"));
        }
        Scope scope = new Scope(typeQualifier, str, typeQualifier2, scopeRegistry._koin, 4);
        Scope[] scopeArr = {scopeRegistry.rootScope};
        if (scope.isRoot) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Can't add scope link to a root scope");
            return null;
        }
        scope.linkedScopes.addAll(0, ArraysKt___ArraysKt.toList(scopeArr));
        concurrentHashMap.put(str, scope);
        ViewModel viewModel = (ViewModel) scope.resolve(this.kClass, androidParametersHolder, this.qualifier);
        ViewModelScopeAutoCloseable viewModelScopeAutoCloseable = new ViewModelScopeAutoCloseable(str, koin);
        ViewModelImpl viewModelImpl = viewModel.impl;
        if (viewModelImpl == null) {
            return viewModel;
        }
        if (viewModelImpl.isCleared) {
            ViewModelImpl.closeWithRuntimeException(viewModelScopeAutoCloseable);
            return viewModel;
        }
        synchronized (viewModelImpl.lock) {
            viewModelImpl.closeables.add(viewModelScopeAutoCloseable);
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
