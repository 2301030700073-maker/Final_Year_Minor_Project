package kotlin.reflect.jvm.internal;

import java.lang.reflect.Field;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAbi;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JvmPropertySignature$JavaField extends KPropertyImplKt {
    public final Field field;

    public JvmPropertySignature$JavaField(Field field) {
        this.field = field;
    }

    @Override // kotlin.reflect.jvm.internal.KPropertyImplKt
    public final String asString() {
        Field field = this.field;
        String name = field.getName();
        name.getClass();
        StringBuilder sb = new StringBuilder(JvmAbi.getterName(name));
        sb.append("()");
        Class<?> type = field.getType();
        type.getClass();
        sb.append(ReflectClassUtilKt.getDesc(type));
        return sb.toString();
    }
}
