package com.android.vcard;

/* loaded from: classes.dex */
public interface VCardEntryHandler {
    void onEnd();

    void onEntryCreated(VCardEntry vCardEntry);

    void onStart();
}
