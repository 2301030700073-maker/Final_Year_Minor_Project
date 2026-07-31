package com.fasterxml.jackson.databind.jsontype;

import androidx.compose.animation.core.Animation;
import j$.util.Objects;
import java.io.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NamedType implements Serializable {
    public final Class _class;
    public final int _hashCode;
    public final String _name;

    public NamedType(Class cls, String str) {
        this._class = cls;
        this._hashCode = cls.getName().hashCode() + (str == null ? 0 : str.hashCode());
        this._name = (str == null || str.isEmpty()) ? null : str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != NamedType.class) {
            return false;
        }
        NamedType namedType = (NamedType) obj;
        return this._class == namedType._class && Objects.equals(this._name, namedType._name);
    }

    public final int hashCode() {
        return this._hashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[NamedType, class ");
        sb.append(this._class.getName());
        sb.append(", name: ");
        String str = this._name;
        return Animation.CC.m(sb, str == null ? "null" : Animation.CC.m(new StringBuilder("'"), str, "'"), "]");
    }
}
