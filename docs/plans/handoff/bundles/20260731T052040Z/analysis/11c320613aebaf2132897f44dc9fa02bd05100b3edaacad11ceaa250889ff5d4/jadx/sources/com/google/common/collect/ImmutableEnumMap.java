package com.google.common.collect;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import j$.util.Map;
import j$.util.Set;
import j$.util.Spliterator;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.function.BiConsumer;
import okio.Okio;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ImmutableEnumMap extends ImmutableMap.IteratorBasedImmutableMap {
    public final transient EnumMap delegate;

    public ImmutableEnumMap(EnumMap enumMap) {
        this.delegate = enumMap;
        Okio.checkArgument(!enumMap.isEmpty());
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Use EnumSerializedForm");
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return this.delegate.containsKey(obj);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ImmutableEnumMap) {
            obj = ((ImmutableEnumMap) obj).delegate;
        }
        return this.delegate.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map, j$.util.Map
    public final void forEach(BiConsumer biConsumer) {
        Map.EL.forEach(this.delegate, biConsumer);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public final Object get(Object obj) {
        return this.delegate.get(obj);
    }

    @Override // com.google.common.collect.ImmutableMap
    public final UnmodifiableIterator keyIterator() {
        Iterator it = this.delegate.keySet().iterator();
        it.getClass();
        return it instanceof UnmodifiableIterator ? (UnmodifiableIterator) it : new Maps.AnonymousClass8(it, 1);
    }

    @Override // com.google.common.collect.ImmutableMap
    public final Spliterator keySpliterator() {
        return Set.EL.spliterator(this.delegate.keySet());
    }

    @Override // java.util.Map
    public final int size() {
        return this.delegate.size();
    }
}
