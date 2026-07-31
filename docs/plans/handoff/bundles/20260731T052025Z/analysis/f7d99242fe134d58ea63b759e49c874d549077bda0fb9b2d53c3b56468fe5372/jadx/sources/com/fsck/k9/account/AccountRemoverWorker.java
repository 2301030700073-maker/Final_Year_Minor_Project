package com.fsck.k9.account;

import android.app.Notification;
import android.content.Context;
import androidx.core.app.NotificationCompat$Builder;
import androidx.work.ForegroundInfo;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.Core;
import com.fsck.k9.LocalKeyStoreManager;
import com.fsck.k9.Preferences$getAccountsFlow$1;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.controller.MemorizingMessagingListener$Memory;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.mail.ServerSettings;
import com.fsck.k9.mail.ssl.LocalKeyStore;
import com.fsck.k9.mailstore.LocalStoreProvider;
import com.fsck.k9.notification.BackgroundWorkNotificationController;
import com.fsck.k9.notification.RealBackgroundWorkNotificationController;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.JobKt;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountRemoverWorker extends Worker {
    public final AccountRemover accountRemover;
    public final BackgroundWorkNotificationController notificationController;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRemoverWorker(AccountRemover accountRemover, BackgroundWorkNotificationController backgroundWorkNotificationController, Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        accountRemover.getClass();
        backgroundWorkNotificationController.getClass();
        context.getClass();
        workerParameters.getClass();
        this.accountRemover = accountRemover;
        this.notificationController = backgroundWorkNotificationController;
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.Result doWork() {
        String string = this.mWorkerParams.mInputData.getString("accountUuid");
        Continuation continuation = null;
        if (string == null) {
            UriKt$$ExternalSyntheticBUOutline0.m("No account UUID provided");
            return null;
        }
        AccountRemover accountRemover = this.accountRemover;
        accountRemover.getClass();
        LegacyAccountDto account = accountRemover.preferences.getAccount(string);
        if (account == null) {
            Log.w("Can't remove account with UUID %s because it doesn't exist.", string);
        } else {
            String legacyAccountDto = account.toString();
            Log.v("Removing account '%s'…", legacyAccountDto);
            JobKt.runBlockingK(EmptyCoroutineContext.INSTANCE, new Preferences$getAccountsFlow$1(accountRemover, account.uuid, continuation, 3));
            LocalStoreProvider localStoreProvider = accountRemover.localStoreProvider;
            try {
                localStoreProvider.getInstance(account).delete();
            } catch (Exception e) {
                Log.w(e, "Error removing message database for account '%s'", account);
            }
            String str = account.uuid;
            str.getClass();
            localStoreProvider.localStores.remove(str);
            MessagingController messagingController = accountRemover.messagingController;
            messagingController.notificationController.clearNewMailNotifications(account, false);
            MessageCompose.AnonymousClass12 anonymousClass12 = messagingController.memorizingMessagingListener;
            synchronized (anonymousClass12) {
                Iterator it = ((HashMap) anonymousClass12.this$0).entrySet().iterator();
                while (it.hasNext()) {
                    if (((MemorizingMessagingListener$Memory) ((Map.Entry) it.next()).getValue()).account.uuid.equals(account.uuid)) {
                        it.remove();
                    }
                }
            }
            accountRemover.removeBackend(account);
            accountRemover.preferences.deleteAccount(account);
            try {
                LocalKeyStoreManager localKeyStoreManager = accountRemover.localKeyStoreManager;
                ServerSettings incomingServerSettings = account.getIncomingServerSettings();
                LocalKeyStore localKeyStore = localKeyStoreManager.localKeyStore;
                localKeyStore.deleteCertificate(incomingServerSettings.host, incomingServerSettings.port);
                ServerSettings outgoingServerSettings = account.getOutgoingServerSettings();
                localKeyStore.deleteCertificate(outgoingServerSettings.host, outgoingServerSettings.port);
            } catch (Exception e2) {
                Log.e(e2, "Failed to remove certificates for account %s", account);
            }
            Core.setServicesEnabled((Context) Core.context$delegate.getValue());
            accountRemover.unifiedInboxConfigurator.configureUnifiedInbox();
            Log.v("Finished removing account '%s'.", legacyAccountDto);
        }
        return ListenableWorker.Result.success();
    }

    @Override // androidx.work.Worker
    public final ForegroundInfo getForegroundInfo() {
        String string = this.mAppContext.getString(R.string.background_work_notification_remove_account);
        string.getClass();
        BackgroundWorkNotificationController backgroundWorkNotificationController = this.notificationController;
        backgroundWorkNotificationController.getClass();
        NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(((RealBackgroundWorkNotificationController) backgroundWorkNotificationController).context, "misc");
        notificationCompat$Builder.mNotification.icon = R.drawable.ic_bolt;
        notificationCompat$Builder.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(string);
        notificationCompat$Builder.setFlag(2, true);
        notificationCompat$Builder.mSilent = true;
        notificationCompat$Builder.mPriority = -2;
        notificationCompat$Builder.mLocalOnly = true;
        notificationCompat$Builder.mShowWhen = false;
        Notification build = notificationCompat$Builder.build();
        build.getClass();
        return new ForegroundInfo(2, build, 0);
    }
}
