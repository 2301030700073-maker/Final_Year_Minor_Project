package org.koin.core.definition;

import kotlin.jvm.internal.Intrinsics;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class KoinDefinition {
    public final SingleInstanceFactory factory;
    public final Module module;

    public KoinDefinition(Module module, SingleInstanceFactory singleInstanceFactory) {
        module.getClass();
        this.module = module;
        this.factory = singleInstanceFactory;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof KoinDefinition) {
            KoinDefinition koinDefinition = (KoinDefinition) obj;
            return Intrinsics.areEqual(this.module, koinDefinition.module) && this.factory == koinDefinition.factory;
        }
        return false;
    }

    public final int hashCode() {
        return this.factory.hashCode() + (this.module.id.hashCode() * 31);
    }

    public final String toString() {
        return "KoinDefinition(module=" + this.module + ", factory=" + this.factory + ')';
    }
}
