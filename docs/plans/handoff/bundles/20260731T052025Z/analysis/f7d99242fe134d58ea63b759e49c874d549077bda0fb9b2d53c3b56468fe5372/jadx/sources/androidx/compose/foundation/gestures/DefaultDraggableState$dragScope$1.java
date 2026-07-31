package androidx.compose.foundation.gestures;

import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.ui.Modifier;
import androidx.core.view.MenuHostHelper;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultDraggableState$dragScope$1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    public /* synthetic */ DefaultDraggableState$dragScope$1(int i, Object obj) {
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    public final void dragBy(float f) {
        int i = this.$r8$classId;
        Object obj = this.this$0;
        switch (i) {
            case 0:
                ((Function1) ((MenuHostHelper) obj).mOnInvalidateMenuCallback).invoke(Float.valueOf(f));
                break;
            default:
                AnchoredDraggableState anchoredDraggableState = (AnchoredDraggableState) obj;
                Modifier.CC.dragTo$default(anchoredDraggableState.anchoredDragScope, anchoredDraggableState.newOffsetForDelta$material3(f));
                break;
        }
    }
}
