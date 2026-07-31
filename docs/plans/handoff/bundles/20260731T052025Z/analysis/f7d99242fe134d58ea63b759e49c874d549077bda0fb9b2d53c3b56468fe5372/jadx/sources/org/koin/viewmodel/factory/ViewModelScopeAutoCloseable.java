package org.koin.viewmodel.factory;

import androidx.camera.core.impl.Config;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Iterator;
import org.koin.core.Koin;
import org.koin.core.instance.InstanceFactory;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
import org.slf4j.event.EventRecodingLogger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        ScopeRegistry scopeRegistry = this.koin.scopeRegistry;
        scopeRegistry.getClass();
        ConcurrentHashMap concurrentHashMap = scopeRegistry._scopes;
        Scope scope = (Scope) concurrentHashMap.get(this.scopeId);
        if (scope != null) {
            EventRecodingLogger eventRecodingLogger = scopeRegistry._koin.instanceRegistry;
            eventRecodingLogger.getClass();
            InstanceFactory[] instanceFactoryArr = (InstanceFactory[]) ((ConcurrentHashMap) eventRecodingLogger.logger).values().toArray(new InstanceFactory[0]);
            ArrayList arrayList = new ArrayList();
            for (InstanceFactory instanceFactory : instanceFactoryArr) {
            }
            Iterator it = arrayList.iterator();
            if (it.hasNext()) {
                throw Config.CC.m(it);
            }
            concurrentHashMap.remove(scope.id);
        }
    }
}
