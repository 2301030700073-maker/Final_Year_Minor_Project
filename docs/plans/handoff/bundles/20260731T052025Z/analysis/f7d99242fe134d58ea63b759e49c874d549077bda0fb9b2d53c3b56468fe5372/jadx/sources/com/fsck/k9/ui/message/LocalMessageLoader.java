package com.fsck.k9.ui.message;

import android.content.Context;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.loader.content.AsyncTaskLoader;
import app.k9mail.legacy.message.controller.MessageReference;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.mail.FetchProfile;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.LocalMessage;
import java.util.Collections;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LocalMessageLoader extends AsyncTaskLoader {
    public final LegacyAccountDto account;
    public final MessagingController controller;
    public LocalMessage message;
    public final MessageReference messageReference;
    public final boolean onlyLoadMetadata;

    public LocalMessageLoader(Context context, MessagingController messagingController, LegacyAccountDto legacyAccountDto, MessageReference messageReference, boolean z) {
        super(context);
        this.controller = messagingController;
        this.account = legacyAccountDto;
        this.messageReference = messageReference;
        this.onlyLoadMetadata = z;
    }

    @Override // androidx.loader.content.AsyncTaskLoader
    public final void deliverResult(Object obj) {
        LocalMessage localMessage = (LocalMessage) obj;
        this.message = localMessage;
        super.deliverResult(localMessage);
    }

    @Override // androidx.loader.content.AsyncTaskLoader
    public final Object loadInBackground() {
        try {
            if (this.onlyLoadMetadata) {
                return loadMessageMetadataFromDatabase();
            }
            MessagingController messagingController = this.controller;
            LegacyAccountDto legacyAccountDto = this.account;
            MessageReference messageReference = this.messageReference;
            return messagingController.loadMessage(legacyAccountDto, messageReference.folderId, messageReference.uid);
        } catch (Exception e) {
            Log.e(e, "Error while loading message from database", new Object[0]);
            return null;
        }
    }

    public final LocalMessage loadMessageMetadataFromDatabase() {
        MessageReference messageReference = this.messageReference;
        long j = messageReference.folderId;
        String str = messageReference.uid;
        LocalFolder localFolder = new LocalFolder(this.controller.localStoreProvider.getInstance(this.account), j);
        localFolder.open();
        LocalMessage message = localFolder.getMessage(str);
        if (message == null || message.databaseId == 0) {
            UriKt$$ExternalSyntheticBUOutline0.m(ImageAnalysis$$ExternalSyntheticLambda3.m("Message not found: folder=", localFolder.name, ", uid=", str));
            return null;
        }
        FetchProfile fetchProfile = new FetchProfile();
        fetchProfile.add(FetchProfile.Item.ENVELOPE);
        localFolder.fetch(Collections.singletonList(message), fetchProfile);
        return message;
    }

    @Override // androidx.loader.content.AsyncTaskLoader
    public final void onStartLoading() {
        LocalMessage localMessage = this.message;
        if (localMessage != null) {
            super.deliverResult(localMessage);
        }
        if (takeContentChanged() || this.message == null) {
            forceLoad();
        }
    }
}
