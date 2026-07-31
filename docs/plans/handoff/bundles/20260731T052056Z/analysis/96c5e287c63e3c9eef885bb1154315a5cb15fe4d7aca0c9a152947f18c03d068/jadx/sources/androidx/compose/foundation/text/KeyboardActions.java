package androidx.compose.foundation.text;

import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KeyboardActions {
    public static final KeyboardActions Default = new KeyboardActions(null, 63);
    public final Function1 onSend;

    public KeyboardActions(Function1 function1, int i) {
        this.onSend = (i & 32) != 0 ? null : function1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof KeyboardActions) && this.onSend == ((KeyboardActions) obj).onSend;
    }

    public final int hashCode() {
        Function1 function1 = this.onSend;
        if (function1 != null) {
            return function1.hashCode();
        }
        return 0;
    }
}
