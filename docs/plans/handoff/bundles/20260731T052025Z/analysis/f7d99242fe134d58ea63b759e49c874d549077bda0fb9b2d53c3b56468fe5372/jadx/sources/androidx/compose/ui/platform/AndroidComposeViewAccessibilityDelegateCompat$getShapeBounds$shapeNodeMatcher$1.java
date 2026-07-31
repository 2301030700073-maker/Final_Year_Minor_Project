package androidx.compose.ui.platform;

import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1 implements SemanticsPropertyReceiver {
    public final /* synthetic */ Shape $shape;
    public boolean hasMatchedShape;

    public AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1(Shape shape) {
        this.$shape = shape;
    }

    @Override // androidx.compose.ui.semantics.SemanticsPropertyReceiver
    public final void set(SemanticsPropertyKey semanticsPropertyKey, Object obj) {
        if (obj == this.$shape) {
            this.hasMatchedShape = true;
        }
    }
}
