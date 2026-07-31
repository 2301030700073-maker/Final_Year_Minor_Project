package org.koin.core.instance;

import coil3.ComponentRegistry;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FactoryInstanceFactory extends InstanceFactory {
    @Override // org.koin.core.instance.InstanceFactory
    public final Object get(ComponentRegistry.Builder builder) {
        return create(builder);
    }

    @Override // org.koin.core.instance.InstanceFactory
    public final void dropAll() {
    }
}
