package com.squareup.moshi;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ClassFactory$1 extends Types {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ AccessibleObject val$constructor;
    public final /* synthetic */ Class val$rawType;

    public ClassFactory$1(Constructor constructor, Class cls) {
        this.val$constructor = constructor;
        this.val$rawType = cls;
    }

    @Override // com.squareup.moshi.Types
    public final Object newInstance() {
        int i = this.$r8$classId;
        AccessibleObject accessibleObject = this.val$constructor;
        switch (i) {
            case 0:
                return ((Constructor) accessibleObject).newInstance(null);
            default:
                return ((Method) accessibleObject).invoke(null, this.val$rawType, Object.class);
        }
    }

    public final String toString() {
        int i = this.$r8$classId;
        Class cls = this.val$rawType;
        switch (i) {
        }
        return cls.getName();
    }

    public ClassFactory$1(Method method, Class cls) {
        this.val$constructor = method;
        this.val$rawType = cls;
    }
}
