package coil3.network.internal;

import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SingleParameterLazy<P, T> {
    private Object _value = UNINITIALIZED.INSTANCE;
    private Function1 initializer;

    public SingleParameterLazy(Function1 function1) {
        this.initializer = function1;
    }

    public final T get(P p) {
        T t;
        T t2 = (T) this._value;
        UNINITIALIZED uninitialized = UNINITIALIZED.INSTANCE;
        if (t2 != uninitialized) {
            return t2;
        }
        synchronized (this) {
            t = (T) this._value;
            if (t == uninitialized) {
                Function1 function1 = this.initializer;
                function1.getClass();
                t = (T) function1.invoke(p);
                this._value = t;
                this.initializer = null;
            }
        }
        return t;
    }
}
