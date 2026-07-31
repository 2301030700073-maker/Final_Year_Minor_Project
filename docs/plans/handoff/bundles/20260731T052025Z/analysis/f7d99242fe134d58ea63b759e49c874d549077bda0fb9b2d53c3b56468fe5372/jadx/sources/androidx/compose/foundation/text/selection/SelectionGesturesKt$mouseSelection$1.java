package androidx.compose.foundation.text.selection;

import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.room.util.RelationUtil;
import com.fsck.k9.mailstore.LocalFolder;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Ref$BooleanRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SelectionGesturesKt$mouseSelection$1 extends ContinuationImpl {
    public SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine L$0;
    public LocalFolder.AnonymousClass12 L$1;
    public Ref$BooleanRef L$2;
    public int label;
    public /* synthetic */ Object result;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return RelationUtil.mouseSelection(null, null, null, null, this);
    }
}
