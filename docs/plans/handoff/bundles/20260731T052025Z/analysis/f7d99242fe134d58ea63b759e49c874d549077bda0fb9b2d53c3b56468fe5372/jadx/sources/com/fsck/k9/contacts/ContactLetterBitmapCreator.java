package com.fsck.k9.contacts;

import com.fsck.k9.mail.Address;
import kotlin.text.Regex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ContactLetterBitmapCreator {
    public final ContactLetterBitmapConfig config;

    static {
        Regex regex = ContactLetterExtractor.EXTRACT_LETTER_PATTERN;
    }

    public ContactLetterBitmapCreator(ContactLetterExtractor contactLetterExtractor, ContactLetterBitmapConfig contactLetterBitmapConfig) {
        this.config = contactLetterBitmapConfig;
    }

    public final int calcUnknownContactColor(Address address) {
        address.getClass();
        ContactLetterBitmapConfig contactLetterBitmapConfig = this.config;
        if (contactLetterBitmapConfig.hasDefaultBackgroundColor) {
            return contactLetterBitmapConfig.defaultBackgroundColor;
        }
        int hashCode = address.hashCode();
        int[] iArr = contactLetterBitmapConfig.backgroundColors;
        return iArr[(hashCode & Integer.MAX_VALUE) % iArr.length];
    }
}
