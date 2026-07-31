package com.google.android.material.shape;

import android.view.View;
import com.google.android.material.chip.Chip;
import com.google.android.material.navigation.NavigationView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ShapeableDelegateV22 extends ShapeableDelegate {
    public boolean canUseViewOutline = false;
    public float cornerRadius = 0.0f;

    public ShapeableDelegateV22(NavigationView navigationView) {
        initMaskOutlineProvider(navigationView);
    }

    private void initMaskOutlineProvider(View view) {
        view.setOutlineProvider(new Chip.AnonymousClass2(this, 1));
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x010b  */
    @Override // com.google.android.material.shape.ShapeableDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void invalidateClippingMethod(com.google.android.material.navigation.NavigationView r10) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.shape.ShapeableDelegateV22.invalidateClippingMethod(com.google.android.material.navigation.NavigationView):void");
    }

    @Override // com.google.android.material.shape.ShapeableDelegate
    public final boolean shouldUseCompatClipping() {
        return !this.canUseViewOutline || this.forceCompatClippingEnabled;
    }
}
