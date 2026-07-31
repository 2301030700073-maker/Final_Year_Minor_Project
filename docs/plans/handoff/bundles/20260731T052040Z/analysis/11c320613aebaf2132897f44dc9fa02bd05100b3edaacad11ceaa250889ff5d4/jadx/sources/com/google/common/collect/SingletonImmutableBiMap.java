package com.google.common.collect;

import java.util.function.BiConsumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SingletonImmutableBiMap extends ImmutableBiMap {
    public final transient ImmutableBiMap inverse;
    public transient SingletonImmutableBiMap lazyInverse;
    public final transient Object singleKey;
    public final transient Object singleValue;

    public SingletonImmutableBiMap(Object obj, Object obj2) {
        Maps.checkEntryNotNull(obj, obj2);
        this.singleKey = obj;
        this.singleValue = obj2;
        this.inverse = null;
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return this.singleKey.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public final boolean containsValue(Object obj) {
        return this.singleValue.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableSet createEntrySet() {
        ImmutableEntry immutableEntry = new ImmutableEntry(this.singleKey, this.singleValue);
        int i = ImmutableSet.$r8$clinit;
        return new SingletonImmutableSet(immutableEntry);
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableSet createKeySet() {
        int i = ImmutableSet.$r8$clinit;
        return new SingletonImmutableSet(this.singleKey);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map, j$.util.Map
    public final void forEach(BiConsumer biConsumer) {
        biConsumer.getClass();
        biConsumer.accept(this.singleKey, this.singleValue);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public final Object get(Object obj) {
        if (this.singleKey.equals(obj)) {
            return this.singleValue;
        }
        return null;
    }

    @Override // java.util.Map
    public final int size() {
        return 1;
    }

    public SingletonImmutableBiMap(Object obj, Object obj2, ImmutableBiMap immutableBiMap) {
        this.singleKey = obj;
        this.singleValue = obj2;
        this.inverse = immutableBiMap;
    }
}
