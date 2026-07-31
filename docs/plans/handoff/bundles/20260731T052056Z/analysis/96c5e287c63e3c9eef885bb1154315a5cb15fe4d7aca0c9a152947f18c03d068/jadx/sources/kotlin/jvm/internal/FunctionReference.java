package kotlin.jvm.internal;

import kotlin.jvm.internal.CallableReference;
import kotlin.reflect.KCallable;
import kotlin.reflect.KFunction;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class FunctionReference extends CallableReference implements FunctionBase, KFunction {
    public final int arity;

    public FunctionReference(int i, int i2, Class cls, Object obj, String str, String str2) {
        super(obj, cls, str, str2, (i2 & 1) == 1);
        this.arity = i;
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final KCallable computeReflected() {
        return Reflection.factory.function(this);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof FunctionReference) {
            FunctionReference functionReference = (FunctionReference) obj;
            return getName().equals(functionReference.getName()) && getSignature().equals(functionReference.getSignature()) && Intrinsics.areEqual(this.receiver, functionReference.receiver) && Intrinsics.areEqual(getOwner(), functionReference.getOwner());
        }
        if (!(obj instanceof KFunction)) {
            return false;
        }
        KCallable kCallable = this.reflected;
        if (kCallable == null) {
            kCallable = computeReflected();
            this.reflected = kCallable;
        }
        return obj.equals(kCallable);
    }

    @Override // kotlin.jvm.internal.FunctionBase
    public final int getArity() {
        return this.arity;
    }

    public final int hashCode() {
        return getSignature().hashCode() + ((getName().hashCode() + (getOwner() == null ? 0 : getOwner().hashCode() * 31)) * 31);
    }

    public final String toString() {
        KCallable kCallable = this.reflected;
        if (kCallable == null) {
            kCallable = computeReflected();
            this.reflected = kCallable;
        }
        if (kCallable != this) {
            return kCallable.toString();
        }
        if ("<init>".equals(getName())) {
            return "constructor (Kotlin reflection is not available)";
        }
        return "function " + getName() + " (Kotlin reflection is not available)";
    }

    public FunctionReference(int i, Object obj) {
        this(i, 0, null, obj, null, null);
    }

    public FunctionReference(int i) {
        this(i, 0, null, CallableReference.NoReceiver.INSTANCE, null, null);
    }
}
