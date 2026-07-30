package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: FocusRequester.kt */
/* loaded from: classes.dex */
public final class FocusRequester {
    private final MutableVector focusRequesterNodes = new MutableVector(new FocusRequesterModifierNode[16], 0);
    public static final Companion Companion = new Companion(null);
    private static final FocusRequester Default = new FocusRequester();
    private static final FocusRequester Cancel = new FocusRequester();

    public final MutableVector getFocusRequesterNodes$ui_release() {
        return this.focusRequesterNodes;
    }

    public final void requestFocus() {
        focus$ui_release();
    }

    public final boolean focus$ui_release() {
        return findFocusTargetNode$ui_release(new Function1() { // from class: androidx.compose.ui.focus.FocusRequester$focus$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(FocusTargetNode focusTargetNode) {
                return Boolean.valueOf(FocusTransactionsKt.requestFocus(focusTargetNode));
            }
        });
    }

    /* compiled from: FocusRequester.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final FocusRequester getDefault() {
            return FocusRequester.Default;
        }

        public final FocusRequester getCancel() {
            return FocusRequester.Cancel;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:82:0x005d, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean findFocusTargetNode$ui_release(kotlin.jvm.functions.Function1 r18) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.focus.FocusRequester.findFocusTargetNode$ui_release(kotlin.jvm.functions.Function1):boolean");
    }
}
