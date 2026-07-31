package kotlin.jvm.internal;

import androidx.compose.ui.Modifier;
import java.io.Serializable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AdaptedFunctionReference implements FunctionBase, Serializable {
    public final int arity;
    public final int flags;
    public final boolean isTopLevel = false;
    public final String name;
    public final Class owner;
    public final Object receiver;
    public final String signature;

    public AdaptedFunctionReference(int i, int i2, Class cls, Object obj, String str, String str2) {
        this.receiver = obj;
        this.owner = cls;
        this.name = str;
        this.signature = str2;
        this.arity = i;
        this.flags = i2 >> 1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdaptedFunctionReference)) {
            return false;
        }
        AdaptedFunctionReference adaptedFunctionReference = (AdaptedFunctionReference) obj;
        return this.isTopLevel == adaptedFunctionReference.isTopLevel && this.arity == adaptedFunctionReference.arity && this.flags == adaptedFunctionReference.flags && Intrinsics.areEqual(this.receiver, adaptedFunctionReference.receiver) && this.owner.equals(adaptedFunctionReference.owner) && this.name.equals(adaptedFunctionReference.name) && this.signature.equals(adaptedFunctionReference.signature);
    }

    @Override // kotlin.jvm.internal.FunctionBase
    public final int getArity() {
        return this.arity;
    }

    public final int hashCode() {
        Object obj = this.receiver;
        return ((((Modifier.CC.m(Modifier.CC.m((this.owner.hashCode() + ((obj != null ? obj.hashCode() : 0) * 31)) * 31, this.name, 31), this.signature, 31) + (this.isTopLevel ? 1231 : 1237)) * 31) + this.arity) * 31) + this.flags;
    }

    public final String toString() {
        Reflection.factory.getClass();
        return ReflectionFactory.renderLambdaToString(this);
    }
}
