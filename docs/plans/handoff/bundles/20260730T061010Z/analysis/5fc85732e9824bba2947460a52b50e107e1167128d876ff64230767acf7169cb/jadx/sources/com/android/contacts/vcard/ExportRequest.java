package com.android.contacts.vcard;

import android.net.Uri;

/* loaded from: classes.dex */
public class ExportRequest {
    public final Uri destUri;
    public final String exportType;

    public ExportRequest(Uri uri) {
        this(uri, null);
    }

    public ExportRequest(Uri uri, String str) {
        this.destUri = uri;
        this.exportType = str;
    }
}
