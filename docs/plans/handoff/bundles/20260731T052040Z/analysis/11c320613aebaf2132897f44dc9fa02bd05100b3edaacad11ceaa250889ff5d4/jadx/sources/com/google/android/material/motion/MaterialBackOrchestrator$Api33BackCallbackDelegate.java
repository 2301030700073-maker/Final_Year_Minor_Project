package com.google.android.material.motion;

import android.view.View;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.widget.Toolbar$Api33Impl$$ExternalSyntheticLambda0;
import com.google.android.exoplayer2.PlaybackException;
import j$.util.Objects;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class MaterialBackOrchestrator$Api33BackCallbackDelegate {
    public OnBackInvokedCallback onBackInvokedCallback;

    public OnBackInvokedCallback createOnBackInvokedCallback(MaterialBackHandler materialBackHandler) {
        Objects.requireNonNull(materialBackHandler);
        return new Toolbar$Api33Impl$$ExternalSyntheticLambda0(materialBackHandler, 3);
    }

    public void startListeningForBackCallbacks(MaterialBackHandler materialBackHandler, View view, boolean z) {
        OnBackInvokedDispatcher findOnBackInvokedDispatcher;
        if (this.onBackInvokedCallback == null && (findOnBackInvokedDispatcher = view.findOnBackInvokedDispatcher()) != null) {
            OnBackInvokedCallback createOnBackInvokedCallback = createOnBackInvokedCallback(materialBackHandler);
            this.onBackInvokedCallback = createOnBackInvokedCallback;
            findOnBackInvokedDispatcher.registerOnBackInvokedCallback(z ? PlaybackException.CUSTOM_ERROR_CODE_BASE : 0, createOnBackInvokedCallback);
        }
    }

    public void stopListeningForBackCallbacks(View view) {
        OnBackInvokedDispatcher findOnBackInvokedDispatcher = view.findOnBackInvokedDispatcher();
        if (findOnBackInvokedDispatcher == null) {
            return;
        }
        findOnBackInvokedDispatcher.unregisterOnBackInvokedCallback(this.onBackInvokedCallback);
        this.onBackInvokedCallback = null;
    }
}
