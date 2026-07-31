package org.koin.core.qualifier;

import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import org.koin.ext.KClassExtKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TypeQualifier implements Qualifier {
    public final String value;

    public TypeQualifier(ClassReference classReference) {
        this.value = KClassExtKt.getFullName(classReference);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && TypeQualifier.class == obj.getClass() && Intrinsics.areEqual(this.value, ((TypeQualifier) obj).value);
    }

    @Override // org.koin.core.qualifier.Qualifier
    public final String getValue() {
        return this.value;
    }

    public final int hashCode() {
        return this.value.hashCode();
    }

    public final String toString() {
        return this.value;
    }
}
