package com.fasterxml.jackson.databind.introspect;

import androidx.compose.ui.Modifier;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MemberKey {
    public static final Class[] NO_CLASSES = new Class[0];
    public final Class[] _argTypes;
    public final String _name;

    public MemberKey(Method method) {
        this(method.getName(), method.getParameterTypes());
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != MemberKey.class) {
            return false;
        }
        MemberKey memberKey = (MemberKey) obj;
        if (!this._name.equals(memberKey._name)) {
            return false;
        }
        Class[] clsArr = memberKey._argTypes;
        Class[] clsArr2 = this._argTypes;
        int length = clsArr2.length;
        if (clsArr.length != length) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (clsArr[i] != clsArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return this._name.hashCode() + this._argTypes.length;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this._name);
        sb.append("(");
        return Modifier.CC.m(sb, this._argTypes.length, "-args)");
    }

    public MemberKey(Constructor constructor) {
        this("", constructor.getParameterTypes());
    }

    public MemberKey(String str, Class[] clsArr) {
        this._name = str;
        this._argTypes = clsArr == null ? NO_CLASSES : clsArr;
    }
}
