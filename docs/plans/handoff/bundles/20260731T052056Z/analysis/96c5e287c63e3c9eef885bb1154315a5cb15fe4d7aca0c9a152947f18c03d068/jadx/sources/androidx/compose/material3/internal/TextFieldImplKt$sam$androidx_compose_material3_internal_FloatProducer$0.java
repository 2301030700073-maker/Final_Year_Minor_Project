package androidx.compose.material3.internal;

import androidx.compose.material3.TextFieldDefaults$Container$1;
import kotlin.Function;
import kotlin.jvm.internal.FunctionAdapter;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0 implements FloatProducer, FunctionAdapter {
    public final /* synthetic */ TextFieldDefaults$Container$1 function;

    public TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0(TextFieldDefaults$Container$1 textFieldDefaults$Container$1) {
        this.function = textFieldDefaults$Container$1;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof FloatProducer) || !(obj instanceof FunctionAdapter)) {
            return false;
        }
        return this.function.equals(((FunctionAdapter) obj).getFunctionDelegate());
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    public final Function getFunctionDelegate() {
        return this.function;
    }

    public final int hashCode() {
        return this.function.hashCode();
    }

    @Override // androidx.compose.material3.internal.FloatProducer
    public final float invoke() {
        return ((Number) this.function.get()).floatValue();
    }
}
