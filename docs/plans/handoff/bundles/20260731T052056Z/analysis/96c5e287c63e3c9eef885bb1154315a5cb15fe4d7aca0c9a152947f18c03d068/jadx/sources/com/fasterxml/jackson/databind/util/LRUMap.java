package com.fasterxml.jackson.databind.util;

import j$.util.concurrent.ConcurrentHashMap;
import java.io.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LRUMap implements Serializable {
    public final transient ConcurrentHashMap _map;
    public final transient int _maxEntries;

    public LRUMap(int i, int i2) {
        this._map = new ConcurrentHashMap(i, 0.8f, 4);
        this._maxEntries = i2;
    }

    public final void putIfAbsent(Object obj, Serializable serializable) {
        if (this._map.size() >= this._maxEntries) {
            synchronized (this) {
                if (this._map.size() >= this._maxEntries) {
                    this._map.clear();
                }
            }
        }
        this._map.putIfAbsent(obj, serializable);
    }
}
