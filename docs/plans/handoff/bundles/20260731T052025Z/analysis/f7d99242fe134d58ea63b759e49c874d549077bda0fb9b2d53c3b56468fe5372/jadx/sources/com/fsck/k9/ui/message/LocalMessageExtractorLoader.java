package com.fsck.k9.ui.message;

import android.content.Context;
import androidx.loader.content.AsyncTaskLoader;
import com.bumptech.glide.load.engine.Jobs;
import com.fsck.k9.backend.imap.ImapSync;
import com.fsck.k9.mailstore.LocalMessage;
import com.fsck.k9.mailstore.MessageViewInfo;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LocalMessageExtractorLoader extends AsyncTaskLoader {
    public final Jobs annotations;
    public final LocalMessage message;
    public MessageViewInfo messageViewInfo;
    public final ImapSync messageViewInfoExtractor;

    public LocalMessageExtractorLoader(Context context, LocalMessage localMessage, Jobs jobs, ImapSync imapSync) {
        super(context);
        this.message = localMessage;
        this.annotations = jobs;
        this.messageViewInfoExtractor = imapSync;
    }

    @Override // androidx.loader.content.AsyncTaskLoader
    public final void deliverResult(Object obj) {
        MessageViewInfo messageViewInfo = (MessageViewInfo) obj;
        this.messageViewInfo = messageViewInfo;
        super.deliverResult(messageViewInfo);
    }

    @Override // androidx.loader.content.AsyncTaskLoader
    public final Object loadInBackground() {
        try {
            ImapSync imapSync = this.messageViewInfoExtractor;
            LocalMessage localMessage = this.message;
            return imapSync.extractMessageForView(localMessage, this.annotations, localMessage.localStore.account.openPgpProvider != null);
        } catch (Exception e) {
            Log.e(e, "Error while decoding message", new Object[0]);
            return null;
        }
    }

    @Override // androidx.loader.content.AsyncTaskLoader
    public final void onStartLoading() {
        MessageViewInfo messageViewInfo = this.messageViewInfo;
        if (messageViewInfo != null) {
            super.deliverResult(messageViewInfo);
        }
        if (takeContentChanged() || this.messageViewInfo == null) {
            forceLoad();
        }
    }
}
