package com.google.android.material.resources;

import android.graphics.Typeface;
import androidx.compose.ui.unit.IntRectKt;
import com.google.android.material.internal.CollapsingTextHelper;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CancelableFontCallback extends IntRectKt {
    public final ConnectionPool applyFont;
    public boolean cancelled;
    public final Typeface fallbackFont;

    public CancelableFontCallback(ConnectionPool connectionPool, Typeface typeface) {
        this.fallbackFont = typeface;
        this.applyFont = connectionPool;
    }

    @Override // androidx.compose.ui.unit.IntRectKt
    public final void onFontRetrievalFailed(int i) {
        if (this.cancelled) {
            return;
        }
        CollapsingTextHelper collapsingTextHelper = (CollapsingTextHelper) this.applyFont.delegate;
        if (collapsingTextHelper.setCollapsedTypefaceInternal(this.fallbackFont)) {
            collapsingTextHelper.recalculate(false);
        }
    }

    @Override // androidx.compose.ui.unit.IntRectKt
    public final void onFontRetrieved(Typeface typeface, boolean z) {
        if (this.cancelled) {
            return;
        }
        CollapsingTextHelper collapsingTextHelper = (CollapsingTextHelper) this.applyFont.delegate;
        if (collapsingTextHelper.setCollapsedTypefaceInternal(typeface)) {
            collapsingTextHelper.recalculate(false);
        }
    }
}
