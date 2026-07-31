package com.fsck.k9.contacts;

import android.content.ContentResolver;
import app.k9mail.core.android.common.contact.ContactRepository;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ContactPhotoLoader {
    public final ContactRepository contactRepository;
    public final ContentResolver contentResolver;

    public ContactPhotoLoader(ContentResolver contentResolver, ContactRepository contactRepository) {
        this.contentResolver = contentResolver;
        this.contactRepository = contactRepository;
    }
}
