package androidx.compose.ui.platform;

import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.compose.ui.node.OwnerSnapshotObserver;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
                    snapshotObserver.observer.observeReads(scrollObservationScope, androidComposeViewAccessibilityDelegateCompat.scheduleScrollEventIfNeededLambda, new KTypeImpl$arguments$2(7, scrollObservationScope, androidComposeViewAccessibilityDelegateCompat));
                }
                return Unit.INSTANCE;
        }
    }
}
