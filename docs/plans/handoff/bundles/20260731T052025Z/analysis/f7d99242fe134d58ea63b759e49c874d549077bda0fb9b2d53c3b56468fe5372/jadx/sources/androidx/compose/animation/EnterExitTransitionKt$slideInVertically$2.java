package androidx.compose.animation;

import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EnterExitTransitionKt$slideInVertically$2 extends Lambda implements Function1 {
    public final /* synthetic */ Function1 $initialOffsetY;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ EnterExitTransitionKt$slideInVertically$2(int i, Function1 function1) {
        super(1);
        this.$r8$classId = i;
        this.$initialOffsetY = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Function1 function1 = this.$initialOffsetY;
        switch (i) {
            case 0:
                return new IntOffset(((Number) function1.invoke(Integer.valueOf((int) (((IntSize) obj).packedValue & 4294967295L)))).intValue() & 4294967295L);
            case 1:
                return new IntOffset(((Number) function1.invoke(Integer.valueOf((int) (((IntSize) obj).packedValue >> 32)))).intValue() << 32);
            case 2:
                return new IntOffset(((Number) function1.invoke(Integer.valueOf((int) (((IntSize) obj).packedValue >> 32)))).intValue() << 32);
            default:
                return new IntOffset(((Number) function1.invoke(Integer.valueOf((int) (((IntSize) obj).packedValue & 4294967295L)))).intValue() & 4294967295L);
        }
    }
}
