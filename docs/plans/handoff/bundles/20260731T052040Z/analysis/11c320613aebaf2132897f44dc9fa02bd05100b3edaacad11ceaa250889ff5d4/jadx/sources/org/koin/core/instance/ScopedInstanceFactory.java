package org.koin.core.instance;

import coil3.ComponentRegistry;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import j$.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.error.ClosedScopeException;
import org.koin.core.qualifier.TypeQualifier;
import org.koin.core.scope.Scope;
import org.koin.core.scope.Scope$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ScopedInstanceFactory extends InstanceFactory {
    public final boolean holdInstance;
    public final ConcurrentHashMap values;

    public ScopedInstanceFactory(BeanDefinition beanDefinition) {
        super(beanDefinition);
        this.holdInstance = true;
        this.values = new ConcurrentHashMap();
    }

    @Override // org.koin.core.instance.InstanceFactory
    public final void dropAll() {
        Scope$$ExternalSyntheticLambda0 scope$$ExternalSyntheticLambda0 = new Scope$$ExternalSyntheticLambda0(this, 5);
        synchronized (this) {
            scope$$ExternalSyntheticLambda0.invoke();
        }
    }

    @Override // org.koin.core.instance.InstanceFactory
    public final Object get(ComponentRegistry.Builder builder) {
        Object obj;
        if (!Intrinsics.areEqual(((Scope) builder.mappers).scopeQualifier, this.beanDefinition.scopeQualifier) && !Intrinsics.areEqual((TypeQualifier) builder.lazyDecoderFactories, this.beanDefinition.scopeQualifier)) {
            DecodeUtils$$ExternalSyntheticBUOutline0.m("Wrong Scope qualifier: trying to open instance for ", ((Scope) builder.mappers).id, " in ", this.beanDefinition);
            return null;
        }
        Object obj2 = this.values.get(((Scope) builder.mappers).id);
        if (obj2 != null) {
            return obj2;
        }
        synchronized (this) {
            ConcurrentHashMap concurrentHashMap = this.values;
            boolean z = this.holdInstance;
            Scope scope = (Scope) builder.mappers;
            String str = scope.id;
            String str2 = scope.id;
            obj = concurrentHashMap.get(str);
            if (obj == null) {
                if (!z) {
                    throw new ClosedScopeException("No value for scope '" + str2 + "' in " + this.beanDefinition);
                }
                obj = create(builder);
                if (z) {
                    this.values.put(str2, obj);
                }
            }
        }
        return obj;
    }
}
