package kotlin.reflect.jvm.internal;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JvmPropertySignature$MappedKotlinProperty extends KPropertyImplKt {
    public final JvmFunctionSignature$KotlinFunction getterSignature;
    public final JvmFunctionSignature$KotlinFunction setterSignature;

    public JvmPropertySignature$MappedKotlinProperty(JvmFunctionSignature$KotlinFunction jvmFunctionSignature$KotlinFunction, JvmFunctionSignature$KotlinFunction jvmFunctionSignature$KotlinFunction2) {
        this.getterSignature = jvmFunctionSignature$KotlinFunction;
        this.setterSignature = jvmFunctionSignature$KotlinFunction2;
    }

    @Override // kotlin.reflect.jvm.internal.KPropertyImplKt
    public final String asString() {
        return this.getterSignature._signature;
    }
}
