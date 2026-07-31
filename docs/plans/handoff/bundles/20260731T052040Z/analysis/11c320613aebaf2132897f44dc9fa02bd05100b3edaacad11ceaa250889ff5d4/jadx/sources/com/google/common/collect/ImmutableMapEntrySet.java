package com.google.common.collect;

import com.google.common.collect.ImmutableSet;
import j$.util.Spliterator;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Iterator;
import java.util.Map;
import java.util.Spliterator;
import java.util.function.Consumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ImmutableMapEntrySet extends ImmutableSet.CachingAsList {
    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Use EntrySetSerializedForm");
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = map().get(entry.getKey());
        return obj2 != null && obj2.equals(entry.getValue());
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return map().hashCode();
    }

    @Override // com.google.common.collect.ImmutableSet
    public final boolean isHashCodeFast() {
        map().getClass();
        return false;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean isPartialView() {
        map().getClass();
        return false;
    }

    public abstract ImmutableMap map();

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return map().size();
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class RegularEntrySet extends ImmutableMapEntrySet {
        public final transient ImmutableList entries;
        public final transient ImmutableMap map;

        public RegularEntrySet(ImmutableMap immutableMap, ImmutableList immutableList) {
            this.map = immutableMap;
            this.entries = immutableList;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final int copyIntoArray(int i, Object[] objArr) {
            return this.entries.copyIntoArray(i, objArr);
        }

        @Override // com.google.common.collect.ImmutableSet.CachingAsList
        public final ImmutableList createAsList() {
            return new RegularImmutableAsList(this, this.entries);
        }

        @Override // com.google.common.collect.ImmutableCollection, java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
        public final void forEach(Consumer consumer) {
            this.entries.forEach(consumer);
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final UnmodifiableIterator iterator() {
            return this.entries.iterator();
        }

        @Override // com.google.common.collect.ImmutableMapEntrySet
        public final ImmutableMap map() {
            return this.map;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable
        public /* synthetic */ Spliterator spliterator() {
            return Spliterator.Wrapper.convert(spliterator());
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return this.entries.iterator();
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
        public final j$.util.Spliterator spliterator() {
            return this.entries.spliterator();
        }
    }
}
