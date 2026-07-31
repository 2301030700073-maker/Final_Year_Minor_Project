package kotlin.reflect.jvm.internal.impl.renderer;

import kotlin.reflect.KProperty;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 {
    public final /* synthetic */ DescriptorRendererOptionsImpl this$0;
    public Object value;

    public DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(Object obj, DescriptorRendererOptionsImpl descriptorRendererOptionsImpl) {
        this.this$0 = descriptorRendererOptionsImpl;
        this.value = obj;
    }

    public final void setValue(Object obj, KProperty kProperty) {
        kProperty.getClass();
        if (this.this$0.isLocked) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Cannot modify readonly DescriptorRendererOptions");
        } else {
            this.value = obj;
        }
    }

    public final String toString() {
        return "ObservableProperty(value=" + this.value + ')';
    }
}
