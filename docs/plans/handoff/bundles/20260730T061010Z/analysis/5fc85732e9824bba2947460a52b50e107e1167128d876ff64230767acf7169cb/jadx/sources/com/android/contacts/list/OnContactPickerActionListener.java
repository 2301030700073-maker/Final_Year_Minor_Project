package com.android.contacts.list;

import android.content.Intent;
import android.net.Uri;

/* loaded from: classes.dex */
public interface OnContactPickerActionListener {
    void onCreateNewContactAction();

    void onEditContactAction(Uri uri);

    void onPickContactAction(Uri uri);

    void onShortcutIntentCreated(Intent intent);
}
