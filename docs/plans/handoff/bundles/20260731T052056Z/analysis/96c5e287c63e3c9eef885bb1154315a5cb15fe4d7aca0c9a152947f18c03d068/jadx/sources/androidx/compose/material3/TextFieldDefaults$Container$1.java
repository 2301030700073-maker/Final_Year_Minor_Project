package androidx.compose.material3;

import androidx.compose.runtime.State;
import kotlin.jvm.internal.PropertyReference;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KCallable;
import kotlin.reflect.KProperty0;
import kotlin.reflect.jvm.internal.KProperty0Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TextFieldDefaults$Container$1 extends PropertyReference implements KProperty0 {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TextFieldDefaults$Container$1(int i, int i2, Class cls, Object obj, String str, String str2) {
        super(obj, cls, str, str2, i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final KCallable computeReflected() {
        return Reflection.factory.property0(this);
    }

    @Override // kotlin.reflect.KProperty0
    public final Object get() {
        int i = this.$r8$classId;
        Object obj = this.receiver;
        switch (i) {
            case 0:
                return ((State) obj).getValue();
            case 1:
                return ((State) obj).getValue();
            case 2:
                return ((State) obj).getValue();
            case 3:
                return ((State) obj).getValue();
            case 4:
                return ((State) obj).getValue();
            case 5:
                return ((State) obj).getValue();
            case 6:
                return ((State) obj).getValue();
            case 7:
                return ((State) obj).getValue();
            default:
                return obj.getClass().getSimpleName();
        }
    }

    @Override // kotlin.reflect.KProperty, kotlin.reflect.KProperty0
    public final KProperty0Impl.Getter getGetter() {
        return ((KProperty0) getReflected()).getGetter();
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return get();
    }
}
