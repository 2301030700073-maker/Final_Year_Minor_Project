package com.fsck.k9.ui.messageview;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Toast;
import androidx.activity.result.ActivityResultCallback;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.AndroidFontResourceLoader;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.app.ActivityRecreator;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentKt$$ExternalSyntheticLambda0;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.ViewModelKt;
import androidx.loader.app.LoaderManager;
import androidx.loader.app.LoaderManagerImpl;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.work.OperationKt;
import androidx.work.impl.Processor$$ExternalSyntheticLambda1;
import app.k9mail.core.android.common.activity.CreateDocumentResultContract$Input;
import app.k9mail.feature.settings.p000import.ui.AuthorizationContract;
import app.k9mail.legacy.message.controller.MessageReference;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.network.internal.UtilsKt;
import com.beetstra.jutf7.Base64Util;
import com.fsck.k9.Preferences;
import com.fsck.k9.Preferences$getAccountFlow$1;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.activity.MessageHomeActivity;
import com.fsck.k9.activity.MessageLoaderHelper;
import com.fsck.k9.activity.MessageLoaderHelperFactory;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.controller.MessagingController$$ExternalSyntheticLambda9;
import com.fsck.k9.fragment.AttachmentDownloadDialogFragment;
import com.fsck.k9.fragment.ConfirmationDialogFragment;
import com.fsck.k9.helper.UnsubscribeUri;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.K9MailLib;
import com.fsck.k9.mail.Message$RecipientType;
import com.fsck.k9.mail.Part;
import com.fsck.k9.mail.internet.JisSupport;
import com.fsck.k9.mailstore.AttachmentViewInfo;
import com.fsck.k9.mailstore.CryptoResultAnnotation;
import com.fsck.k9.mailstore.LocalMessage;
import com.fsck.k9.mailstore.LocalPart;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.mailstore.MessageViewInfo;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager;
import com.fsck.k9.message.extractors.TextPartFinder;
import com.fsck.k9.message.quote.QuoteDateFormatter;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.ui.choosefolder.ChooseFolderActivity;
import com.fsck.k9.ui.choosefolder.ChooseFolderResultContract;
import com.fsck.k9.ui.crypto.MessageCryptoHelper;
import com.fsck.k9.ui.helper.SizeFormatter;
import com.fsck.k9.ui.settings.AboutFragmentKt$$ExternalSyntheticLambda7;
import com.fsck.k9.ui.share.ShareIntentBuilder;
import com.fsck.k9.view.MessageCryptoDisplayStatus;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textview.MaterialTextView;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.collections.immutable.implementations.immutableList.SmallPersistentVector;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.ui.theme.manager.ThemeManager;
import net.thunderbird.feature.mail.message.reader.api.ui.MessageReaderViewContract$ViewModel;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http2.Http2Connection;
import org.openintents.openpgp.OpenPgpDecryptionResult;
import org.openintents.openpgp.OpenPgpError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageViewFragment extends Fragment implements ConfirmationDialogFragment.ConfirmationDialogFragmentListener, AttachmentViewCallback {
    public LegacyAccountDto account;
    public final Lazy accountManager$delegate;
    public final Lazy appNameProvider$delegate;
    public final StateFlowImpl attachmentListBottomSheetState;
    public final Fragment.AnonymousClass10 chooseFolderForCopyLauncher;
    public final Fragment.AnonymousClass10 chooseFolderForMoveLauncher;
    public final Fragment.AnonymousClass10 createDocumentLauncher;
    public AttachmentViewInfo currentAttachmentViewInfo;
    public Long destinationFolderId;
    public final Lazy featureFlagProvider$delegate;
    public final Lazy fileNameSuggester$delegate;
    public MessageHomeActivity fragmentListener;
    public final Lazy generalSettingsManager$delegate;
    public boolean isActive;
    public boolean isDeleteMenuItemDisabled;
    public MessageViewInfo mMessageViewInfo;
    public LocalMessage message;
    public final MessageViewFragment$messageCryptoMvpView$1 messageCryptoMvpView;
    public MessageCryptoPresenter messageCryptoPresenter;
    public final Lazy messageExporter$delegate;
    public final MessageViewFragment$messageCryptoMvpView$1 messageHeaderClickListener;
    public final MessageViewFragment$messageCryptoMvpView$1 messageLoaderCallbacks;
    public MessageLoaderHelper messageLoaderHelper;
    public final Lazy messageLoaderHelperFactory$delegate;
    public final Lazy messageReaderViewModel$delegate;
    public MessageReference messageReference;
    public MessageTopView messageTopView;
    public final Lazy messagingController$delegate;
    public final Lazy outboxFolderManager$delegate;
    public boolean pendingEmlExport;
    public UnsubscribeUri preferredUnsubscribeUri;
    public final Lazy shareIntentBuilder$delegate;
    public boolean showAccountIndicator;
    public Long showProgressThreshold;
    public final Lazy themeManager$delegate;
    public final Lazy themeProvider$delegate;
    public boolean wasMessageMarkedAsOpened;

    public MessageViewFragment() {
        final int i = 0;
        MessageViewFragment$special$$inlined$inject$default$1 messageViewFragment$special$$inlined$inject$default$1 = new MessageViewFragment$special$$inlined$inject$default$1(this, i);
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.themeManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, messageViewFragment$special$$inlined$inject$default$1);
        this.themeProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode, new MessageViewFragment$special$$inlined$inject$default$1(this, 4));
        this.messageLoaderHelperFactory$delegate = ResultKt.lazy(lazyThreadSafetyMode, new MessageViewFragment$special$$inlined$inject$default$1(this, 5));
        this.accountManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, new MessageViewFragment$special$$inlined$inject$default$1(this, 6));
        this.messagingController$delegate = ResultKt.lazy(lazyThreadSafetyMode, new MessageViewFragment$special$$inlined$inject$default$1(this, 7));
        int i2 = 8;
        this.shareIntentBuilder$delegate = ResultKt.lazy(lazyThreadSafetyMode, new MessageViewFragment$special$$inlined$inject$default$1(this, i2));
        this.generalSettingsManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, new MessageViewFragment$special$$inlined$inject$default$1(this, 9));
        this.outboxFolderManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, new MessageViewFragment$special$$inlined$inject$default$1(this, 10));
        this.featureFlagProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode, new MessageViewFragment$special$$inlined$inject$default$1(this, 11));
        final int i3 = 1;
        this.appNameProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode, new MessageViewFragment$special$$inlined$inject$default$1(this, i3));
        this.messageReaderViewModel$delegate = ResultKt.lazy(LazyThreadSafetyMode.NONE, new Http2Connection.ReaderRunnable(21, this, new MessageViewFragment$special$$inlined$inject$default$1(this, 12)));
        this.createDocumentLauncher = registerForActivityResult(new ActivityResultCallback(this) { // from class: com.fsck.k9.ui.messageview.MessageViewFragment$$ExternalSyntheticLambda1
            public final /* synthetic */ MessageViewFragment f$0;

            {
                this.f$0 = this;
            }

            private final void onActivityResult$com$fsck$k9$ui$messageview$MessageViewFragment$$ExternalSyntheticLambda2(Object obj) {
                MessageViewFragment messageViewFragment = this.f$0;
                ChooseFolderResultContract.Result result = (ChooseFolderResultContract.Result) obj;
                if (result == null) {
                    return;
                }
                long j = result.folderId;
                MessageReference parse = MathKt.parse(result.messageReference);
                if (messageViewFragment.getMessageReference().equals(parse)) {
                    LegacyAccountDto legacyAccountDto = messageViewFragment.account;
                    if (legacyAccountDto == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("account");
                        throw null;
                    }
                    synchronized (legacyAccountDto) {
                        legacyAccountDto.lastSelectedFolderId = Long.valueOf(j);
                    }
                    MessagingController messagingController$3 = messageViewFragment.getMessagingController$3();
                    LegacyAccountDto legacyAccountDto2 = messageViewFragment.account;
                    if (legacyAccountDto2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("account");
                        throw null;
                    }
                    long j2 = messageViewFragment.getMessageReference().folderId;
                    messagingController$3.getClass();
                    messagingController$3.copyMessages(legacyAccountDto2, j2, Collections.singletonList(parse), j);
                }
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                switch (i) {
                    case 0:
                        MessageViewFragment messageViewFragment = this.f$0;
                        Uri uri = (Uri) obj;
                        if (uri == null) {
                            return;
                        }
                        if (!Intrinsics.areEqual(uri.getScheme(), "content")) {
                            UriKt$$ExternalSyntheticBUOutline0.m("content: URI required");
                            return;
                        }
                        if (messageViewFragment.pendingEmlExport) {
                            messageViewFragment.pendingEmlExport = false;
                            JobKt.launch$default(ViewModelKt.getLifecycleScope(messageViewFragment.getViewLifecycleOwner()), null, null, new Preferences$getAccountFlow$1(messageViewFragment, uri, null, 25), 3);
                            return;
                        }
                        AttachmentViewInfo attachmentViewInfo = messageViewFragment.currentAttachmentViewInfo;
                        LocalStore.AnonymousClass7 anonymousClass7 = new LocalStore.AnonymousClass7(messageViewFragment.requireContext(), messageViewFragment.getMessagingController$3(), messageViewFragment, attachmentViewInfo);
                        if (attachmentViewInfo.isContentAvailable) {
                            new AttachmentController$SaveAttachmentAsyncTask(anonymousClass7, 0).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, uri);
                            return;
                        } else {
                            anonymousClass7.downloadAttachment((LocalPart) attachmentViewInfo.part, new ActivityRecreator.AnonymousClass1(16, anonymousClass7, uri, false));
                            return;
                        }
                    case 1:
                        onActivityResult$com$fsck$k9$ui$messageview$MessageViewFragment$$ExternalSyntheticLambda2(obj);
                        return;
                    default:
                        MessageViewFragment messageViewFragment2 = this.f$0;
                        ChooseFolderResultContract.Result result = (ChooseFolderResultContract.Result) obj;
                        if (result == null) {
                            return;
                        }
                        long j = result.folderId;
                        MessageReference parse = MathKt.parse(result.messageReference);
                        if (messageViewFragment2.getMessageReference().equals(parse)) {
                            LegacyAccountDto legacyAccountDto = messageViewFragment2.account;
                            if (legacyAccountDto == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("account");
                                throw null;
                            }
                            synchronized (legacyAccountDto) {
                                legacyAccountDto.lastSelectedFolderId = Long.valueOf(j);
                            }
                            MessageHomeActivity messageHomeActivity = messageViewFragment2.fragmentListener;
                            if (messageHomeActivity == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("fragmentListener");
                                throw null;
                            }
                            messageHomeActivity.performNavigationAfterMessageRemoval();
                            MessagingController messagingController$3 = messageViewFragment2.getMessagingController$3();
                            LegacyAccountDto legacyAccountDto2 = messageViewFragment2.account;
                            if (legacyAccountDto2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("account");
                                throw null;
                            }
                            long j2 = messageViewFragment2.getMessageReference().folderId;
                            messagingController$3.getClass();
                            messagingController$3.moveMessages(legacyAccountDto2, j2, Collections.singletonList(parse), j);
                            return;
                        }
                        return;
                }
            }
        }, new AuthorizationContract(i2));
        this.chooseFolderForCopyLauncher = registerForActivityResult(new ActivityResultCallback(this) { // from class: com.fsck.k9.ui.messageview.MessageViewFragment$$ExternalSyntheticLambda1
            public final /* synthetic */ MessageViewFragment f$0;

            {
                this.f$0 = this;
            }

            private final void onActivityResult$com$fsck$k9$ui$messageview$MessageViewFragment$$ExternalSyntheticLambda2(Object obj) {
                MessageViewFragment messageViewFragment = this.f$0;
                ChooseFolderResultContract.Result result = (ChooseFolderResultContract.Result) obj;
                if (result == null) {
                    return;
                }
                long j = result.folderId;
                MessageReference parse = MathKt.parse(result.messageReference);
                if (messageViewFragment.getMessageReference().equals(parse)) {
                    LegacyAccountDto legacyAccountDto = messageViewFragment.account;
                    if (legacyAccountDto == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("account");
                        throw null;
                    }
                    synchronized (legacyAccountDto) {
                        legacyAccountDto.lastSelectedFolderId = Long.valueOf(j);
                    }
                    MessagingController messagingController$3 = messageViewFragment.getMessagingController$3();
                    LegacyAccountDto legacyAccountDto2 = messageViewFragment.account;
                    if (legacyAccountDto2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("account");
                        throw null;
                    }
                    long j2 = messageViewFragment.getMessageReference().folderId;
                    messagingController$3.getClass();
                    messagingController$3.copyMessages(legacyAccountDto2, j2, Collections.singletonList(parse), j);
                }
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                switch (i3) {
                    case 0:
                        MessageViewFragment messageViewFragment = this.f$0;
                        Uri uri = (Uri) obj;
                        if (uri == null) {
                            return;
                        }
                        if (!Intrinsics.areEqual(uri.getScheme(), "content")) {
                            UriKt$$ExternalSyntheticBUOutline0.m("content: URI required");
                            return;
                        }
                        if (messageViewFragment.pendingEmlExport) {
                            messageViewFragment.pendingEmlExport = false;
                            JobKt.launch$default(ViewModelKt.getLifecycleScope(messageViewFragment.getViewLifecycleOwner()), null, null, new Preferences$getAccountFlow$1(messageViewFragment, uri, null, 25), 3);
                            return;
                        }
                        AttachmentViewInfo attachmentViewInfo = messageViewFragment.currentAttachmentViewInfo;
                        LocalStore.AnonymousClass7 anonymousClass7 = new LocalStore.AnonymousClass7(messageViewFragment.requireContext(), messageViewFragment.getMessagingController$3(), messageViewFragment, attachmentViewInfo);
                        if (attachmentViewInfo.isContentAvailable) {
                            new AttachmentController$SaveAttachmentAsyncTask(anonymousClass7, 0).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, uri);
                            return;
                        } else {
                            anonymousClass7.downloadAttachment((LocalPart) attachmentViewInfo.part, new ActivityRecreator.AnonymousClass1(16, anonymousClass7, uri, false));
                            return;
                        }
                    case 1:
                        onActivityResult$com$fsck$k9$ui$messageview$MessageViewFragment$$ExternalSyntheticLambda2(obj);
                        return;
                    default:
                        MessageViewFragment messageViewFragment2 = this.f$0;
                        ChooseFolderResultContract.Result result = (ChooseFolderResultContract.Result) obj;
                        if (result == null) {
                            return;
                        }
                        long j = result.folderId;
                        MessageReference parse = MathKt.parse(result.messageReference);
                        if (messageViewFragment2.getMessageReference().equals(parse)) {
                            LegacyAccountDto legacyAccountDto = messageViewFragment2.account;
                            if (legacyAccountDto == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("account");
                                throw null;
                            }
                            synchronized (legacyAccountDto) {
                                legacyAccountDto.lastSelectedFolderId = Long.valueOf(j);
                            }
                            MessageHomeActivity messageHomeActivity = messageViewFragment2.fragmentListener;
                            if (messageHomeActivity == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("fragmentListener");
                                throw null;
                            }
                            messageHomeActivity.performNavigationAfterMessageRemoval();
                            MessagingController messagingController$3 = messageViewFragment2.getMessagingController$3();
                            LegacyAccountDto legacyAccountDto2 = messageViewFragment2.account;
                            if (legacyAccountDto2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("account");
                                throw null;
                            }
                            long j2 = messageViewFragment2.getMessageReference().folderId;
                            messagingController$3.getClass();
                            messagingController$3.moveMessages(legacyAccountDto2, j2, Collections.singletonList(parse), j);
                            return;
                        }
                        return;
                }
            }
        }, new ChooseFolderResultContract(ChooseFolderActivity.Action.COPY));
        final int i4 = 2;
        this.chooseFolderForMoveLauncher = registerForActivityResult(new ActivityResultCallback(this) { // from class: com.fsck.k9.ui.messageview.MessageViewFragment$$ExternalSyntheticLambda1
            public final /* synthetic */ MessageViewFragment f$0;

            {
                this.f$0 = this;
            }

            private final void onActivityResult$com$fsck$k9$ui$messageview$MessageViewFragment$$ExternalSyntheticLambda2(Object obj) {
                MessageViewFragment messageViewFragment = this.f$0;
                ChooseFolderResultContract.Result result = (ChooseFolderResultContract.Result) obj;
                if (result == null) {
                    return;
                }
                long j = result.folderId;
                MessageReference parse = MathKt.parse(result.messageReference);
                if (messageViewFragment.getMessageReference().equals(parse)) {
                    LegacyAccountDto legacyAccountDto = messageViewFragment.account;
                    if (legacyAccountDto == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("account");
                        throw null;
                    }
                    synchronized (legacyAccountDto) {
                        legacyAccountDto.lastSelectedFolderId = Long.valueOf(j);
                    }
                    MessagingController messagingController$3 = messageViewFragment.getMessagingController$3();
                    LegacyAccountDto legacyAccountDto2 = messageViewFragment.account;
                    if (legacyAccountDto2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("account");
                        throw null;
                    }
                    long j2 = messageViewFragment.getMessageReference().folderId;
                    messagingController$3.getClass();
                    messagingController$3.copyMessages(legacyAccountDto2, j2, Collections.singletonList(parse), j);
                }
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                switch (i4) {
                    case 0:
                        MessageViewFragment messageViewFragment = this.f$0;
                        Uri uri = (Uri) obj;
                        if (uri == null) {
                            return;
                        }
                        if (!Intrinsics.areEqual(uri.getScheme(), "content")) {
                            UriKt$$ExternalSyntheticBUOutline0.m("content: URI required");
                            return;
                        }
                        if (messageViewFragment.pendingEmlExport) {
                            messageViewFragment.pendingEmlExport = false;
                            JobKt.launch$default(ViewModelKt.getLifecycleScope(messageViewFragment.getViewLifecycleOwner()), null, null, new Preferences$getAccountFlow$1(messageViewFragment, uri, null, 25), 3);
                            return;
                        }
                        AttachmentViewInfo attachmentViewInfo = messageViewFragment.currentAttachmentViewInfo;
                        LocalStore.AnonymousClass7 anonymousClass7 = new LocalStore.AnonymousClass7(messageViewFragment.requireContext(), messageViewFragment.getMessagingController$3(), messageViewFragment, attachmentViewInfo);
                        if (attachmentViewInfo.isContentAvailable) {
                            new AttachmentController$SaveAttachmentAsyncTask(anonymousClass7, 0).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, uri);
                            return;
                        } else {
                            anonymousClass7.downloadAttachment((LocalPart) attachmentViewInfo.part, new ActivityRecreator.AnonymousClass1(16, anonymousClass7, uri, false));
                            return;
                        }
                    case 1:
                        onActivityResult$com$fsck$k9$ui$messageview$MessageViewFragment$$ExternalSyntheticLambda2(obj);
                        return;
                    default:
                        MessageViewFragment messageViewFragment2 = this.f$0;
                        ChooseFolderResultContract.Result result = (ChooseFolderResultContract.Result) obj;
                        if (result == null) {
                            return;
                        }
                        long j = result.folderId;
                        MessageReference parse = MathKt.parse(result.messageReference);
                        if (messageViewFragment2.getMessageReference().equals(parse)) {
                            LegacyAccountDto legacyAccountDto = messageViewFragment2.account;
                            if (legacyAccountDto == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("account");
                                throw null;
                            }
                            synchronized (legacyAccountDto) {
                                legacyAccountDto.lastSelectedFolderId = Long.valueOf(j);
                            }
                            MessageHomeActivity messageHomeActivity = messageViewFragment2.fragmentListener;
                            if (messageHomeActivity == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("fragmentListener");
                                throw null;
                            }
                            messageHomeActivity.performNavigationAfterMessageRemoval();
                            MessagingController messagingController$3 = messageViewFragment2.getMessagingController$3();
                            LegacyAccountDto legacyAccountDto2 = messageViewFragment2.account;
                            if (legacyAccountDto2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("account");
                                throw null;
                            }
                            long j2 = messageViewFragment2.getMessageReference().folderId;
                            messagingController$3.getClass();
                            messagingController$3.moveMessages(legacyAccountDto2, j2, Collections.singletonList(parse), j);
                            return;
                        }
                        return;
                }
            }
        }, new ChooseFolderResultContract(ChooseFolderActivity.Action.MOVE));
        this.messageExporter$delegate = ResultKt.lazy(lazyThreadSafetyMode, new MessageViewFragment$special$$inlined$inject$default$1(this, i4));
        this.fileNameSuggester$delegate = ResultKt.lazy(lazyThreadSafetyMode, new MessageViewFragment$special$$inlined$inject$default$1(this, 3));
        this.showAccountIndicator = true;
        this.attachmentListBottomSheetState = FlowKt.MutableStateFlow(SmallPersistentVector.EMPTY);
        this.messageHeaderClickListener = new MessageViewFragment$messageCryptoMvpView$1(this);
        this.messageCryptoMvpView = new MessageViewFragment$messageCryptoMvpView$1(this);
        this.messageLoaderCallbacks = new MessageViewFragment$messageCryptoMvpView$1(this);
    }

    public final void delete() {
        this.isDeleteMenuItemDisabled = true;
        AppCompatActivity activity = getActivity();
        if (activity != null) {
            activity.invalidateOptionsMenu();
        }
        MessageHomeActivity messageHomeActivity = this.fragmentListener;
        if (messageHomeActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentListener");
            throw null;
        }
        messageHomeActivity.performNavigationAfterMessageRemoval();
        MessagingController messagingController$3 = getMessagingController$3();
        MessageReference messageReference = getMessageReference();
        messagingController$3.getClass();
        messagingController$3.actOnMessagesGroupedByAccountAndFolder(Collections.singletonList(messageReference), new MessagingController$$ExternalSyntheticLambda9(messagingController$3, false));
    }

    @Override // com.fsck.k9.fragment.ConfirmationDialogFragment.ConfirmationDialogFragmentListener
    public final void doPositiveClick(int i) {
        if (i == R.id.dialog_confirm_delete) {
            delete();
            return;
        }
        if (i == R.id.dialog_confirm_spam) {
            Long l = this.destinationFolderId;
            if (l == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            } else {
                refileMessage(l.longValue());
                this.destinationFolderId = null;
            }
        }
    }

    public final GeneralSettingsManager getGeneralSettingsManager$4() {
        return (GeneralSettingsManager) this.generalSettingsManager$delegate.getValue();
    }

    public final MessageReference getMessageReference() {
        MessageReference messageReference = this.messageReference;
        if (messageReference != null) {
            return messageReference;
        }
        Intrinsics.throwUninitializedPropertyAccessException("messageReference");
        throw null;
    }

    public final MessagingController getMessagingController$3() {
        return (MessagingController) this.messagingController$delegate.getValue();
    }

    public final boolean isOutbox$1() {
        long j = getMessageReference().folderId;
        DefaultOutboxFolderManager defaultOutboxFolderManager = (DefaultOutboxFolderManager) this.outboxFolderManager$delegate.getValue();
        LegacyAccountDto legacyAccountDto = this.account;
        if (legacyAccountDto != null) {
            return j == Sink$CC.getOutboxFolderIdSync$default(defaultOutboxFolderManager, legacyAccountDto.id);
        }
        Intrinsics.throwUninitializedPropertyAccessException("account");
        throw null;
    }

    public final void markMessageAsOpened() {
        final LocalMessage localMessage = this.message;
        if (localMessage == null || this.wasMessageMarkedAsOpened) {
            return;
        }
        final MessagingController messagingController$3 = getMessagingController$3();
        final LegacyAccountDto legacyAccountDto = this.account;
        if (legacyAccountDto == null) {
            Intrinsics.throwUninitializedPropertyAccessException("account");
            throw null;
        }
        messagingController$3.threadPool.execute(new Processor$$ExternalSyntheticLambda1(messagingController$3, legacyAccountDto, localMessage, 17));
        Flag flag = Flag.SEEN;
        if (!localMessage.mFlags.contains(flag)) {
            final boolean isMarkMessageAsReadOnView = legacyAccountDto.isMarkMessageAsReadOnView();
            if (isMarkMessageAsReadOnView) {
                try {
                    localMessage.setFlagInternal(flag);
                } catch (MessagingException e) {
                    Log.e(e, "Error while marking message as read", new Object[0]);
                }
                MessagingController.setFlagInCache(legacyAccountDto, Collections.singletonList(Long.valueOf(localMessage.databaseId)), Flag.SEEN, true);
            }
            messagingController$3.putBackground("markMessageAsOpened", new Runnable() { // from class: com.fsck.k9.controller.MessagingController$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    boolean z = isMarkMessageAsReadOnView;
                    MessagingController messagingController = MessagingController.this;
                    LegacyAccountDto legacyAccountDto2 = legacyAccountDto;
                    LocalMessage localMessage2 = localMessage;
                    if (z) {
                        messagingController.setFlagSynchronous(legacyAccountDto2, Collections.singletonList(Long.valueOf(localMessage2.databaseId)), Flag.SEEN, true, false);
                    } else {
                        messagingController.messageStoreManager.getMessageStore(legacyAccountDto2).setNewMessageState(localMessage2.mFolder.databaseId, localMessage2.mUid, false);
                    }
                }
            });
        }
        this.wasMessageMarkedAsOpened = true;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        if ((i & 256) == 256) {
            int i3 = i ^ 256;
            MessageLoaderHelper messageLoaderHelper = this.messageLoaderHelper;
            if (messageLoaderHelper != null) {
                messageLoaderHelper.onActivityResult(i3, i2, intent);
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("messageLoaderHelper");
                throw null;
            }
        }
        if ((i & 512) == 512) {
            int i4 = i ^ 512;
            MessageCryptoPresenter messageCryptoPresenter = this.messageCryptoPresenter;
            if (messageCryptoPresenter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("messageCryptoPresenter");
                throw null;
            }
            MessageViewFragment$messageCryptoMvpView$1 messageViewFragment$messageCryptoMvpView$1 = messageCryptoPresenter.messageCryptoMvpView;
            if (i4 == 123) {
                if (i2 != -1) {
                    return;
                }
                messageViewFragment$messageCryptoMvpView$1.restartMessageCryptoProcessing();
            } else {
                if (i4 != 124) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("got an activity result that wasn't meant for us. this is a bug!");
                    return;
                }
                MessageLoaderHelper messageLoaderHelper2 = messageViewFragment$messageCryptoMvpView$1.this$0.messageLoaderHelper;
                if (messageLoaderHelper2 != null) {
                    messageLoaderHelper2.startOrResumeLocalMessageLoader();
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("messageLoaderHelper");
                    throw null;
                }
            }
        }
    }

    public final void onArchive() {
        LegacyAccountDto legacyAccountDto = this.account;
        if (legacyAccountDto == null) {
            Intrinsics.throwUninitializedPropertyAccessException("account");
            throw null;
        }
        if (legacyAccountDto.hasArchiveFolder()) {
            if (!getMessagingController$3().isMoveCapable(getMessageReference())) {
                Toast.makeText(getActivity(), R.string.move_copy_cannot_copy_unsynced_message, 1).show();
                return;
            }
            MessageHomeActivity messageHomeActivity = this.fragmentListener;
            if (messageHomeActivity == null) {
                Intrinsics.throwUninitializedPropertyAccessException("fragmentListener");
                throw null;
            }
            messageHomeActivity.performNavigationAfterMessageRemoval();
            MessagingController messagingController$3 = getMessagingController$3();
            MessageReference messageReference = getMessageReference();
            Base64Util base64Util = messagingController$3.archiveOperations;
            base64Util.getClass();
            base64Util.archiveMessages(IntOffsetKt.listOf(messageReference));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        context.getClass();
        super.onAttach(context);
        try {
            AppCompatActivity activity = getActivity();
            activity.getClass();
            this.fragmentListener = (MessageHomeActivity) activity;
        } catch (ClassCastException unused) {
            throw new ClassCastException("This fragment must be attached to a MessageViewFragmentListener");
        }
    }

    public final void onCopy() {
        MessagingController messagingController$3 = getMessagingController$3();
        LegacyAccountDto legacyAccountDto = this.account;
        if (legacyAccountDto == null) {
            Intrinsics.throwUninitializedPropertyAccessException("account");
            throw null;
        }
        if (!messagingController$3.getBackend(legacyAccountDto).getSupportsCopy()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
            return;
        }
        if (this.message == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return;
        }
        if (!getMessagingController$3().isMoveCapable(getMessageReference())) {
            Toast.makeText(getActivity(), R.string.move_copy_cannot_copy_unsynced_message, 1).show();
            return;
        }
        LegacyAccountDto legacyAccountDto2 = this.account;
        if (legacyAccountDto2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("account");
            throw null;
        }
        String str = legacyAccountDto2.uuid;
        Long valueOf = Long.valueOf(getMessageReference().folderId);
        LegacyAccountDto legacyAccountDto3 = this.account;
        if (legacyAccountDto3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("account");
            throw null;
        }
        this.chooseFolderForCopyLauncher.launch(new ChooseFolderResultContract.Input(str, valueOf, legacyAccountDto3.getLastSelectedFolderId(), getMessageReference()));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int i = 0;
        if (bundle == null) {
            setMenuVisibility(false);
        }
        Bundle bundle2 = this.mArguments;
        MessageReference parse = MathKt.parse(bundle2 != null ? bundle2.getString("reference") : null);
        if (parse == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Invalid argument 'reference'");
            return;
        }
        this.messageReference = parse;
        Bundle bundle3 = this.mArguments;
        if (bundle3 == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Missing argument: 'showAccountIndicator'");
            return;
        }
        this.showAccountIndicator = bundle3.getBoolean("showAccountIndicator");
        if (bundle != null) {
            this.wasMessageMarkedAsOpened = bundle.getBoolean("wasMessageMarkedAsOpened");
            this.isActive = bundle.getBoolean("isActive");
        }
        this.messageCryptoPresenter = new MessageCryptoPresenter(this.messageCryptoMvpView);
        MessageLoaderHelperFactory messageLoaderHelperFactory = (MessageLoaderHelperFactory) this.messageLoaderHelperFactory$delegate.getValue();
        Context applicationContext = requireContext().getApplicationContext();
        applicationContext.getClass();
        LoaderManagerImpl loaderManager = LoaderManager.getInstance(this);
        FragmentManager parentFragmentManager = getParentFragmentManager();
        messageLoaderHelperFactory.getClass();
        MessageViewFragment$messageCryptoMvpView$1 messageViewFragment$messageCryptoMvpView$1 = this.messageLoaderCallbacks;
        messageViewFragment$messageCryptoMvpView$1.getClass();
        this.messageLoaderHelper = new MessageLoaderHelper(applicationContext, loaderManager, parentFragmentManager, messageViewFragment$messageCryptoMvpView$1, messageLoaderHelperFactory.messageViewInfoExtractorFactory.create(messageLoaderHelperFactory.messageReaderHtmlSettingsProvider.create()));
        getParentFragmentManager().setFragmentResultListener("messageDetailsResult", this, new FragmentKt$$ExternalSyntheticLambda0(i, new MessageViewFragment$onCreate$1(2, this, MessageViewFragment.class, "onMessageDetailsResult", "onMessageDetailsResult(Ljava/lang/String;Landroid/os/Bundle;)V", 0, 0)));
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        layoutInflater.getClass();
        ThemeManager themeManager = (ThemeManager) this.themeManager$delegate.getValue();
        final int i = 0;
        View inflate = LayoutInflater.from(new ContextThemeWrapper(layoutInflater.getContext(), themeManager.getSubThemeResourceId(((DefaultGeneralSettingsManager) themeManager.generalSettingsManager).getConfig().display.coreSettings.messageViewTheme))).inflate(R.layout.message, viewGroup, false);
        View findViewById = inflate.findViewById(R.id.message_view);
        findViewById.getClass();
        MessageTopView messageTopView = (MessageTopView) findViewById;
        this.messageTopView = messageTopView;
        messageTopView.setShowAccountIndicator(this.showAccountIndicator);
        Resources resources = getResources();
        resources.getClass();
        SizeFormatter sizeFormatter = new SizeFormatter(resources);
        ComposeView composeView = (ComposeView) messageTopView.findViewById(R.id.attachment_bottom_sheet_compose_view);
        composeView.setViewCompositionStrategy(AndroidFontResourceLoader.INSTANCE);
        final int i2 = 1;
        composeView.setContent(new ComposableLambdaImpl(-1095910546, new AboutFragmentKt$$ExternalSyntheticLambda7(8, this, sizeFormatter), true));
        messageTopView.setAttachmentCallback(this);
        messageTopView.setMessageReaderViewModel((MessageReaderViewContract$ViewModel) this.messageReaderViewModel$delegate.getValue());
        MessageCryptoPresenter messageCryptoPresenter = this.messageCryptoPresenter;
        if (messageCryptoPresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageCryptoPresenter");
            throw null;
        }
        messageTopView.setMessageCryptoPresenter(messageCryptoPresenter);
        messageTopView.setOnToggleFlagClickListener(new View.OnClickListener(this) { // from class: com.fsck.k9.ui.messageview.MessageViewFragment$$ExternalSyntheticLambda5
            public final /* synthetic */ MessageViewFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i3 = i;
                MessageViewFragment messageViewFragment = this.f$0;
                switch (i3) {
                    case 0:
                        messageViewFragment.toggleFlag(Flag.FLAGGED);
                        return;
                    default:
                        MessageTopView messageTopView2 = messageViewFragment.messageTopView;
                        if (messageTopView2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("messageTopView");
                            throw null;
                        }
                        MaterialButton materialButton = messageTopView2.downloadRemainderButton;
                        if (materialButton == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("downloadRemainderButton");
                            throw null;
                        }
                        materialButton.setEnabled(false);
                        MessageLoaderHelper messageLoaderHelper = messageViewFragment.messageLoaderHelper;
                        if (messageLoaderHelper != null) {
                            messageLoaderHelper.startDownloadingMessageBody(true);
                            return;
                        } else {
                            Intrinsics.throwUninitializedPropertyAccessException("messageLoaderHelper");
                            throw null;
                        }
                }
            }
        });
        messageTopView.setMessageHeaderClickListener(this.messageHeaderClickListener);
        messageTopView.setOnDownloadButtonClickListener(new View.OnClickListener(this) { // from class: com.fsck.k9.ui.messageview.MessageViewFragment$$ExternalSyntheticLambda5
            public final /* synthetic */ MessageViewFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i3 = i2;
                MessageViewFragment messageViewFragment = this.f$0;
                switch (i3) {
                    case 0:
                        messageViewFragment.toggleFlag(Flag.FLAGGED);
                        return;
                    default:
                        MessageTopView messageTopView2 = messageViewFragment.messageTopView;
                        if (messageTopView2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("messageTopView");
                            throw null;
                        }
                        MaterialButton materialButton = messageTopView2.downloadRemainderButton;
                        if (materialButton == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("downloadRemainderButton");
                            throw null;
                        }
                        materialButton.setEnabled(false);
                        MessageLoaderHelper messageLoaderHelper = messageViewFragment.messageLoaderHelper;
                        if (messageLoaderHelper != null) {
                            messageLoaderHelper.startDownloadingMessageBody(true);
                            return;
                        } else {
                            Intrinsics.throwUninitializedPropertyAccessException("messageLoaderHelper");
                            throw null;
                        }
                }
            }
        });
        return inflate;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x002c, code lost:
    
        if (r0.mFlags.contains(net.thunderbird.core.common.mail.Flag.FLAGGED) != false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onDelete() {
        /*
            r2 = this;
            com.fsck.k9.mailstore.LocalMessage r0 = r2.message
            if (r0 == 0) goto L3a
            net.thunderbird.core.preference.GeneralSettingsManager r1 = r2.getGeneralSettingsManager$4()
            com.fsck.k9.preferences.DefaultGeneralSettingsManager r1 = (com.fsck.k9.preferences.DefaultGeneralSettingsManager) r1
            net.thunderbird.core.preference.GeneralSettings r1 = r1.getConfig()
            net.thunderbird.core.preference.interaction.InteractionSettings r1 = r1.interaction
            boolean r1 = r1.isConfirmDelete
            if (r1 != 0) goto L33
            net.thunderbird.core.preference.GeneralSettingsManager r1 = r2.getGeneralSettingsManager$4()
            com.fsck.k9.preferences.DefaultGeneralSettingsManager r1 = (com.fsck.k9.preferences.DefaultGeneralSettingsManager) r1
            net.thunderbird.core.preference.GeneralSettings r1 = r1.getConfig()
            net.thunderbird.core.preference.interaction.InteractionSettings r1 = r1.interaction
            boolean r1 = r1.isConfirmDeleteStarred
            if (r1 == 0) goto L2f
            net.thunderbird.core.common.mail.Flag r1 = net.thunderbird.core.common.mail.Flag.FLAGGED
            java.util.EnumSet r0 = r0.mFlags
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L2f
            goto L33
        L2f:
            r2.delete()
            return
        L33:
            r0 = 2131296667(0x7f09019b, float:1.8211257E38)
            r2.showDialog$3(r0)
            return
        L3a:
            java.lang.String r2 = "Required value was null."
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.ui.messageview.MessageViewFragment.onDelete():void");
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        this.mCalled = true;
        boolean isChangingConfigurations = requireActivity().isChangingConfigurations();
        MessageLoaderHelper messageLoaderHelper = this.messageLoaderHelper;
        if (!isChangingConfigurations) {
            if (messageLoaderHelper == null) {
                Intrinsics.throwUninitializedPropertyAccessException("messageLoaderHelper");
                throw null;
            }
            MessageCryptoHelper messageCryptoHelper = messageLoaderHelper.messageCryptoHelper;
            if (messageCryptoHelper != null) {
                messageCryptoHelper.cancelIfRunning();
            }
            messageLoaderHelper.callback = null;
            messageLoaderHelper.context = null;
            messageLoaderHelper.fragmentManager = null;
            messageLoaderHelper.loaderManager = null;
            return;
        }
        if (messageLoaderHelper == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageLoaderHelper");
            throw null;
        }
        messageLoaderHelper.loaderManager.destroyLoader(2);
        MessageCryptoHelper messageCryptoHelper2 = messageLoaderHelper.messageCryptoHelper;
        if (messageCryptoHelper2 != null) {
            synchronized (messageCryptoHelper2.callbackLock) {
                messageCryptoHelper2.callback = null;
            }
        }
        messageLoaderHelper.callback = null;
        messageLoaderHelper.context = null;
        messageLoaderHelper.fragmentManager = null;
        messageLoaderHelper.loaderManager = null;
    }

    public final void onEditAsNewMessage$1() {
        LocalMessage localMessage = this.message;
        if (localMessage == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return;
        }
        MessageHomeActivity messageHomeActivity = this.fragmentListener;
        if (messageHomeActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentListener");
            throw null;
        }
        MessageReference makeMessageReference = localMessage.makeMessageReference();
        makeMessageReference.getClass();
        SchemaInfoUtilKt.actionEditDraft(messageHomeActivity, makeMessageReference);
    }

    public final void onForward$1() {
        LocalMessage localMessage = this.message;
        if (localMessage == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return;
        }
        MessageHomeActivity messageHomeActivity = this.fragmentListener;
        if (messageHomeActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentListener");
            throw null;
        }
        MessageReference makeMessageReference = localMessage.makeMessageReference();
        makeMessageReference.getClass();
        MessageCryptoPresenter messageCryptoPresenter = this.messageCryptoPresenter;
        if (messageCryptoPresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageCryptoPresenter");
            throw null;
        }
        OpenPgpDecryptionResult decryptionResultForReply = messageCryptoPresenter.getDecryptionResultForReply();
        Intent intent = new Intent(messageHomeActivity, (Class<?>) MessageCompose.class);
        intent.putExtra("message_reference", makeMessageReference.toIdentityString());
        intent.putExtra("message_decryption_result", decryptionResultForReply);
        intent.setAction("com.fsck.k9.intent.action.FORWARD");
        messageHomeActivity.startActivity(intent);
    }

    public final void onForwardAsAttachment$1() {
        LocalMessage localMessage = this.message;
        if (localMessage == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return;
        }
        MessageHomeActivity messageHomeActivity = this.fragmentListener;
        if (messageHomeActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentListener");
            throw null;
        }
        MessageReference makeMessageReference = localMessage.makeMessageReference();
        makeMessageReference.getClass();
        MessageCryptoPresenter messageCryptoPresenter = this.messageCryptoPresenter;
        if (messageCryptoPresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageCryptoPresenter");
            throw null;
        }
        OpenPgpDecryptionResult decryptionResultForReply = messageCryptoPresenter.getDecryptionResultForReply();
        Intent intent = new Intent(messageHomeActivity, (Class<?>) MessageCompose.class);
        intent.putExtra("message_reference", makeMessageReference.toIdentityString());
        intent.putExtra("message_decryption_result", decryptionResultForReply);
        intent.setAction("com.fsck.k9.intent.action.FORWARD_AS_ATTACHMENT");
        messageHomeActivity.startActivity(intent);
    }

    public final void onMove() {
        MessagingController messagingController$3 = getMessagingController$3();
        LegacyAccountDto legacyAccountDto = this.account;
        if (legacyAccountDto == null) {
            Intrinsics.throwUninitializedPropertyAccessException("account");
            throw null;
        }
        if (!messagingController$3.getBackend(legacyAccountDto).getSupportsMove()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
            return;
        }
        if (this.message == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return;
        }
        if (!getMessagingController$3().isMoveCapable(getMessageReference())) {
            Toast.makeText(getActivity(), R.string.move_copy_cannot_copy_unsynced_message, 1).show();
            return;
        }
        LegacyAccountDto legacyAccountDto2 = this.account;
        if (legacyAccountDto2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("account");
            throw null;
        }
        String str = legacyAccountDto2.uuid;
        Long valueOf = Long.valueOf(getMessageReference().folderId);
        LegacyAccountDto legacyAccountDto3 = this.account;
        if (legacyAccountDto3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("account");
            throw null;
        }
        this.chooseFolderForMoveLauncher.launch(new ChooseFolderResultContract.Input(str, valueOf, legacyAccountDto3.getLastSelectedFolderId(), getMessageReference()));
    }

    public final void onReply$1() {
        LocalMessage localMessage = this.message;
        if (localMessage == null) {
            return;
        }
        MessageHomeActivity messageHomeActivity = this.fragmentListener;
        if (messageHomeActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentListener");
            throw null;
        }
        MessageReference makeMessageReference = localMessage.makeMessageReference();
        makeMessageReference.getClass();
        MessageCryptoPresenter messageCryptoPresenter = this.messageCryptoPresenter;
        if (messageCryptoPresenter != null) {
            SchemaInfoUtilKt.actionReply(messageHomeActivity, makeMessageReference, false, messageCryptoPresenter.getDecryptionResultForReply());
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("messageCryptoPresenter");
            throw null;
        }
    }

    public final void onReplyAll$1() {
        LocalMessage localMessage = this.message;
        if (localMessage == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return;
        }
        MessageHomeActivity messageHomeActivity = this.fragmentListener;
        if (messageHomeActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentListener");
            throw null;
        }
        MessageReference makeMessageReference = localMessage.makeMessageReference();
        makeMessageReference.getClass();
        MessageCryptoPresenter messageCryptoPresenter = this.messageCryptoPresenter;
        if (messageCryptoPresenter != null) {
            SchemaInfoUtilKt.actionReply(messageHomeActivity, makeMessageReference, true, messageCryptoPresenter.getDecryptionResultForReply());
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("messageCryptoPresenter");
            throw null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        this.mCalled = true;
        markMessageAsOpened();
        MessageCryptoPresenter messageCryptoPresenter = this.messageCryptoPresenter;
        if (messageCryptoPresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageCryptoPresenter");
            throw null;
        }
        if (messageCryptoPresenter.reloadOnResumeWithoutRecreateFlag) {
            messageCryptoPresenter.reloadOnResumeWithoutRecreateFlag = false;
            messageCryptoPresenter.messageCryptoMvpView.restartMessageCryptoProcessing();
        }
    }

    public final void onSaveAttachment(AttachmentViewInfo attachmentViewInfo) {
        attachmentViewInfo.getClass();
        this.currentAttachmentViewInfo = attachmentViewInfo;
        try {
            Fragment.AnonymousClass10 anonymousClass10 = this.createDocumentLauncher;
            String str = attachmentViewInfo.displayName;
            if (str == null) {
                str = getString(R.string.unnamed_attachment_title);
                str.getClass();
            }
            String str2 = attachmentViewInfo.mimeType;
            if (str2 != null) {
                anonymousClass10.launch(new CreateDocumentResultContract$Input(str, str2));
            } else {
                throw new IllegalArgumentException(("Invalid attachment type. The mimeType is null. Attachment = " + attachmentViewInfo).toString());
            }
        } catch (ActivityNotFoundException unused) {
            Toast.makeText(requireContext(), R.string.error_activity_not_found, 1).show();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("wasMessageMarkedAsOpened", this.wasMessageMarkedAsOpened);
        bundle.putBoolean("isActive", this.isActive);
    }

    public final void onSendAlternate() {
        String textFromPart;
        LocalMessage localMessage = this.message;
        if (localMessage == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return;
        }
        ShareIntentBuilder shareIntentBuilder = (ShareIntentBuilder) this.shareIntentBuilder$delegate.getValue();
        shareIntentBuilder.getClass();
        Context context = shareIntentBuilder.resourceProvider.context;
        Part findFirstTextPart = TextPartFinder.findFirstTextPart(localMessage);
        String str = "";
        if (findFirstTextPart != null && findFirstTextPart.getBody() != null && (textFromPart = JisSupport.getTextFromPart(findFirstTextPart, -1L)) != null) {
            str = JisSupport.isSameMimeType(findFirstTextPart.getMimeType(), "text/html") ? OperationKt.htmlToText(textFromPart) : textFromPart;
        }
        QuoteDateFormatter quoteDateFormatter = shareIntentBuilder.quoteDateFormatter;
        Date sentDate = localMessage.getSentDate();
        sentDate.getClass();
        String format = quoteDateFormatter.format(sentDate);
        StringBuilder sb = new StringBuilder();
        String str2 = localMessage.subject;
        if (str2 != null) {
            String string = context.getString(R.string.message_compose_quote_header_subject);
            string.getClass();
            sb.append(string);
            sb.append(' ');
            sb.append(str2);
            sb.append('\n');
        }
        if (format.length() > 0) {
            String string2 = context.getString(R.string.message_compose_quote_header_send_date);
            string2.getClass();
            sb.append(string2);
            sb.append(' ');
            sb.append(format);
            sb.append('\n');
        }
        Address[] from = localMessage.getFrom();
        from.getClass();
        Pattern pattern = Address.ATOM;
        String k9MailLib = K9MailLib.toString(from);
        if (k9MailLib.length() == 0) {
            k9MailLib = null;
        }
        if (k9MailLib != null) {
            String string3 = context.getString(R.string.message_compose_quote_header_from);
            string3.getClass();
            sb.append(string3);
            sb.append(' ');
            sb.append(k9MailLib);
            sb.append('\n');
        }
        Address[] recipients = localMessage.getRecipients(Message$RecipientType.TO);
        recipients.getClass();
        String k9MailLib2 = K9MailLib.toString(recipients);
        if (k9MailLib2.length() == 0) {
            k9MailLib2 = null;
        }
        if (k9MailLib2 != null) {
            String string4 = context.getString(R.string.message_compose_quote_header_to);
            string4.getClass();
            sb.append(string4);
            sb.append(' ');
            sb.append(k9MailLib2);
            sb.append('\n');
        }
        Address[] recipients2 = localMessage.getRecipients(Message$RecipientType.CC);
        recipients2.getClass();
        String k9MailLib3 = K9MailLib.toString(recipients2);
        String str3 = k9MailLib3.length() != 0 ? k9MailLib3 : null;
        if (str3 != null) {
            String string5 = context.getString(R.string.message_compose_quote_header_cc);
            string5.getClass();
            sb.append(string5);
            sb.append(' ');
            sb.append(str3);
            sb.append('\n');
        }
        sb.append('\n');
        sb.append(str);
        String sb2 = sb.toString();
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(UtilsKt.MIME_TYPE_TEXT_PLAIN);
        intent.putExtra("android.intent.extra.TEXT", sb2);
        String string6 = getString(R.string.send_alternate_chooser_title);
        string6.getClass();
        startActivity(Intent.createChooser(intent, string6));
    }

    public final void onToggleRead() {
        LocalMessage localMessage = this.message;
        if (localMessage == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return;
        }
        Flag flag = Flag.SEEN;
        boolean contains = localMessage.mFlags.contains(flag);
        toggleFlag(flag);
        if (contains) {
            MessageHomeActivity messageHomeActivity = this.fragmentListener;
            if (messageHomeActivity == null) {
                Intrinsics.throwUninitializedPropertyAccessException("fragmentListener");
                throw null;
            }
            int ordinal = ((DefaultGeneralSettingsManager) messageHomeActivity.getGeneralSettingsManager$1()).getConfig().interaction.messageViewPostMarkAsUnreadNavigation.ordinal();
            if (ordinal != 0) {
                if (ordinal == 1) {
                    messageHomeActivity.returnToMessageList();
                } else {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                }
            }
        }
    }

    public final void onViewAttachment(AttachmentViewInfo attachmentViewInfo) {
        attachmentViewInfo.getClass();
        this.currentAttachmentViewInfo = attachmentViewInfo;
        LocalStore.AnonymousClass7 anonymousClass7 = new LocalStore.AnonymousClass7(requireContext(), getMessagingController$3(), this, attachmentViewInfo);
        if (attachmentViewInfo.isContentAvailable) {
            new AttachmentController$SaveAttachmentAsyncTask(anonymousClass7, 1).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } else {
            anonymousClass7.downloadAttachment((LocalPart) attachmentViewInfo.part, new MessagingController.AnonymousClass1(2, anonymousClass7));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        requireActivity().addMenuProvider(new FragmentManager.AnonymousClass2(6, this), getViewLifecycleOwner());
        MessageReference messageReference = getMessageReference();
        Log.d("MessageViewFragment displaying message %s", messageReference);
        LegacyAccountDtoManager legacyAccountDtoManager = (LegacyAccountDtoManager) this.accountManager$delegate.getValue();
        String str = messageReference.accountUuid;
        LegacyAccountDto account = ((Preferences) legacyAccountDtoManager).getAccount(str);
        if (account == null) {
            Regex$$ExternalSyntheticBUOutline0.m(str, " not found", "Account ");
            return;
        }
        this.account = account;
        MessageLoaderHelper messageLoaderHelper = this.messageLoaderHelper;
        if (messageLoaderHelper == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageLoaderHelper");
            throw null;
        }
        messageLoaderHelper.asyncStartOrResumeLoadingMessage(messageReference, null);
        AppCompatActivity activity = getActivity();
        if (activity != null) {
            activity.invalidateOptionsMenu();
        }
    }

    public final void refileMessage(long j) {
        MessageHomeActivity messageHomeActivity = this.fragmentListener;
        if (messageHomeActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentListener");
            throw null;
        }
        messageHomeActivity.performNavigationAfterMessageRemoval();
        long j2 = getMessageReference().folderId;
        MessagingController messagingController$3 = getMessagingController$3();
        LegacyAccountDto legacyAccountDto = this.account;
        if (legacyAccountDto == null) {
            Intrinsics.throwUninitializedPropertyAccessException("account");
            throw null;
        }
        MessageReference messageReference = getMessageReference();
        messagingController$3.getClass();
        messagingController$3.moveMessages(legacyAccountDto, j2, Collections.singletonList(messageReference), j);
    }

    public final void refreshAttachmentThumbnail(AttachmentViewInfo attachmentViewInfo) {
        attachmentViewInfo.getClass();
        MessageTopView messageTopView = this.messageTopView;
        if (messageTopView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageTopView");
            throw null;
        }
        ViewGroup viewGroup = messageTopView.containerView;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("containerView");
            throw null;
        }
        View childAt = viewGroup.getChildAt(0);
        if (!(childAt instanceof MessageContainerView) || ((MessageContainerView) childAt).attachmentViewMap.get(attachmentViewInfo) == null) {
            return;
        }
        DBUtil$$ExternalSyntheticBUOutline0.m();
    }

    @Override // androidx.fragment.app.Fragment
    public final void setMenuVisibility(boolean z) {
        this.isActive = z;
        super.setMenuVisibility(z);
        if (!z) {
            this.wasMessageMarkedAsOpened = false;
            return;
        }
        MessageLoaderHelper messageLoaderHelper = this.messageLoaderHelper;
        if (messageLoaderHelper == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageLoaderHelper");
            throw null;
        }
        MessageCryptoHelper messageCryptoHelper = messageLoaderHelper.messageCryptoHelper;
        if (messageCryptoHelper == null || messageCryptoHelper.queuedPendingIntent == null) {
            return;
        }
        messageCryptoHelper.deliverResult();
    }

    public final void showDialog$3(int i) {
        DialogFragment attachmentDownloadDialogFragment;
        if (i == R.id.dialog_confirm_delete) {
            String string = getString(R.string.dialog_confirm_delete_title);
            string.getClass();
            String string2 = getString(R.string.dialog_confirm_delete_message);
            string2.getClass();
            String string3 = getString(R.string.dialog_confirm_delete_confirm_button);
            string3.getClass();
            String string4 = getString(R.string.dialog_confirm_delete_cancel_button);
            string4.getClass();
            attachmentDownloadDialogFragment = ConfirmationDialogFragment.newInstance(i, string, string2, string3, string4);
        } else if (i == R.id.dialog_confirm_spam) {
            String string5 = getString(R.string.dialog_confirm_spam_title);
            string5.getClass();
            String quantityString = getResources().getQuantityString(R.plurals.dialog_confirm_spam_message, 1);
            quantityString.getClass();
            String string6 = getString(R.string.dialog_confirm_spam_confirm_button);
            string6.getClass();
            String string7 = getString(R.string.dialog_confirm_spam_cancel_button);
            string7.getClass();
            attachmentDownloadDialogFragment = ConfirmationDialogFragment.newInstance(i, string5, quantityString, string6, string7);
        } else {
            if (i != R.id.dialog_attachment_progress) {
                DBUtil$$ExternalSyntheticBUOutline0.m("Called showDialog(int) with unknown dialog id.");
                return;
            }
            AttachmentViewInfo attachmentViewInfo = this.currentAttachmentViewInfo;
            if (attachmentViewInfo == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
                return;
            }
            String string8 = getString(R.string.dialog_attachment_progress_title);
            string8.getClass();
            long j = attachmentViewInfo.size;
            attachmentDownloadDialogFragment = new AttachmentDownloadDialogFragment();
            Bundle bundle = new Bundle();
            bundle.putLong("size", j);
            bundle.putString("message", string8);
            attachmentDownloadDialogFragment.setArguments(bundle);
        }
        attachmentDownloadDialogFragment.setTargetFragment(i, this);
        attachmentDownloadDialogFragment.show(getParentFragmentManager(), String.format(Locale.US, "dialog-%d", Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1)));
    }

    public final void showMessage(MessageViewInfo messageViewInfo) {
        AppCompatActivity activity = getActivity();
        if (activity != null) {
            Object systemService = activity.getSystemService("input_method");
            systemService.getClass();
            View decorView = activity.getWindow().getDecorView();
            decorView.getClass();
            ((InputMethodManager) systemService).hideSoftInputFromWindow(decorView.getApplicationWindowToken(), 0);
        }
        MessageCryptoPresenter messageCryptoPresenter = this.messageCryptoPresenter;
        if (messageCryptoPresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageCryptoPresenter");
            throw null;
        }
        MessageTopView messageTopView = this.messageTopView;
        if (messageTopView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageTopView");
            throw null;
        }
        LegacyAccountDto legacyAccountDto = this.account;
        if (legacyAccountDto == null) {
            Intrinsics.throwUninitializedPropertyAccessException("account");
            throw null;
        }
        CryptoResultAnnotation cryptoResultAnnotation = messageViewInfo.cryptoResultAnnotation;
        messageCryptoPresenter.cryptoResultAnnotation = cryptoResultAnnotation;
        MessageCryptoDisplayStatus.Companion.getClass();
        MessageCryptoDisplayStatus fromResultAnnotation = MessageCryptoDisplayStatus.Companion.fromResultAnnotation(cryptoResultAnnotation);
        int i = 1;
        if (fromResultAnnotation == MessageCryptoDisplayStatus.DISABLED) {
            MessageTopView messageTopView2 = this.messageTopView;
            if (messageTopView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("messageTopView");
                throw null;
            }
            LegacyAccountDto legacyAccountDto2 = this.account;
            if (legacyAccountDto2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("account");
                throw null;
            }
            messageTopView2.showMessage(legacyAccountDto2, messageViewInfo);
            LegacyAccountDto legacyAccountDto3 = this.account;
            if (legacyAccountDto3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("account");
                throw null;
            }
            r1 = legacyAccountDto3.openPgpProvider != null ? 1 : 0;
            MessageTopView messageTopView3 = this.messageTopView;
            if (r1 != 0) {
                if (messageTopView3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("messageTopView");
                    throw null;
                }
                messageTopView3.getMessageHeaderView().setCryptoStatusDisabled();
            } else {
                if (messageTopView3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("messageTopView");
                    throw null;
                }
                messageTopView3.getMessageHeaderView().cryptoStatusIcon.setVisibility(8);
            }
        } else {
            messageTopView.getMessageHeaderView().setCryptoStatus(fromResultAnnotation);
            int ordinal = fromResultAnnotation.ordinal();
            if (ordinal == 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Displaying message while in loading state!");
                return;
            }
            if (ordinal != 1) {
                switch (ordinal) {
                    case 22:
                    case 25:
                        Drawable openPgpApiProviderIcon = MessageCryptoPresenter.getOpenPgpApiProviderIcon(messageTopView.getContext(), legacyAccountDto.getOpenPgpProvider());
                        messageTopView.resetAndPrepareMessageView(messageViewInfo);
                        LayoutInflater layoutInflater = messageTopView.layoutInflater;
                        if (layoutInflater == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("layoutInflater");
                            throw null;
                        }
                        ViewGroup viewGroup = messageTopView.containerView;
                        if (viewGroup == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("containerView");
                            throw null;
                        }
                        View inflate = layoutInflater.inflate(R.layout.message_content_crypto_error, viewGroup, false);
                        inflate.getClass();
                        messageTopView.setCryptoProviderIcon(openPgpApiProviderIcon, inflate);
                        MaterialTextView materialTextView = (MaterialTextView) inflate.findViewById(R.id.crypto_error_text);
                        OpenPgpError openPgpError = messageViewInfo.cryptoResultAnnotation.openPgpError;
                        if (openPgpError != null) {
                            materialTextView.setText(openPgpError.message);
                        }
                        ViewGroup viewGroup2 = messageTopView.containerView;
                        if (viewGroup2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("containerView");
                            throw null;
                        }
                        viewGroup2.addView(inflate);
                        messageTopView.displayViewOnLoadFinished(false);
                        break;
                    case 23:
                        Drawable openPgpApiProviderIcon2 = MessageCryptoPresenter.getOpenPgpApiProviderIcon(messageTopView.getContext(), legacyAccountDto.getOpenPgpProvider());
                        messageTopView.resetAndPrepareMessageView(messageViewInfo);
                        LayoutInflater layoutInflater2 = messageTopView.layoutInflater;
                        if (layoutInflater2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("layoutInflater");
                            throw null;
                        }
                        ViewGroup viewGroup3 = messageTopView.containerView;
                        if (viewGroup3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("containerView");
                            throw null;
                        }
                        View inflate2 = layoutInflater2.inflate(R.layout.message_content_crypto_incomplete, viewGroup3, false);
                        inflate2.getClass();
                        messageTopView.setCryptoProviderIcon(openPgpApiProviderIcon2, inflate2);
                        ViewGroup viewGroup4 = messageTopView.containerView;
                        if (viewGroup4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("containerView");
                            throw null;
                        }
                        viewGroup4.addView(inflate2);
                        messageTopView.displayViewOnLoadFinished(false);
                        break;
                    case 24:
                        messageTopView.resetAndPrepareMessageView(messageViewInfo);
                        LayoutInflater layoutInflater3 = messageTopView.layoutInflater;
                        if (layoutInflater3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("layoutInflater");
                            throw null;
                        }
                        ViewGroup viewGroup5 = messageTopView.containerView;
                        if (viewGroup5 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("containerView");
                            throw null;
                        }
                        View inflate3 = layoutInflater3.inflate(R.layout.message_content_crypto_no_provider, viewGroup5, false);
                        inflate3.findViewById(R.id.crypto_settings).setOnClickListener(new MessageTopView$$ExternalSyntheticLambda0(messageTopView, r1));
                        ViewGroup viewGroup6 = messageTopView.containerView;
                        if (viewGroup6 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("containerView");
                            throw null;
                        }
                        viewGroup6.addView(inflate3);
                        messageTopView.displayViewOnLoadFinished(false);
                        break;
                    default:
                        messageTopView.showMessage(legacyAccountDto, messageViewInfo);
                        break;
                }
            } else {
                Drawable openPgpApiProviderIcon3 = MessageCryptoPresenter.getOpenPgpApiProviderIcon(messageTopView.getContext(), legacyAccountDto.getOpenPgpProvider());
                messageTopView.resetAndPrepareMessageView(messageViewInfo);
                LayoutInflater layoutInflater4 = messageTopView.layoutInflater;
                if (layoutInflater4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("layoutInflater");
                    throw null;
                }
                ViewGroup viewGroup7 = messageTopView.containerView;
                if (viewGroup7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("containerView");
                    throw null;
                }
                View inflate4 = layoutInflater4.inflate(R.layout.message_content_crypto_cancelled, viewGroup7, false);
                inflate4.getClass();
                messageTopView.setCryptoProviderIcon(openPgpApiProviderIcon3, inflate4);
                inflate4.findViewById(R.id.crypto_cancelled_retry).setOnClickListener(new MessageTopView$$ExternalSyntheticLambda0(messageTopView, i));
                ViewGroup viewGroup8 = messageTopView.containerView;
                if (viewGroup8 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("containerView");
                    throw null;
                }
                viewGroup8.addView(inflate4);
                messageTopView.displayViewOnLoadFinished(false);
            }
        }
        String str = messageViewInfo.subject;
        if (str != null) {
            if (str.length() == 0) {
                str = getString(R.string.general_no_subject);
                str.getClass();
            }
            MessageTopView messageTopView4 = this.messageTopView;
            if (messageTopView4 != null) {
                messageTopView4.setSubject(str);
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("messageTopView");
                throw null;
            }
        }
    }

    public final void toggleFlag(Flag flag) {
        if (isOutbox$1()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
            return;
        }
        LocalMessage localMessage = this.message;
        if (localMessage == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return;
        }
        boolean z = !localMessage.mFlags.contains(flag);
        MessagingController messagingController$3 = getMessagingController$3();
        LegacyAccountDto legacyAccountDto = this.account;
        if (legacyAccountDto == null) {
            Intrinsics.throwUninitializedPropertyAccessException("account");
            throw null;
        }
        messagingController$3.setFlag(legacyAccountDto, localMessage.mFolder.databaseId, IntOffsetKt.listOf(localMessage), flag, z);
        MessageTopView messageTopView = this.messageTopView;
        if (messageTopView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageTopView");
            throw null;
        }
        LegacyAccountDto legacyAccountDto2 = this.account;
        if (legacyAccountDto2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("account");
            throw null;
        }
        messageTopView.getMessageHeaderView().populate(localMessage, legacyAccountDto2, true, messageTopView.showAccountIndicator);
        messageTopView.getMessageHeaderView().setVisibility(0);
        AppCompatActivity activity = getActivity();
        if (activity != null) {
            activity.invalidateOptionsMenu();
        }
    }

    @Override // com.fsck.k9.fragment.ConfirmationDialogFragment.ConfirmationDialogFragmentListener
    public final void dialogCancelled(int i) {
    }

    @Override // com.fsck.k9.fragment.ConfirmationDialogFragment.ConfirmationDialogFragmentListener
    public final void doNegativeClick(int i) {
    }
}
