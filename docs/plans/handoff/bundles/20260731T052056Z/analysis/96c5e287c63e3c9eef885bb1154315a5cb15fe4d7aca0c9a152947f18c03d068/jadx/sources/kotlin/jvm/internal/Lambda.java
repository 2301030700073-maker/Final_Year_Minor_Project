package kotlin.jvm.internal;

import java.io.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Lambda implements FunctionBase, Serializable {
    public final int arity;

    public Lambda(int i) {
        this.arity = i;
    }

    @Override // kotlin.jvm.internal.FunctionBase
    public final int getArity() {
        return this.arity;
    }

    public final String toString() {
        String renderLambdaToString = Reflection.factory.renderLambdaToString(this);
        renderLambdaToString.getClass();
        return renderLambdaToString;
    }
}
