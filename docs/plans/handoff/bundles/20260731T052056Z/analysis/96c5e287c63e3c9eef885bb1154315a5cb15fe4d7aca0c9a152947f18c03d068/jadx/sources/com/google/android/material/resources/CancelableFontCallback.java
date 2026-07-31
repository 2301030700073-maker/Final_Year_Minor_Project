package com.google.android.material.resources;

import android.graphics.Typeface;
import com.google.android.material.internal.CollapsingTextHelper;
import kotlin.ExceptionsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CancelableFontCallback extends ExceptionsKt {
    public final CollapsingTextHelper.AnonymousClass1 applyFont;
    public boolean cancelled;
    public final Typeface fallbackFont;

    public CancelableFontCallback(CollapsingTextHelper.AnonymousClass1 anonymousClass1, Typeface typeface) {
        this.fallbackFont = typeface;
        this.applyFont = anonymousClass1;
    }

    @Override // kotlin.ExceptionsKt
    public final void onFontRetrievalFailed(int i) {
        if (this.cancelled) {
            return;
        }
        this.applyFont.apply(this.fallbackFont);
    }

    @Override // kotlin.ExceptionsKt
    public final void onFontRetrieved(Typeface typeface, boolean z) {
        if (this.cancelled) {
            return;
        }
        this.applyFont.apply(typeface);
    }
}
