package com.google.common.collect;

import com.google.common.collect.ImmutableMapEntrySet;
import java.util.HashMap;
import java.util.function.BiConsumer;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class JdkBackedImmutableMap extends ImmutableMap {
    public final transient HashMap delegateMap;
    public final transient ImmutableList entries;

    public JdkBackedImmutableMap(HashMap hashMap, ImmutableList immutableList) {
        this.delegateMap = hashMap;
        this.entries = immutableList;
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableSet createEntrySet() {
        return new ImmutableMapEntrySet.RegularEntrySet(this, this.entries);
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableSet createKeySet() {
        return new ImmutableMapKeySet(this);
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableCollection createValues() {
        return new ImmutableMapValues(this);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map, j$.util.Map
    public final void forEach(BiConsumer biConsumer) {
        biConsumer.getClass();
        this.entries.forEach(new Player$$ExternalSyntheticLambda1(biConsumer, 2));
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public final Object get(Object obj) {
        return this.delegateMap.get(obj);
    }

    @Override // java.util.Map
    public final int size() {
        return this.entries.size();
    }
}
