package com.fsck.k9.ui.messageview;

import android.animation.ObjectAnimator;
import android.content.IntentSender;
import android.os.SystemClock;
import android.widget.ProgressBar;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageLoaderHelper;
import com.fsck.k9.mailstore.LocalMessage;
import com.fsck.k9.mailstore.MessageViewInfo;
import com.fsck.k9.view.ToolableViewAnimator;
import com.google.android.material.button.MaterialButton;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.logging.legacy.Log;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.openintents.openpgp.util.OpenPgpIntentStarter;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageViewFragment$messageCryptoMvpView$1 implements MessageHeaderClickListener, MessageLoaderHelper.MessageLoaderCallbacks {
    public final /* synthetic */ MessageViewFragment this$0;

    public /* synthetic */ MessageViewFragment$messageCryptoMvpView$1(MessageViewFragment messageViewFragment) {
        this.this$0 = messageViewFragment;
    }

    @Override // com.fsck.k9.activity.MessageLoaderHelper.MessageLoaderCallbacks
    public void onDownloadErrorMessageNotFound() {
        MessageViewFragment messageViewFragment = this.this$0;
        MessageTopView messageTopView = messageViewFragment.messageTopView;
        if (messageTopView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageTopView");
            throw null;
        }
        MaterialButton materialButton = messageTopView.downloadRemainderButton;
        if (materialButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downloadRemainderButton");
            throw null;
        }
        materialButton.setEnabled(true);
        Toast.makeText(messageViewFragment.requireContext(), R.string.status_invalid_id_error, 1).show();
    }

    @Override // com.fsck.k9.activity.MessageLoaderHelper.MessageLoaderCallbacks
    public void onDownloadErrorNetworkError() {
        MessageViewFragment messageViewFragment = this.this$0;
        MessageTopView messageTopView = messageViewFragment.messageTopView;
        if (messageTopView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageTopView");
            throw null;
        }
        MaterialButton materialButton = messageTopView.downloadRemainderButton;
        if (materialButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downloadRemainderButton");
            throw null;
        }
        materialButton.setEnabled(true);
        Toast.makeText(messageViewFragment.requireContext(), R.string.status_network_error, 1).show();
    }

    public void onMenuItemClick(int i) {
        MessageViewFragment messageViewFragment = this.this$0;
        if (i == R.id.reply) {
            messageViewFragment.onReply$1();
            return;
        }
        if (i == R.id.reply_all) {
            messageViewFragment.onReplyAll$1();
            return;
        }
        if (i == R.id.forward) {
            messageViewFragment.onForward$1();
            return;
        }
        if (i == R.id.forward_as_attachment) {
            messageViewFragment.onForwardAsAttachment$1();
            return;
        }
        if (i == R.id.edit_as_new_message) {
            messageViewFragment.onEditAsNewMessage$1();
        } else if (i == R.id.share) {
            messageViewFragment.onSendAlternate();
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Missing handler for reply menu item ", i);
        }
    }

    @Override // com.fsck.k9.activity.MessageLoaderHelper.MessageLoaderCallbacks
    public void onMessageDataLoadFailed() {
        MessageViewFragment messageViewFragment = this.this$0;
        Toast.makeText(messageViewFragment.getActivity(), R.string.status_loading_error, 1).show();
        messageViewFragment.showProgressThreshold = null;
    }

    @Override // com.fsck.k9.activity.MessageLoaderHelper.MessageLoaderCallbacks
    public void onMessageDataLoadFinished(LocalMessage localMessage) {
        localMessage.getClass();
        MessageViewFragment messageViewFragment = this.this$0;
        messageViewFragment.message = localMessage;
        boolean z = !messageViewFragment.isOutbox$1();
        MessageTopView messageTopView = messageViewFragment.messageTopView;
        if (messageTopView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageTopView");
            throw null;
        }
        LegacyAccountDto legacyAccountDto = messageViewFragment.account;
        if (legacyAccountDto == null) {
            Intrinsics.throwUninitializedPropertyAccessException("account");
            throw null;
        }
        messageTopView.getMessageHeaderView().populate(localMessage, legacyAccountDto, z, messageTopView.showAccountIndicator);
        messageTopView.getMessageHeaderView().setVisibility(0);
        LegacyAccountDto legacyAccountDto2 = messageViewFragment.account;
        if (legacyAccountDto2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("account");
            throw null;
        }
        if (legacyAccountDto2.openPgpProvider != null) {
            MessageTopView messageTopView2 = messageViewFragment.messageTopView;
            if (messageTopView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("messageTopView");
                throw null;
            }
            messageTopView2.getMessageHeaderView().setCryptoStatusLoading();
        }
        String str = localMessage.subject;
        str.getClass();
        if (str.length() == 0) {
            str = messageViewFragment.getString(R.string.general_no_subject);
            str.getClass();
        }
        MessageTopView messageTopView3 = messageViewFragment.messageTopView;
        if (messageTopView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageTopView");
            throw null;
        }
        messageTopView3.setSubject(str);
        AppCompatActivity activity = messageViewFragment.getActivity();
        if (activity != null) {
            activity.invalidateOptionsMenu();
        }
        MessageTopView messageTopView4 = messageViewFragment.messageTopView;
        if (messageTopView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageTopView");
            throw null;
        }
        messageTopView4.setToLoadingState();
        messageViewFragment.showProgressThreshold = null;
        if (messageViewFragment.mState >= 7) {
            messageViewFragment.markMessageAsOpened();
        }
    }

    @Override // com.fsck.k9.activity.MessageLoaderHelper.MessageLoaderCallbacks
    public void onMessageViewInfoLoadFailed(MessageViewInfo messageViewInfo) {
        MessageViewFragment messageViewFragment = this.this$0;
        messageViewFragment.showMessage(messageViewInfo);
        messageViewFragment.preferredUnsubscribeUri = null;
        messageViewFragment.showProgressThreshold = null;
    }

    @Override // com.fsck.k9.activity.MessageLoaderHelper.MessageLoaderCallbacks
    public void onMessageViewInfoLoadFinished(MessageViewInfo messageViewInfo) {
        messageViewInfo.getClass();
        MessageViewFragment messageViewFragment = this.this$0;
        messageViewFragment.mMessageViewInfo = messageViewInfo;
        messageViewFragment.showMessage(messageViewInfo);
        messageViewFragment.preferredUnsubscribeUri = messageViewInfo.preferredUnsubscribeUri;
        messageViewFragment.showProgressThreshold = null;
    }

    public void restartMessageCryptoProcessing() {
        MessageViewFragment messageViewFragment = this.this$0;
        MessageTopView messageTopView = messageViewFragment.messageTopView;
        if (messageTopView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageTopView");
            throw null;
        }
        messageTopView.setToLoadingState();
        MessageLoaderHelper messageLoaderHelper = messageViewFragment.messageLoaderHelper;
        if (messageLoaderHelper == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageLoaderHelper");
            throw null;
        }
        messageLoaderHelper.cancelAndClearCryptoOperation();
        messageLoaderHelper.loaderManager.destroyLoader(2);
        String openPgpProvider = messageLoaderHelper.account.getOpenPgpProvider();
        if (openPgpProvider != null) {
            messageLoaderHelper.startOrResumeCryptoOperation(openPgpProvider);
        } else {
            messageLoaderHelper.startOrResumeDecodeMessage();
        }
    }

    @Override // com.fsck.k9.activity.MessageLoaderHelper.MessageLoaderCallbacks
    public void setLoadingProgress(int i, int i2) {
        MessageViewFragment messageViewFragment = this.this$0;
        Long l = messageViewFragment.showProgressThreshold;
        if (l == null) {
            messageViewFragment.showProgressThreshold = Long.valueOf(SystemClock.elapsedRealtime() + 500000);
            return;
        }
        if (l.longValue() == 0 || SystemClock.elapsedRealtime() > l.longValue()) {
            messageViewFragment.showProgressThreshold = 0L;
            MessageTopView messageTopView = messageViewFragment.messageTopView;
            if (messageTopView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("messageTopView");
                throw null;
            }
            if (!messageTopView.isShowingProgress) {
                ToolableViewAnimator toolableViewAnimator = messageTopView.viewAnimator;
                if (toolableViewAnimator == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("viewAnimator");
                    throw null;
                }
                toolableViewAnimator.setDisplayedChild(1);
                messageTopView.isShowingProgress = true;
                return;
            }
            int i3 = (int) ((i / i2) * 950.0f);
            ProgressBar progressBar = messageTopView.progressBar;
            if (progressBar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("progressBar");
                throw null;
            }
            int progress = progressBar.getProgress();
            ProgressBar progressBar2 = messageTopView.progressBar;
            if (i3 > progress) {
                if (progressBar2 != null) {
                    ObjectAnimator.ofInt(progressBar2, "progress", progress, i3).setDuration(180L).start();
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("progressBar");
                    throw null;
                }
            }
            if (progressBar2 != null) {
                progressBar2.setProgress(i3);
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("progressBar");
                throw null;
            }
        }
    }

    @Override // com.fsck.k9.activity.MessageLoaderHelper.MessageLoaderCallbacks
    public boolean startIntentSenderForMessageLoaderHelper(IntentSender intentSender) {
        intentSender.getClass();
        MessageViewFragment messageViewFragment = this.this$0;
        if (!messageViewFragment.isActive) {
            return false;
        }
        messageViewFragment.showProgressThreshold = null;
        try {
            OpenPgpIntentStarter.startIntentSenderForResult(messageViewFragment, intentSender, 380);
            return true;
        } catch (IntentSender.SendIntentException e) {
            Log.e(e, "Irrecoverable error calling PendingIntent!", new Object[0]);
            return true;
        }
    }
}
