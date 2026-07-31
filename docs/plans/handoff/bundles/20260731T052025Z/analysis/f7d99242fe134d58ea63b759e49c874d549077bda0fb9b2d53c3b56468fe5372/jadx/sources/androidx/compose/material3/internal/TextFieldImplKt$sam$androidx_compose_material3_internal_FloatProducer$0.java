package androidx.compose.material3.internal;

import kotlin.Function;
import kotlin.jvm.internal.FunctionAdapter;
import kotlinx.coroutines.internal.LockFreeLinkedListNode$toString$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0 implements FloatProducer, FunctionAdapter {
    public final /* synthetic */ LockFreeLinkedListNode$toString$1 function;

    public TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0(LockFreeLinkedListNode$toString$1 lockFreeLinkedListNode$toString$1) {
        this.function = lockFreeLinkedListNode$toString$1;
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
