package kotlin.reflect.jvm.internal;

import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature$Method;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JvmFunctionSignature$KotlinFunction extends KPropertyImplKt {
    public final String _signature;
    public final JvmMemberSignature$Method signature;

    public JvmFunctionSignature$KotlinFunction(JvmMemberSignature$Method jvmMemberSignature$Method) {
        this.signature = jvmMemberSignature$Method;
        this._signature = jvmMemberSignature$Method.asString();
    }

    @Override // kotlin.reflect.jvm.internal.KPropertyImplKt
    public final String asString() {
        return this._signature;
    }
}
