package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorProducer;
import kotlin.Function;
import kotlin.jvm.internal.FunctionAdapter;
import kotlinx.coroutines.internal.LockFreeLinkedListNode$toString$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0 implements ColorProducer, FunctionAdapter {
    public final /* synthetic */ LockFreeLinkedListNode$toString$1 function;

    public TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0(LockFreeLinkedListNode$toString$1 lockFreeLinkedListNode$toString$1) {
        this.function = lockFreeLinkedListNode$toString$1;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ColorProducer) || !(obj instanceof FunctionAdapter)) {
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

    @Override // androidx.compose.ui.graphics.ColorProducer
    /* renamed from: invoke-0d7_KjU */
    public final long mo356invoke0d7_KjU() {
        return ((Color) this.function.get()).value;
    }
}
