package com.google.common.collect;

import com.google.common.base.Supplier;
import com.google.common.collect.AbstractMapBasedMultimap;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.SortedMap;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Multimaps$CustomListMultimap extends AbstractListMultimap {
    private static final long serialVersionUID = 0;
    public transient Supplier factory;

    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        this.factory = (Supplier) objectInputStream.readObject();
        setMap((Map) objectInputStream.readObject());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.factory);
        objectOutputStream.writeObject(this.map);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap
    public final AbstractMapBasedMultimap.AsMap createAsMap() {
        Map map = this.map;
        return map instanceof NavigableMap ? new AbstractMapBasedMultimap.NavigableAsMap(this, (NavigableMap) this.map) : map instanceof SortedMap ? new AbstractMapBasedMultimap.SortedAsMap(this, (SortedMap) this.map) : new AbstractMapBasedMultimap.AsMap(this.map);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap
    public final Collection createCollection() {
        return (List) this.factory.get();
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap
    public final AbstractMapBasedMultimap.KeySet createKeySet() {
        Map map = this.map;
        return map instanceof NavigableMap ? new AbstractMapBasedMultimap.NavigableKeySet(this, (NavigableMap) this.map) : map instanceof SortedMap ? new AbstractMapBasedMultimap.SortedKeySet(this, (SortedMap) this.map) : new AbstractMapBasedMultimap.KeySet(this.map);
    }
}
