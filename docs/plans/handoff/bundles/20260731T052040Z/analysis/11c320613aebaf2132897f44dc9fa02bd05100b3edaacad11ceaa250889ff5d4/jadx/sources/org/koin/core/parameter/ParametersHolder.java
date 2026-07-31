package org.koin.core.parameter;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ParametersHolder {
    public final List _values;
    public int index;

    public ParametersHolder(int i, ArrayList arrayList) {
        this._values = (i & 1) != 0 ? new ArrayList() : arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ParametersHolder) {
            return Intrinsics.areEqual(this._values, ((ParametersHolder) obj)._values);
        }
        return false;
    }

    public Object getOrNull(ClassReference classReference) {
        Object obj;
        classReference.getClass();
        List list = this._values;
        if (list.isEmpty()) {
            return null;
        }
        Object obj2 = list.get(this.index);
        if (!classReference.isInstance(obj2)) {
            obj2 = null;
        }
        if (obj2 == null) {
            obj2 = null;
        }
        if (obj2 != null && this.index < Jsoup.getLastIndex(list)) {
            this.index++;
        }
        if (obj2 != null) {
            return obj2;
        }
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (classReference.isInstance(obj)) {
                break;
            }
        }
        if (obj == null) {
            return null;
        }
        return obj;
    }

    public final int hashCode() {
        return this._values.hashCode() * 31;
    }

    public final String toString() {
        return "DefinitionParameters" + CollectionsKt.toList(this._values);
    }
}
