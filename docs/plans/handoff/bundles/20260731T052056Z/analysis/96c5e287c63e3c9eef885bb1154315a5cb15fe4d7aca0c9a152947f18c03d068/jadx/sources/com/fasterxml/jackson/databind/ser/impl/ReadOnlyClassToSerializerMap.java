package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.util.TypeKey;
import java.util.HashMap;
import java.util.Map;
import okhttp3.Cache;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadOnlyClassToSerializerMap {
    public final Cache.RealCacheRequest[] _buckets;
    public final int _mask;

    public ReadOnlyClassToSerializerMap(HashMap hashMap) {
        int size = hashMap.size();
        int i = 8;
        while (i < (size <= 64 ? size + size : size + (size >> 2))) {
            i += i;
        }
        this._mask = i - 1;
        Cache.RealCacheRequest[] realCacheRequestArr = new Cache.RealCacheRequest[i];
        for (Map.Entry entry : hashMap.entrySet()) {
            TypeKey typeKey = (TypeKey) entry.getKey();
            int i2 = typeKey._hashCode & this._mask;
            Cache.RealCacheRequest realCacheRequest = realCacheRequestArr[i2];
            JsonSerializer jsonSerializer = (JsonSerializer) entry.getValue();
            Cache.RealCacheRequest realCacheRequest2 = new Cache.RealCacheRequest();
            realCacheRequest2.cacheOut = realCacheRequest;
            realCacheRequest2.editor = jsonSerializer;
            realCacheRequest2.done = typeKey._isTyped;
            realCacheRequest2.body = typeKey._class;
            realCacheRequest2.this$0 = typeKey._type;
            realCacheRequestArr[i2] = realCacheRequest2;
        }
        this._buckets = realCacheRequestArr;
    }

    public final JsonSerializer untypedValueSerializer(TypeBase typeBase) {
        Cache.RealCacheRequest realCacheRequest = this._buckets[(typeBase._hash - 1) & this._mask];
        if (realCacheRequest == null) {
            return null;
        }
        if (!realCacheRequest.done && typeBase.equals((TypeBase) realCacheRequest.this$0)) {
            return (JsonSerializer) realCacheRequest.editor;
        }
        while (true) {
            realCacheRequest = (Cache.RealCacheRequest) realCacheRequest.cacheOut;
            if (realCacheRequest == null) {
                return null;
            }
            if (!realCacheRequest.done && typeBase.equals((TypeBase) realCacheRequest.this$0)) {
                return (JsonSerializer) realCacheRequest.editor;
            }
        }
    }

    public final JsonSerializer untypedValueSerializer(Class cls) {
        Cache.RealCacheRequest realCacheRequest = this._buckets[cls.getName().hashCode() & this._mask];
        if (realCacheRequest == null) {
            return null;
        }
        if (((Class) realCacheRequest.body) == cls && !realCacheRequest.done) {
            return (JsonSerializer) realCacheRequest.editor;
        }
        while (true) {
            realCacheRequest = (Cache.RealCacheRequest) realCacheRequest.cacheOut;
            if (realCacheRequest == null) {
                return null;
            }
            if (((Class) realCacheRequest.body) == cls && !realCacheRequest.done) {
                return (JsonSerializer) realCacheRequest.editor;
            }
        }
    }
}
