package kotlin;

import _COROUTINE.ArtificialStackFramesUnsafe;
import java.io.Serializable;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SafePublicationLazyImpl implements Lazy, Serializable {
    public static final /* synthetic */ long valueUpdater$offset = ArtificialStackFramesUnsafe.unsafe.objectFieldOffset(SafePublicationLazyImpl.class.getDeclaredField("_value"));
    public volatile Object _value;
    public volatile Function0 initializer;

    @Override // kotlin.Lazy
    public final Object getValue() {
        SafePublicationLazyImpl safePublicationLazyImpl;
        Object obj = this._value;
        UNINITIALIZED_VALUE uninitialized_value = UNINITIALIZED_VALUE.INSTANCE;
        if (obj != uninitialized_value) {
            return obj;
        }
        Function0 function0 = this.initializer;
        if (function0 != null) {
            Object invoke = function0.invoke();
            while (true) {
                safePublicationLazyImpl = this;
                if (ArtificialStackFramesUnsafe.unsafe.compareAndSwapObject(safePublicationLazyImpl, valueUpdater$offset, uninitialized_value, invoke)) {
                    safePublicationLazyImpl.initializer = null;
                    return invoke;
                }
                if (ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(safePublicationLazyImpl, valueUpdater$offset) != uninitialized_value) {
                    break;
                }
                this = safePublicationLazyImpl;
            }
        } else {
            safePublicationLazyImpl = this;
        }
        return safePublicationLazyImpl._value;
    }

    public final String toString() {
        return this._value != UNINITIALIZED_VALUE.INSTANCE ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
