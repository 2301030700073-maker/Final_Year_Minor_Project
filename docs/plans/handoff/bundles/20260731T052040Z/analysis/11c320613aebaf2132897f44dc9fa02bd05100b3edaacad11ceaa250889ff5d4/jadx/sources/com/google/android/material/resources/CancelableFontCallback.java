package com.google.android.material.resources;

import android.graphics.Typeface;
import androidx.work.OperationKt;
import com.google.android.material.internal.CollapsingTextHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CancelableFontCallback extends OperationKt {
    public final CollapsingTextHelper.AnonymousClass1 applyFont;
    public boolean cancelled;
    public final Typeface fallbackFont;

    public CancelableFontCallback(CollapsingTextHelper.AnonymousClass1 anonymousClass1, Typeface typeface) {
        this.fallbackFont = typeface;
        this.applyFont = anonymousClass1;
    }

    @Override // androidx.work.OperationKt
    public final void onFontRetrievalFailed(int i) {
        if (this.cancelled) {
            return;
        }
        this.applyFont.apply(this.fallbackFont);
    }

    @Override // androidx.work.OperationKt
    public final void onFontRetrieved(Typeface typeface, boolean z) {
        if (this.cancelled) {
            return;
        }
        this.applyFont.apply(typeface);
    }
}
