package org.koin.viewmodel.factory;

import org.koin.core.Koin;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ViewModelScopeAutoCloseable implements AutoCloseable {
    public final Koin koin;
    public final String scopeId;

    public ViewModelScopeAutoCloseable(String str, Koin koin) {
        this.scopeId = str;
        this.koin = koin;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        ScopeRegistry scopeRegistry = (ScopeRegistry) this.koin.scopeRegistry;
        scopeRegistry.getClass();
        Scope scope = (Scope) scopeRegistry._scopes.get(this.scopeId);
        if (scope != null) {
            scopeRegistry.deleteScope$koin_core(scope);
        }
    }
}
