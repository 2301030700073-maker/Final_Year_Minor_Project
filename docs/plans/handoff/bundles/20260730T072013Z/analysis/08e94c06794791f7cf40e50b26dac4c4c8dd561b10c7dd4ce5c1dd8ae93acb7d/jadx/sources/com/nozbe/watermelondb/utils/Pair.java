package com.nozbe.watermelondb.utils;

/* loaded from: classes5.dex */
public class Pair<K, V> {
    public K first;
    public V second;

    private Pair(K k, V v) {
        this.first = k;
        this.second = v;
    }

    public static <K, V> Pair<K, V> create(K k, V v) {
        return new Pair<>(k, v);
    }
}
