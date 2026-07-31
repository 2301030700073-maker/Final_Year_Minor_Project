package androidx.compose.ui.focus;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        return Boolean.valueOf(((FocusTargetNode) obj).m420requestFocus3ESFkO8(i2));
    }
}
