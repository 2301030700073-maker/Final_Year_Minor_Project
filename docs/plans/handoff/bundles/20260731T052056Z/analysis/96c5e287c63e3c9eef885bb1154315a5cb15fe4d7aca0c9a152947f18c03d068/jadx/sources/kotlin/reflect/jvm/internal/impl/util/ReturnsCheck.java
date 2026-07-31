package kotlin.reflect.jvm.internal.impl.util;

import coil3.util.ContextsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.util.Checks;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ReturnsCheck implements Check {
    public final String description;
    public final Function1 type;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ReturnsBoolean extends ReturnsCheck {
        public static final ReturnsBoolean INSTANCE = new ReturnsBoolean("Boolean", Checks.AnonymousClass2.INSTANCE$6);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ReturnsInt extends ReturnsCheck {
        public static final ReturnsInt INSTANCE = new ReturnsInt("Int", Checks.AnonymousClass2.INSTANCE$7);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ReturnsUnit extends ReturnsCheck {
        public static final ReturnsUnit INSTANCE = new ReturnsUnit("Unit", Checks.AnonymousClass2.INSTANCE$8);
    }

    public ReturnsCheck(String str, Function1 function1) {
        this.type = function1;
        this.description = "must return ".concat(str);
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public final boolean check(JavaMethodDescriptor javaMethodDescriptor) {
        return Intrinsics.areEqual(javaMethodDescriptor.unsubstitutedReturnType, this.type.invoke(DescriptorUtilsKt.getBuiltIns(javaMethodDescriptor)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public final String getDescription() {
        return this.description;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public final String invoke(JavaMethodDescriptor javaMethodDescriptor) {
        return ContextsKt.invoke(this, javaMethodDescriptor);
    }
}
