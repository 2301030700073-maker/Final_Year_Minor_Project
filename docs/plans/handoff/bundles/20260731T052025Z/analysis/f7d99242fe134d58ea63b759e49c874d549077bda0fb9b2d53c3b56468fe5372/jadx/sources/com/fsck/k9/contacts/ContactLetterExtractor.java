package com.fsck.k9.contacts;

import kotlin.text.Regex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ContactLetterExtractor {
    public static final Regex EXTRACT_LETTER_PATTERN = new Regex("\\p{L}\\p{M}*");
}
