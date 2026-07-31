package org.koin.core.registry;

import coil3.ComponentRegistry$Builder$$ExternalSyntheticLambda0;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import org.jsoup.nodes.Printer;
import org.koin.core.Koin;
import org.koin.core.instance.InstanceFactory;
import org.koin.core.instance.ScopedInstanceFactory;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ScopeRegistry {
    public static final StringQualifier rootScopeQualifier = new StringQualifier();
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

    public final void deleteScope$koin_core(Scope scope) {
        Printer printer = (Printer) this._koin.instanceRegistry;
        printer.getClass();
        InstanceFactory[] instanceFactoryArr = (InstanceFactory[]) ((ConcurrentHashMap) printer.accum).values().toArray(new InstanceFactory[0]);
        ArrayList arrayList = new ArrayList();
        for (InstanceFactory instanceFactory : instanceFactoryArr) {
            if (instanceFactory instanceof ScopedInstanceFactory) {
                arrayList.add(instanceFactory);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ScopedInstanceFactory scopedInstanceFactory = (ScopedInstanceFactory) it.next();
            scopedInstanceFactory.getClass();
            ComponentRegistry$Builder$$ExternalSyntheticLambda0 componentRegistry$Builder$$ExternalSyntheticLambda0 = new ComponentRegistry$Builder$$ExternalSyntheticLambda0(scopedInstanceFactory, scope, 24);
            synchronized (scopedInstanceFactory) {
                componentRegistry$Builder$$ExternalSyntheticLambda0.invoke();
            }
        }
        this._scopes.remove(scope.id);
    }
}
