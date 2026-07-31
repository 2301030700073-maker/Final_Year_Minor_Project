package org.koin.core.definition;

import kotlin.jvm.internal.Intrinsics;
import org.koin.core.instance.InstanceFactory;
import org.koin.core.module.Module;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class KoinDefinition {
    public final InstanceFactory factory;
    public final Module module;

    public KoinDefinition(Module module, InstanceFactory instanceFactory) {
        module.getClass();
        this.module = module;
        this.factory = instanceFactory;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KoinDefinition)) {
            return false;
        }
        KoinDefinition koinDefinition = (KoinDefinition) obj;
        return Intrinsics.areEqual(this.module, koinDefinition.module) && this.factory.equals(koinDefinition.factory);
    }

    public final int hashCode() {
        return this.factory.hashCode() + (this.module.id.hashCode() * 31);
    }

    public final String toString() {
        return "KoinDefinition(module=" + this.module + ", factory=" + this.factory + ')';
    }
}
