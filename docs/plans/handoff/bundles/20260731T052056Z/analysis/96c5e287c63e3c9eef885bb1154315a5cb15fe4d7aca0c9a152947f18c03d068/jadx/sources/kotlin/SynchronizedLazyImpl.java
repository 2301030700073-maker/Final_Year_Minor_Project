package kotlin;

import java.io.Serializable;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SynchronizedLazyImpl implements Lazy, Serializable {
    public volatile Object _value;
    public Function0 initializer;
    public final Object lock;

    public SynchronizedLazyImpl(Function0 function0) {
        function0.getClass();
        this.initializer = function0;
        this._value = UNINITIALIZED_VALUE.INSTANCE;
        this.lock = this;
    }

    @Override // kotlin.Lazy
    public final Object getValue() {
        Object obj;
        Object obj2 = this._value;
        UNINITIALIZED_VALUE uninitialized_value = UNINITIALIZED_VALUE.INSTANCE;
        if (obj2 != uninitialized_value) {
            return obj2;
        }
        synchronized (this.lock) {
            obj = this._value;
            if (obj == uninitialized_value) {
                Function0 function0 = this.initializer;
                function0.getClass();
                obj = function0.invoke();
                this._value = obj;
                this.initializer = null;
            }
        }
        return obj;
    }

    public final String toString() {
        return this._value != UNINITIALIZED_VALUE.INSTANCE ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
