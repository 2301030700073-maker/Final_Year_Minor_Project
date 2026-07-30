package com.bumptech.glide.integration.compose;

import androidx.compose.ui.graphics.painter.Painter;

/* compiled from: GlideModifier.kt */
/* loaded from: classes.dex */
public interface RequestListener {
    void onStateChanged(Object obj, Painter painter, RequestState requestState);
}
