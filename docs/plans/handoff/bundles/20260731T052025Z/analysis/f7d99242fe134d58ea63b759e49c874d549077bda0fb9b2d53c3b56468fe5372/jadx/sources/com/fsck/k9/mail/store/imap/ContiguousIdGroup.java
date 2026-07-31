package com.fsck.k9.mail.store.imap;

import coil3.UriKt$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ContiguousIdGroup {
    public final long end;
    public final long start;

    public ContiguousIdGroup(long j, long j2) {
        this.start = j;
        this.end = j2;
        if (j < j2) {
            return;
        }
        UriKt$$ExternalSyntheticBUOutline0.m("start >= end");
        throw null;
    }

    public final String toString() {
        return this.start + ":" + this.end;
    }
}
