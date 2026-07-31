package com.fsck.k9.job;

import android.content.Context;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.fsck.k9.Preferences;
import com.fsck.k9.controller.MessagingController;
import net.thunderbird.core.preference.GeneralSettingsManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MailSyncWorker extends Worker {
    public final GeneralSettingsManager generalSettingsManager;
    public final MessagingController messagingController;
    public final Preferences preferences;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MailSyncWorker(MessagingController messagingController, Preferences preferences, GeneralSettingsManager generalSettingsManager, Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        messagingController.getClass();
        preferences.getClass();
        generalSettingsManager.getClass();
        context.getClass();
        workerParameters.getClass();
        this.messagingController = messagingController;
        this.preferences = preferences;
        this.generalSettingsManager = generalSettingsManager;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0033, code lost:
    
        if (android.content.ContentResolver.getMasterSyncAutomatically() == false) goto L13;
     */
    @Override // androidx.work.Worker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.work.ListenableWorker.Result doWork() {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.job.MailSyncWorker.doWork():androidx.work.ListenableWorker$Result");
    }
}
