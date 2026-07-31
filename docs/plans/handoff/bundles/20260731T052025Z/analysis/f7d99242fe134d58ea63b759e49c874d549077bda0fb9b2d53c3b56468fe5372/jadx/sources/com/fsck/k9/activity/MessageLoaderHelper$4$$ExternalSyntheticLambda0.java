package com.fsck.k9.activity;

import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.compat.AndroidFrameMetadata;
import app.k9mail.legacy.message.controller.MessageReference;
import app.k9mail.legacy.message.controller.SimpleMessagingListener;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.helper.MutableBoolean;
import com.fsck.k9.mailstore.LocalMessage;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MessageLoaderHelper$4$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ long f$2;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ MessageLoaderHelper$4$$ExternalSyntheticLambda0(Object obj, Object obj2, long j, Object obj3, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = j;
        this.f$3 = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        long j = this.f$2;
        Object obj = this.f$3;
        Object obj2 = this.f$1;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                MessageLoaderHelper messageLoaderHelper = (MessageLoaderHelper) ((MessageCompose.AnonymousClass12) obj3).this$0;
                if (messageLoaderHelper.messageReference.equals(j, ((LegacyAccountDto) obj2).uuid, (String) obj) && messageLoaderHelper.callback != null) {
                    messageLoaderHelper.loaderManager.destroyLoader(1);
                    messageLoaderHelper.loaderManager.destroyLoader(2);
                    messageLoaderHelper.cancelAndClearCryptoOperation();
                    messageLoaderHelper.startOrResumeLocalMessageLoader();
                    return;
                }
                return;
            case 1:
                ((Request.Listener) obj3).mo6onFailedCcXjc1I((RequestMetadata) obj2, j, (RequestFailure) obj);
                return;
            case 2:
                ((Request.Listener) obj3).mo7onPartialCaptureResultCcXjc1I((RequestMetadata) obj2, j, (AndroidFrameMetadata) obj);
                return;
            case 3:
                MessagingController messagingController = (MessagingController) obj3;
                LegacyAccountDto legacyAccountDto = (LegacyAccountDto) obj2;
                messagingController.getClass();
                Iterator it = ((List) obj).iterator();
                while (it.hasNext()) {
                    try {
                        LocalMessage loadMessage = messagingController.loadMessage(legacyAccountDto, j, ((MessageReference) it.next()).uid);
                        if (messagingController.saveDraft(legacyAccountDto, loadMessage, null, loadMessage.subject) != null) {
                            loadMessage.destroy();
                        }
                        Iterator it2 = messagingController.listeners.iterator();
                        while (it2.hasNext()) {
                            ((SimpleMessagingListener) it2.next()).folderStatusChanged(legacyAccountDto);
                        }
                    } catch (MessagingException e) {
                        Log.e(e, "Error loading message. Draft was not saved.", new Object[0]);
                    }
                }
                return;
            case 4:
                MutableBoolean mutableBoolean = new MutableBoolean();
                ((MessagingController) obj3).synchronizeMailboxSynchronous((LegacyAccountDto) obj2, this.f$2, false, (SimpleMessagingListener) obj, mutableBoolean);
                return;
            default:
                CountDownLatch countDownLatch = (CountDownLatch) obj;
                try {
                    ((MessagingController) obj3).synchronizeMailboxSynchronous((LegacyAccountDto) obj2, this.f$2, true, null, new MutableBoolean());
                    return;
                } finally {
                    countDownLatch.countDown();
                }
        }
    }
}
