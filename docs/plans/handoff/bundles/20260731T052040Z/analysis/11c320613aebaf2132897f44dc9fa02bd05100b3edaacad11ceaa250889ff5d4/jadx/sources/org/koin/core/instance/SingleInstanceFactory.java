package org.koin.core.instance;

import coil3.ComponentRegistry;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SingleInstanceFactory extends InstanceFactory {
    public volatile Object value;

    @Override // org.koin.core.instance.InstanceFactory
    public final Object create(ComponentRegistry.Builder builder) {
        if (this.value == null) {
            return super.create(builder);
        }
        Object obj = this.value;
        if (obj != null) {
            return obj;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Single instance created couldn't return value");
        return null;
    }

    @Override // org.koin.core.instance.InstanceFactory
    public final void dropAll() {
        this.beanDefinition.callbacks.getClass();
        this.value = null;
    }

    @Override // org.koin.core.instance.InstanceFactory
    public final Object get(ComponentRegistry.Builder builder) {
        if (this.value == null) {
            synchronized (this) {
                if (!(this.value != null)) {
                    this.value = create(builder);
                }
            }
        }
        Object obj = this.value;
        if (obj != null) {
            return obj;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Single instance created couldn't return value");
        return null;
    }
}
