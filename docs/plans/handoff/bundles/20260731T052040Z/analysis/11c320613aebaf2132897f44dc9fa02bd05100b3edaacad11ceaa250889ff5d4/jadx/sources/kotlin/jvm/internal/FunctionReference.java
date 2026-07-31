package kotlin.jvm.internal;

import kotlin.Function;
import kotlin.reflect.KCallable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class FunctionReference extends CallableReference implements FunctionBase, KCallable, Function {
    private final int arity;

    public FunctionReference(int i, int i2, Class cls, Object obj, String str, String str2) {
        super(obj, cls, str, str2, (i2 & 1) == 1);
        this.arity = i;
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final KCallable computeReflected() {
        Reflection.factory.getClass();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [kotlin.reflect.KCallable] */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof FunctionReference) {
            FunctionReference functionReference = (FunctionReference) obj;
            return getName().equals(functionReference.getName()) && getSignature().equals(functionReference.getSignature()) && Intrinsics.areEqual(this.receiver, functionReference.receiver) && Intrinsics.areEqual(getOwner(), functionReference.getOwner());
        }
        if (!(obj instanceof FunctionReference)) {
            return false;
        }
        ?? r0 = this.reflected;
        if (r0 == 0) {
            computeReflected();
            this.reflected = this;
        } else {
            this = r0;
        }
        return obj.equals(this);
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
            computeReflected();
            this.reflected = this;
            kCallable = this;
        }
        if (kCallable != this) {
            return kCallable.toString();
        }
        if ("<init>".equals(getName())) {
            return "constructor (Kotlin reflection is not available)";
        }
        return "function " + getName() + " (Kotlin reflection is not available)";
    }
}
