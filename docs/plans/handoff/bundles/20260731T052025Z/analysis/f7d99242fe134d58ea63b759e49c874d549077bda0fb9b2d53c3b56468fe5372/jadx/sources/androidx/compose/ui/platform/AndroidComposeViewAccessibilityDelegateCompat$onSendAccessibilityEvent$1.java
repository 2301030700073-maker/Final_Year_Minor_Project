package androidx.compose.ui.platform;

import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.compose.ui.focus.FocusTargetNode$invalidateFocus$1;
import androidx.compose.ui.node.OwnerSnapshotObserver;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1 extends Lambda implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AndroidComposeViewAccessibilityDelegateCompat this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AndroidComposeViewAccessibilityDelegateCompat$onSendAccessibilityEvent$1(AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat, int i) {
        super(1);
        this.$r8$classId = i;
        this.this$0 = androidComposeViewAccessibilityDelegateCompat;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = this.this$0;
        switch (i) {
            case 0:
                View view = androidComposeViewAccessibilityDelegateCompat.view;
                return Boolean.valueOf(view.getParent().requestSendAccessibilityEvent(view, (AccessibilityEvent) obj));
            default:
                ScrollObservationScope scrollObservationScope = (ScrollObservationScope) obj;
                if (scrollObservationScope.allScopes.contains(scrollObservationScope)) {
                    OwnerSnapshotObserver snapshotObserver = androidComposeViewAccessibilityDelegateCompat.view.getSnapshotObserver();
                    snapshotObserver.observer.observeReads(scrollObservationScope, androidComposeViewAccessibilityDelegateCompat.scheduleScrollEventIfNeededLambda, new FocusTargetNode$invalidateFocus$1(6, scrollObservationScope, androidComposeViewAccessibilityDelegateCompat));
                }
                return Unit.INSTANCE;
        }
    }
}
