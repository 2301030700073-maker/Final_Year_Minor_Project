package org.koin.core.registry;

import j$.util.concurrent.ConcurrentHashMap;
import org.koin.core.Koin;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PropertyRegistry {
    public final ConcurrentHashMap _values;

    public PropertyRegistry() {
        this._values = new ConcurrentHashMap(16);
    }

    public PropertyRegistry(Koin koin) {
        this._values = new ConcurrentHashMap();
    }
}
