package com.google.android.material.shape;

import android.graphics.Outline;
import android.graphics.Path;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.google.android.material.navigation.NavigationView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ShapeableDelegateV33 extends ShapeableDelegate {
    public ShapeableDelegateV33(NavigationView navigationView) {
        initMaskOutlineProvider(navigationView);
    }

    private void initMaskOutlineProvider(View view) {
        view.setOutlineProvider(new ViewOutlineProvider() { // from class: com.google.android.material.shape.ShapeableDelegateV33.1
            @Override // android.view.ViewOutlineProvider
            public final void getOutline(View view2, Outline outline) {
                Path path = ShapeableDelegateV33.this.shapePath;
                if (path.isEmpty()) {
                    return;
                }
                outline.setPath(path);
            }
        });
    }

    @Override // com.google.android.material.shape.ShapeableDelegate
    public final void invalidateClippingMethod(NavigationView navigationView) {
        navigationView.setClipToOutline(!this.forceCompatClippingEnabled);
        if (this.forceCompatClippingEnabled) {
            navigationView.invalidate();
        } else {
            navigationView.invalidateOutline();
        }
    }

    @Override // com.google.android.material.shape.ShapeableDelegate
    public final boolean shouldUseCompatClipping() {
        return this.forceCompatClippingEnabled;
    }
}
