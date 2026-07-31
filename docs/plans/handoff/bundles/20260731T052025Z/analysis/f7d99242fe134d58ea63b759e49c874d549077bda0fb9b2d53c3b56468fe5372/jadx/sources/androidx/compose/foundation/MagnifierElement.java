package androidx.compose.foundation;

import android.view.View;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda4;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MagnifierElement extends ModifierNodeElement {
    public final TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda4 onSizeChanged;
    public final PlatformMagnifierFactory platformMagnifierFactory;
    public final AppBarKt$$ExternalSyntheticLambda0 sourceCenter;

    public MagnifierElement(AppBarKt$$ExternalSyntheticLambda0 appBarKt$$ExternalSyntheticLambda0, TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda4 textFieldSelectionManager_androidKt$$ExternalSyntheticLambda4, PlatformMagnifierFactory platformMagnifierFactory) {
        this.sourceCenter = appBarKt$$ExternalSyntheticLambda0;
        this.onSizeChanged = textFieldSelectionManager_androidKt$$ExternalSyntheticLambda4;
        this.platformMagnifierFactory = platformMagnifierFactory;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        return new MagnifierNode(this.sourceCenter, this.onSizeChanged, this.platformMagnifierFactory);
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final int hashCode() {
        return this.platformMagnifierFactory.hashCode() + ((this.onSizeChanged.hashCode() + ((((Float.floatToIntBits(Float.NaN) + CameraDevices$CC.m((((Float.floatToIntBits(Float.NaN) + (this.sourceCenter.hashCode() * 961)) * 31) + 1231) * 961, Float.NaN, 31)) * 31) + 1231) * 31)) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        MagnifierNode magnifierNode = (MagnifierNode) node;
        magnifierNode.getClass();
        PlatformMagnifierFactory platformMagnifierFactory = magnifierNode.platformMagnifierFactory;
        View view = magnifierNode.view;
        Density density = magnifierNode.density;
        magnifierNode.sourceCenter = this.sourceCenter;
        magnifierNode.onSizeChanged = this.onSizeChanged;
        PlatformMagnifierFactory platformMagnifierFactory2 = this.platformMagnifierFactory;
        magnifierNode.platformMagnifierFactory = platformMagnifierFactory2;
        View requireView = HitTestResultKt.requireView(magnifierNode);
        Density density2 = HitTestResultKt.requireLayoutNode(magnifierNode).density;
        if (magnifierNode.magnifier != null) {
            SemanticsPropertyKey semanticsPropertyKey = Magnifier_androidKt.MagnifierPositionInRoot;
            if (((!Float.isNaN(Float.NaN) || !Float.isNaN(Float.NaN)) && !platformMagnifierFactory2.getCanUpdateZoom()) || !Dp.m745equalsimpl0(Float.NaN, Float.NaN) || !Dp.m745equalsimpl0(Float.NaN, Float.NaN) || !platformMagnifierFactory2.equals(platformMagnifierFactory) || !requireView.equals(view) || !Intrinsics.areEqual(density2, density)) {
                magnifierNode.recreateMagnifier();
            }
        }
        magnifierNode.updateMagnifier();
    }
}
