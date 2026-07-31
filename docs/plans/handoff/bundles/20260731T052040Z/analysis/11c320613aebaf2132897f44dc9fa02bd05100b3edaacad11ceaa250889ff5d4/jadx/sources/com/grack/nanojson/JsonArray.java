package com.grack.nanojson;

import j$.util.Collection;
import j$.util.stream.Stream;
import java.util.ArrayList;
import org.jsoup.select.Nodes$$ExternalSyntheticLambda0;

/* loaded from: classes.dex */
public final class JsonArray extends ArrayList {
    private static final long serialVersionUID = 1;

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final Object get(int i) {
        if (i < size()) {
            return super.get(i);
        }
        return null;
    }

    public final JsonObject getObject(int i) {
        JsonObject jsonObject = new JsonObject();
        Object obj = get(i);
        return obj instanceof JsonObject ? (JsonObject) obj : jsonObject;
    }

    public final Stream streamAsJsonObjects() {
        return Collection.EL.stream(this).filter(new JsonArray$$ExternalSyntheticLambda0(0)).map(new Nodes$$ExternalSyntheticLambda0(5));
    }
}
