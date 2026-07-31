package com.bumptech.glide.load.data;

import android.content.UriMatcher;
import java.io.InputStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StreamLocalUriFetcher extends LocalUriFetcher {
    public static final UriMatcher URI_MATCHER;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        URI_MATCHER = uriMatcher;
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/#/photo", 2);
        uriMatcher.addURI("com.android.contacts", "contacts/#", 3);
        uriMatcher.addURI("com.android.contacts", "contacts/#/display_photo", 4);
        uriMatcher.addURI("com.android.contacts", "phone_lookup/*", 5);
    }

    @Override // com.bumptech.glide.load.data.LocalUriFetcher
    public final void close(Object obj) {
        ((InputStream) obj).close();
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final Class getDataClass() {
        return InputStream.class;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025 A[RETURN] */
    @Override // com.bumptech.glide.load.data.LocalUriFetcher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object loadResource(android.net.Uri r3, android.content.ContentResolver r4) {
        /*
            r2 = this;
            android.content.UriMatcher r2 = com.bumptech.glide.load.data.StreamLocalUriFetcher.URI_MATCHER
            int r2 = r2.match(r3)
            r0 = 1
            if (r2 == r0) goto L19
            r1 = 3
            if (r2 == r1) goto L14
            r1 = 5
            if (r2 == r1) goto L19
            java.io.InputStream r2 = r4.openInputStream(r3)
            goto L23
        L14:
            java.io.InputStream r2 = android.provider.ContactsContract.Contacts.openContactPhotoInputStream(r4, r3, r0)
            goto L23
        L19:
            android.net.Uri r2 = android.provider.ContactsContract.Contacts.lookupContact(r4, r3)
            if (r2 == 0) goto L2d
            java.io.InputStream r2 = android.provider.ContactsContract.Contacts.openContactPhotoInputStream(r4, r2, r0)
        L23:
            if (r2 == 0) goto L26
            return r2
        L26:
            java.lang.String r2 = "InputStream is null for "
            androidx.camera.camera2.adapter.ZslControlImpl$$ExternalSyntheticLambda1.m(r3, r2)
            r2 = 0
            return r2
        L2d:
            java.io.FileNotFoundException r2 = new java.io.FileNotFoundException
            java.lang.String r3 = "Contact cannot be found"
            r2.<init>(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.data.StreamLocalUriFetcher.loadResource(android.net.Uri, android.content.ContentResolver):java.lang.Object");
    }
}
