package com.google.android.material.motion;

import android.view.View;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.compose.ui.window.Api33Impl$$ExternalSyntheticLambda0;
import j$.util.Objects;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class MaterialBackOrchestrator$Api33BackCallbackDelegate {
    public OnBackInvokedCallback onBackInvokedCallback;

    public OnBackInvokedCallback createOnBackInvokedCallback(MaterialBackHandler materialBackHandler) {
        Objects.requireNonNull(materialBackHandler);
        return new Api33Impl$$ExternalSyntheticLambda0(4, materialBackHandler);
    }

    public void startListeningForBackCallbacks(MaterialBackHandler materialBackHandler, View view, boolean z) {
        OnBackInvokedDispatcher findOnBackInvokedDispatcher;
        if (this.onBackInvokedCallback == null && (findOnBackInvokedDispatcher = view.findOnBackInvokedDispatcher()) != null) {
            OnBackInvokedCallback createOnBackInvokedCallback = createOnBackInvokedCallback(materialBackHandler);
            this.onBackInvokedCallback = createOnBackInvokedCallback;
            findOnBackInvokedDispatcher.registerOnBackInvokedCallback(z ? 1000000 : 0, createOnBackInvokedCallback);
        }
    }

    public void stopListeningForBackCallbacks(View view) {
        OnBackInvokedDispatcher findOnBackInvokedDispatcher;
        if (this.onBackInvokedCallback == null || (findOnBackInvokedDispatcher = view.findOnBackInvokedDispatcher()) == null) {
            return;
        }
        findOnBackInvokedDispatcher.unregisterOnBackInvokedCallback(this.onBackInvokedCallback);
        this.onBackInvokedCallback = null;
    }
}
