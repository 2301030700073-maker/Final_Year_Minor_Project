package com.fsck.k9.ui.settings.export;

import android.net.Uri;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Action {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class PickDocument extends Action {
        public final String fileNameSuggestion;

        public PickDocument(String str) {
            this.fileNameSuggestion = str;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ShareDocument extends Action {
        public final Uri contentUri;

        public ShareDocument(Uri uri) {
            uri.getClass();
            this.contentUri = uri;
        }
    }
}
