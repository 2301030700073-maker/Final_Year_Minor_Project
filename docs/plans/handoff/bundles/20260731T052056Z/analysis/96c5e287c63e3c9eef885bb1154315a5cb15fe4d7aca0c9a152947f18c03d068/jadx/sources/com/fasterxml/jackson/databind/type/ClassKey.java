package com.fasterxml.jackson.databind.type;

import java.io.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ClassKey implements Comparable, Serializable {
    public Class _class;
    public String _className;
    public int _hashCode;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this._className.compareTo(((ClassKey) obj)._className);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && obj.getClass() == ClassKey.class && ((ClassKey) obj)._class == this._class;
    }

    public final int hashCode() {
        return this._hashCode;
    }

    public final String toString() {
        return this._className;
    }
}
