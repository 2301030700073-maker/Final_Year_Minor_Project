package org.maplibre.android.style.layers;

import java.util.Arrays;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class PropertyValue {
    public final String name;
    public final Object value;

    public PropertyValue(String str, Object obj) {
        this.name = str;
        this.value = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PropertyValue propertyValue = (PropertyValue) obj;
        Object obj2 = propertyValue.value;
        if (!this.name.equals(propertyValue.name)) {
            return false;
        }
        Object obj3 = this.value;
        return obj3 != null ? obj3 instanceof Object[] ? Arrays.deepEquals((Object[]) obj3, (Object[]) obj2) : obj3.equals(obj2) : obj2 == null;
    }

    public final int hashCode() {
        int hashCode = this.name.hashCode() * 31;
        Object obj = this.value;
        return hashCode + (obj != null ? obj.hashCode() : 0);
    }

    public final String toString() {
        return String.format("%s: %s", this.name, this.value);
    }
}
