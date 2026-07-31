package org.mozilla.javascript;

import java.util.Arrays;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
class ResolvedOverload {
    final int index;
    final Class<?>[] types;

    public ResolvedOverload(Object[] objArr, int i) {
        this.index = i;
        this.types = new Class[objArr.length];
        int length = objArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            Object obj = objArr[i2];
            obj = obj instanceof Wrapper ? ((Wrapper) obj).unwrap() : obj;
            this.types[i2] = obj == null ? null : obj.getClass();
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ResolvedOverload)) {
            return false;
        }
        ResolvedOverload resolvedOverload = (ResolvedOverload) obj;
        return Arrays.equals(this.types, resolvedOverload.types) && this.index == resolvedOverload.index;
    }

    public int hashCode() {
        return Arrays.hashCode(this.types);
    }

    public boolean matches(Object[] objArr) {
        if (objArr.length != this.types.length) {
            return false;
        }
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            Object obj = objArr[i];
            if (obj instanceof Wrapper) {
                obj = ((Wrapper) obj).unwrap();
            }
            Class<?>[] clsArr = this.types;
            if (obj == null) {
                if (clsArr[i] != null) {
                    return false;
                }
            } else if (obj.getClass() != clsArr[i]) {
                return false;
            }
        }
        return true;
    }
}
