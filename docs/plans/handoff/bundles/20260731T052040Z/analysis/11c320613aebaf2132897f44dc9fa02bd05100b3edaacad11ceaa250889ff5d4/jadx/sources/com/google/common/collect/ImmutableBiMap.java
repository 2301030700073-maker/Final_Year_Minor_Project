package com.google.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Collection;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ImmutableBiMap extends ImmutableMap {
    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableCollection createValues() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public final ImmutableCollection values() {
        SingletonImmutableBiMap singletonImmutableBiMap = (SingletonImmutableBiMap) this;
        ImmutableBiMap immutableBiMap = singletonImmutableBiMap.inverse;
        ImmutableBiMap immutableBiMap2 = immutableBiMap;
        if (immutableBiMap == null) {
            SingletonImmutableBiMap singletonImmutableBiMap2 = singletonImmutableBiMap.lazyInverse;
            immutableBiMap2 = singletonImmutableBiMap2;
            if (singletonImmutableBiMap2 == null) {
                SingletonImmutableBiMap singletonImmutableBiMap3 = new SingletonImmutableBiMap(singletonImmutableBiMap.singleValue, singletonImmutableBiMap.singleKey, singletonImmutableBiMap);
                singletonImmutableBiMap.lazyInverse = singletonImmutableBiMap3;
                immutableBiMap2 = singletonImmutableBiMap3;
            }
        }
        ImmutableSet immutableSet = immutableBiMap2.keySet;
        if (immutableSet != null) {
            return immutableSet;
        }
        ImmutableSet createKeySet = immutableBiMap2.createKeySet();
        immutableBiMap2.keySet = createKeySet;
        return createKeySet;
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public final Collection values() {
        SingletonImmutableBiMap singletonImmutableBiMap = (SingletonImmutableBiMap) this;
        ImmutableBiMap immutableBiMap = singletonImmutableBiMap.inverse;
        ImmutableBiMap immutableBiMap2 = immutableBiMap;
        if (immutableBiMap == null) {
            SingletonImmutableBiMap singletonImmutableBiMap2 = singletonImmutableBiMap.lazyInverse;
            immutableBiMap2 = singletonImmutableBiMap2;
            if (singletonImmutableBiMap2 == null) {
                SingletonImmutableBiMap singletonImmutableBiMap3 = new SingletonImmutableBiMap(singletonImmutableBiMap.singleValue, singletonImmutableBiMap.singleKey, singletonImmutableBiMap);
                singletonImmutableBiMap.lazyInverse = singletonImmutableBiMap3;
                immutableBiMap2 = singletonImmutableBiMap3;
            }
        }
        ImmutableSet immutableSet = immutableBiMap2.keySet;
        if (immutableSet != null) {
            return immutableSet;
        }
        ImmutableSet createKeySet = immutableBiMap2.createKeySet();
        immutableBiMap2.keySet = createKeySet;
        return createKeySet;
    }
}
