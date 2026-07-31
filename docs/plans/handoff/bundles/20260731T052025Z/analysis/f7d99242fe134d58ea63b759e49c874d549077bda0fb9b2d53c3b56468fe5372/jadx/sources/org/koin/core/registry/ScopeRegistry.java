package org.koin.core.registry;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.Collections;
import java.util.Set;
import org.koin.core.Koin;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ScopeRegistry {
    public static final StringQualifier rootScopeQualifier = new StringQualifier("_root_");
    public final Koin _koin;
    public final Set _scopeDefinitions;
    public final ConcurrentHashMap _scopes;
    public final Scope rootScope;

    public ScopeRegistry(Koin koin) {
        this._koin = koin;
        Set newSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
        newSetFromMap.getClass();
        this._scopeDefinitions = newSetFromMap;
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this._scopes = concurrentHashMap;
        StringQualifier stringQualifier = rootScopeQualifier;
        Scope scope = new Scope(stringQualifier, "_root_", null, koin, 8);
        this.rootScope = scope;
        newSetFromMap.add(stringQualifier);
        concurrentHashMap.put("_root_", scope);
    }
}
