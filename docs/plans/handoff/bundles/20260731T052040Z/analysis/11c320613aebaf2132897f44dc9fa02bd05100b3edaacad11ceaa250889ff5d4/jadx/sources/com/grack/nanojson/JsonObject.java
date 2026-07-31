package com.grack.nanojson;

import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class JsonObject extends LinkedHashMap {
    private static final long serialVersionUID = 1;

    /* JADX WARN: Multi-variable type inference failed */
    public final JsonArray getArray(String str) {
        JsonArray jsonArray = new JsonArray();
        V v = get(str);
        return v instanceof JsonArray ? (JsonArray) v : jsonArray;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean getBoolean(String str) {
        V v = get(str);
        if (v instanceof Boolean) {
            return ((Boolean) v).booleanValue();
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int getInt(int i, String str) {
        V v = get(str);
        return v instanceof Number ? ((Number) v).intValue() : i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long getLong(String str, long j) {
        V v = get(str);
        return v instanceof Number ? ((Number) v).longValue() : j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final JsonObject getObject(JsonObject jsonObject, String str) {
        V v = get(str);
        return v instanceof JsonObject ? (JsonObject) v : jsonObject;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String getString(String str, String str2) {
        V v = get(str);
        return v instanceof String ? (String) v : str2;
    }

    public final boolean isNull(String str) {
        return containsKey(str) && get(str) == 0;
    }

    public final JsonObject getObject(String str) {
        return getObject(new JsonObject(), str);
    }
}
