package kotlin.reflect.jvm.internal.calls;

import java.lang.reflect.Field;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.reflect.jvm.internal.calls.CallerImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CallerImpl$FieldSetter$BoundInstance extends CallerImpl.Method implements BoundCaller {
    public final Object boundReceiver;

    public CallerImpl$FieldSetter$BoundInstance(Field field, boolean z, Object obj) {
        super(field, z, false);
        this.boundReceiver = obj;
    }

    @Override // kotlin.reflect.jvm.internal.calls.CallerImpl.Method, kotlin.reflect.jvm.internal.calls.Caller
    public final Object call(Object[] objArr) {
        checkArguments(objArr);
        ((Field) this.member).set(this.boundReceiver, ArraysKt___ArraysKt.first(objArr));
        return Unit.INSTANCE;
    }
}
