package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public interface ListMultimap<K, V> extends Multimap<K, V> {
    Map<K, Collection<V>> asMap();

    boolean equals(Object obj);

    /* bridge */ /* synthetic */ Collection get(Object obj);

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    List<V> get(K k);

    @CanIgnoreReturnValue
    /* bridge */ /* synthetic */ Collection removeAll(Object obj);

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    List<V> removeAll(Object obj);

    @CanIgnoreReturnValue
    /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable);

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    List<V> replaceValues(K k, Iterable<? extends V> iterable);

    /* renamed from: com.google.common.collect.ListMultimap$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
    }
}
