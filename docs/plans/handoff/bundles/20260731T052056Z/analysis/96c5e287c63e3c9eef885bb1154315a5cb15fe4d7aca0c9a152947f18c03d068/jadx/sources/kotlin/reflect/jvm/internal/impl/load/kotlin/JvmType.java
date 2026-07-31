package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class JvmType {
    public static final Primitive BOOLEAN = new Primitive(JvmPrimitiveType.BOOLEAN);
    public static final Primitive CHAR = new Primitive(JvmPrimitiveType.CHAR);
    public static final Primitive BYTE = new Primitive(JvmPrimitiveType.BYTE);
    public static final Primitive SHORT = new Primitive(JvmPrimitiveType.SHORT);
    public static final Primitive INT = new Primitive(JvmPrimitiveType.INT);
    public static final Primitive FLOAT = new Primitive(JvmPrimitiveType.FLOAT);
    public static final Primitive LONG = new Primitive(JvmPrimitiveType.LONG);
    public static final Primitive DOUBLE = new Primitive(JvmPrimitiveType.DOUBLE);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Array extends JvmType {
        public final JvmType elementType;

        public Array(JvmType jvmType) {
            jvmType.getClass();
            this.elementType = jvmType;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Object extends JvmType {
        public final String internalName;

        public Object(String str) {
            this.internalName = str;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Primitive extends JvmType {
        public final JvmPrimitiveType jvmPrimitiveType;

        public Primitive(JvmPrimitiveType jvmPrimitiveType) {
            this.jvmPrimitiveType = jvmPrimitiveType;
        }
    }

    public final String toString() {
        return JvmTypeFactoryImpl.toString(this);
    }
}
