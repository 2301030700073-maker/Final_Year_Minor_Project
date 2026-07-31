package com.squareup.moshi;

import com.google.zxing.BinaryBitmap;
import com.squareup.moshi.MapJsonAdapter;
import com.squareup.moshi.internal.Util;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.TreeMap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ClassJsonAdapter extends JsonAdapter {
    public static final MapJsonAdapter.AnonymousClass1 FACTORY = new MapJsonAdapter.AnonymousClass1(2);
    public final Types classFactory;
    public final FieldBinding[] fieldsArray;
    public final BinaryBitmap options;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class FieldBinding {
        public final JsonAdapter adapter;
        public final Field field;
        public final String name;

        public FieldBinding(String str, Field field, JsonAdapter jsonAdapter) {
            this.name = str;
            this.field = field;
            this.adapter = jsonAdapter;
        }
    }

    public ClassJsonAdapter(Types types, TreeMap treeMap) {
        this.classFactory = types;
        this.fieldsArray = (FieldBinding[]) treeMap.values().toArray(new FieldBinding[treeMap.size()]);
        this.options = BinaryBitmap.of((String[]) treeMap.keySet().toArray(new String[treeMap.size()]));
    }

    @Override // com.squareup.moshi.JsonAdapter
    public final Object fromJson(JsonUtf8Reader jsonUtf8Reader) {
        try {
            Object newInstance = this.classFactory.newInstance();
            try {
                jsonUtf8Reader.beginObject();
                while (jsonUtf8Reader.hasNext()) {
                    int selectName = jsonUtf8Reader.selectName(this.options);
                    if (selectName == -1) {
                        jsonUtf8Reader.skipName();
                        jsonUtf8Reader.skipValue();
                    } else {
                        FieldBinding fieldBinding = this.fieldsArray[selectName];
                        fieldBinding.field.set(newInstance, fieldBinding.adapter.fromJson(jsonUtf8Reader));
                    }
                }
                jsonUtf8Reader.endObject();
                return newInstance;
            } catch (IllegalAccessException unused) {
                throw new AssertionError();
            }
        } catch (IllegalAccessException unused2) {
            throw new AssertionError();
        } catch (InstantiationException e) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
            return null;
        } catch (InvocationTargetException e2) {
            Util.rethrowCause(e2);
            throw null;
        }
    }

    @Override // com.squareup.moshi.JsonAdapter
    public final void toJson(JsonUtf8Writer jsonUtf8Writer, Object obj) {
        try {
            jsonUtf8Writer.beginObject();
            for (FieldBinding fieldBinding : this.fieldsArray) {
                jsonUtf8Writer.name(fieldBinding.name);
                fieldBinding.adapter.toJson(jsonUtf8Writer, fieldBinding.field.get(obj));
            }
            jsonUtf8Writer.promoteValueToName = false;
            jsonUtf8Writer.close('}', 3, 5);
        } catch (IllegalAccessException unused) {
            throw new AssertionError();
        }
    }

    public final String toString() {
        return "JsonAdapter(" + this.classFactory + ")";
    }
}
