package androidx.compose.ui.platform;

import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
