package androidx.compose.ui.focus;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FocusOwnerImpl$takeFocus$1 extends Lambda implements Function1 {
    public final /* synthetic */ int $focusDirection;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FocusOwnerImpl$takeFocus$1(int i, int i2) {
        super(1);
        this.$r8$classId = i2;
        this.$focusDirection = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        int i2 = this.$focusDirection;
        switch (i) {
        }
        return Boolean.valueOf(((FocusTargetNode) obj).m368requestFocus3ESFkO8(i2));
    }
}
