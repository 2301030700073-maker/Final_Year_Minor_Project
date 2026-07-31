package org.koin.core.parameter;

import androidx.compose.ui.unit.IntOffsetKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.koin.core.error.InstanceCreationException;
import org.koin.ext.KClassExtKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class ParametersHolder {
    public final List _values;
    public int index;

    public ParametersHolder(int i, ArrayList arrayList) {
        this._values = (i & 1) != 0 ? new ArrayList() : arrayList;
    }

    public Object elementAt(int i, ClassReference classReference) {
        List list = this._values;
        if (i < list.size()) {
            return list.get(i);
        }
        StringBuilder sb = new StringBuilder("Can't get injected parameter #");
        sb.append(i);
        sb.append(" from ");
        sb.append(this);
        String fullName = KClassExtKt.getFullName(classReference);
        sb.append(" for type '");
        sb.append(fullName);
        sb.append('\'');
        throw new InstanceCreationException(sb.toString());
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

    public Object getOrNull(KClass kClass) {
        Object obj;
        kClass.getClass();
        List list = this._values;
        if (list.isEmpty()) {
            return null;
        }
        Object obj2 = list.get(this.index);
        if (!((ClassReference) kClass).isInstance(obj2)) {
            obj2 = null;
        }
        if (obj2 == null) {
            obj2 = null;
        }
        if (obj2 != null && this.index < IntOffsetKt.getLastIndex(list)) {
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
            if (((ClassReference) kClass).isInstance(obj)) {
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
