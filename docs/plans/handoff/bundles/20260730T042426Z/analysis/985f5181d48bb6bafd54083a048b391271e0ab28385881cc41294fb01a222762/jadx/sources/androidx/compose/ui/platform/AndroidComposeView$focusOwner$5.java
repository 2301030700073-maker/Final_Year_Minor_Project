package androidx.compose.ui.platform;

import androidx.compose.ui.geometry.Rect;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: AndroidComposeView.android.kt */
/* loaded from: classes.dex */
/* synthetic */ class AndroidComposeView$focusOwner$5 extends FunctionReferenceImpl implements Function0 {
    AndroidComposeView$focusOwner$5(Object obj) {
        super(0, obj, AndroidComposeView.class, "onFetchFocusRect", "onFetchFocusRect()Landroidx/compose/ui/geometry/Rect;", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Rect invoke() {
        Rect onFetchFocusRect;
        onFetchFocusRect = ((AndroidComposeView) this.receiver).onFetchFocusRect();
        return onFetchFocusRect;
    }
}
