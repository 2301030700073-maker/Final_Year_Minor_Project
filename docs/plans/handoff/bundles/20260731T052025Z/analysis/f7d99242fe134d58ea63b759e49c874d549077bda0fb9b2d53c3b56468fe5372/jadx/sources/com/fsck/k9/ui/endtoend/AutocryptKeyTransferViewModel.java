package com.fsck.k9.ui.endtoend;

import androidx.lifecycle.ViewModel;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutocryptKeyTransferViewModel extends ViewModel {
    public final AutocryptSetupMessageLiveEvent autocryptSetupMessageLiveEvent;
    public final AutocryptSetupTransferLiveEvent autocryptSetupTransferLiveEvent;

    public AutocryptKeyTransferViewModel(AutocryptSetupMessageLiveEvent autocryptSetupMessageLiveEvent, AutocryptSetupTransferLiveEvent autocryptSetupTransferLiveEvent) {
        this.autocryptSetupMessageLiveEvent = autocryptSetupMessageLiveEvent;
        this.autocryptSetupTransferLiveEvent = autocryptSetupTransferLiveEvent;
    }
}
