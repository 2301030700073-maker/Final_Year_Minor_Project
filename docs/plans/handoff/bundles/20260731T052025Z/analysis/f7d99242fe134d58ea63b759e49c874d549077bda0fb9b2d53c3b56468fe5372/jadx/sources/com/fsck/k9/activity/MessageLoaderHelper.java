package com.fsck.k9.activity;

import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.FragmentManager;
import androidx.loader.app.LoaderManager;
import androidx.loader.app.LoaderManagerImpl;
import androidx.loader.content.AsyncTaskLoader;
import app.k9mail.legacy.message.controller.MessageReference;
import com.beetstra.jutf7.Base64Util;
import com.bumptech.glide.GlideBuilder$1;
import com.bumptech.glide.load.engine.Jobs;
import com.fsck.k9.Preferences;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.backend.imap.ImapSync;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.helper.RetainFragment;
import com.fsck.k9.mail.internet.MimeMessage;
import com.fsck.k9.mailstore.CryptoResultAnnotation;
import com.fsck.k9.mailstore.LocalMessage;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.mailstore.MessageViewInfo;
import com.fsck.k9.ui.crypto.MessageCryptoHelper;
import com.fsck.k9.ui.message.LocalMessageExtractorLoader;
import com.fsck.k9.ui.message.LocalMessageLoader;
import java.io.IOException;
import java.util.EnumSet;
import java.util.HashMap;
import kotlin.io.CloseableKt;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.core.logging.legacy.Log;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.openintents.openpgp.OpenPgpDecryptionResult;
import org.openintents.openpgp.util.OpenPgpApi;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageLoaderHelper {
    public LegacyAccountDto account;
    public OpenPgpDecryptionResult cachedDecryptionResult;
    public MessageLoaderCallbacks callback;
    public Context context;
    public FragmentManager fragmentManager;
    public LoaderManagerImpl loaderManager;
    public LocalMessage localMessage;
    public Jobs messageCryptoAnnotations;
    public MessageCryptoHelper messageCryptoHelper;
    public MessageReference messageReference;
    public final ImapSync messageViewInfoExtractor;
    public boolean onlyLoadMetadata;
    public final Handler handler = new Handler(Looper.getMainLooper());
    public final AnonymousClass1 localMessageLoaderCallback = new AnonymousClass1();
    public final AnonymousClass1 messageCryptoCallback = new AnonymousClass1();
    public final Base64Util decodeMessageLoaderCallback = new Base64Util(this);
    public final MessageCompose.AnonymousClass12 downloadMessageListener = new MessageCompose.AnonymousClass12(1, this);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.activity.MessageLoaderHelper$1, reason: invalid class name */
    public final class AnonymousClass1 implements LoaderManager.LoaderCallbacks {
        public /* synthetic */ AnonymousClass1() {
        }

        @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
        public AsyncTaskLoader onCreateLoader(int i, Bundle bundle) {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("loader id must be message loader id");
                return null;
            }
            EnumSet enumSet = MessagingController.SYNC_FLAGS;
            MessagingController messagingController = (MessagingController) CloseableKt.get$default(MessagingController.class);
            MessageLoaderHelper messageLoaderHelper = MessageLoaderHelper.this;
            return new LocalMessageLoader(messageLoaderHelper.context, messagingController, messageLoaderHelper.account, messageLoaderHelper.messageReference, messageLoaderHelper.onlyLoadMetadata);
        }

        @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
        public void onLoadFinished(AsyncTaskLoader asyncTaskLoader, Object obj) {
            LocalMessage localMessage = (LocalMessage) obj;
            if (asyncTaskLoader.mId != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("loader id must be message loader id");
                return;
            }
            MessageLoaderHelper messageLoaderHelper = MessageLoaderHelper.this;
            if (localMessage == messageLoaderHelper.localMessage) {
                return;
            }
            messageLoaderHelper.localMessage = localMessage;
            MessageLoaderCallbacks messageLoaderCallbacks = messageLoaderHelper.callback;
            if (localMessage == null) {
                if (messageLoaderCallbacks != null) {
                    messageLoaderCallbacks.onMessageDataLoadFailed();
                    return;
                } else {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("unexpected call when callback is already detached");
                    return;
                }
            }
            if (messageLoaderCallbacks == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("unexpected call when callback is already detached");
                return;
            }
            messageLoaderCallbacks.onMessageDataLoadFinished(localMessage);
            boolean contains = messageLoaderHelper.localMessage.mFlags.contains(Flag.X_DOWNLOADED_FULL);
            boolean contains2 = messageLoaderHelper.localMessage.mFlags.contains(Flag.X_DOWNLOADED_PARTIAL);
            if (!contains && !contains2) {
                messageLoaderHelper.startDownloadingMessageBody(false);
                return;
            }
            if (messageLoaderHelper.onlyLoadMetadata) {
                LocalMessage localMessage2 = messageLoaderHelper.localMessage;
                messageLoaderHelper.onDecodeMessageFinished(new MessageViewInfo(localMessage2, !contains, null, localMessage2.subject, false, null, null, null, null, null, null, null, null));
                return;
            }
            String openPgpProvider = messageLoaderHelper.account.getOpenPgpProvider();
            if (openPgpProvider != null) {
                messageLoaderHelper.startOrResumeCryptoOperation(openPgpProvider);
            } else {
                messageLoaderHelper.startOrResumeDecodeMessage();
            }
        }

        @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(AsyncTaskLoader asyncTaskLoader) {
            if (asyncTaskLoader.mId == 1) {
                return;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("loader id must be message loader id");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface MessageLoaderCallbacks {
        void onDownloadErrorMessageNotFound();

        void onDownloadErrorNetworkError();

        void onMessageDataLoadFailed();

        void onMessageDataLoadFinished(LocalMessage localMessage);

        void onMessageViewInfoLoadFailed(MessageViewInfo messageViewInfo);

        void onMessageViewInfoLoadFinished(MessageViewInfo messageViewInfo);

        void setLoadingProgress(int i, int i2);

        boolean startIntentSenderForMessageLoaderHelper(IntentSender intentSender);
    }

    public MessageLoaderHelper(Context context, LoaderManagerImpl loaderManagerImpl, FragmentManager fragmentManager, MessageLoaderCallbacks messageLoaderCallbacks, ImapSync imapSync) {
        this.context = context;
        this.loaderManager = loaderManagerImpl;
        this.fragmentManager = fragmentManager;
        this.callback = messageLoaderCallbacks;
        this.messageViewInfoExtractor = imapSync;
    }

    public final void asyncStartOrResumeLoadingMessage(MessageReference messageReference, Parcelable parcelable) {
        this.onlyLoadMetadata = false;
        this.messageReference = messageReference;
        this.account = ((Preferences) CloseableKt.get$default(Preferences.class)).getAccount(messageReference.accountUuid);
        if (parcelable != null) {
            if (parcelable instanceof OpenPgpDecryptionResult) {
                this.cachedDecryptionResult = (OpenPgpDecryptionResult) parcelable;
            } else {
                Log.e("Got decryption result of unknown type - ignoring", new Object[0]);
            }
        }
        startOrResumeLocalMessageLoader();
    }

    public final void cancelAndClearCryptoOperation() {
        RetainFragment messageCryptoHelperRetainFragment = getMessageCryptoHelperRetainFragment(false);
        if (messageCryptoHelperRetainFragment != null) {
            MessageCryptoHelper messageCryptoHelper = messageCryptoHelperRetainFragment.data;
            if (messageCryptoHelper != null) {
                this.messageCryptoHelper = messageCryptoHelper;
                synchronized (messageCryptoHelper.callbackLock) {
                    messageCryptoHelper.callback = null;
                }
                messageCryptoHelper.isCancelled = true;
                OpenPgpApi.OpenPgpSourceSinkAsyncTask openPgpSourceSinkAsyncTask = messageCryptoHelper.cancelableBackgroundOperation;
                if (openPgpSourceSinkAsyncTask != null) {
                    openPgpSourceSinkAsyncTask.cancel(true);
                    OpenPgpApi.OpenPgpDataSource openPgpDataSource = openPgpSourceSinkAsyncTask.dataSource;
                    if (openPgpDataSource != null) {
                        openPgpDataSource.isCancelled = true;
                        try {
                            openPgpDataSource.writeSidePfd.close();
                        } catch (IOException unused) {
                        }
                    }
                }
                this.messageCryptoHelper = null;
            }
            FragmentManager fragmentManager = this.fragmentManager;
            messageCryptoHelperRetainFragment.data = null;
            messageCryptoHelperRetainFragment.cleared = true;
            if (fragmentManager.mDestroyed) {
                return;
            }
            BackStackRecord backStackRecord = new BackStackRecord(fragmentManager);
            backStackRecord.remove(messageCryptoHelperRetainFragment);
            backStackRecord.commitInternal(true, true);
        }
    }

    public final RetainFragment getMessageCryptoHelperRetainFragment(boolean z) {
        FragmentManager fragmentManager = this.fragmentManager;
        MessageReference messageReference = this.messageReference;
        if (!z) {
            return (RetainFragment) fragmentManager.findFragmentByTag("crypto_helper_" + messageReference.hashCode());
        }
        String str = "crypto_helper_" + messageReference.hashCode();
        RetainFragment retainFragment = (RetainFragment) fragmentManager.findFragmentByTag(str);
        if (retainFragment != null && !retainFragment.cleared) {
            return retainFragment;
        }
        RetainFragment retainFragment2 = new RetainFragment();
        BackStackRecord backStackRecord = new BackStackRecord(fragmentManager);
        backStackRecord.doAddOp(0, retainFragment2, str, 1);
        backStackRecord.commitInternal(true, true);
        return retainFragment2;
    }

    public final void onActivityResult(int i, int i2, Intent intent) {
        MessageCryptoHelper messageCryptoHelper = this.messageCryptoHelper;
        if (messageCryptoHelper.isCancelled) {
            return;
        }
        if (i != 124) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("got an activity result that wasn't meant for us. this is a bug!");
            return;
        }
        if (i2 == -1) {
            messageCryptoHelper.userInteractionResultIntent = intent;
            messageCryptoHelper.nextStep();
        } else {
            if (messageCryptoHelper.currentCryptoPart != null) {
                messageCryptoHelper.addCryptoResultAnnotationToMessage(new CryptoResultAnnotation(2, null, null, null, null, null, null, false));
            }
            messageCryptoHelper.onCryptoFinished();
        }
    }

    public final void onDecodeMessageFinished(MessageViewInfo messageViewInfo) {
        if (this.callback == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("unexpected call when callback is already detached");
            return;
        }
        if (messageViewInfo == null) {
            LocalMessage localMessage = this.localMessage;
            this.callback.onMessageViewInfoLoadFailed(MessageViewInfo.createWithErrorState(this.localMessage, !localMessage.mFlags.contains(Flag.X_DOWNLOADED_FULL)));
            return;
        }
        if (messageViewInfo.isSubjectEncrypted) {
            LocalMessage localMessage2 = this.localMessage;
            localMessage2.getClass();
            if (!localMessage2.mFlags.contains(Flag.X_SUBJECT_DECRYPTED)) {
                try {
                    LocalMessage localMessage3 = this.localMessage;
                    String str = messageViewInfo.subject;
                    LocalStore localStore = localMessage3.localStore;
                    localStore.database.execute(true, new LocalStore.AnonymousClass1(9, localMessage3, str, false));
                    localStore.notifyChange();
                } catch (MessagingException e) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1(e);
                    return;
                }
            }
        }
        this.callback.onMessageViewInfoLoadFinished(messageViewInfo);
    }

    public final void startDownloadingMessageBody(boolean z) {
        final MessageCompose.AnonymousClass12 anonymousClass12 = this.downloadMessageListener;
        if (z) {
            EnumSet enumSet = MessagingController.SYNC_FLAGS;
            final MessagingController messagingController = (MessagingController) CloseableKt.get$default(MessagingController.class);
            final LegacyAccountDto legacyAccountDto = this.account;
            MessageReference messageReference = this.messageReference;
            final long j = messageReference.folderId;
            final String str = messageReference.uid;
            final int i = 0;
            messagingController.put("loadMessageRemote", new Runnable() { // from class: com.fsck.k9.controller.MessagingController$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    switch (i) {
                        case 0:
                            messagingController.loadMessageRemoteSynchronous(legacyAccountDto, j, str, anonymousClass12, false);
                            break;
                        default:
                            messagingController.loadMessageRemoteSynchronous(legacyAccountDto, j, str, anonymousClass12, true);
                            break;
                    }
                }
            });
            return;
        }
        EnumSet enumSet2 = MessagingController.SYNC_FLAGS;
        final MessagingController messagingController2 = (MessagingController) CloseableKt.get$default(MessagingController.class);
        final LegacyAccountDto legacyAccountDto2 = this.account;
        MessageReference messageReference2 = this.messageReference;
        final long j2 = messageReference2.folderId;
        final String str2 = messageReference2.uid;
        final int i2 = 1;
        messagingController2.put("loadMessageRemotePartial", new Runnable() { // from class: com.fsck.k9.controller.MessagingController$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                switch (i2) {
                    case 0:
                        messagingController2.loadMessageRemoteSynchronous(legacyAccountDto2, j2, str2, anonymousClass12, false);
                        break;
                    default:
                        messagingController2.loadMessageRemoteSynchronous(legacyAccountDto2, j2, str2, anonymousClass12, true);
                        break;
                }
            }
        });
    }

    public final void startOrResumeCryptoOperation(String str) {
        RetainFragment messageCryptoHelperRetainFragment = getMessageCryptoHelperRetainFragment(true);
        MessageCryptoHelper messageCryptoHelper = messageCryptoHelperRetainFragment.data;
        if (messageCryptoHelper != null) {
            this.messageCryptoHelper = messageCryptoHelper;
        }
        MessageCryptoHelper messageCryptoHelper2 = this.messageCryptoHelper;
        if (messageCryptoHelper2 == null || !messageCryptoHelper2.openPgpProvider.equals(str)) {
            MessageCryptoHelper messageCryptoHelper3 = new MessageCryptoHelper(this.context, new GlideBuilder$1(), new GlideBuilder$1(), str);
            this.messageCryptoHelper = messageCryptoHelper3;
            messageCryptoHelperRetainFragment.data = messageCryptoHelper3;
        }
        MessageCryptoHelper messageCryptoHelper4 = this.messageCryptoHelper;
        LocalMessage localMessage = this.localMessage;
        AnonymousClass1 anonymousClass1 = this.messageCryptoCallback;
        OpenPgpDecryptionResult openPgpDecryptionResult = this.cachedDecryptionResult;
        boolean z = !this.account.isOpenPgpHideSignOnly();
        MimeMessage mimeMessage = messageCryptoHelper4.currentMessage;
        if (mimeMessage == null) {
            Jobs jobs = new Jobs();
            jobs.jobs = new HashMap();
            messageCryptoHelper4.messageAnnotations = jobs;
            messageCryptoHelper4.state = 1;
            messageCryptoHelper4.currentMessage = localMessage;
            messageCryptoHelper4.cachedDecryptionResult = openPgpDecryptionResult;
            messageCryptoHelper4.callback = anonymousClass1;
            messageCryptoHelper4.processSignedOnly = z;
            messageCryptoHelper4.nextStep();
            return;
        }
        if (!localMessage.equals(mimeMessage)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) "Callback may only be reattached for the same message!");
            return;
        }
        synchronized (messageCryptoHelper4.callbackLock) {
            try {
                messageCryptoHelper4.callback = anonymousClass1;
                if (messageCryptoHelper4.queuedResult == null) {
                    if (messageCryptoHelper4.queuedPendingIntent != null) {
                    }
                }
                Log.d("Returning cached result or pending intent to reattached callback", new Object[0]);
                messageCryptoHelper4.deliverResult();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void startOrResumeDecodeMessage() {
        LocalMessageExtractorLoader localMessageExtractorLoader = (LocalMessageExtractorLoader) this.loaderManager.getLoader(2);
        Base64Util base64Util = this.decodeMessageLoaderCallback;
        if (localMessageExtractorLoader != null) {
            LocalMessage localMessage = this.localMessage;
            if (localMessageExtractorLoader.annotations == this.messageCryptoAnnotations && localMessageExtractorLoader.message.equals(localMessage)) {
                Log.d("Reusing decode message loader", new Object[0]);
                this.loaderManager.initLoader(2, null, base64Util);
                return;
            }
        }
        Log.d("Creating new decode message loader", new Object[0]);
        this.loaderManager.restartLoader(2, null, base64Util);
    }

    public final void startOrResumeLocalMessageLoader() {
        LocalMessageLoader localMessageLoader = (LocalMessageLoader) this.loaderManager.getLoader(1);
        AnonymousClass1 anonymousClass1 = this.localMessageLoaderCallback;
        if (localMessageLoader != null) {
            if (localMessageLoader.messageReference.equals(this.messageReference)) {
                Log.d("Reusing local message loader", new Object[0]);
                this.loaderManager.initLoader(1, null, anonymousClass1);
                return;
            }
        }
        Log.d("Creating new local message loader", new Object[0]);
        cancelAndClearCryptoOperation();
        this.loaderManager.destroyLoader(2);
        this.loaderManager.restartLoader(1, null, anonymousClass1);
    }
}
