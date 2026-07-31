package com.fsck.k9.activity;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Parcelable;
import android.provider.ContactsContract;
import android.text.Editable;
import android.text.TextUtils;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.PopupMenu;
import android.widget.Toast;
import androidx.activity.BackEventCompat;
import androidx.activity.OnBackPressedCallback;
import androidx.appcompat.app.AlertController;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.core.Threads$runAsyncSupervised$1;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.window.Api33Impl;
import androidx.compose.ui.window.DialogWrapper;
import androidx.core.app.ActivityCompat;
import androidx.core.app.ActivityRecreator;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.DefaultSpecialEffectsController;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.Fragment$$ExternalSyntheticLambda0;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentManager.PrepareBackStackTransitionState;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.fragment.app.FragmentTransaction$Op;
import androidx.fragment.app.SpecialEffectsController$Effect;
import androidx.fragment.app.SpecialEffectsController$FragmentStateManagerOperation;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.navigation.NavHostController;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceGroupAdapter;
import androidx.preference.PreferenceScreen;
import androidx.sqlite.SQLite;
import androidx.tracing.TraceApi29Impl;
import androidx.work.Operation$State;
import app.k9mail.core.android.common.camera.CameraCaptureHandler;
import app.k9mail.legacy.mailstore.ListenableMessageStore;
import app.k9mail.legacy.mailstore.SaveMessageData;
import app.k9mail.legacy.message.controller.MessageReference;
import app.k9mail.legacy.message.controller.SimpleMessagingListener;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.beetstra.jutf7.Base64Util;
import com.bumptech.glide.GlideBuilder$1;
import com.fsck.k9.K9;
import com.fsck.k9.Preferences;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageHomeActivity;
import com.fsck.k9.activity.compose.AttachmentPresenter;
import com.fsck.k9.activity.compose.ComposeCryptoStatus;
import com.fsck.k9.activity.compose.IdentityAdapter;
import com.fsck.k9.activity.compose.RecipientMvpView;
import com.fsck.k9.activity.compose.RecipientPresenter;
import com.fsck.k9.activity.compose.RecipientPresenter$addRecipientFromContactUri$1;
import com.fsck.k9.activity.compose.SaveMessageTask;
import com.fsck.k9.activity.misc.Attachment;
import com.fsck.k9.activity.misc.InlineAttachment;
import com.fsck.k9.backend.imap.ImapSync;
import com.fsck.k9.controller.MemorizingMessagingListener$Memory;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.helper.Contacts;
import com.fsck.k9.helper.FileHelper;
import com.fsck.k9.helper.IdentityHelper;
import com.fsck.k9.helper.IdentityHelper$$ExternalSyntheticLambda1;
import com.fsck.k9.helper.ReplyToParser;
import com.fsck.k9.helper.Utility;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.BoundaryGenerator;
import com.fsck.k9.mail.Message$RecipientType;
import com.fsck.k9.mail.MessageDownloadState;
import com.fsck.k9.mail.internet.MimeMessage;
import com.fsck.k9.mailstore.LocalMessage;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.mailstore.LockableDatabase;
import com.fsck.k9.mailstore.MessageViewInfo;
import com.fsck.k9.mailstore.OutboxStateRepository$$ExternalSyntheticLambda0;
import com.fsck.k9.message.Attachment;
import com.fsck.k9.message.MessageBuilder;
import com.fsck.k9.message.PgpMessageBuilder;
import com.fsck.k9.message.QuotedTextMode;
import com.fsck.k9.message.SimpleMessageBuilder;
import com.fsck.k9.message.SimpleMessageFormat;
import com.fsck.k9.message.html.DisplayHtml;
import com.fsck.k9.message.quote.InsertableHtmlContent;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.provider.RawMessageProvider;
import com.fsck.k9.resources.K9CoreResourceProvider;
import com.fsck.k9.storage.messages.K9MessageStore;
import com.fsck.k9.ui.base.BaseActivity;
import com.fsck.k9.ui.compose.IntentDataMapper;
import com.fsck.k9.ui.compose.QuotedMessagePresenter;
import com.fsck.k9.ui.helper.SizeFormatter;
import com.fsck.k9.ui.messagelist.DefaultFolderProvider;
import com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract;
import com.fsck.k9.view.MessageWebView;
import com.fsck.k9.view.RecipientSelectView;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.textview.MaterialTextView;
import com.google.zxing.BinaryBitmap;
import com.mikepenz.fastadapter.VerboseLogger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.Pair;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt$flatMap$2;
import kotlin.sequences.TakeWhileSequence;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.InterruptibleKt$runInterruptible$2;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1;
import net.openid.appauth.JsonUtil$Field;
import net.thunderbird.app.common.startup.DefaultDatabaseUpgradeInterceptor;
import net.thunderbird.core.android.account.Identity;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.android.account.MessageFormat;
import net.thunderbird.core.android.account.QuoteStyle;
import net.thunderbird.core.android.network.ConnectivityManagerBase;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.ui.theme.manager.ThemeManager;
import net.thunderbird.feature.mail.message.composer.dialog.SentFolderNotFoundConfirmationDialogFragment;
import net.thunderbird.feature.navigation.drawer.dropdown.DropDownDrawer;
import net.thunderbird.feature.notification.api.content.SentFolderNotFoundNotification;
import net.thunderbird.feature.notification.api.dismisser.NotificationDismisser;
import net.thunderbird.feature.notification.api.sender.NotificationSender;
import net.thunderbird.feature.notification.api.sender.compat.NotificationSenderCompat;
import net.thunderbird.feature.search.legacy.LocalMessageSearch;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Path;
import org.jsoup.SerializationException;
import org.openintents.openpgp.OpenPgpApiManager;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class MessageCompose extends BaseActivity implements View.OnClickListener, View.OnFocusChangeListener {
    public static final Pattern PREFIX = Pattern.compile("^AW[:\\s]\\s*", 2);
    public LegacyAccountDto account;
    public Action action;
    public final HashSet activeInAppNotifications;
    public boolean alreadyNotifiedUserOfEmptySubject;
    public final Base64Util attachmentMvpView;
    public AttachmentPresenter attachmentPresenter;
    public LinearLayout attachmentsView;
    public boolean changesMadeSinceLastSave;
    public MaterialTextView chooseIdentityView;
    public final ConnectivityManagerBase connectivityManager;
    public MessageBuilder currentMessageBuilder;
    public SimpleMessageFormat currentMessageFormat;
    public MessageViewInfo currentMessageViewInfo;
    public Long draftMessageId;
    public boolean finishAfterDraftSaved;
    public Identity identity;
    public boolean identityChanged;
    public boolean ignoreSentFolderNotAssigned;
    public final AnonymousClass14 internalMessageHandler;
    public boolean isInSubActivity;
    public EditText messageContentView;
    public MessageLoaderHelper messageLoaderHelper;
    public final AnonymousClass12 messagingListener;
    public boolean navigateUp;
    public final NotificationSenderCompat notificationDismisserCompat;
    public QuotedMessagePresenter quotedMessagePresenter;
    public RecipientPresenter recipientPresenter;
    public String referencedMessageIds;
    public Flag relatedFlag;
    public boolean relatedMessageProcessed;
    public MessageReference relatedMessageReference;
    public String repliedToMessageId;
    public ImapSync replyToPresenter;
    public boolean requestReadReceipt;
    public boolean sendMessageHasBeenTriggered;
    public final SentFolderNotFoundConfirmationDialogFragment.Factory sentFolderNotFoundDialogFragmentFactory;
    public boolean signatureChanged;
    public EditText signatureView;
    public SizeFormatter sizeFormatter;
    public EditText subjectView;
    public final DefaultDatabaseUpgradeInterceptor databaseUpgradeInterceptor = (DefaultDatabaseUpgradeInterceptor) CloseableKt.get$default(DefaultDatabaseUpgradeInterceptor.class);
    public final MessageLoaderHelperFactory messageLoaderHelperFactory = (MessageLoaderHelperFactory) CloseableKt.get$default(MessageLoaderHelperFactory.class);
    public final DefaultFolderProvider defaultFolderProvider = (DefaultFolderProvider) CloseableKt.get$default(DefaultFolderProvider.class);
    public final MessagingController messagingController = (MessagingController) CloseableKt.get$default(MessagingController.class);
    public final Preferences preferences = (Preferences) CloseableKt.get$default(Preferences.class);
    public final GeneralSettingsManager generalSettingsManager = (GeneralSettingsManager) CloseableKt.get$default(GeneralSettingsManager.class);
    public final IntentDataMapper indentDataMapper = (IntentDataMapper) CloseableKt.get$default(IntentDataMapper.class);
    public final Contacts contacts = (Contacts) CloseableKt.get$default(Contacts.class);
    public final CameraCaptureHandler cameraCaptureHandler = (CameraCaptureHandler) CloseableKt.get$default(CameraCaptureHandler.class);
    public final InMemoryFeatureFlagProvider featureFlagProvider = (InMemoryFeatureFlagProvider) CloseableKt.get$default(InMemoryFeatureFlagProvider.class);
    public final NotificationSenderCompat notificationSenderCompat = new NotificationSenderCompat((NotificationSender) CloseableKt.get$default(NotificationSender.class));

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public enum Action {
        COMPOSE(R.string.compose_title_compose),
        REPLY(R.string.compose_title_reply),
        REPLY_ALL(R.string.compose_title_reply_all),
        FORWARD(R.string.compose_title_forward),
        FORWARD_AS_ATTACHMENT(R.string.compose_title_forward_as_attachment),
        EDIT_DRAFT(R.string.compose_title_compose);

        public final int titleResource;

        Action(int i) {
            this.titleResource = i;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SendMessageTask extends AsyncTask {
        public final LegacyAccountDto account;
        public final Contacts contacts;
        public final Long draftId;
        public final Flag flag;
        public final MimeMessage message;
        public final MessageReference messageReference;
        public final MessagingController messagingController;
        public final String plaintextSubject;
        public final Preferences preferences;

        public SendMessageTask(MessagingController messagingController, Preferences preferences, LegacyAccountDto legacyAccountDto, Contacts contacts, MimeMessage mimeMessage, Long l, String str, MessageReference messageReference, Flag flag) {
            this.messagingController = messagingController;
            this.preferences = preferences;
            this.account = legacyAccountDto;
            this.contacts = contacts;
            this.message = mimeMessage;
            this.draftId = l;
            this.plaintextSubject = str;
            this.messageReference = messageReference;
            this.flag = flag;
        }

        @Override // android.os.AsyncTask
        public final Object doInBackground(Object[] objArr) {
            LegacyAccountDto legacyAccountDto = this.account;
            Contacts contacts = this.contacts;
            MimeMessage mimeMessage = this.message;
            int i = 2;
            int i2 = 0;
            try {
                mimeMessage.getRecipients(Message$RecipientType.TO);
                contacts.getClass();
                mimeMessage.getRecipients(Message$RecipientType.CC);
                mimeMessage.getRecipients(Message$RecipientType.BCC);
                Flag flag = this.flag;
                MessageReference messageReference = this.messageReference;
                if (messageReference != null && flag != null) {
                    LegacyAccountDto account = this.preferences.getAccount(messageReference.accountUuid);
                    long j = messageReference.folderId;
                    String str = messageReference.uid;
                    Log.d("Setting referenced message (%d, %s) flag to %s", Long.valueOf(j), str, flag);
                    this.messagingController.setFlag(account, j, str, this.flag);
                }
            } catch (Exception e) {
                Log.e(e, "Failed to mark contact as contacted.", new Object[0]);
            }
            String str2 = this.plaintextSubject;
            MessagingController messagingController = this.messagingController;
            messagingController.getClass();
            try {
                long outboxFolderIdSync = UuidKt.getOutboxFolderIdSync(messagingController.outboxFolderManager, legacyAccountDto.uuid);
                mimeMessage.setFlag(Flag.SEEN, true);
                ListenableMessageStore messageStore = messagingController.messageStoreManager.getMessageStore(legacyAccountDto);
                SaveMessageData createSaveMessageData = messagingController.saveMessageDataCreator.createSaveMessageData(mimeMessage, MessageDownloadState.FULL, str2);
                LocalStore.AnonymousClass1 anonymousClass1 = messageStore.messageStore;
                long saveLocalMessage = ((K9MessageStore) anonymousClass1.val$folders).saveLocalMessage(outboxFolderIdSync, createSaveMessageData, null);
                anonymousClass1.notifyChange();
                ((LockableDatabase) messagingController.localStoreProvider.getInstance(legacyAccountDto).outboxStateRepository.val$folders).execute(false, new OutboxStateRepository$$ExternalSyntheticLambda0(i2, saveLocalMessage));
                messagingController.putBackground("sendPendingMessages", new MessagingController.AnonymousClass3(messagingController, legacyAccountDto, i));
            } catch (Exception e2) {
                Log.e(e2, "Error sending message", new Object[0]);
            }
            Long l = this.draftId;
            if (l != null) {
                messagingController.deleteDraft(legacyAccountDto, l.longValue(), true);
            }
            return null;
        }
    }

    public MessageCompose() {
        NotificationDismisser notificationDismisser = (NotificationDismisser) CloseableKt.get$default(NotificationDismisser.class);
        this.connectivityManager = (ConnectivityManagerBase) CloseableKt.get$default(ConnectivityManagerBase.class);
        this.notificationDismisserCompat = new NotificationSenderCompat(notificationDismisser);
        this.sentFolderNotFoundDialogFragmentFactory = (SentFolderNotFoundConfirmationDialogFragment.Factory) CloseableKt.get$default(SentFolderNotFoundConfirmationDialogFragment.Factory.class);
        this.activeInAppNotifications = new HashSet();
        this.identityChanged = false;
        this.signatureChanged = false;
        this.relatedFlag = null;
        this.relatedMessageProcessed = false;
        this.alreadyNotifiedUserOfEmptySubject = false;
        this.changesMadeSinceLastSave = false;
        this.draftMessageId = null;
        this.requestReadReceipt = false;
        this.isInSubActivity = false;
        this.sendMessageHasBeenTriggered = false;
        this.ignoreSentFolderNotAssigned = false;
        this.messagingListener = new AnonymousClass12(0, this);
        this.attachmentMvpView = new Base64Util(this);
        this.internalMessageHandler = new AnonymousClass14(this);
    }

    public final void checkToSaveDraftAndSave() {
        if (!this.account.hasDraftsFolder()) {
            Toast.makeText(this, R.string.compose_error_no_draft_folder, 0).show();
        } else {
            if (this.attachmentPresenter.checkOkForSendingOrDraftSaving()) {
                return;
            }
            this.finishAfterDraftSaved = true;
            performSaveAfterChecks();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final MessageBuilder createMessageBuilder(boolean z) {
        SimpleMessageBuilder simpleMessageBuilder;
        RecipientPresenter recipientPresenter = this.recipientPresenter;
        ComposeCryptoStatus composeCryptoStatus = recipientPresenter.currentCachedCryptoStatus;
        if (composeCryptoStatus == null) {
            Log.w("Couldn't retrieve crypto status; not creating MessageBuilder!", new Object[0]);
            return null;
        }
        if (composeCryptoStatus.isOpenPgpConfigured) {
            ComposeCryptoStatus.SendErrorState sendErrorState = composeCryptoStatus.sendErrorStateOrNull;
            if (sendErrorState != null) {
                RecipientMvpView recipientMvpView = recipientPresenter.recipientMvpView;
                MessageCompose messageCompose = recipientMvpView.activity;
                int ordinal = sendErrorState.ordinal();
                if (ordinal == 0) {
                    Toast.makeText(messageCompose, R.string.error_crypto_provider_connect, 1).show();
                    return null;
                }
                if (ordinal == 1) {
                    Toast.makeText(messageCompose, R.string.compose_error_no_key_configured, 1).show();
                    return null;
                }
                if (ordinal == 2) {
                    recipientMvpView.showOpenPgpEnabledErrorDialog();
                    return null;
                }
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
            }
            PgpMessageBuilder pgpMessageBuilder = new PgpMessageBuilder(new VerboseLogger(new Path.Companion()), BoundaryGenerator.INSTANCE, new GlideBuilder$1(), new VerboseLogger(), (K9CoreResourceProvider) CloseableKt.get$default(K9CoreResourceProvider.class), (GeneralSettingsManager) CloseableKt.get$default(GeneralSettingsManager.class));
            RecipientPresenter recipientPresenter2 = this.recipientPresenter;
            recipientPresenter2.getClass();
            List toAddresses = recipientPresenter2.getToAddresses();
            pgpMessageBuilder.to = (Address[]) toAddresses.toArray(new Address[toAddresses.size()]);
            RecipientMvpView recipientMvpView2 = recipientPresenter2.recipientMvpView;
            List ccAddresses = recipientMvpView2.getCcAddresses();
            pgpMessageBuilder.cc = (Address[]) ccAddresses.toArray(new Address[ccAddresses.size()]);
            List bccAddresses = recipientMvpView2.getBccAddresses();
            pgpMessageBuilder.bcc = (Address[]) bccAddresses.toArray(new Address[bccAddresses.size()]);
            pgpMessageBuilder.openPgpApi = recipientPresenter2.openPgpApiManager.getOpenPgpApi();
            pgpMessageBuilder.cryptoStatus = composeCryptoStatus;
            simpleMessageBuilder = pgpMessageBuilder;
        } else {
            SimpleMessageBuilder simpleMessageBuilder2 = new SimpleMessageBuilder(new VerboseLogger(new Path.Companion()), BoundaryGenerator.INSTANCE, (K9CoreResourceProvider) CloseableKt.get$default(K9CoreResourceProvider.class), (GeneralSettingsManager) CloseableKt.get$default(GeneralSettingsManager.class));
            RecipientPresenter recipientPresenter3 = this.recipientPresenter;
            RecipientMvpView recipientMvpView3 = recipientPresenter3.recipientMvpView;
            List toAddresses2 = recipientPresenter3.getToAddresses();
            simpleMessageBuilder2.to = (Address[]) toAddresses2.toArray(new Address[toAddresses2.size()]);
            List ccAddresses2 = recipientMvpView3.getCcAddresses();
            simpleMessageBuilder2.cc = (Address[]) ccAddresses2.toArray(new Address[ccAddresses2.size()]);
            List bccAddresses2 = recipientMvpView3.getBccAddresses();
            simpleMessageBuilder2.bcc = (Address[]) bccAddresses2.toArray(new Address[bccAddresses2.size()]);
            simpleMessageBuilder = simpleMessageBuilder2;
        }
        String obj = this.subjectView.getText().toString();
        Pattern pattern = Utility.RESPONSE_PATTERN;
        simpleMessageBuilder.subject = obj.replaceAll("[\\r\\n]", "");
        simpleMessageBuilder.sentDate = new Date();
        simpleMessageBuilder.hideTimeZone = ((DefaultGeneralSettingsManager) this.generalSettingsManager).getConfig().privacy.isHideTimeZone;
        simpleMessageBuilder.inReplyTo = this.repliedToMessageId;
        simpleMessageBuilder.references = this.referencedMessageIds;
        simpleMessageBuilder.requestReadReceipt = this.requestReadReceipt;
        simpleMessageBuilder.identity = this.identity;
        Address[] addresses = ((RecipientSelectView) ((LocalStore.AnonymousClass7) this.replyToPresenter.accountName).val$queryString).getAddresses();
        addresses.getClass();
        simpleMessageBuilder.replyTo = addresses;
        simpleMessageBuilder.messageFormat = this.currentMessageFormat;
        simpleMessageBuilder.text = FileHelper.toCrLf(this.messageContentView.getText());
        AttachmentPresenter attachmentPresenter = this.attachmentPresenter;
        attachmentPresenter.getClass();
        simpleMessageBuilder.attachments = new ArrayList(attachmentPresenter.attachments.values());
        AttachmentPresenter attachmentPresenter2 = this.attachmentPresenter;
        attachmentPresenter2.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (InlineAttachment inlineAttachment : attachmentPresenter2.inlineAttachments.values()) {
            linkedHashMap.put(inlineAttachment.contentId, inlineAttachment.attachment);
        }
        simpleMessageBuilder.inlineAttachments = linkedHashMap;
        simpleMessageBuilder.signature = FileHelper.toCrLf(this.signatureView.getText());
        simpleMessageBuilder.isSignatureBeforeQuotedText = this.account.isSignatureBeforeQuotedText();
        simpleMessageBuilder.identityChanged = this.identityChanged;
        simpleMessageBuilder.signatureChanged = this.signatureChanged;
        simpleMessageBuilder.cursorPosition = this.messageContentView.getSelectionStart();
        simpleMessageBuilder.messageReference = this.relatedMessageReference;
        simpleMessageBuilder.isDraft = z;
        simpleMessageBuilder.isPgpInlineEnabled = composeCryptoStatus.isPgpInlineModeEnabled;
        QuotedMessagePresenter quotedMessagePresenter = this.quotedMessagePresenter;
        simpleMessageBuilder.quoteStyle = (QuoteStyle) quotedMessagePresenter.quoteStyle;
        simpleMessageBuilder.quotedText = FileHelper.toCrLf(((EditText) ((LockableDatabase) quotedMessagePresenter.view).storageFilesProvider).getText());
        simpleMessageBuilder.quotedTextMode = (QuotedTextMode) quotedMessagePresenter.quotedTextMode;
        simpleMessageBuilder.quotedHtmlContent = (InsertableHtmlContent) quotedMessagePresenter.quotedHtmlContent;
        simpleMessageBuilder.isReplyAfterQuote = ((LegacyAccountDto) quotedMessagePresenter.account).isReplyAfterQuote();
        return simpleMessageBuilder;
    }

    public final void dismissActiveInAppNotifications() {
        Iterator it = this.activeInAppNotifications.iterator();
        while (it.hasNext()) {
            int intValue = ((Integer) it.next()).intValue();
            MessageCompose$$ExternalSyntheticLambda2 messageCompose$$ExternalSyntheticLambda2 = new MessageCompose$$ExternalSyntheticLambda2(this, 0);
            NotificationSenderCompat notificationSenderCompat = this.notificationDismisserCompat;
            notificationSenderCompat.getClass();
            FlowKt.launchIn(new FlowKt__MergeKt$flatMapConcat$$inlined$map$1(((NotificationDismisser) notificationSenderCompat.notificationSender).mo1041dismissRiqCqwk(intValue), new InterruptibleKt$runInterruptible$2(messageCompose$$ExternalSyntheticLambda2, null, 24), 2), notificationSenderCompat.scope);
        }
    }

    public final void fetchAccount(Intent intent) {
        MessageReference parse = MathKt.parse(intent.getStringExtra("message_reference"));
        this.relatedMessageReference = parse;
        String stringExtra = parse != null ? parse.accountUuid : intent.getStringExtra("account");
        if (stringExtra != null) {
            this.account = this.preferences.getAccount(stringExtra);
        }
    }

    public final void loadLocalMessageForDisplay(MessageViewInfo messageViewInfo, Action action) {
        this.currentMessageViewInfo = messageViewInfo;
        if (this.relatedMessageProcessed) {
            try {
                this.quotedMessagePresenter.populateUIWithQuotedMessage(messageViewInfo, true, action);
            } catch (MessagingException e) {
                this.quotedMessagePresenter.showOrHideQuotedText(QuotedTextMode.HIDE);
                Log.e(e, "Could not re-process source message; deleting quoted text to be safe.", new Object[0]);
            }
            updateMessageFormat();
            return;
        }
        try {
            try {
                int ordinal = this.action.ordinal();
                if (ordinal == 1 || ordinal == 2) {
                    processMessageToReplyTo(messageViewInfo);
                } else if (ordinal == 3) {
                    processMessageToForward(messageViewInfo, false);
                } else if (ordinal == 4) {
                    processMessageToForward(messageViewInfo, true);
                } else if (ordinal != 5) {
                    Log.w("processSourceMessage() called with unsupported action", new Object[0]);
                } else {
                    processDraftMessage(messageViewInfo);
                }
            } catch (MessagingException e2) {
                Log.e(e2, "Error while processing source message: ", new Object[0]);
            }
            this.relatedMessageProcessed = true;
            this.changesMadeSinceLastSave = false;
            updateMessageFormat();
            this.relatedMessageProcessed = true;
        } catch (Throwable th) {
            this.relatedMessageProcessed = true;
            this.changesMadeSinceLastSave = false;
            throw th;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i, int i2, final Intent intent) {
        Message$RecipientType message$RecipientType;
        this.isInSubActivity = false;
        if (((-65536) & i) == 0) {
            if ((i & 2048) == 2048) {
                final int i3 = i ^ 2048;
                final MessageBuilder messageBuilder = this.currentMessageBuilder;
                if (messageBuilder == null) {
                    Log.e("Got a message builder activity result for no message builder, this is an illegal state!", new Object[0]);
                    return;
                }
                synchronized (messageBuilder.callbackLock) {
                    messageBuilder.asyncCallback = this;
                    messageBuilder.queuedMimeMessage = null;
                    messageBuilder.queuedException = null;
                    messageBuilder.queuedPendingIntent = null;
                }
                if (i2 == -1) {
                    new AsyncTask(i3, intent) { // from class: com.fsck.k9.message.MessageBuilder.2
                        public final /* synthetic */ Intent val$data;

                        public AnonymousClass2(final int i32, final Intent intent2) {
                            this.val$data = intent2;
                        }

                        @Override // android.os.AsyncTask
                        public final Object doInBackground(Object[] objArr) {
                            MessageBuilder.this.buildMessageOnActivityResult(this.val$data);
                            return null;
                        }

                        @Override // android.os.AsyncTask
                        public final void onPostExecute(Object obj) {
                            MessageBuilder.this.deliverResult();
                        }
                    }.execute(new Void[0]);
                    return;
                }
                this.sendMessageHasBeenTriggered = false;
                this.currentMessageBuilder = null;
                setProgressBarIndeterminateVisibility(false);
                return;
            }
            if ((i & 256) == 256) {
                int i4 = i ^ 256;
                RecipientPresenter recipientPresenter = this.recipientPresenter;
                recipientPresenter.getClass();
                if (i4 != 1 && i4 != 2 && i4 != 3) {
                    if (i4 != 4) {
                        if (i4 != 5) {
                            return;
                        }
                        recipientPresenter.asyncUpdateCryptoStatus();
                        return;
                    } else {
                        OpenPgpApiManager openPgpApiManager = recipientPresenter.openPgpApiManager;
                        openPgpApiManager.userInteractionPendingIntent = null;
                        openPgpApiManager.refreshConnection();
                        return;
                    }
                }
                if (i2 != -1 || intent2 == null) {
                    return;
                }
                if (i4 == 1) {
                    message$RecipientType = Message$RecipientType.TO;
                } else if (i4 == 2) {
                    message$RecipientType = Message$RecipientType.CC;
                } else {
                    if (i4 != 3) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) CameraDevices$CC.m("Unhandled case: ", i4));
                        return;
                    }
                    message$RecipientType = Message$RecipientType.BCC;
                }
                Message$RecipientType message$RecipientType2 = message$RecipientType;
                Uri data = intent2.getData();
                Context context = recipientPresenter.context;
                LegacyAccountDto legacyAccountDto = recipientPresenter.account;
                if (legacyAccountDto != null) {
                    new RecipientPresenter$addRecipientFromContactUri$1(data, recipientPresenter, message$RecipientType2, context, legacyAccountDto.getOpenPgpProvider()).startLoading();
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("account");
                    throw null;
                }
            }
            if ((i & 512) == 512) {
                this.messageLoaderHelper.onActivityResult(i ^ 512, i2, intent2);
                return;
            }
            if ((i & 1024) == 1024) {
                this.attachmentPresenter.onActivityResult(i2, i ^ 1024, intent2);
                return;
            } else if (i == 6 && i2 == -1) {
                Intent intent2 = new Intent();
                Uri uri = this.cameraCaptureHandler.capturedImageUri;
                if (uri == null) {
                    throw new SerializationException("Image Uri not initialized");
                }
                intent2.setData(uri);
                this.attachmentPresenter.onActivityResult(i2, 1, intent2);
                return;
            }
        }
        super.onActivityResult(i, i2, intent2);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.identity) {
            showDialog(3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:137:0x05f4  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0606  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x061f  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0684  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0699  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x06bc  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x06d8  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x069c  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0695  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0723  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x074c  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0793  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x07b6  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x07c2  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0764  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x073d  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x060c  */
    /* JADX WARN: Type inference failed for: r0v51, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r27v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v35, types: [java.util.ArrayList] */
    @Override // com.fsck.k9.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCreate(android.os.Bundle r39) {
        /*
            Method dump skipped, instructions count: 2062
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.activity.MessageCompose.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Activity
    public final Dialog onCreateDialog(int i) {
        final int i2 = 0;
        final int i3 = 3;
        final int i4 = 2;
        final int i5 = 1;
        if (i == 1) {
            MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(this);
            materialAlertDialogBuilder.setTitle(R.string.save_or_discard_draft_message_dlg_title);
            Long l = this.draftMessageId;
            AlertController.AlertParams alertParams = (AlertController.AlertParams) materialAlertDialogBuilder.array;
            if (l == null) {
                alertParams.mMessage = alertParams.mContext.getText(R.string.save_or_discard_draft_message_instructions_fmt);
                materialAlertDialogBuilder.setNegativeButton(R.string.discard_action, new DialogInterface.OnClickListener(this) { // from class: com.fsck.k9.activity.MessageCompose.4
                    public final /* synthetic */ MessageCompose this$0;

                    {
                        this.this$0 = this;
                    }

                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i6) {
                        int i7 = i2;
                        MessageCompose messageCompose = this.this$0;
                        switch (i7) {
                            case 0:
                                messageCompose.dismissDialog(1);
                                Pattern pattern = MessageCompose.PREFIX;
                                messageCompose.onDiscard();
                                break;
                            case 1:
                                Pattern pattern2 = MessageCompose.PREFIX;
                                messageCompose.onDiscard();
                                break;
                            case 2:
                                messageCompose.dismissDialog(1);
                                Pattern pattern3 = MessageCompose.PREFIX;
                                messageCompose.draftMessageId = null;
                                messageCompose.changesMadeSinceLastSave = false;
                                if (!messageCompose.navigateUp) {
                                    messageCompose.finish();
                                    break;
                                } else {
                                    messageCompose.openDefaultFolder();
                                    break;
                                }
                            case 3:
                                messageCompose.dismissDialog(1);
                                Pattern pattern4 = MessageCompose.PREFIX;
                                messageCompose.checkToSaveDraftAndSave();
                                break;
                            case 4:
                                messageCompose.dismissDialog(2);
                                Toast.makeText(messageCompose, messageCompose.getString(R.string.message_discarded_toast), 1).show();
                                messageCompose.onDiscard();
                                break;
                            default:
                                messageCompose.dismissDialog(2);
                                break;
                        }
                    }
                });
            } else {
                alertParams.mMessage = alertParams.mContext.getText(R.string.save_or_discard_draft_message_changes);
                materialAlertDialogBuilder.setNegativeButton(R.string.discard_action, new DialogInterface.OnClickListener(this) { // from class: com.fsck.k9.activity.MessageCompose.4
                    public final /* synthetic */ MessageCompose this$0;

                    {
                        this.this$0 = this;
                    }

                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i6) {
                        int i7 = i4;
                        MessageCompose messageCompose = this.this$0;
                        switch (i7) {
                            case 0:
                                messageCompose.dismissDialog(1);
                                Pattern pattern = MessageCompose.PREFIX;
                                messageCompose.onDiscard();
                                break;
                            case 1:
                                Pattern pattern2 = MessageCompose.PREFIX;
                                messageCompose.onDiscard();
                                break;
                            case 2:
                                messageCompose.dismissDialog(1);
                                Pattern pattern3 = MessageCompose.PREFIX;
                                messageCompose.draftMessageId = null;
                                messageCompose.changesMadeSinceLastSave = false;
                                if (!messageCompose.navigateUp) {
                                    messageCompose.finish();
                                    break;
                                } else {
                                    messageCompose.openDefaultFolder();
                                    break;
                                }
                            case 3:
                                messageCompose.dismissDialog(1);
                                Pattern pattern4 = MessageCompose.PREFIX;
                                messageCompose.checkToSaveDraftAndSave();
                                break;
                            case 4:
                                messageCompose.dismissDialog(2);
                                Toast.makeText(messageCompose, messageCompose.getString(R.string.message_discarded_toast), 1).show();
                                messageCompose.onDiscard();
                                break;
                            default:
                                messageCompose.dismissDialog(2);
                                break;
                        }
                    }
                });
            }
            materialAlertDialogBuilder.setPositiveButton(R.string.save_draft_action, new DialogInterface.OnClickListener(this) { // from class: com.fsck.k9.activity.MessageCompose.4
                public final /* synthetic */ MessageCompose this$0;

                {
                    this.this$0 = this;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i6) {
                    int i7 = i3;
                    MessageCompose messageCompose = this.this$0;
                    switch (i7) {
                        case 0:
                            messageCompose.dismissDialog(1);
                            Pattern pattern = MessageCompose.PREFIX;
                            messageCompose.onDiscard();
                            break;
                        case 1:
                            Pattern pattern2 = MessageCompose.PREFIX;
                            messageCompose.onDiscard();
                            break;
                        case 2:
                            messageCompose.dismissDialog(1);
                            Pattern pattern3 = MessageCompose.PREFIX;
                            messageCompose.draftMessageId = null;
                            messageCompose.changesMadeSinceLastSave = false;
                            if (!messageCompose.navigateUp) {
                                messageCompose.finish();
                                break;
                            } else {
                                messageCompose.openDefaultFolder();
                                break;
                            }
                        case 3:
                            messageCompose.dismissDialog(1);
                            Pattern pattern4 = MessageCompose.PREFIX;
                            messageCompose.checkToSaveDraftAndSave();
                            break;
                        case 4:
                            messageCompose.dismissDialog(2);
                            Toast.makeText(messageCompose, messageCompose.getString(R.string.message_discarded_toast), 1).show();
                            messageCompose.onDiscard();
                            break;
                        default:
                            messageCompose.dismissDialog(2);
                            break;
                    }
                }
            });
            return materialAlertDialogBuilder.create();
        }
        final int i6 = 4;
        if (i == 2) {
            MaterialAlertDialogBuilder materialAlertDialogBuilder2 = new MaterialAlertDialogBuilder(this);
            materialAlertDialogBuilder2.setTitle(R.string.confirm_discard_draft_message_title);
            AlertController.AlertParams alertParams2 = (AlertController.AlertParams) materialAlertDialogBuilder2.array;
            alertParams2.mMessage = alertParams2.mContext.getText(R.string.confirm_discard_draft_message);
            final int i7 = 5;
            materialAlertDialogBuilder2.setPositiveButton(R.string.cancel_action, new DialogInterface.OnClickListener(this) { // from class: com.fsck.k9.activity.MessageCompose.4
                public final /* synthetic */ MessageCompose this$0;

                {
                    this.this$0 = this;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i62) {
                    int i72 = i7;
                    MessageCompose messageCompose = this.this$0;
                    switch (i72) {
                        case 0:
                            messageCompose.dismissDialog(1);
                            Pattern pattern = MessageCompose.PREFIX;
                            messageCompose.onDiscard();
                            break;
                        case 1:
                            Pattern pattern2 = MessageCompose.PREFIX;
                            messageCompose.onDiscard();
                            break;
                        case 2:
                            messageCompose.dismissDialog(1);
                            Pattern pattern3 = MessageCompose.PREFIX;
                            messageCompose.draftMessageId = null;
                            messageCompose.changesMadeSinceLastSave = false;
                            if (!messageCompose.navigateUp) {
                                messageCompose.finish();
                                break;
                            } else {
                                messageCompose.openDefaultFolder();
                                break;
                            }
                        case 3:
                            messageCompose.dismissDialog(1);
                            Pattern pattern4 = MessageCompose.PREFIX;
                            messageCompose.checkToSaveDraftAndSave();
                            break;
                        case 4:
                            messageCompose.dismissDialog(2);
                            Toast.makeText(messageCompose, messageCompose.getString(R.string.message_discarded_toast), 1).show();
                            messageCompose.onDiscard();
                            break;
                        default:
                            messageCompose.dismissDialog(2);
                            break;
                    }
                }
            });
            materialAlertDialogBuilder2.setNegativeButton(R.string.discard_action, new DialogInterface.OnClickListener(this) { // from class: com.fsck.k9.activity.MessageCompose.4
                public final /* synthetic */ MessageCompose this$0;

                {
                    this.this$0 = this;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i62) {
                    int i72 = i6;
                    MessageCompose messageCompose = this.this$0;
                    switch (i72) {
                        case 0:
                            messageCompose.dismissDialog(1);
                            Pattern pattern = MessageCompose.PREFIX;
                            messageCompose.onDiscard();
                            break;
                        case 1:
                            Pattern pattern2 = MessageCompose.PREFIX;
                            messageCompose.onDiscard();
                            break;
                        case 2:
                            messageCompose.dismissDialog(1);
                            Pattern pattern3 = MessageCompose.PREFIX;
                            messageCompose.draftMessageId = null;
                            messageCompose.changesMadeSinceLastSave = false;
                            if (!messageCompose.navigateUp) {
                                messageCompose.finish();
                                break;
                            } else {
                                messageCompose.openDefaultFolder();
                                break;
                            }
                        case 3:
                            messageCompose.dismissDialog(1);
                            Pattern pattern4 = MessageCompose.PREFIX;
                            messageCompose.checkToSaveDraftAndSave();
                            break;
                        case 4:
                            messageCompose.dismissDialog(2);
                            Toast.makeText(messageCompose, messageCompose.getString(R.string.message_discarded_toast), 1).show();
                            messageCompose.onDiscard();
                            break;
                        default:
                            messageCompose.dismissDialog(2);
                            break;
                    }
                }
            });
            return materialAlertDialogBuilder2.create();
        }
        if (i == 3) {
            ((ThemeManager) this.themeManager$delegate.getValue()).getClass();
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(this, R.style.Theme_K9_DayNight_Dialog);
            MaterialAlertDialogBuilder materialAlertDialogBuilder3 = new MaterialAlertDialogBuilder(contextThemeWrapper);
            materialAlertDialogBuilder3.setTitle(R.string.send_as);
            final IdentityAdapter identityAdapter = new IdentityAdapter(contextThemeWrapper);
            materialAlertDialogBuilder3.setAdapter(identityAdapter, new DialogInterface.OnClickListener() { // from class: com.fsck.k9.activity.MessageCompose.9
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i8) {
                    IdentityAdapter.IdentityContainer identityContainer = (IdentityAdapter.IdentityContainer) identityAdapter.mItems.get(i8);
                    LegacyAccountDto legacyAccountDto = identityContainer.account;
                    Identity identity = identityContainer.identity;
                    MessageCompose messageCompose = MessageCompose.this;
                    if (!messageCompose.account.equals(legacyAccountDto)) {
                        Log.v("Switching account from %s to %s", messageCompose.account, legacyAccountDto);
                        if (messageCompose.action == Action.EDIT_DRAFT) {
                            messageCompose.relatedMessageReference = null;
                        }
                        if (messageCompose.changesMadeSinceLastSave || messageCompose.draftMessageId != null) {
                            Long l2 = messageCompose.draftMessageId;
                            LegacyAccountDto legacyAccountDto2 = messageCompose.account;
                            messageCompose.draftMessageId = null;
                            messageCompose.account = legacyAccountDto;
                            Log.v("Account switch, saving new draft in new account", new Object[0]);
                            if (messageCompose.account.hasDraftsFolder() && messageCompose.changesMadeSinceLastSave) {
                                messageCompose.finishAfterDraftSaved = false;
                                messageCompose.performSaveAfterChecks();
                            }
                            if (l2 != null) {
                                Log.v("Account switch, deleting draft from previous account: %d", l2);
                                messageCompose.messagingController.deleteDraft(legacyAccountDto2, l2.longValue(), false);
                            }
                        } else {
                            messageCompose.account = legacyAccountDto;
                        }
                        messageCompose.dismissActiveInAppNotifications();
                        messageCompose.triggerIfNeededSentFolderNotFoundInAppNotification();
                        messageCompose.recipientPresenter.onSwitchAccount(messageCompose.account);
                        messageCompose.quotedMessagePresenter.account = messageCompose.account;
                    }
                    messageCompose.identity = identity;
                    messageCompose.identityChanged = true;
                    messageCompose.changesMadeSinceLastSave = true;
                    messageCompose.chooseIdentityView.setText(identity.email);
                    messageCompose.updateSignature();
                    messageCompose.updateMessageFormat();
                    messageCompose.replyToPresenter.setIdentity(identity);
                    messageCompose.recipientPresenter.asyncUpdateCryptoStatus();
                }
            });
            return materialAlertDialogBuilder3.create();
        }
        if (i != 4) {
            return super.onCreateDialog(i);
        }
        MaterialAlertDialogBuilder materialAlertDialogBuilder4 = new MaterialAlertDialogBuilder(this);
        materialAlertDialogBuilder4.setTitle(R.string.dialog_confirm_delete_title);
        AlertController.AlertParams alertParams3 = (AlertController.AlertParams) materialAlertDialogBuilder4.array;
        alertParams3.mMessage = alertParams3.mContext.getText(R.string.dialog_confirm_delete_message);
        materialAlertDialogBuilder4.setPositiveButton(R.string.dialog_confirm_delete_confirm_button, new DialogInterface.OnClickListener(this) { // from class: com.fsck.k9.activity.MessageCompose.4
            public final /* synthetic */ MessageCompose this$0;

            {
                this.this$0 = this;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i62) {
                int i72 = i5;
                MessageCompose messageCompose = this.this$0;
                switch (i72) {
                    case 0:
                        messageCompose.dismissDialog(1);
                        Pattern pattern = MessageCompose.PREFIX;
                        messageCompose.onDiscard();
                        break;
                    case 1:
                        Pattern pattern2 = MessageCompose.PREFIX;
                        messageCompose.onDiscard();
                        break;
                    case 2:
                        messageCompose.dismissDialog(1);
                        Pattern pattern3 = MessageCompose.PREFIX;
                        messageCompose.draftMessageId = null;
                        messageCompose.changesMadeSinceLastSave = false;
                        if (!messageCompose.navigateUp) {
                            messageCompose.finish();
                            break;
                        } else {
                            messageCompose.openDefaultFolder();
                            break;
                        }
                    case 3:
                        messageCompose.dismissDialog(1);
                        Pattern pattern4 = MessageCompose.PREFIX;
                        messageCompose.checkToSaveDraftAndSave();
                        break;
                    case 4:
                        messageCompose.dismissDialog(2);
                        Toast.makeText(messageCompose, messageCompose.getString(R.string.message_discarded_toast), 1).show();
                        messageCompose.onDiscard();
                        break;
                    default:
                        messageCompose.dismissDialog(2);
                        break;
                }
            }
        });
        materialAlertDialogBuilder4.setNegativeButton(R.string.dialog_confirm_delete_cancel_button, new AnonymousClass10(i2));
        return materialAlertDialogBuilder4.create();
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        if (isFinishing()) {
            return false;
        }
        getMenuInflater().inflate(R.menu.message_compose_option, menu);
        if (this.account.hasDraftsFolder()) {
            return true;
        }
        menu.findItem(R.id.save).setEnabled(false);
        return true;
    }

    public final void onDiscard() {
        Long l = this.draftMessageId;
        if (l != null) {
            this.messagingController.deleteDraft(this.account, l.longValue(), false);
        }
        this.internalMessageHandler.sendEmptyMessage(5);
        this.draftMessageId = null;
        this.changesMadeSinceLastSave = false;
        if (this.navigateUp) {
            openDefaultFolder();
        } else {
            finish();
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        int id = view.getId();
        if ((id == R.id.message_content || id == R.id.subject) && z) {
            LocalStore.AnonymousClass7 anonymousClass7 = (LocalStore.AnonymousClass7) this.replyToPresenter.accountName;
            if (((View) anonymousClass7.val$placeHolders).getVisibility() == 0) {
                Editable text = ((RecipientSelectView) anonymousClass7.val$queryString).getText();
                text.getClass();
                if (StringsKt.isBlank(text)) {
                    anonymousClass7.setVisible(false);
                }
            }
            RecipientPresenter recipientPresenter = this.recipientPresenter;
            if (recipientPresenter.forceShowCcBcc) {
                return;
            }
            LegacyAccountDto legacyAccountDto = recipientPresenter.account;
            if (legacyAccountDto == null) {
                Intrinsics.throwUninitializedPropertyAccessException("account");
                throw null;
            }
            if (legacyAccountDto.isAlwaysShowCcBcc()) {
                return;
            }
            RecipientMvpView recipientMvpView = recipientPresenter.recipientMvpView;
            boolean isEmpty = recipientMvpView.getCcAddresses().isEmpty();
            Message$RecipientType message$RecipientType = Message$RecipientType.TO;
            if (isEmpty) {
                Editable text2 = recipientMvpView.ccView.getText();
                text2.getClass();
                if (text2.length() == 0) {
                    recipientMvpView.setCcVisibility(false);
                    if (recipientPresenter.lastFocusedType == Message$RecipientType.CC) {
                        recipientPresenter.lastFocusedType = message$RecipientType;
                    }
                }
            }
            if (recipientMvpView.getBccAddresses().isEmpty()) {
                Editable text3 = recipientMvpView.bccView.getText();
                text3.getClass();
                if (text3.length() == 0) {
                    recipientMvpView.setBccVisibility(false);
                    if (recipientPresenter.lastFocusedType == Message$RecipientType.BCC) {
                        recipientPresenter.lastFocusedType = message$RecipientType;
                    }
                }
            }
            recipientPresenter.updateRecipientExpanderVisibility();
        }
    }

    public final void onMessageBuildSuccess(MimeMessage mimeMessage, boolean z) {
        MessageBuilder messageBuilder = this.currentMessageBuilder;
        String str = messageBuilder instanceof PgpMessageBuilder ? messageBuilder.subject : null;
        if (!z) {
            this.currentMessageBuilder = null;
            new SendMessageTask(this.messagingController, this.preferences, this.account, this.contacts, mimeMessage, this.draftMessageId, str, this.relatedMessageReference, this.relatedFlag).execute(new Void[0]);
            finish();
            return;
        }
        this.changesMadeSinceLastSave = false;
        this.currentMessageBuilder = null;
        new SaveMessageTask(this.messagingController, this.account, this.internalMessageHandler, mimeMessage, this.draftMessageId, str).execute(new Void[0]);
        if (this.finishAfterDraftSaved) {
            finish();
        } else {
            setProgressBarIndeterminateVisibility(false);
        }
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        String string;
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            prepareToFinish(true);
            return true;
        }
        if (itemId == R.id.send) {
            if (this.subjectView.getText().length() == 0 && !this.alreadyNotifiedUserOfEmptySubject) {
                Toast.makeText(this, R.string.empty_subject, 1).show();
                this.alreadyNotifiedUserOfEmptySubject = true;
                return true;
            }
            LocalStore.AnonymousClass7 anonymousClass7 = (LocalStore.AnonymousClass7) this.replyToPresenter.accountName;
            RecipientSelectView recipientSelectView = (RecipientSelectView) anonymousClass7.val$queryString;
            recipientSelectView.tryPerformCompletion();
            if (recipientSelectView.hasUncompletedText()) {
                recipientSelectView.setError(recipientSelectView.getContext().getString(R.string.compose_error_incomplete_recipient));
                anonymousClass7.setVisible(true);
                return true;
            }
            RecipientPresenter recipientPresenter = this.recipientPresenter;
            RecipientMvpView recipientMvpView = recipientPresenter.recipientMvpView;
            RecipientSelectView recipientSelectView2 = recipientMvpView.toView;
            RecipientSelectView recipientSelectView3 = recipientMvpView.bccView;
            RecipientSelectView recipientSelectView4 = recipientMvpView.ccView;
            recipientSelectView2.tryPerformCompletion();
            recipientSelectView4.tryPerformCompletion();
            recipientSelectView3.tryPerformCompletion();
            if (recipientSelectView2.hasUncompletedText()) {
                recipientSelectView2.setError(recipientSelectView2.getContext().getString(R.string.compose_error_incomplete_recipient));
                return true;
            }
            if (recipientSelectView4.hasUncompletedText()) {
                recipientSelectView4.setError(recipientSelectView4.getContext().getString(R.string.compose_error_incomplete_recipient));
                return true;
            }
            if (recipientSelectView3.hasUncompletedText()) {
                recipientSelectView3.setError(recipientSelectView3.getContext().getString(R.string.compose_error_incomplete_recipient));
                return true;
            }
            if (recipientPresenter.getToAddresses().isEmpty() && recipientMvpView.getCcAddresses().isEmpty() && recipientMvpView.getBccAddresses().isEmpty()) {
                recipientSelectView2.setError(recipientSelectView2.getContext().getString(R.string.message_compose_error_no_recipients));
                return true;
            }
            if (this.attachmentPresenter.checkOkForSendingOrDraftSaving()) {
                return true;
            }
            performSendAfterChecks();
            return true;
        }
        if (itemId == R.id.save) {
            checkToSaveDraftAndSave();
            return true;
        }
        if (itemId == R.id.discard) {
            if (((DefaultGeneralSettingsManager) this.generalSettingsManager).getConfig().interaction.isConfirmDiscardMessage) {
                showDialog(4);
                return true;
            }
            onDiscard();
            return true;
        }
        int i = 2;
        if (itemId == R.id.add_from_contacts) {
            RecipientPresenter recipientPresenter2 = this.recipientPresenter;
            Message$RecipientType message$RecipientType = recipientPresenter2.lastFocusedType;
            int ordinal = message$RecipientType.ordinal();
            if (ordinal == 0) {
                i = 1;
            } else if (ordinal != 1) {
                if (ordinal != 2) {
                    UriKt$$ExternalSyntheticBUOutline0.m$1(message$RecipientType, "Unhandled case: ");
                    return false;
                }
                i = 3;
            }
            MessageCompose messageCompose = recipientPresenter2.recipientMvpView.activity;
            messageCompose.isInSubActivity = true;
            messageCompose.startActivityForResult(new Intent("android.intent.action.PICK", ContactsContract.CommonDataKinds.Email.CONTENT_URI), i | 256);
            return true;
        }
        if (itemId == R.id.openpgp_encrypt_disable) {
            this.recipientPresenter.toggleEncryptionState(true);
            updateMessageFormat();
            return true;
        }
        if (itemId == R.id.openpgp_encrypt_enable) {
            this.recipientPresenter.toggleEncryptionState(true);
            updateMessageFormat();
            return true;
        }
        if (itemId == R.id.openpgp_inline_enable) {
            RecipientPresenter recipientPresenter3 = this.recipientPresenter;
            recipientPresenter3.isForceTextMessageFormat = true;
            recipientPresenter3.asyncUpdateCryptoStatus();
            int i2 = K9.pgpInlineDialogCounter;
            if (i2 < 2) {
                K9.pgpInlineDialogCounter = i2 + 1;
                K9.saveSettingsAsync();
                recipientPresenter3.recipientMvpView.showOpenPgpInlineDialog(true);
            }
            updateMessageFormat();
            return true;
        }
        if (itemId == R.id.openpgp_inline_disable) {
            RecipientPresenter recipientPresenter4 = this.recipientPresenter;
            recipientPresenter4.isForceTextMessageFormat = false;
            recipientPresenter4.asyncUpdateCryptoStatus();
            updateMessageFormat();
            return true;
        }
        if (itemId == R.id.openpgp_sign_only) {
            this.recipientPresenter.onMenuSetSignOnly(true);
            return true;
        }
        if (itemId == R.id.openpgp_sign_only_disable) {
            this.recipientPresenter.onMenuSetSignOnly(false);
            return true;
        }
        if (itemId == R.id.add_attachment) {
            PopupMenu popupMenu = new PopupMenu(this, findViewById(R.id.toolbar).findViewById(R.id.add_attachment));
            popupMenu.getMenuInflater().inflate(R.menu.message_attachment_option, popupMenu.getMenu());
            MenuItem findItem = popupMenu.getMenu().findItem(R.id.open_camera);
            this.cameraCaptureHandler.getClass();
            findItem.setVisible(getPackageManager().hasSystemFeature("android.hardware.camera.any"));
            popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: com.fsck.k9.activity.MessageCompose$$ExternalSyntheticLambda3
                @Override // android.widget.PopupMenu.OnMenuItemClickListener
                public final boolean onMenuItemClick(MenuItem menuItem2) {
                    MessageCompose messageCompose2 = MessageCompose.this;
                    CameraCaptureHandler cameraCaptureHandler = messageCompose2.cameraCaptureHandler;
                    int itemId2 = menuItem2.getItemId();
                    if (itemId2 == R.id.open_camera) {
                        cameraCaptureHandler.getClass();
                        if (TraceApi29Impl.checkSelfPermission(messageCompose2, "android.permission.CAMERA") == 0) {
                            cameraCaptureHandler.openCamera(messageCompose2);
                            return true;
                        }
                        ActivityCompat.requestPermissions(messageCompose2, new String[]{"android.permission.CAMERA"}, 100);
                        return true;
                    }
                    if (itemId2 != R.id.attach_file) {
                        return false;
                    }
                    AttachmentPresenter attachmentPresenter = messageCompose2.attachmentPresenter;
                    RecipientPresenter recipientPresenter5 = messageCompose2.recipientPresenter;
                    attachmentPresenter.getClass();
                    ComposeCryptoStatus composeCryptoStatus = recipientPresenter5.currentCachedCryptoStatus;
                    if (composeCryptoStatus == null) {
                        return true;
                    }
                    ComposeCryptoStatus.AttachErrorState attachErrorState = composeCryptoStatus.attachErrorStateOrNull;
                    if (attachErrorState != null) {
                        if (RecipientPresenter.WhenMappings.$EnumSwitchMapping$2[attachErrorState.ordinal()] == 1) {
                            Toast.makeText(recipientPresenter5.recipientMvpView.activity, R.string.error_crypto_inline_attach, 1).show();
                            return true;
                        }
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return false;
                    }
                    Base64Util base64Util = attachmentPresenter.attachmentMvpView;
                    base64Util.getClass();
                    Intent intent = new Intent("android.intent.action.GET_CONTENT");
                    intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
                    intent.addCategory("android.intent.category.OPENABLE");
                    intent.setType("*/*");
                    MessageCompose messageCompose3 = (MessageCompose) base64Util.inverseAlphabet;
                    messageCompose3.isInSubActivity = true;
                    messageCompose3.startActivityForResult(Intent.createChooser(intent, null), 1025);
                    return true;
                }
            });
            popupMenu.show();
            return true;
        }
        if (itemId != R.id.read_receipt) {
            return super.onOptionsItemSelected(menuItem);
        }
        if (this.requestReadReceipt) {
            string = getString(R.string.read_receipt_disabled);
            this.requestReadReceipt = false;
        } else {
            string = getString(R.string.read_receipt_enabled);
            this.requestReadReceipt = true;
        }
        Toast.makeText(getApplicationContext(), string, 0).show();
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        this.messagingController.removeListener(this.messagingListener);
        boolean z = (getChangingConfigurations() & 128) == 128;
        boolean z2 = this.currentMessageBuilder != null;
        if (z || z2 || this.isInSubActivity || !this.account.hasDraftsFolder() || !this.changesMadeSinceLastSave) {
            return;
        }
        this.finishAfterDraftSaved = false;
        performSaveAfterChecks();
    }

    @Override // android.app.Activity
    public final boolean onPrepareOptionsMenu(Menu menu) {
        boolean z;
        super.onPrepareOptionsMenu(menu);
        RecipientPresenter recipientPresenter = this.recipientPresenter;
        Context context = recipientPresenter.context;
        menu.getClass();
        ComposeCryptoStatus composeCryptoStatus = recipientPresenter.currentCachedCryptoStatus;
        boolean z2 = false;
        if (composeCryptoStatus == null || composeCryptoStatus.openPgpProviderState != OpenPgpApiManager.OpenPgpProviderState.OK) {
            ViewSizeResolver.CC.m(menu, R.id.openpgp_inline_enable, false, R.id.openpgp_inline_disable, false);
            ViewSizeResolver.CC.m(menu, R.id.openpgp_encrypt_enable, false, R.id.openpgp_encrypt_disable, false);
            ViewSizeResolver.CC.m(menu, R.id.openpgp_sign_only, false, R.id.openpgp_sign_only_disable, false);
        } else {
            boolean z3 = composeCryptoStatus.isEncryptionEnabled;
            menu.findItem(R.id.openpgp_encrypt_enable).setVisible(!z3);
            menu.findItem(R.id.openpgp_encrypt_disable).setVisible(z3);
            LegacyAccountDto legacyAccountDto = recipientPresenter.account;
            if (legacyAccountDto == null) {
                Intrinsics.throwUninitializedPropertyAccessException("account");
                throw null;
            }
            boolean isOpenPgpHideSignOnly = legacyAccountDto.isOpenPgpHideSignOnly();
            boolean z4 = composeCryptoStatus.isSignOnly;
            menu.findItem(R.id.openpgp_sign_only).setVisible((isOpenPgpHideSignOnly || z4) ? false : true);
            menu.findItem(R.id.openpgp_sign_only_disable).setVisible(!isOpenPgpHideSignOnly && z4);
            boolean z5 = composeCryptoStatus.isPgpInlineModeEnabled;
            ViewSizeResolver.CC.m(menu, R.id.openpgp_inline_enable, (z3 || z4) && !z5, R.id.openpgp_inline_disable, z5);
        }
        MenuItem findItem = menu.findItem(R.id.add_from_contacts);
        if (TraceApi29Impl.checkSelfPermission(context, "android.permission.READ_CONTACTS") == 0) {
            Boolean bool = recipientPresenter.hasContactPicker;
            if (bool != null) {
                z = bool.booleanValue();
            } else {
                List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(new Intent("android.intent.action.PICK", ContactsContract.CommonDataKinds.Email.CONTENT_URI), 0);
                queryIntentActivities.getClass();
                boolean z6 = !queryIntentActivities.isEmpty();
                recipientPresenter.hasContactPicker = Boolean.valueOf(z6);
                z = z6;
            }
            if (z) {
                z2 = true;
            }
        }
        findItem.setVisible(z2);
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 100) {
            if (iArr.length <= 0 || iArr[0] != 0) {
                Toast.makeText(this, R.string.camera_permission_denied, 1).show();
            } else {
                this.cameraCaptureHandler.openCamera(this);
            }
        }
    }

    @Override // android.app.Activity
    public final void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.attachmentsView.removeAllViews();
        this.requestReadReceipt = bundle.getBoolean("com.fsck.k9.activity.MessageCompose.messageReadReceipt");
        ImapSync imapSync = this.replyToPresenter;
        imapSync.getClass();
        ((LocalStore.AnonymousClass7) imapSync.accountName).setVisible(bundle.getBoolean("com.fsck.k9.activity.compose.ReplyToPresenter.replyToShown"));
        RecipientPresenter recipientPresenter = this.recipientPresenter;
        recipientPresenter.getClass();
        RecipientMvpView recipientMvpView = recipientPresenter.recipientMvpView;
        recipientMvpView.setCcVisibility(bundle.getBoolean("state:ccShown"));
        recipientMvpView.setBccVisibility(bundle.getBoolean("state:bccShown"));
        String string = bundle.getString("state:lastFocusedType");
        string.getClass();
        recipientPresenter.lastFocusedType = Message$RecipientType.valueOf(string);
        String string2 = bundle.getString("state:currentCryptoMode");
        string2.getClass();
        recipientPresenter.currentCryptoMode = RecipientPresenter.CryptoMode.valueOf(string2);
        recipientPresenter.isForceTextMessageFormat = bundle.getBoolean("state:cryptoEnablePgpInline");
        recipientPresenter.updateRecipientExpanderVisibility();
        QuotedMessagePresenter quotedMessagePresenter = this.quotedMessagePresenter;
        quotedMessagePresenter.getClass();
        quotedMessagePresenter.quotedHtmlContent = (InsertableHtmlContent) Api33Impl.getSerializable(bundle, "state:htmlQuote", InsertableHtmlContent.class);
        quotedMessagePresenter.quotedTextFormat = (SimpleMessageFormat) Api33Impl.getSerializable(bundle, "state:quotedTextFormat", SimpleMessageFormat.class);
        quotedMessagePresenter.forcePlainText = bundle.getBoolean("state:forcePlainText");
        quotedMessagePresenter.showOrHideQuotedText((QuotedTextMode) Api33Impl.getSerializable(bundle, "state:quotedTextShown", QuotedTextMode.class));
        InsertableHtmlContent insertableHtmlContent = (InsertableHtmlContent) quotedMessagePresenter.quotedHtmlContent;
        if (insertableHtmlContent != null) {
            StringBuilder sb = insertableHtmlContent.quotedContent;
            LockableDatabase lockableDatabase = (LockableDatabase) quotedMessagePresenter.view;
            ((MessageWebView) lockableDatabase.inTransaction).displayHtmlContentWithInlineAttachments$1(((DisplayHtml) lockableDatabase.mDb).wrapMessageContent(sb.toString()), null, null);
        }
        AttachmentPresenter attachmentPresenter = this.attachmentPresenter;
        attachmentPresenter.getClass();
        String string3 = bundle.getString("waitingForAttachments");
        int i = 0;
        if (string3 == null) {
            Regex$$ExternalSyntheticBUOutline0.m("Name is null");
        } else if (string3.equals("NONE")) {
            i = 1;
        } else if (string3.equals("SEND")) {
            i = 2;
        } else if (string3.equals("SAVE")) {
            i = 3;
        } else {
            UriKt$$ExternalSyntheticBUOutline0.m("No enum constant com.fsck.k9.activity.compose.AttachmentPresenter.WaitingAction.".concat(string3));
        }
        attachmentPresenter.actionToPerformAfterWaiting = i;
        attachmentPresenter.nextLoaderId = bundle.getInt("nextLoaderId");
        Iterator it = bundle.getParcelableArrayList("com.fsck.k9.activity.MessageCompose.attachments").iterator();
        while (it.hasNext()) {
            Attachment attachment = (Attachment) it.next();
            attachmentPresenter.attachments.put(attachment.uri, attachment);
            attachmentPresenter.attachmentMvpView.addAttachmentView(attachment);
            Attachment.LoadingState loadingState = attachment.state;
            if (loadingState == Attachment.LoadingState.URI_ONLY) {
                attachmentPresenter.initAttachmentInfoLoader(attachment);
            } else if (loadingState == Attachment.LoadingState.METADATA) {
                attachmentPresenter.initAttachmentContentLoader(attachment);
            }
        }
        if (bundle.containsKey("com.fsck.k9.activity.MessageCompose.draftId")) {
            this.draftMessageId = Long.valueOf(bundle.getLong("com.fsck.k9.activity.MessageCompose.draftId"));
        } else {
            this.draftMessageId = null;
        }
        this.identity = (Identity) SQLite.getParcelable(bundle, "com.fsck.k9.activity.MessageCompose.identity", Identity.class);
        this.identityChanged = bundle.getBoolean("com.fsck.k9.activity.MessageCompose.identityChanged");
        this.repliedToMessageId = bundle.getString("com.fsck.k9.activity.MessageCompose.inReplyTo");
        this.referencedMessageIds = bundle.getString("com.fsck.k9.activity.MessageCompose.references");
        this.changesMadeSinceLastSave = bundle.getBoolean("com.fsck.k9.activity.MessageCompose.changesMadeSinceLastSave");
        this.alreadyNotifiedUserOfEmptySubject = bundle.getBoolean("alreadyNotifiedUserOfEmptySubject");
        ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList("com.fsck.k9.activity.MessageCompose.activeInAppNotifications");
        if (integerArrayList != null && !integerArrayList.isEmpty()) {
            this.activeInAppNotifications.addAll(integerArrayList);
        }
        this.chooseIdentityView.setText(this.identity.email);
        updateMessageFormat();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        this.messagingController.addListener(this.messagingListener);
        if (this.account == null) {
            fetchAccount(getIntent());
        }
        dismissActiveInAppNotifications();
        triggerIfNeededSentFolderNotFoundInAppNotification();
    }

    @Override // androidx.activity.ComponentActivity
    public final Object onRetainCustomNonConfigurationInstance() {
        MessageBuilder messageBuilder = this.currentMessageBuilder;
        if (messageBuilder != null) {
            synchronized (messageBuilder.callbackLock) {
                messageBuilder.asyncCallback = null;
            }
        }
        return this.currentMessageBuilder;
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        String str;
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("com.fsck.k9.activity.MessageCompose.stateKeySourceMessageProced", this.relatedMessageProcessed);
        Long l = this.draftMessageId;
        if (l != null) {
            bundle.putLong("com.fsck.k9.activity.MessageCompose.draftId", l.longValue());
        }
        bundle.putParcelable("com.fsck.k9.activity.MessageCompose.identity", this.identity);
        bundle.putBoolean("com.fsck.k9.activity.MessageCompose.identityChanged", this.identityChanged);
        bundle.putString("com.fsck.k9.activity.MessageCompose.inReplyTo", this.repliedToMessageId);
        bundle.putString("com.fsck.k9.activity.MessageCompose.references", this.referencedMessageIds);
        bundle.putBoolean("com.fsck.k9.activity.MessageCompose.messageReadReceipt", this.requestReadReceipt);
        bundle.putBoolean("com.fsck.k9.activity.MessageCompose.changesMadeSinceLastSave", this.changesMadeSinceLastSave);
        bundle.putBoolean("alreadyNotifiedUserOfEmptySubject", this.alreadyNotifiedUserOfEmptySubject);
        bundle.putIntegerArrayList("com.fsck.k9.activity.MessageCompose.activeInAppNotifications", new ArrayList<>(this.activeInAppNotifications));
        ImapSync imapSync = this.replyToPresenter;
        imapSync.getClass();
        bundle.putBoolean("com.fsck.k9.activity.compose.ReplyToPresenter.replyToShown", ((View) ((LocalStore.AnonymousClass7) imapSync.accountName).val$placeHolders).getVisibility() == 0);
        RecipientPresenter recipientPresenter = this.recipientPresenter;
        recipientPresenter.getClass();
        RecipientMvpView recipientMvpView = recipientPresenter.recipientMvpView;
        bundle.putBoolean("state:ccShown", recipientMvpView.ccWrapper.getVisibility() == 0);
        bundle.putBoolean("state:bccShown", recipientMvpView.bccWrapper.getVisibility() == 0);
        bundle.putString("state:lastFocusedType", recipientPresenter.lastFocusedType.toString());
        bundle.putString("state:currentCryptoMode", recipientPresenter.currentCryptoMode.toString());
        bundle.putBoolean("state:cryptoEnablePgpInline", recipientPresenter.isForceTextMessageFormat);
        QuotedMessagePresenter quotedMessagePresenter = this.quotedMessagePresenter;
        bundle.putSerializable("state:quotedTextShown", (QuotedTextMode) quotedMessagePresenter.quotedTextMode);
        bundle.putSerializable("state:htmlQuote", (InsertableHtmlContent) quotedMessagePresenter.quotedHtmlContent);
        bundle.putSerializable("state:quotedTextFormat", (SimpleMessageFormat) quotedMessagePresenter.quotedTextFormat);
        bundle.putBoolean("state:forcePlainText", quotedMessagePresenter.forcePlainText);
        AttachmentPresenter attachmentPresenter = this.attachmentPresenter;
        int i = attachmentPresenter.actionToPerformAfterWaiting;
        if (i == 1) {
            str = "NONE";
        } else if (i == 2) {
            str = "SEND";
        } else {
            if (i != 3) {
                throw null;
            }
            str = "SAVE";
        }
        bundle.putString("waitingForAttachments", str);
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        Iterator it = attachmentPresenter.attachments.values().iterator();
        while (it.hasNext()) {
            arrayList.add((com.fsck.k9.activity.misc.Attachment) it.next());
        }
        bundle.putParcelableArrayList("com.fsck.k9.activity.MessageCompose.attachments", arrayList);
        bundle.putInt("nextLoaderId", attachmentPresenter.nextLoaderId);
    }

    public final void openDefaultFolder() {
        long defaultFolder = this.defaultFolderProvider.getDefaultFolder(this.account);
        LocalMessageSearch localMessageSearch = new LocalMessageSearch();
        localMessageSearch.addAccountUuid(this.account.uuid);
        localMessageSearch.addAllowedFolder(defaultFolder);
        Lazy lazy = MessageHomeActivity.coreResourceProvider$delegate;
        MessageHomeActivity.Companion.actionDisplaySearch$default(this, localMessageSearch, true);
        finish();
    }

    public final void performSaveAfterChecks() {
        MessageBuilder createMessageBuilder = createMessageBuilder(true);
        this.currentMessageBuilder = createMessageBuilder;
        if (createMessageBuilder != null) {
            setProgressBarIndeterminateVisibility(true);
            this.currentMessageBuilder.buildAsync(this);
        }
    }

    public final void performSendAfterChecks() {
        boolean z;
        if (this.sendMessageHasBeenTriggered) {
            return;
        }
        if (this.account.isUploadSentMessages() && !this.ignoreSentFolderNotAssigned) {
            LegacyAccountDto legacyAccountDto = this.account;
            synchronized (legacyAccountDto) {
                z = legacyAccountDto.sentFolderId != null;
            }
            if (!z) {
                SentFolderNotFoundConfirmationDialogFragment.Factory factory = this.sentFolderNotFoundDialogFragmentFactory;
                String str = this.account.uuid;
                FragmentManagerImpl supportFragmentManager = getSupportFragmentManager();
                factory.getClass();
                str.getClass();
                supportFragmentManager.getClass();
                SentFolderNotFoundConfirmationDialogFragment sentFolderNotFoundConfirmationDialogFragment = new SentFolderNotFoundConfirmationDialogFragment();
                sentFolderNotFoundConfirmationDialogFragment.setArguments(Util.bundleOf(new Pair("SetupArchiveFolderDialogFragmentFactory_accountUuid", str)));
                sentFolderNotFoundConfirmationDialogFragment.show(supportFragmentManager, "SentFolderNotFoundConfirmationDialogFragment");
                return;
            }
        }
        if (!this.connectivityManager.isNetworkAvailable()) {
            Toast.makeText(this, R.string.no_network_message_will_be_sent_later_toast, 1).show();
        }
        MessageBuilder createMessageBuilder = createMessageBuilder(false);
        this.currentMessageBuilder = createMessageBuilder;
        if (createMessageBuilder != null) {
            this.sendMessageHasBeenTriggered = true;
            this.changesMadeSinceLastSave = false;
            setProgressBarIndeterminateVisibility(true);
            this.currentMessageBuilder.buildAsync(this);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0070, code lost:
    
        if (r2.recipientPresenter.recipientMvpView.getBccAddresses().isEmpty() == false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void prepareToFinish(boolean r3) {
        /*
            r2 = this;
            r2.navigateUp = r3
            boolean r3 = r2.changesMadeSinceLastSave
            if (r3 == 0) goto L84
            android.widget.EditText r3 = r2.messageContentView
            android.text.Editable r3 = r3.getText()
            int r3 = r3.length()
            if (r3 == 0) goto L13
            goto L72
        L13:
            com.fsck.k9.activity.compose.AttachmentPresenter r3 = r2.attachmentPresenter
            r3.getClass()
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.LinkedHashMap r3 = r3.attachments
            java.util.Collection r3 = r3.values()
            java.util.Iterator r3 = r3.iterator()
        L27:
            boolean r1 = r3.hasNext()
            if (r1 == 0) goto L37
            java.lang.Object r1 = r3.next()
            com.fsck.k9.activity.misc.Attachment r1 = (com.fsck.k9.activity.misc.Attachment) r1
            r0.add(r1)
            goto L27
        L37:
            boolean r3 = r0.isEmpty()
            if (r3 != 0) goto L3e
            goto L72
        L3e:
            android.widget.EditText r3 = r2.subjectView
            android.text.Editable r3 = r3.getText()
            int r3 = r3.length()
            if (r3 != 0) goto L72
            com.fsck.k9.activity.compose.RecipientPresenter r3 = r2.recipientPresenter
            java.util.List r3 = r3.getToAddresses()
            boolean r3 = r3.isEmpty()
            if (r3 == 0) goto L72
            com.fsck.k9.activity.compose.RecipientPresenter r3 = r2.recipientPresenter
            com.fsck.k9.activity.compose.RecipientMvpView r3 = r3.recipientMvpView
            java.util.List r3 = r3.getCcAddresses()
            boolean r3 = r3.isEmpty()
            if (r3 == 0) goto L72
            com.fsck.k9.activity.compose.RecipientPresenter r3 = r2.recipientPresenter
            com.fsck.k9.activity.compose.RecipientMvpView r3 = r3.recipientMvpView
            java.util.List r3 = r3.getBccAddresses()
            boolean r3 = r3.isEmpty()
            if (r3 != 0) goto L84
        L72:
            net.thunderbird.core.android.account.LegacyAccountDto r3 = r2.account
            boolean r3 = r3.hasDraftsFolder()
            if (r3 != 0) goto L7f
            r3 = 2
            r2.showDialog(r3)
            return
        L7f:
            r3 = 1
            r2.showDialog(r3)
            return
        L84:
            java.lang.Long r3 = r2.draftMessageId
            if (r3 != 0) goto L8c
            r2.onDiscard()
            return
        L8c:
            boolean r3 = r2.navigateUp
            if (r3 == 0) goto L9a
            com.fsck.k9.activity.MessageCompose$Action r3 = r2.action
            com.fsck.k9.activity.MessageCompose$Action r0 = com.fsck.k9.activity.MessageCompose.Action.EDIT_DRAFT
            if (r3 == r0) goto L9a
            r2.openDefaultFolder()
            return
        L9a:
            r2.finish()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.activity.MessageCompose.prepareToFinish(boolean):void");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(53:0|1|(1:3)(1:208)|4|(1:6)|7|(1:9)|10|(4:12|(5:198|(3:201|(1:203)(1:204)|199)|205|206|(2:16|(3:18|(1:20)(2:22|(1:24)(1:25))|21)))(0)|14|(0))(1:207)|26|(1:28)|29|(1:31)|32|(1:34)|35|(1:37)|38|(2:42|(2:44|(10:70|(3:72|73|74)|77|(1:79)|80|(1:82)|83|(1:85)|86|(1:88))(6:48|(3:50|(2:52|53)(1:55)|54)|56|57|(5:59|(2:64|65)|61|62|63)|69)))|89|(1:91)(3:194|(1:196)|197)|92|93|(1:95)(1:193)|96|97|(1:99)(1:192)|100|(2:102|(1:106))|107|(1:109)(1:191)|110|(21:186|187|113|(1:115)(1:185)|116|(1:118)(1:184)|119|(1:121)(1:183)|122|(1:124)(1:182)|125|(1:127)(1:181)|128|(1:130)(1:180)|131|132|133|(4:174|175|136|(2:138|139)(6:141|(3:143|(4:145|(1:147)(3:155|(1:157)|158)|148|(3:150|(1:152)(1:154)|153))|(1:169)(1:161))(2:170|(1:172)(1:173))|162|163|164|165))|135|136|(0)(0))|112|113|(0)(0)|116|(0)(0)|119|(0)(0)|122|(0)(0)|125|(0)(0)|128|(0)(0)|131|132|133|(0)|135|136|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x0494, code lost:
    
        r7 = com.fsck.k9.message.QuotedTextMode.NONE;
     */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0433  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0449  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x045f  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0471  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0483  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x04ae  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x04c6  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x04a0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x048e  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x047c  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x046a  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0458  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0442  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x042b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void processDraftMessage(com.fsck.k9.mailstore.MessageViewInfo r32) {
        /*
            Method dump skipped, instructions count: 1479
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.activity.MessageCompose.processDraftMessage(com.fsck.k9.mailstore.MessageViewInfo):void");
    }

    public final void processMessageToForward(MessageViewInfo messageViewInfo, boolean z) {
        MimeMessage mimeMessage = messageViewInfo.message;
        String str = messageViewInfo.subject;
        if (str == null || str.toLowerCase(Locale.US).startsWith("fwd:")) {
            this.subjectView.setText(str);
        } else {
            this.subjectView.setText("Fwd: ".concat(str));
        }
        if (TextUtils.isEmpty(mimeMessage.getMessageId())) {
            Log.d("could not get Message-ID.", new Object[0]);
        } else {
            String messageId = mimeMessage.getMessageId();
            this.repliedToMessageId = messageId;
            this.referencedMessageIds = messageId;
        }
        if (z) {
            AttachmentPresenter attachmentPresenter = this.attachmentPresenter;
            attachmentPresenter.getClass();
            if (messageViewInfo.isMessageIncomplete) {
                MessageCompose messageCompose = (MessageCompose) attachmentPresenter.attachmentMvpView.inverseAlphabet;
                Toast.makeText(messageCompose, messageCompose.getString(R.string.message_compose_attachments_forward_toast), 1).show();
            } else {
                attachmentPresenter.addAttachment(RawMessageProvider.CONTENT_URI.buildUpon().appendPath(((LocalMessage) messageViewInfo.message).makeMessageReference().toIdentityString()).build(), "message/rfc822", true, true);
            }
        } else {
            QuotedMessagePresenter quotedMessagePresenter = this.quotedMessagePresenter;
            quotedMessagePresenter.getClass();
            quotedMessagePresenter.quoteStyle = QuoteStyle.HEADER;
            quotedMessagePresenter.populateUIWithQuotedMessage(messageViewInfo, true, Action.FORWARD);
            AttachmentPresenter attachmentPresenter2 = this.attachmentPresenter;
            if (!attachmentPresenter2.loadAllAvailableAttachments(messageViewInfo)) {
                MessageCompose messageCompose2 = (MessageCompose) attachmentPresenter2.attachmentMvpView.inverseAlphabet;
                Toast.makeText(messageCompose2, messageCompose2.getString(R.string.message_compose_attachments_skipped_toast), 1).show();
            }
        }
        setIdentityFromMessage(mimeMessage);
    }

    public final void processMessageToReplyTo(MessageViewInfo messageViewInfo) {
        BinaryBitmap recipientsToReplyTo;
        MimeMessage mimeMessage = messageViewInfo.message;
        String str = messageViewInfo.subject;
        if (str != null) {
            String replaceFirst = PREFIX.matcher(str).replaceFirst("");
            boolean startsWith = replaceFirst.toLowerCase(Locale.US).startsWith("re:");
            EditText editText = this.subjectView;
            if (startsWith) {
                editText.setText(replaceFirst);
            } else {
                editText.setText("Re: ".concat(replaceFirst));
            }
        } else {
            this.subjectView.setText("");
        }
        Action action = this.action;
        Action action2 = Action.REPLY_ALL;
        boolean z = action == action2;
        RecipientPresenter recipientPresenter = this.recipientPresenter;
        ReplyToParser replyToParser = recipientPresenter.replyToParser;
        if (z) {
            recipientPresenter.forceShowCcBcc = true;
            LegacyAccountDto legacyAccountDto = recipientPresenter.account;
            if (legacyAccountDto == null) {
                Intrinsics.throwUninitializedPropertyAccessException("account");
                throw null;
            }
            recipientsToReplyTo = ReplyToParser.getRecipientsToReplyAllTo(mimeMessage, legacyAccountDto);
        } else {
            LegacyAccountDto legacyAccountDto2 = recipientPresenter.account;
            if (legacyAccountDto2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("account");
                throw null;
            }
            recipientsToReplyTo = ReplyToParser.getRecipientsToReplyTo(mimeMessage, legacyAccountDto2);
        }
        Address[] addressArr = (Address[]) recipientsToReplyTo.binarizer;
        recipientPresenter.addToAddresses((Address[]) Arrays.copyOf(addressArr, addressArr.length));
        Address[] addressArr2 = (Address[]) recipientsToReplyTo.matrix;
        recipientPresenter.addCcAddresses((Address[]) Arrays.copyOf(addressArr2, addressArr2.length));
        if (!Operation$State.findPgpInlineParts(mimeMessage).isEmpty()) {
            recipientPresenter.isForceTextMessageFormat = true;
        }
        recipientPresenter.isReplyToEncryptedMessage = mimeMessage != null ? !Operation$State.findMultipartEncryptedParts(mimeMessage).isEmpty() : false;
        if (mimeMessage.getMessageId() == null || mimeMessage.getMessageId().length() <= 0) {
            Log.d("could not get Message-ID.", new Object[0]);
        } else {
            this.repliedToMessageId = mimeMessage.getMessageId();
            if (mimeMessage.mReferences == null) {
                mimeMessage.mReferences = mimeMessage.mHeader.getHeader("References");
            }
            String[] strArr = mimeMessage.mReferences;
            if (strArr == null || strArr.length <= 0) {
                this.referencedMessageIds = this.repliedToMessageId;
            } else {
                this.referencedMessageIds = TextUtils.join("", strArr) + " " + this.repliedToMessageId;
            }
        }
        QuotedMessagePresenter quotedMessagePresenter = this.quotedMessagePresenter;
        quotedMessagePresenter.populateUIWithQuotedMessage(messageViewInfo, ((LegacyAccountDto) quotedMessagePresenter.account).isDefaultQuotedTextShown(), this.action);
        Action action3 = this.action;
        if (action3 == Action.REPLY || action3 == action2) {
            setIdentityFromMessage(mimeMessage);
        }
    }

    public final void setIdentityFromMessage(MimeMessage mimeMessage) {
        LegacyAccountDto legacyAccountDto = this.account;
        List list = IdentityHelper.RECIPIENT_TYPES;
        legacyAccountDto.getClass();
        mimeMessage.getClass();
        StringsKt__StringsKt$lineSequence$$inlined$Sequence$1 asSequence = CollectionsKt.asSequence(IdentityHelper.RECIPIENT_TYPES);
        AbstractMap$$ExternalSyntheticLambda0 abstractMap$$ExternalSyntheticLambda0 = new AbstractMap$$ExternalSyntheticLambda0(5, mimeMessage);
        SequencesKt___SequencesKt$flatMap$2 sequencesKt___SequencesKt$flatMap$2 = SequencesKt___SequencesKt$flatMap$2.INSTANCE;
        Identity identity = (Identity) SequencesKt.firstOrNull(SequencesKt.filterNotNull(new TakeWhileSequence(new TakeWhileSequence(asSequence, abstractMap$$ExternalSyntheticLambda0, 1), new IdentityHelper$$ExternalSyntheticLambda1(legacyAccountDto, 0), 2)));
        if (identity == null) {
            identity = legacyAccountDto.getIdentity(0);
        }
        if (identity != this.account.getIdentity(0)) {
            this.identity = identity;
            this.identityChanged = true;
            this.changesMadeSinceLastSave = true;
            this.chooseIdentityView.setText(identity.email);
            updateSignature();
            updateMessageFormat();
            this.replyToPresenter.setIdentity(identity);
            this.recipientPresenter.asyncUpdateCryptoStatus();
        }
    }

    public final void triggerIfNeededSentFolderNotFoundInAppNotification() {
        int i;
        boolean z;
        LegacyAccountDto legacyAccountDto = this.account;
        if (legacyAccountDto == null || !legacyAccountDto.isUploadSentMessages()) {
            return;
        }
        LegacyAccountDto legacyAccountDto2 = this.account;
        synchronized (legacyAccountDto2) {
            i = 1;
            z = legacyAccountDto2.sentFolderId != null;
        }
        if (z) {
            return;
        }
        int i2 = 2;
        Continuation continuation = null;
        SentFolderNotFoundNotification sentFolderNotFoundNotification = (SentFolderNotFoundNotification) JobKt.runBlockingK(EmptyCoroutineContext.INSTANCE, new Threads$runAsyncSupervised$1(i2, continuation, new AbstractMap$$ExternalSyntheticLambda0(i, this)));
        NotificationSenderCompat notificationSenderCompat = this.notificationSenderCompat;
        MessageCompose$$ExternalSyntheticLambda2 messageCompose$$ExternalSyntheticLambda2 = new MessageCompose$$ExternalSyntheticLambda2(this, i);
        notificationSenderCompat.getClass();
        sentFolderNotFoundNotification.getClass();
        FlowKt.launchIn(new FlowKt__MergeKt$flatMapConcat$$inlined$map$1(((NotificationSender) notificationSenderCompat.notificationSender).send(sentFolderNotFoundNotification), new InterruptibleKt$runInterruptible$2(messageCompose$$ExternalSyntheticLambda2, continuation, 26), i2), notificationSenderCompat.scope);
    }

    public final void updateMessageFormat() {
        MessageFormat messageFormat = this.account.getMessageFormat();
        MessageFormat messageFormat2 = MessageFormat.TEXT;
        SimpleMessageFormat simpleMessageFormat = SimpleMessageFormat.TEXT;
        if (messageFormat != messageFormat2) {
            QuotedMessagePresenter quotedMessagePresenter = this.quotedMessagePresenter;
            boolean z = quotedMessagePresenter.forcePlainText;
            QuotedTextMode quotedTextMode = QuotedTextMode.SHOW;
            if ((!z || ((QuotedTextMode) quotedMessagePresenter.quotedTextMode) != quotedTextMode) && !this.recipientPresenter.isForceTextMessageFormat) {
                MessageFormat messageFormat3 = MessageFormat.AUTO;
                SimpleMessageFormat simpleMessageFormat2 = SimpleMessageFormat.HTML;
                if (messageFormat != messageFormat3 || (this.action != Action.COMPOSE && ((SimpleMessageFormat) quotedMessagePresenter.quotedTextFormat) != simpleMessageFormat && ((QuotedTextMode) quotedMessagePresenter.quotedTextMode) == quotedTextMode)) {
                    simpleMessageFormat = simpleMessageFormat2;
                }
            }
        }
        this.currentMessageFormat = simpleMessageFormat;
    }

    public final void updateSignature() {
        Identity identity = this.identity;
        if (!identity.signatureUse) {
            this.signatureView.setVisibility(8);
            return;
        }
        String str = identity.signature;
        this.signatureView.setText(str != null ? StringsKt__StringsJVMKt.replace$default(str, "\r\n", "\n") : null);
        this.signatureView.setVisibility(0);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.activity.MessageCompose$12, reason: invalid class name */
    public final class AnonymousClass12 extends SimpleMessagingListener {
        public final /* synthetic */ int $r8$classId;
        public Object this$0;

        public /* synthetic */ AnonymousClass12(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        private final synchronized void synchronizeMailboxFailed$com$fsck$k9$controller$MemorizingMessagingListener(LegacyAccountDto legacyAccountDto, long j, String str) {
            MemorizingMessagingListener$Memory memory = getMemory(legacyAccountDto, j);
            memory.syncingState = 3;
            memory.failureMessage = str;
        }

        private final synchronized void synchronizeMailboxFinished$com$fsck$k9$controller$MemorizingMessagingListener(LegacyAccountDto legacyAccountDto, long j) {
            getMemory(legacyAccountDto, j).syncingState = 2;
        }

        private final synchronized void synchronizeMailboxProgress$com$fsck$k9$controller$MemorizingMessagingListener(LegacyAccountDto legacyAccountDto, long j, int i, int i2) {
            MemorizingMessagingListener$Memory memory = getMemory(legacyAccountDto, j);
            memory.folderCompleted = i;
            memory.folderTotal = i2;
        }

        private final synchronized void synchronizeMailboxStarted$com$fsck$k9$controller$MemorizingMessagingListener(LegacyAccountDto legacyAccountDto, long j) {
            MemorizingMessagingListener$Memory memory = getMemory(legacyAccountDto, j);
            memory.syncingState = 1;
            memory.folderCompleted = 0;
            memory.folderTotal = 0;
        }

        public MemorizingMessagingListener$Memory getMemory(LegacyAccountDto legacyAccountDto, long j) {
            HashMap hashMap = (HashMap) this.this$0;
            MemorizingMessagingListener$Memory memorizingMessagingListener$Memory = (MemorizingMessagingListener$Memory) hashMap.get(legacyAccountDto.uuid + ":" + j);
            if (memorizingMessagingListener$Memory != null) {
                return memorizingMessagingListener$Memory;
            }
            MemorizingMessagingListener$Memory memorizingMessagingListener$Memory2 = new MemorizingMessagingListener$Memory();
            memorizingMessagingListener$Memory2.syncingState = 0;
            memorizingMessagingListener$Memory2.failureMessage = null;
            memorizingMessagingListener$Memory2.folderCompleted = 0;
            memorizingMessagingListener$Memory2.folderTotal = 0;
            memorizingMessagingListener$Memory2.account = legacyAccountDto;
            memorizingMessagingListener$Memory2.folderId = j;
            hashMap.put(legacyAccountDto.uuid + ":" + j, memorizingMessagingListener$Memory2);
            return memorizingMessagingListener$Memory2;
        }

        @Override // app.k9mail.legacy.message.controller.SimpleMessagingListener
        public void loadMessageRemoteFailed(Exception exc) {
            switch (this.$r8$classId) {
                case 1:
                    ((MessageLoaderHelper) this.this$0).handler.post(new ActivityRecreator.AnonymousClass1(14, this, exc, false));
                    break;
            }
        }

        @Override // app.k9mail.legacy.message.controller.SimpleMessagingListener
        public void loadMessageRemoteFinished(LegacyAccountDto legacyAccountDto, long j, String str) {
            switch (this.$r8$classId) {
                case 1:
                    ((MessageLoaderHelper) this.this$0).handler.post(new MessageLoaderHelper$4$$ExternalSyntheticLambda0(this, legacyAccountDto, j, str, 0));
                    break;
            }
        }

        @Override // app.k9mail.legacy.message.controller.SimpleMessagingListener
        public void messageUidChanged(LegacyAccountDto legacyAccountDto, long j, String str, String str2) {
            switch (this.$r8$classId) {
                case 0:
                    MessageCompose messageCompose = (MessageCompose) this.this$0;
                    MessageReference messageReference = messageCompose.relatedMessageReference;
                    if (messageReference != null) {
                        String str3 = messageReference.accountUuid;
                        long j2 = messageReference.folderId;
                        String str4 = messageReference.uid;
                        if (legacyAccountDto.uuid.equals(str3) && j == j2 && str.equals(str4)) {
                            MessageReference messageReference2 = messageCompose.relatedMessageReference;
                            messageReference2.getClass();
                            str2.getClass();
                            String str5 = messageReference2.accountUuid;
                            long j3 = messageReference2.folderId;
                            str5.getClass();
                            messageCompose.relatedMessageReference = new MessageReference(j3, str5, str2);
                            break;
                        }
                    }
                    break;
            }
        }

        @Override // app.k9mail.legacy.message.controller.SimpleMessagingListener
        public synchronized void synchronizeMailboxFailed(LegacyAccountDto legacyAccountDto, long j, String str) {
            switch (this.$r8$classId) {
                case 2:
                    synchronizeMailboxFailed$com$fsck$k9$controller$MemorizingMessagingListener(legacyAccountDto, j, str);
                    break;
            }
        }

        @Override // app.k9mail.legacy.message.controller.SimpleMessagingListener
        public synchronized void synchronizeMailboxFinished(LegacyAccountDto legacyAccountDto, long j) {
            switch (this.$r8$classId) {
                case 2:
                    synchronizeMailboxFinished$com$fsck$k9$controller$MemorizingMessagingListener(legacyAccountDto, j);
                    break;
            }
        }

        @Override // app.k9mail.legacy.message.controller.SimpleMessagingListener
        public synchronized void synchronizeMailboxProgress(LegacyAccountDto legacyAccountDto, long j, int i, int i2) {
            switch (this.$r8$classId) {
                case 2:
                    synchronizeMailboxProgress$com$fsck$k9$controller$MemorizingMessagingListener(legacyAccountDto, j, i, i2);
                    break;
            }
        }

        @Override // app.k9mail.legacy.message.controller.SimpleMessagingListener
        public synchronized void synchronizeMailboxStarted(LegacyAccountDto legacyAccountDto, long j) {
            switch (this.$r8$classId) {
                case 2:
                    synchronizeMailboxStarted$com$fsck$k9$controller$MemorizingMessagingListener(legacyAccountDto, j);
                    break;
            }
        }

        public /* synthetic */ AnonymousClass12() {
            this.$r8$classId = 2;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.activity.MessageCompose$14, reason: invalid class name */
    public final class AnonymousClass14 extends Handler {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public AnonymousClass14(MessageCompose messageCompose) {
            this.$r8$classId = 0;
            this.this$0 = messageCompose;
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int size;
            WeakCache[] weakCacheArr;
            switch (this.$r8$classId) {
                case 0:
                    MessageCompose messageCompose = (MessageCompose) this.this$0;
                    int i = message.what;
                    if (i == 1) {
                        messageCompose.setProgressBarIndeterminateVisibility(true);
                        return;
                    }
                    if (i == 2) {
                        messageCompose.setProgressBarIndeterminateVisibility(false);
                        return;
                    }
                    if (i == 4) {
                        messageCompose.draftMessageId = (Long) message.obj;
                        Toast.makeText(messageCompose, messageCompose.getString(R.string.message_saved_toast), 1).show();
                        return;
                    } else if (i != 5) {
                        super.handleMessage(message);
                        return;
                    } else {
                        Toast.makeText(messageCompose, messageCompose.getString(R.string.message_discarded_toast), 1).show();
                        return;
                    }
                case 1:
                    if (message.what != 1) {
                        super.handleMessage(message);
                        return;
                    }
                    LocalBroadcastManager localBroadcastManager = (LocalBroadcastManager) this.this$0;
                    while (true) {
                        synchronized (localBroadcastManager.mReceivers) {
                            try {
                                size = localBroadcastManager.mPendingBroadcasts.size();
                                if (size <= 0) {
                                    return;
                                }
                                weakCacheArr = new WeakCache[size];
                                localBroadcastManager.mPendingBroadcasts.toArray(weakCacheArr);
                                localBroadcastManager.mPendingBroadcasts.clear();
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        for (int i2 = 0; i2 < size; i2++) {
                            WeakCache weakCache = weakCacheArr[i2];
                            int size2 = ((ArrayList) weakCache.referenceQueue).size();
                            for (int i3 = 0; i3 < size2; i3++) {
                                LocalBroadcastManager.ReceiverRecord receiverRecord = (LocalBroadcastManager.ReceiverRecord) ((ArrayList) weakCache.referenceQueue).get(i3);
                                if (!receiverRecord.dead) {
                                    receiverRecord.receiver.onReceive(localBroadcastManager.mAppContext, (Intent) weakCache.values);
                                }
                            }
                        }
                    }
                default:
                    if (message.what != 1) {
                        return;
                    }
                    PreferenceFragmentCompat preferenceFragmentCompat = (PreferenceFragmentCompat) this.this$0;
                    PreferenceScreen preferenceScreen = preferenceFragmentCompat.mPreferenceManager.mPreferenceScreen;
                    if (preferenceScreen != null) {
                        preferenceFragmentCompat.mList.setAdapter(new PreferenceGroupAdapter(preferenceScreen));
                        preferenceScreen.onAttached();
                        return;
                    }
                    return;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass14(Object obj, Looper looper, int i) {
            super(looper);
            this.$r8$classId = i;
            this.this$0 = obj;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.activity.MessageCompose$3, reason: invalid class name */
    public final class AnonymousClass3 extends OnBackPressedCallback {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass3(int i, Object obj) {
            super(true);
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // androidx.activity.OnBackPressedCallback
        public void handleOnBackCancelled() {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 2:
                    ((JsonUtil$Field) obj).onBackCancelled();
                    break;
                case 3:
                    FragmentManager fragmentManager = (FragmentManager) obj;
                    if (FragmentManager.isLoggingEnabled(3)) {
                        android.util.Log.d("FragmentManager", "handleOnBackCancelled. PREDICTIVE_BACK = true fragment manager " + fragmentManager);
                    }
                    if (FragmentManager.isLoggingEnabled(3)) {
                        android.util.Log.d("FragmentManager", "cancelBackStackTransition for transition " + fragmentManager.mTransitioningOp);
                    }
                    BackStackRecord backStackRecord = fragmentManager.mTransitioningOp;
                    if (backStackRecord != null) {
                        backStackRecord.mCommitted = false;
                        backStackRecord.collapseOps();
                        BackStackRecord backStackRecord2 = fragmentManager.mTransitioningOp;
                        Fragment$$ExternalSyntheticLambda0 fragment$$ExternalSyntheticLambda0 = new Fragment$$ExternalSyntheticLambda0(1, fragmentManager);
                        if (backStackRecord2.mCommitRunnables == null) {
                            backStackRecord2.mCommitRunnables = new ArrayList();
                        }
                        backStackRecord2.mCommitRunnables.add(fragment$$ExternalSyntheticLambda0);
                        fragmentManager.mTransitioningOp.commit();
                        fragmentManager.mHandlingTransitioningOp = true;
                        fragmentManager.execPendingActions(true);
                        fragmentManager.forcePostponedTransactions();
                        fragmentManager.mHandlingTransitioningOp = false;
                        fragmentManager.mTransitioningOp = null;
                        break;
                    }
                    break;
            }
        }

        @Override // androidx.activity.OnBackPressedCallback
        public final void handleOnBackPressed() {
            Long l;
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    setEnabled(false);
                    MessageCompose messageCompose = (MessageCompose) obj;
                    Pattern pattern = MessageCompose.PREFIX;
                    messageCompose.prepareToFinish(false);
                    if (!messageCompose.isFinishing()) {
                        setEnabled(true);
                        break;
                    }
                    break;
                case 1:
                    ((DialogWrapper.AnonymousClass2) obj).invoke(this);
                    break;
                case 2:
                    ((JsonUtil$Field) obj).onBackCompleted();
                    break;
                case 3:
                    FragmentManager fragmentManager = (FragmentManager) obj;
                    if (FragmentManager.isLoggingEnabled(3)) {
                        android.util.Log.d("FragmentManager", "handleOnBackPressed. PREDICTIVE_BACK = true fragment manager " + fragmentManager);
                    }
                    AnonymousClass3 anonymousClass3 = fragmentManager.mOnBackPressedCallback;
                    ArrayList arrayList = fragmentManager.mBackStackChangeListeners;
                    fragmentManager.mHandlingTransitioningOp = true;
                    fragmentManager.execPendingActions(true);
                    fragmentManager.mHandlingTransitioningOp = false;
                    if (fragmentManager.mTransitioningOp == null) {
                        if (!anonymousClass3.isEnabled) {
                            if (FragmentManager.isLoggingEnabled(3)) {
                                android.util.Log.d("FragmentManager", "Calling onBackPressed via onBackPressed callback");
                            }
                            fragmentManager.mOnBackPressedDispatcher.onBackPressed();
                            break;
                        } else {
                            if (FragmentManager.isLoggingEnabled(3)) {
                                android.util.Log.d("FragmentManager", "Calling popBackStackImmediate via onBackPressed callback");
                            }
                            fragmentManager.popBackStackImmediate();
                            break;
                        }
                    } else {
                        if (!arrayList.isEmpty()) {
                            LinkedHashSet linkedHashSet = new LinkedHashSet(FragmentManager.fragmentsFromRecord(fragmentManager.mTransitioningOp));
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                FragmentManager.OnBackStackChangedListener onBackStackChangedListener = (FragmentManager.OnBackStackChangedListener) it.next();
                                Iterator it2 = linkedHashSet.iterator();
                                while (it2.hasNext()) {
                                    onBackStackChangedListener.onBackStackChangeCommitted((Fragment) it2.next(), true);
                                }
                            }
                        }
                        Iterator it3 = fragmentManager.mTransitioningOp.mOps.iterator();
                        while (it3.hasNext()) {
                            Fragment fragment = ((FragmentTransaction$Op) it3.next()).mFragment;
                            if (fragment != null) {
                                fragment.mTransitioning = false;
                            }
                        }
                        Iterator it4 = fragmentManager.collectChangedControllers(new ArrayList(Collections.singletonList(fragmentManager.mTransitioningOp)), 0, 1).iterator();
                        while (it4.hasNext()) {
                            DefaultSpecialEffectsController defaultSpecialEffectsController = (DefaultSpecialEffectsController) it4.next();
                            ArrayList arrayList2 = defaultSpecialEffectsController.runningOperations;
                            if (FragmentManager.isLoggingEnabled(3)) {
                                android.util.Log.d("FragmentManager", "SpecialEffectsController: Completing Back ");
                            }
                            defaultSpecialEffectsController.processStart(arrayList2);
                            defaultSpecialEffectsController.commitEffects$fragment_release(arrayList2);
                        }
                        Iterator it5 = fragmentManager.mTransitioningOp.mOps.iterator();
                        while (it5.hasNext()) {
                            Fragment fragment2 = ((FragmentTransaction$Op) it5.next()).mFragment;
                            if (fragment2 != null && fragment2.mContainer == null) {
                                fragmentManager.createOrGetFragmentStateManager(fragment2).moveToExpectedState();
                            }
                        }
                        fragmentManager.mTransitioningOp = null;
                        fragmentManager.updateOnBackPressedCallbackEnabled();
                        if (FragmentManager.isLoggingEnabled(3)) {
                            android.util.Log.d("FragmentManager", "Op is being set to null");
                            android.util.Log.d("FragmentManager", "OnBackPressedCallback enabled=" + anonymousClass3.isEnabled + " for  FragmentManager " + fragmentManager);
                            break;
                        }
                    }
                    break;
                case 4:
                    ((NavHostController) obj).popBackStack();
                    break;
                default:
                    MessageHomeActivity messageHomeActivity = (MessageHomeActivity) obj;
                    Lazy lazy = MessageHomeActivity.coreResourceProvider$delegate;
                    if (messageHomeActivity.isDrawerEnabled()) {
                        DropDownDrawer dropDownDrawer = messageHomeActivity.navigationDrawer;
                        dropDownDrawer.getClass();
                        View findDrawerWithGravity = dropDownDrawer.drawer.findDrawerWithGravity(8388611);
                        if (findDrawerWithGravity != null ? DrawerLayout.isDrawerOpen(findDrawerWithGravity) : false) {
                            DropDownDrawer dropDownDrawer2 = messageHomeActivity.navigationDrawer;
                            dropDownDrawer2.getClass();
                            dropDownDrawer2.close();
                            break;
                        }
                    }
                    if (messageHomeActivity.displayMode != MessageHomeActivity.DisplayMode.MESSAGE_VIEW) {
                        MessageListFragmentBridgeContract messageListFragmentBridgeContract = messageHomeActivity.messageListFragment;
                        if (!(messageListFragmentBridgeContract != null ? messageListFragmentBridgeContract.isSearchViewCollapsed$1() : true)) {
                            MessageListFragmentBridgeContract messageListFragmentBridgeContract2 = messageHomeActivity.messageListFragment;
                            if (messageListFragmentBridgeContract2 != null) {
                                messageListFragmentBridgeContract2.collapseSearchView$1();
                                break;
                            }
                        } else if (!messageHomeActivity.isDrawerEnabled() || messageHomeActivity.account == null || messageHomeActivity.getSupportFragmentManager().getBackStackEntryCount() != 0) {
                            setEnabled(false);
                            messageHomeActivity.getOnBackPressedDispatcher().onBackPressed();
                            setEnabled(true);
                            break;
                        } else if (!((DefaultGeneralSettingsManager) messageHomeActivity.getGeneralSettingsManager$1()).getConfig().display.inboxSettings.isShowUnifiedInbox) {
                            DefaultFolderProvider defaultFolderProvider = (DefaultFolderProvider) messageHomeActivity.defaultFolderProvider$delegate$1.getValue();
                            LegacyAccountDto legacyAccountDto = messageHomeActivity.account;
                            legacyAccountDto.getClass();
                            long defaultFolder = defaultFolderProvider.getDefaultFolder(legacyAccountDto);
                            if (messageHomeActivity.singleFolderMode) {
                                LocalMessageSearch localMessageSearch = messageHomeActivity.search;
                                localMessageSearch.getClass();
                                l = (Long) localMessageSearch.getFolderIds().get(0);
                            } else {
                                l = null;
                            }
                            if (l != null && defaultFolder == l.longValue()) {
                                setEnabled(false);
                                messageHomeActivity.getOnBackPressedDispatcher().onBackPressed();
                                setEnabled(true);
                                break;
                            } else {
                                LegacyAccountDto legacyAccountDto2 = messageHomeActivity.account;
                                legacyAccountDto2.getClass();
                                String str = legacyAccountDto2.uuid;
                                if (messageHomeActivity.displayMode == MessageHomeActivity.DisplayMode.SPLIT_VIEW) {
                                    messageHomeActivity.removeMessageViewContainerFragment();
                                    messageHomeActivity.showMessageViewPlaceHolder();
                                }
                                LocalMessageSearch localMessageSearch2 = new LocalMessageSearch();
                                localMessageSearch2.addAccountUuid(str);
                                localMessageSearch2.addAllowedFolder(defaultFolder);
                                messageHomeActivity.performSearch(localMessageSearch2);
                                BackStackRecord backStackRecord = messageHomeActivity.openFolderTransaction;
                                backStackRecord.getClass();
                                backStackRecord.commit();
                                messageHomeActivity.openFolderTransaction = null;
                                MessageListFragmentBridgeContract messageListFragmentBridgeContract3 = messageHomeActivity.messageListFragment;
                                messageListFragmentBridgeContract3.getClass();
                                messageListFragmentBridgeContract3.setActive(true);
                                messageListFragmentBridgeContract3.onFullyActive();
                                messageHomeActivity.onMessageListDisplayed();
                                break;
                            }
                        } else {
                            LocalMessageSearch localMessageSearch3 = messageHomeActivity.search;
                            localMessageSearch3.getClass();
                            if (!Intrinsics.areEqual(localMessageSearch3.id, "unified_folders")) {
                                messageHomeActivity.openUnifiedFolders();
                                break;
                            } else {
                                setEnabled(false);
                                messageHomeActivity.getOnBackPressedDispatcher().onBackPressed();
                                setEnabled(true);
                                break;
                            }
                        }
                    } else if (!messageHomeActivity.messageViewOnly) {
                        messageHomeActivity.showMessageList();
                        break;
                    } else {
                        messageHomeActivity.finish();
                        break;
                    }
                    break;
            }
        }

        @Override // androidx.activity.OnBackPressedCallback
        public void handleOnBackProgressed(BackEventCompat backEventCompat) {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 2:
                    ((JsonUtil$Field) obj).onBackProgressed(backEventCompat);
                    break;
                case 3:
                    FragmentManager fragmentManager = (FragmentManager) obj;
                    if (FragmentManager.isLoggingEnabled(2)) {
                        android.util.Log.v("FragmentManager", "handleOnBackProgressed. PREDICTIVE_BACK = true fragment manager " + fragmentManager);
                    }
                    if (fragmentManager.mTransitioningOp != null) {
                        Iterator it = fragmentManager.collectChangedControllers(new ArrayList(Collections.singletonList(fragmentManager.mTransitioningOp)), 0, 1).iterator();
                        while (it.hasNext()) {
                            DefaultSpecialEffectsController defaultSpecialEffectsController = (DefaultSpecialEffectsController) it.next();
                            defaultSpecialEffectsController.getClass();
                            if (FragmentManager.isLoggingEnabled(2)) {
                                android.util.Log.v("FragmentManager", "SpecialEffectsController: Processing Progress " + backEventCompat.progress);
                            }
                            ArrayList arrayList = defaultSpecialEffectsController.runningOperations;
                            ArrayList arrayList2 = new ArrayList();
                            Iterator it2 = arrayList.iterator();
                            while (it2.hasNext()) {
                                CollectionsKt.addAll(((SpecialEffectsController$FragmentStateManagerOperation) it2.next()).effects, arrayList2);
                            }
                            List list = CollectionsKt.toList(CollectionsKt.toSet(arrayList2));
                            int size = list.size();
                            for (int i2 = 0; i2 < size; i2++) {
                                ((SpecialEffectsController$Effect) list.get(i2)).onProgress(backEventCompat, defaultSpecialEffectsController.container);
                            }
                        }
                        Iterator it3 = fragmentManager.mBackStackChangeListeners.iterator();
                        while (it3.hasNext()) {
                            ((FragmentManager.OnBackStackChangedListener) it3.next()).getClass();
                        }
                        break;
                    }
                    break;
            }
        }

        @Override // androidx.activity.OnBackPressedCallback
        public void handleOnBackStarted(BackEventCompat backEventCompat) {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 2:
                    ((JsonUtil$Field) obj).onBackStarted();
                    break;
                case 3:
                    FragmentManager fragmentManager = (FragmentManager) obj;
                    if (FragmentManager.isLoggingEnabled(3)) {
                        android.util.Log.d("FragmentManager", "handleOnBackStarted. PREDICTIVE_BACK = true fragment manager " + fragmentManager);
                    }
                    fragmentManager.endAnimatingAwayFragments();
                    fragmentManager.enqueueAction(fragmentManager.new PrepareBackStackTransitionState(), false);
                    break;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass3(int i, Object obj, boolean z) {
            super(false);
            this.$r8$classId = i;
            this.this$0 = obj;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.activity.MessageCompose$10, reason: invalid class name */
    public final class AnonymousClass10 implements DialogInterface.OnClickListener {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass10(int i) {
            this.$r8$classId = i;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            switch (this.$r8$classId) {
                case 0:
                    break;
                case 1:
                    dialogInterface.dismiss();
                    break;
                case 2:
                    dialogInterface.dismiss();
                    break;
                case 3:
                    dialogInterface.dismiss();
                    break;
                case 4:
                    dialogInterface.dismiss();
                    break;
                case 5:
                    dialogInterface.dismiss();
                    break;
                default:
                    dialogInterface.dismiss();
                    break;
            }
        }

        private final void onClick$com$fsck$k9$activity$MessageCompose$10(DialogInterface dialogInterface, int i) {
        }
    }
}
