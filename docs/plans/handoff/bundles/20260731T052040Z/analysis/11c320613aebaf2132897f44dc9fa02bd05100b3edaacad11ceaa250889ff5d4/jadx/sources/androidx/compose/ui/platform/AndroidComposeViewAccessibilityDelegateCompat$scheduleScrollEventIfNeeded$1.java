package androidx.compose.ui.platform;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNodeWithAdjustedBounds;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1 extends Lambda implements Function0 {
    final /* synthetic */ ScrollObservationScope $scrollObservationScope;
    final /* synthetic */ AndroidComposeViewAccessibilityDelegateCompat this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1(ScrollObservationScope scrollObservationScope, AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat) {
        super(0);
        this.$scrollObservationScope = scrollObservationScope;
        this.this$0 = androidComposeViewAccessibilityDelegateCompat;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        SemanticsNode semanticsNode;
        LayoutNode layoutNode;
        ScrollObservationScope scrollObservationScope = this.$scrollObservationScope;
        ScrollAxisRange scrollAxisRange = scrollObservationScope.horizontalScrollAxisRange;
        ScrollAxisRange scrollAxisRange2 = scrollObservationScope.verticalScrollAxisRange;
        Float f = scrollObservationScope.oldXValue;
        Float f2 = scrollObservationScope.oldYValue;
        float floatValue = (scrollAxisRange == null || f == null) ? 0.0f : ((Number) scrollAxisRange.value.invoke()).floatValue() - f.floatValue();
        float floatValue2 = (scrollAxisRange2 == null || f2 == null) ? 0.0f : ((Number) scrollAxisRange2.value.invoke()).floatValue() - f2.floatValue();
        if (floatValue != 0.0f || floatValue2 != 0.0f) {
            int semanticsNodeIdToAccessibilityVirtualNodeId = this.this$0.semanticsNodeIdToAccessibilityVirtualNodeId(this.$scrollObservationScope.semanticsNodeId);
            SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) this.this$0.getCurrentSemanticsNodes().get(this.this$0.accessibilityFocusedVirtualViewId);
            if (semanticsNodeWithAdjustedBounds != null) {
                AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = this.this$0;
                try {
                    AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = androidComposeViewAccessibilityDelegateCompat.currentlyAccessibilityFocusedANI;
                    if (accessibilityNodeInfoCompat != null) {
                        accessibilityNodeInfoCompat.mInfo.setBoundsInScreen(androidComposeViewAccessibilityDelegateCompat.boundsInScreen(semanticsNodeWithAdjustedBounds));
                    }
                } catch (IllegalStateException unused) {
                }
            }
            SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds2 = (SemanticsNodeWithAdjustedBounds) this.this$0.getCurrentSemanticsNodes().get(this.this$0.focusedVirtualViewId);
            if (semanticsNodeWithAdjustedBounds2 != null) {
                AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat2 = this.this$0;
                try {
                    AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2 = androidComposeViewAccessibilityDelegateCompat2.currentlyFocusedANI;
                    if (accessibilityNodeInfoCompat2 != null) {
                        accessibilityNodeInfoCompat2.mInfo.setBoundsInScreen(androidComposeViewAccessibilityDelegateCompat2.boundsInScreen(semanticsNodeWithAdjustedBounds2));
                    }
                } catch (IllegalStateException unused2) {
                }
            }
            this.this$0.view.invalidate();
            SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds3 = (SemanticsNodeWithAdjustedBounds) this.this$0.getCurrentSemanticsNodes().get(semanticsNodeIdToAccessibilityVirtualNodeId);
            if (semanticsNodeWithAdjustedBounds3 != null && (semanticsNode = semanticsNodeWithAdjustedBounds3.semanticsNode) != null && (layoutNode = semanticsNode.layoutNode) != null) {
                AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat3 = this.this$0;
                if (scrollAxisRange != null) {
                    androidComposeViewAccessibilityDelegateCompat3.pendingHorizontalScrollEvents.set(semanticsNodeIdToAccessibilityVirtualNodeId, scrollAxisRange);
                }
                if (scrollAxisRange2 != null) {
                    androidComposeViewAccessibilityDelegateCompat3.pendingVerticalScrollEvents.set(semanticsNodeIdToAccessibilityVirtualNodeId, scrollAxisRange2);
                }
                androidComposeViewAccessibilityDelegateCompat3.notifySubtreeAccessibilityStateChangedIfNeeded(layoutNode);
            }
        }
        if (scrollAxisRange != null) {
            this.$scrollObservationScope.oldXValue = (Float) scrollAxisRange.value.invoke();
        }
        if (scrollAxisRange2 != null) {
            this.$scrollObservationScope.oldYValue = (Float) scrollAxisRange2.value.invoke();
        }
        return Unit.INSTANCE;
    }
}
