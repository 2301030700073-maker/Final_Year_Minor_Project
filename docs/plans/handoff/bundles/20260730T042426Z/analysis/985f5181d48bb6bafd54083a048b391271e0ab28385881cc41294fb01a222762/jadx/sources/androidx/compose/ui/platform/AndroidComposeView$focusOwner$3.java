package androidx.compose.ui.platform;

import androidx.compose.ui.focus.FocusDirection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: AndroidComposeView.android.kt */
/* loaded from: classes.dex */
/* synthetic */ class AndroidComposeView$focusOwner$3 extends FunctionReferenceImpl implements Function1 {
    AndroidComposeView$focusOwner$3(Object obj) {
        super(1, obj, AndroidComposeView.class, "onMoveFocusInChildren", "onMoveFocusInChildren-3ESFkO8(I)Z", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return m1941invoke3ESFkO8(((FocusDirection) obj).m1102unboximpl());
    }

    /* renamed from: invoke-3ESFkO8, reason: not valid java name */
    public final Boolean m1941invoke3ESFkO8(int i) {
        boolean m1932onMoveFocusInChildren3ESFkO8;
        m1932onMoveFocusInChildren3ESFkO8 = ((AndroidComposeView) this.receiver).m1932onMoveFocusInChildren3ESFkO8(i);
        return Boolean.valueOf(m1932onMoveFocusInChildren3ESFkO8);
    }
}
