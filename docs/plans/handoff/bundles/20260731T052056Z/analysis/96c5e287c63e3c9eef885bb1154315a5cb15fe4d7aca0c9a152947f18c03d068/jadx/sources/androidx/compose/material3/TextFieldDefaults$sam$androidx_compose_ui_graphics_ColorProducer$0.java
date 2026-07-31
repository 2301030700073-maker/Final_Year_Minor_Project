package androidx.compose.material3;

import androidx.compose.ui.graphics.ColorProducer;
import kotlin.Function;
import kotlin.jvm.internal.FunctionAdapter;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0 implements ColorProducer, FunctionAdapter {
    public final /* synthetic */ TextFieldDefaults$Container$1 function;

    public TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0(TextFieldDefaults$Container$1 textFieldDefaults$Container$1) {
        this.function = textFieldDefaults$Container$1;
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
}
