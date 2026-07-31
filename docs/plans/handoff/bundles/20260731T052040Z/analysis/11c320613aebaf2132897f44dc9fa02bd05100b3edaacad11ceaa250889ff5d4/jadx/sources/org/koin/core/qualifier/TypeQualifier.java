package org.koin.core.qualifier;

import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import org.koin.ext.KClassExtKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
