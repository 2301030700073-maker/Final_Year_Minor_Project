package kotlin;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class UnsafeLazyImpl implements Lazy, Serializable {
    private Object _value = UNINITIALIZED_VALUE.INSTANCE;
    private Function0 initializer;

    public UnsafeLazyImpl(Function0 function0) {
        this.initializer = function0;
    }

    private final void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    @Override // kotlin.Lazy
    public final Object getValue() {
        if (this._value == UNINITIALIZED_VALUE.INSTANCE) {
            Function0 function0 = this.initializer;
            function0.getClass();
            this._value = function0.invoke();
            this.initializer = null;
        }
        return this._value;
    }

    public final String toString() {
        return this._value != UNINITIALIZED_VALUE.INSTANCE ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
