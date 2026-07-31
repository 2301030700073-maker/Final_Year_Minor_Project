package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.core.util.InternCache;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.Serializable;
import java.lang.annotation.Annotation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PropertyName implements Serializable {
    public SerializedString _encodedSimple;
    public final String _namespace;
    public final String _simpleName;
    public static final PropertyName USE_DEFAULT = new PropertyName("", null);
    public static final PropertyName NO_NAME = new PropertyName(new String(""), null);

    public PropertyName(String str, String str2) {
        Annotation[] annotationArr = ClassUtil.NO_ANNOTATIONS;
        this._simpleName = str == null ? "" : str;
        this._namespace = str2;
    }

    public static PropertyName construct(String str, String str2) {
        if (str == null) {
            str = "";
        }
        return (str2 == null && str.isEmpty()) ? USE_DEFAULT : new PropertyName(InternCache.instance.intern(str), str2);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != PropertyName.class) {
            return false;
        }
        PropertyName propertyName = (PropertyName) obj;
        String str = propertyName._simpleName;
        String str2 = this._simpleName;
        if (str2 == null) {
            if (str != null) {
                return false;
            }
        } else if (!str2.equals(str)) {
            return false;
        }
        String str3 = propertyName._namespace;
        String str4 = this._namespace;
        return str4 == null ? str3 == null : str4.equals(str3);
    }

    public final int hashCode() {
        String str = this._simpleName;
        String str2 = this._namespace;
        return str2 == null ? str.hashCode() : str2.hashCode() ^ str.hashCode();
    }

    public final boolean isEmpty() {
        return this._namespace == null && this._simpleName.isEmpty();
    }

    public final String toString() {
        String str = this._simpleName;
        String str2 = this._namespace;
        if (str2 == null) {
            return str;
        }
        return "{" + str2 + "}" + str;
    }

    public static PropertyName construct(String str) {
        if (str != null && !str.isEmpty()) {
            return new PropertyName(InternCache.instance.intern(str), null);
        }
        return USE_DEFAULT;
    }
}
