package com.fsck.k9.resources;

import android.content.Context;
import com.fsck.k9.R;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class K9CoreResourceProvider {
    public final Context context;

    public K9CoreResourceProvider(Context context) {
        this.context = context;
    }

    public final String searchUnifiedFoldersDetail() {
        String string = this.context.getString(R.string.integrated_inbox_detail);
        string.getClass();
        return string;
    }

    public final String searchUnifiedFoldersTitle() {
        String string = this.context.getString(R.string.integrated_inbox_title);
        string.getClass();
        return string;
    }
}
