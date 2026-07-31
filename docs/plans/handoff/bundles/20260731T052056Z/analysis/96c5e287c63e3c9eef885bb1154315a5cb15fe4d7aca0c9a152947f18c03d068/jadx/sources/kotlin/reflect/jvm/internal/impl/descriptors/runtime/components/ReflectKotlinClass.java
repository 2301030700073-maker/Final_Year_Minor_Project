package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReflectKotlinClass {
    public final KotlinClassHeader classHeader;
    public final Class klass;

    public ReflectKotlinClass(Class cls, KotlinClassHeader kotlinClassHeader) {
        this.klass = cls;
        this.classHeader = kotlinClassHeader;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ReflectKotlinClass) {
            return this.klass.equals(((ReflectKotlinClass) obj).klass);
        }
        return false;
    }

    public final String getLocation() {
        String replace = this.klass.getName().replace('.', '/');
        replace.getClass();
        return replace.concat(".class");
    }

    public final int hashCode() {
        return this.klass.hashCode();
    }

    public final String toString() {
        return ReflectKotlinClass.class.getName() + ": " + this.klass;
    }
}
