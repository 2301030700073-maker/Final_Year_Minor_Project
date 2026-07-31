package com.squareup.moshi;

import com.squareup.moshi.MapJsonAdapter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CollectionJsonAdapter$2 extends JsonAdapter {
    public static final MapJsonAdapter.AnonymousClass1 FACTORY = new MapJsonAdapter.AnonymousClass1(3);
    public final /* synthetic */ int $r8$classId;
    public final JsonAdapter elementAdapter;

    public CollectionJsonAdapter$2(JsonAdapter jsonAdapter, int i) {
        this.$r8$classId = i;
        this.elementAdapter = jsonAdapter;
    }

    @Override // com.squareup.moshi.JsonAdapter
    public Object fromJson(JsonUtf8Reader jsonUtf8Reader) {
        Collection arrayList;
        switch (this.$r8$classId) {
            case 0:
                arrayList = new ArrayList();
                break;
            default:
                arrayList = new LinkedHashSet();
                break;
        }
        jsonUtf8Reader.beginArray();
        while (jsonUtf8Reader.hasNext()) {
            arrayList.add(this.elementAdapter.fromJson(jsonUtf8Reader));
        }
        jsonUtf8Reader.endArray();
        return arrayList;
    }

    @Override // com.squareup.moshi.JsonAdapter
    public void toJson(JsonUtf8Writer jsonUtf8Writer, Object obj) {
        jsonUtf8Writer.beginArray();
        Iterator it = ((Collection) obj).iterator();
        while (it.hasNext()) {
            this.elementAdapter.toJson(jsonUtf8Writer, it.next());
        }
        jsonUtf8Writer.close(']', 1, 2);
    }

    public final String toString() {
        return this.elementAdapter + ".collection()";
    }
}
