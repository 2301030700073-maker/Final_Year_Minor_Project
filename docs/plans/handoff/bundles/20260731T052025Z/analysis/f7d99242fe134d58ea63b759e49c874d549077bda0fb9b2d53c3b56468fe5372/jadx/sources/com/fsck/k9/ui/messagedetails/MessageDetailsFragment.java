package com.fsck.k9.ui.messagedetails;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.appcompat.widget.PopupMenu;
import androidx.appcompat.widget.Toolbar;
import androidx.camera.camera2.interop.CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.compose.animation.core.MutatorMutex$mutate$2;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import androidx.recyclerview.widget.FastScroller;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2;
import androidx.work.Data;
import app.k9mail.core.android.common.contact.CachingContactRepository;
import app.k9mail.core.android.common.contact.ContactRepository;
import app.k9mail.legacy.message.controller.MessageReference;
import app.k9mail.ui.utils.bottomsheet.ToolbarBottomSheetDialog;
import app.k9mail.ui.utils.bottomsheet.ToolbarBottomSheetDialogFragment;
import com.fsck.k9.K9$$ExternalSyntheticLambda0;
import com.fsck.k9.Preferences$getAccountsFlow$1;
import com.fsck.k9.R;
import com.fsck.k9.activity.AlternateRecipientAdapter$$ExternalSyntheticLambda0;
import com.fsck.k9.contacts.ContactPictureLoader;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mailstore.CryptoResultAnnotation;
import com.fsck.k9.ui.messagedetails.CryptoStatusItem;
import com.fsck.k9.ui.messagedetails.ParticipantItem;
import com.fsck.k9.view.MessageCryptoDisplayStatus;
import com.google.zxing.BinaryBitmap;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.adapters.ItemAdapter;
import com.mikepenz.fastadapter.items.AbstractItem;
import com.mikepenz.fastadapter.listeners.ClickEventHook;
import com.skydoves.landscapist.ImageLoadKt$ImageLoad$1$1$1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http2.Http2Connection;
import org.openintents.openpgp.OpenPgpSignatureResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageDetailsFragment extends ToolbarBottomSheetDialogFragment {
    public final MessageDetailsFragment$overflowClickEventHook$1 addToContactsClickEventHook;
    public final Lazy addToContactsLauncher$delegate;
    public final Lazy contactPictureLoader$delegate;
    public CryptoResultAnnotation cryptoResult;
    public final MessageDetailsFragment$overflowClickEventHook$1 cryptoStatusClickEventHook;
    public final Lazy folderIconProvider$delegate;
    public final ItemAdapter itemAdapter;
    public MessageReference messageReference;
    public final MessageDetailsFragment$overflowClickEventHook$1 overflowClickEventHook;
    public final MessageDetailsFragment$overflowClickEventHook$1 participantClickEventHook;
    public final Lazy showContactLauncher$delegate;
    public final Lazy viewModel$delegate;

    /* JADX WARN: Type inference failed for: r0v12, types: [com.fsck.k9.ui.messagedetails.MessageDetailsFragment$overflowClickEventHook$1] */
    /* JADX WARN: Type inference failed for: r0v13, types: [com.fsck.k9.ui.messagedetails.MessageDetailsFragment$overflowClickEventHook$1] */
    /* JADX WARN: Type inference failed for: r0v14, types: [com.fsck.k9.ui.messagedetails.MessageDetailsFragment$overflowClickEventHook$1] */
    /* JADX WARN: Type inference failed for: r0v15, types: [com.fsck.k9.ui.messagedetails.MessageDetailsFragment$overflowClickEventHook$1] */
    public MessageDetailsFragment() {
        final int i = 3;
        this.viewModel$delegate = ResultKt.lazy(LazyThreadSafetyMode.NONE, new Http2Connection.ReaderRunnable(12, this, new MessageDetailsFragment$special$$inlined$inject$default$1(this, i)));
        final int i2 = 0;
        MessageDetailsFragment$special$$inlined$inject$default$1 messageDetailsFragment$special$$inlined$inject$default$1 = new MessageDetailsFragment$special$$inlined$inject$default$1(this, i2);
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.addToContactsLauncher$delegate = ResultKt.lazy(lazyThreadSafetyMode, messageDetailsFragment$special$$inlined$inject$default$1);
        final int i3 = 1;
        this.showContactLauncher$delegate = ResultKt.lazy(lazyThreadSafetyMode, new MessageDetailsFragment$special$$inlined$inject$default$1(this, i3));
        final int i4 = 2;
        this.contactPictureLoader$delegate = ResultKt.lazy(lazyThreadSafetyMode, new MessageDetailsFragment$special$$inlined$inject$default$1(this, i4));
        this.folderIconProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Http2Connection.ReaderRunnable(11, this, new K9$$ExternalSyntheticLambda0(17, this)));
        this.itemAdapter = new ItemAdapter();
        this.cryptoStatusClickEventHook = new ClickEventHook(this) { // from class: com.fsck.k9.ui.messagedetails.MessageDetailsFragment$overflowClickEventHook$1
            public final /* synthetic */ MessageDetailsFragment this$0;

            {
                this.this$0 = this;
            }

            @Override // com.mikepenz.fastadapter.listeners.ClickEventHook, com.mikepenz.fastadapter.listeners.EventHook
            public final View onBind(RecyclerView.ViewHolder viewHolder) {
                switch (i4) {
                    case 0:
                        if (viewHolder instanceof ParticipantItem.ViewHolder) {
                            break;
                        }
                        break;
                    case 1:
                        if (viewHolder instanceof ParticipantItem.ViewHolder) {
                            break;
                        }
                        break;
                    case 2:
                        if (viewHolder instanceof CryptoStatusItem.ViewHolder) {
                            break;
                        }
                        break;
                    default:
                        if (viewHolder instanceof ParticipantItem.ViewHolder) {
                            break;
                        }
                        break;
                }
                return viewHolder.itemView;
            }

            @Override // com.mikepenz.fastadapter.listeners.ClickEventHook
            public final void onClick(View view, int i5, FastAdapter fastAdapter, AbstractItem abstractItem) {
                MessageDetailsViewModel viewModel;
                CryptoResultAnnotation cryptoResultAnnotation;
                OpenPgpSignatureResult openPgpSignatureResult;
                int i6 = i4;
                MessageDetailsFragment messageDetailsFragment = this.this$0;
                switch (i6) {
                    case 0:
                        Participant participant = ((ParticipantItem) abstractItem).participant;
                        Context requireContext = messageDetailsFragment.requireContext();
                        PopupMenu popupMenu = new PopupMenu(requireContext, view);
                        SupportMenuInflater supportMenuInflater = new SupportMenuInflater(requireContext);
                        MenuBuilder menuBuilder = popupMenu.mMenu;
                        supportMenuInflater.inflate(R.menu.participant_overflow_menu, menuBuilder);
                        menuBuilder.getClass();
                        menuBuilder.mGroupDividerEnabled = true;
                        if (participant.getAddress().personal == null) {
                            menuBuilder.findItem(R.id.copy_name_and_email_address).setVisible(false);
                        }
                        popupMenu.mMenuItemClickListener = new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(18, messageDetailsFragment, participant);
                        MenuPopupHelper menuPopupHelper = popupMenu.mPopup;
                        if (!menuPopupHelper.isShowing()) {
                            if (menuPopupHelper.mAnchorView == null) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("MenuPopupHelper cannot be used without an anchor");
                                break;
                            } else {
                                menuPopupHelper.showPopup(0, 0, false, false);
                                break;
                            }
                        }
                        break;
                    case 1:
                        Address address = ((ParticipantItem) abstractItem).participant.getAddress();
                        AddToContactsLauncher addToContactsLauncher = (AddToContactsLauncher) messageDetailsFragment.addToContactsLauncher$delegate.getValue();
                        Context requireContext2 = messageDetailsFragment.requireContext();
                        String str = address.personal;
                        String str2 = address.address;
                        addToContactsLauncher.getClass();
                        str2.getClass();
                        Intent intent = new Intent("android.intent.action.INSERT_OR_EDIT");
                        intent.setType("vnd.android.cursor.item/contact");
                        intent.putExtra("email", str2);
                        if (str != null) {
                            intent.putExtra("name", str);
                        }
                        intent.setFlags(268959744);
                        requireContext2.startActivity(intent);
                        break;
                    case 2:
                        if (((CryptoStatusItem) abstractItem).cryptoDetails.isClickable && (cryptoResultAnnotation = (viewModel = messageDetailsFragment.getViewModel()).cryptoResult) != null) {
                            MessageCryptoDisplayStatus.Companion.getClass();
                            MessageCryptoDisplayStatus fromResultAnnotation = MessageCryptoDisplayStatus.Companion.fromResultAnnotation(cryptoResultAnnotation);
                            switch (fromResultAnnotation.ordinal()) {
                                case 5:
                                case 6:
                                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                case 9:
                                case 10:
                                case 11:
                                case BasicTextKt.ShiftMeta /* 12 */:
                                case 13:
                                case OffsetKt.Horizontal /* 15 */:
                                case 16:
                                case 17:
                                case 18:
                                    CryptoResultAnnotation cryptoResultAnnotation2 = cryptoResultAnnotation.encapsulatedResult;
                                    OpenPgpSignatureResult openPgpSignatureResult2 = cryptoResultAnnotation.openPgpSignatureResult;
                                    PendingIntent pendingIntent = (openPgpSignatureResult2 == null || openPgpSignatureResult2.result == -1) ? (cryptoResultAnnotation2 == null || (openPgpSignatureResult = cryptoResultAnnotation2.openPgpSignatureResult) == null || openPgpSignatureResult.result == -1) ? null : cryptoResultAnnotation2.openPgpPendingIntent : cryptoResultAnnotation.openPgpPendingIntent;
                                    if (pendingIntent != null) {
                                        JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel), null, null, new Preferences$getAccountsFlow$1(viewModel, pendingIntent, (Continuation) null, 9), 3);
                                        break;
                                    }
                                    break;
                                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                case 14:
                                default:
                                    int ordinal = fromResultAnnotation.ordinal();
                                    if (ordinal != 7 && ordinal != 14) {
                                        if (cryptoResultAnnotation.openPgpInsecureWarningPendingIntent != null) {
                                            JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel), null, null, new MessageDetailsViewModel$onCryptoStatusClicked$2(viewModel, null, 1), 3);
                                            break;
                                        }
                                    } else {
                                        JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel), null, null, new MessageDetailsViewModel$onCryptoStatusClicked$2(viewModel, null, 0), 3);
                                        break;
                                    }
                                    break;
                            }
                        }
                        break;
                    default:
                        Uri uri = ((ParticipantItem) abstractItem).participant.contactLookupUri;
                        if (uri != null) {
                            ShowContactLauncher showContactLauncher = (ShowContactLauncher) messageDetailsFragment.showContactLauncher$delegate.getValue();
                            Context requireContext3 = messageDetailsFragment.requireContext();
                            showContactLauncher.getClass();
                            Intent intent2 = new Intent("android.intent.action.VIEW");
                            intent2.setData(uri);
                            intent2.setFlags(268959744);
                            requireContext3.startActivity(intent2);
                            break;
                        }
                        break;
                }
            }
        };
        this.participantClickEventHook = new ClickEventHook(this) { // from class: com.fsck.k9.ui.messagedetails.MessageDetailsFragment$overflowClickEventHook$1
            public final /* synthetic */ MessageDetailsFragment this$0;

            {
                this.this$0 = this;
            }

            @Override // com.mikepenz.fastadapter.listeners.ClickEventHook, com.mikepenz.fastadapter.listeners.EventHook
            public final View onBind(RecyclerView.ViewHolder viewHolder) {
                switch (i) {
                    case 0:
                        if (viewHolder instanceof ParticipantItem.ViewHolder) {
                            break;
                        }
                        break;
                    case 1:
                        if (viewHolder instanceof ParticipantItem.ViewHolder) {
                            break;
                        }
                        break;
                    case 2:
                        if (viewHolder instanceof CryptoStatusItem.ViewHolder) {
                            break;
                        }
                        break;
                    default:
                        if (viewHolder instanceof ParticipantItem.ViewHolder) {
                            break;
                        }
                        break;
                }
                return viewHolder.itemView;
            }

            @Override // com.mikepenz.fastadapter.listeners.ClickEventHook
            public final void onClick(View view, int i5, FastAdapter fastAdapter, AbstractItem abstractItem) {
                MessageDetailsViewModel viewModel;
                CryptoResultAnnotation cryptoResultAnnotation;
                OpenPgpSignatureResult openPgpSignatureResult;
                int i6 = i;
                MessageDetailsFragment messageDetailsFragment = this.this$0;
                switch (i6) {
                    case 0:
                        Participant participant = ((ParticipantItem) abstractItem).participant;
                        Context requireContext = messageDetailsFragment.requireContext();
                        PopupMenu popupMenu = new PopupMenu(requireContext, view);
                        SupportMenuInflater supportMenuInflater = new SupportMenuInflater(requireContext);
                        MenuBuilder menuBuilder = popupMenu.mMenu;
                        supportMenuInflater.inflate(R.menu.participant_overflow_menu, menuBuilder);
                        menuBuilder.getClass();
                        menuBuilder.mGroupDividerEnabled = true;
                        if (participant.getAddress().personal == null) {
                            menuBuilder.findItem(R.id.copy_name_and_email_address).setVisible(false);
                        }
                        popupMenu.mMenuItemClickListener = new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(18, messageDetailsFragment, participant);
                        MenuPopupHelper menuPopupHelper = popupMenu.mPopup;
                        if (!menuPopupHelper.isShowing()) {
                            if (menuPopupHelper.mAnchorView == null) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("MenuPopupHelper cannot be used without an anchor");
                                break;
                            } else {
                                menuPopupHelper.showPopup(0, 0, false, false);
                                break;
                            }
                        }
                        break;
                    case 1:
                        Address address = ((ParticipantItem) abstractItem).participant.getAddress();
                        AddToContactsLauncher addToContactsLauncher = (AddToContactsLauncher) messageDetailsFragment.addToContactsLauncher$delegate.getValue();
                        Context requireContext2 = messageDetailsFragment.requireContext();
                        String str = address.personal;
                        String str2 = address.address;
                        addToContactsLauncher.getClass();
                        str2.getClass();
                        Intent intent = new Intent("android.intent.action.INSERT_OR_EDIT");
                        intent.setType("vnd.android.cursor.item/contact");
                        intent.putExtra("email", str2);
                        if (str != null) {
                            intent.putExtra("name", str);
                        }
                        intent.setFlags(268959744);
                        requireContext2.startActivity(intent);
                        break;
                    case 2:
                        if (((CryptoStatusItem) abstractItem).cryptoDetails.isClickable && (cryptoResultAnnotation = (viewModel = messageDetailsFragment.getViewModel()).cryptoResult) != null) {
                            MessageCryptoDisplayStatus.Companion.getClass();
                            MessageCryptoDisplayStatus fromResultAnnotation = MessageCryptoDisplayStatus.Companion.fromResultAnnotation(cryptoResultAnnotation);
                            switch (fromResultAnnotation.ordinal()) {
                                case 5:
                                case 6:
                                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                case 9:
                                case 10:
                                case 11:
                                case BasicTextKt.ShiftMeta /* 12 */:
                                case 13:
                                case OffsetKt.Horizontal /* 15 */:
                                case 16:
                                case 17:
                                case 18:
                                    CryptoResultAnnotation cryptoResultAnnotation2 = cryptoResultAnnotation.encapsulatedResult;
                                    OpenPgpSignatureResult openPgpSignatureResult2 = cryptoResultAnnotation.openPgpSignatureResult;
                                    PendingIntent pendingIntent = (openPgpSignatureResult2 == null || openPgpSignatureResult2.result == -1) ? (cryptoResultAnnotation2 == null || (openPgpSignatureResult = cryptoResultAnnotation2.openPgpSignatureResult) == null || openPgpSignatureResult.result == -1) ? null : cryptoResultAnnotation2.openPgpPendingIntent : cryptoResultAnnotation.openPgpPendingIntent;
                                    if (pendingIntent != null) {
                                        JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel), null, null, new Preferences$getAccountsFlow$1(viewModel, pendingIntent, (Continuation) null, 9), 3);
                                        break;
                                    }
                                    break;
                                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                case 14:
                                default:
                                    int ordinal = fromResultAnnotation.ordinal();
                                    if (ordinal != 7 && ordinal != 14) {
                                        if (cryptoResultAnnotation.openPgpInsecureWarningPendingIntent != null) {
                                            JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel), null, null, new MessageDetailsViewModel$onCryptoStatusClicked$2(viewModel, null, 1), 3);
                                            break;
                                        }
                                    } else {
                                        JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel), null, null, new MessageDetailsViewModel$onCryptoStatusClicked$2(viewModel, null, 0), 3);
                                        break;
                                    }
                                    break;
                            }
                        }
                        break;
                    default:
                        Uri uri = ((ParticipantItem) abstractItem).participant.contactLookupUri;
                        if (uri != null) {
                            ShowContactLauncher showContactLauncher = (ShowContactLauncher) messageDetailsFragment.showContactLauncher$delegate.getValue();
                            Context requireContext3 = messageDetailsFragment.requireContext();
                            showContactLauncher.getClass();
                            Intent intent2 = new Intent("android.intent.action.VIEW");
                            intent2.setData(uri);
                            intent2.setFlags(268959744);
                            requireContext3.startActivity(intent2);
                            break;
                        }
                        break;
                }
            }
        };
        this.addToContactsClickEventHook = new ClickEventHook(this) { // from class: com.fsck.k9.ui.messagedetails.MessageDetailsFragment$overflowClickEventHook$1
            public final /* synthetic */ MessageDetailsFragment this$0;

            {
                this.this$0 = this;
            }

            @Override // com.mikepenz.fastadapter.listeners.ClickEventHook, com.mikepenz.fastadapter.listeners.EventHook
            public final View onBind(RecyclerView.ViewHolder viewHolder) {
                switch (i3) {
                    case 0:
                        if (viewHolder instanceof ParticipantItem.ViewHolder) {
                            break;
                        }
                        break;
                    case 1:
                        if (viewHolder instanceof ParticipantItem.ViewHolder) {
                            break;
                        }
                        break;
                    case 2:
                        if (viewHolder instanceof CryptoStatusItem.ViewHolder) {
                            break;
                        }
                        break;
                    default:
                        if (viewHolder instanceof ParticipantItem.ViewHolder) {
                            break;
                        }
                        break;
                }
                return viewHolder.itemView;
            }

            @Override // com.mikepenz.fastadapter.listeners.ClickEventHook
            public final void onClick(View view, int i5, FastAdapter fastAdapter, AbstractItem abstractItem) {
                MessageDetailsViewModel viewModel;
                CryptoResultAnnotation cryptoResultAnnotation;
                OpenPgpSignatureResult openPgpSignatureResult;
                int i6 = i3;
                MessageDetailsFragment messageDetailsFragment = this.this$0;
                switch (i6) {
                    case 0:
                        Participant participant = ((ParticipantItem) abstractItem).participant;
                        Context requireContext = messageDetailsFragment.requireContext();
                        PopupMenu popupMenu = new PopupMenu(requireContext, view);
                        SupportMenuInflater supportMenuInflater = new SupportMenuInflater(requireContext);
                        MenuBuilder menuBuilder = popupMenu.mMenu;
                        supportMenuInflater.inflate(R.menu.participant_overflow_menu, menuBuilder);
                        menuBuilder.getClass();
                        menuBuilder.mGroupDividerEnabled = true;
                        if (participant.getAddress().personal == null) {
                            menuBuilder.findItem(R.id.copy_name_and_email_address).setVisible(false);
                        }
                        popupMenu.mMenuItemClickListener = new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(18, messageDetailsFragment, participant);
                        MenuPopupHelper menuPopupHelper = popupMenu.mPopup;
                        if (!menuPopupHelper.isShowing()) {
                            if (menuPopupHelper.mAnchorView == null) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("MenuPopupHelper cannot be used without an anchor");
                                break;
                            } else {
                                menuPopupHelper.showPopup(0, 0, false, false);
                                break;
                            }
                        }
                        break;
                    case 1:
                        Address address = ((ParticipantItem) abstractItem).participant.getAddress();
                        AddToContactsLauncher addToContactsLauncher = (AddToContactsLauncher) messageDetailsFragment.addToContactsLauncher$delegate.getValue();
                        Context requireContext2 = messageDetailsFragment.requireContext();
                        String str = address.personal;
                        String str2 = address.address;
                        addToContactsLauncher.getClass();
                        str2.getClass();
                        Intent intent = new Intent("android.intent.action.INSERT_OR_EDIT");
                        intent.setType("vnd.android.cursor.item/contact");
                        intent.putExtra("email", str2);
                        if (str != null) {
                            intent.putExtra("name", str);
                        }
                        intent.setFlags(268959744);
                        requireContext2.startActivity(intent);
                        break;
                    case 2:
                        if (((CryptoStatusItem) abstractItem).cryptoDetails.isClickable && (cryptoResultAnnotation = (viewModel = messageDetailsFragment.getViewModel()).cryptoResult) != null) {
                            MessageCryptoDisplayStatus.Companion.getClass();
                            MessageCryptoDisplayStatus fromResultAnnotation = MessageCryptoDisplayStatus.Companion.fromResultAnnotation(cryptoResultAnnotation);
                            switch (fromResultAnnotation.ordinal()) {
                                case 5:
                                case 6:
                                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                case 9:
                                case 10:
                                case 11:
                                case BasicTextKt.ShiftMeta /* 12 */:
                                case 13:
                                case OffsetKt.Horizontal /* 15 */:
                                case 16:
                                case 17:
                                case 18:
                                    CryptoResultAnnotation cryptoResultAnnotation2 = cryptoResultAnnotation.encapsulatedResult;
                                    OpenPgpSignatureResult openPgpSignatureResult2 = cryptoResultAnnotation.openPgpSignatureResult;
                                    PendingIntent pendingIntent = (openPgpSignatureResult2 == null || openPgpSignatureResult2.result == -1) ? (cryptoResultAnnotation2 == null || (openPgpSignatureResult = cryptoResultAnnotation2.openPgpSignatureResult) == null || openPgpSignatureResult.result == -1) ? null : cryptoResultAnnotation2.openPgpPendingIntent : cryptoResultAnnotation.openPgpPendingIntent;
                                    if (pendingIntent != null) {
                                        JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel), null, null, new Preferences$getAccountsFlow$1(viewModel, pendingIntent, (Continuation) null, 9), 3);
                                        break;
                                    }
                                    break;
                                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                case 14:
                                default:
                                    int ordinal = fromResultAnnotation.ordinal();
                                    if (ordinal != 7 && ordinal != 14) {
                                        if (cryptoResultAnnotation.openPgpInsecureWarningPendingIntent != null) {
                                            JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel), null, null, new MessageDetailsViewModel$onCryptoStatusClicked$2(viewModel, null, 1), 3);
                                            break;
                                        }
                                    } else {
                                        JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel), null, null, new MessageDetailsViewModel$onCryptoStatusClicked$2(viewModel, null, 0), 3);
                                        break;
                                    }
                                    break;
                            }
                        }
                        break;
                    default:
                        Uri uri = ((ParticipantItem) abstractItem).participant.contactLookupUri;
                        if (uri != null) {
                            ShowContactLauncher showContactLauncher = (ShowContactLauncher) messageDetailsFragment.showContactLauncher$delegate.getValue();
                            Context requireContext3 = messageDetailsFragment.requireContext();
                            showContactLauncher.getClass();
                            Intent intent2 = new Intent("android.intent.action.VIEW");
                            intent2.setData(uri);
                            intent2.setFlags(268959744);
                            requireContext3.startActivity(intent2);
                            break;
                        }
                        break;
                }
            }
        };
        this.overflowClickEventHook = new ClickEventHook(this) { // from class: com.fsck.k9.ui.messagedetails.MessageDetailsFragment$overflowClickEventHook$1
            public final /* synthetic */ MessageDetailsFragment this$0;

            {
                this.this$0 = this;
            }

            @Override // com.mikepenz.fastadapter.listeners.ClickEventHook, com.mikepenz.fastadapter.listeners.EventHook
            public final View onBind(RecyclerView.ViewHolder viewHolder) {
                switch (i2) {
                    case 0:
                        if (viewHolder instanceof ParticipantItem.ViewHolder) {
                            break;
                        }
                        break;
                    case 1:
                        if (viewHolder instanceof ParticipantItem.ViewHolder) {
                            break;
                        }
                        break;
                    case 2:
                        if (viewHolder instanceof CryptoStatusItem.ViewHolder) {
                            break;
                        }
                        break;
                    default:
                        if (viewHolder instanceof ParticipantItem.ViewHolder) {
                            break;
                        }
                        break;
                }
                return viewHolder.itemView;
            }

            @Override // com.mikepenz.fastadapter.listeners.ClickEventHook
            public final void onClick(View view, int i5, FastAdapter fastAdapter, AbstractItem abstractItem) {
                MessageDetailsViewModel viewModel;
                CryptoResultAnnotation cryptoResultAnnotation;
                OpenPgpSignatureResult openPgpSignatureResult;
                int i6 = i2;
                MessageDetailsFragment messageDetailsFragment = this.this$0;
                switch (i6) {
                    case 0:
                        Participant participant = ((ParticipantItem) abstractItem).participant;
                        Context requireContext = messageDetailsFragment.requireContext();
                        PopupMenu popupMenu = new PopupMenu(requireContext, view);
                        SupportMenuInflater supportMenuInflater = new SupportMenuInflater(requireContext);
                        MenuBuilder menuBuilder = popupMenu.mMenu;
                        supportMenuInflater.inflate(R.menu.participant_overflow_menu, menuBuilder);
                        menuBuilder.getClass();
                        menuBuilder.mGroupDividerEnabled = true;
                        if (participant.getAddress().personal == null) {
                            menuBuilder.findItem(R.id.copy_name_and_email_address).setVisible(false);
                        }
                        popupMenu.mMenuItemClickListener = new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(18, messageDetailsFragment, participant);
                        MenuPopupHelper menuPopupHelper = popupMenu.mPopup;
                        if (!menuPopupHelper.isShowing()) {
                            if (menuPopupHelper.mAnchorView == null) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("MenuPopupHelper cannot be used without an anchor");
                                break;
                            } else {
                                menuPopupHelper.showPopup(0, 0, false, false);
                                break;
                            }
                        }
                        break;
                    case 1:
                        Address address = ((ParticipantItem) abstractItem).participant.getAddress();
                        AddToContactsLauncher addToContactsLauncher = (AddToContactsLauncher) messageDetailsFragment.addToContactsLauncher$delegate.getValue();
                        Context requireContext2 = messageDetailsFragment.requireContext();
                        String str = address.personal;
                        String str2 = address.address;
                        addToContactsLauncher.getClass();
                        str2.getClass();
                        Intent intent = new Intent("android.intent.action.INSERT_OR_EDIT");
                        intent.setType("vnd.android.cursor.item/contact");
                        intent.putExtra("email", str2);
                        if (str != null) {
                            intent.putExtra("name", str);
                        }
                        intent.setFlags(268959744);
                        requireContext2.startActivity(intent);
                        break;
                    case 2:
                        if (((CryptoStatusItem) abstractItem).cryptoDetails.isClickable && (cryptoResultAnnotation = (viewModel = messageDetailsFragment.getViewModel()).cryptoResult) != null) {
                            MessageCryptoDisplayStatus.Companion.getClass();
                            MessageCryptoDisplayStatus fromResultAnnotation = MessageCryptoDisplayStatus.Companion.fromResultAnnotation(cryptoResultAnnotation);
                            switch (fromResultAnnotation.ordinal()) {
                                case 5:
                                case 6:
                                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                case 9:
                                case 10:
                                case 11:
                                case BasicTextKt.ShiftMeta /* 12 */:
                                case 13:
                                case OffsetKt.Horizontal /* 15 */:
                                case 16:
                                case 17:
                                case 18:
                                    CryptoResultAnnotation cryptoResultAnnotation2 = cryptoResultAnnotation.encapsulatedResult;
                                    OpenPgpSignatureResult openPgpSignatureResult2 = cryptoResultAnnotation.openPgpSignatureResult;
                                    PendingIntent pendingIntent = (openPgpSignatureResult2 == null || openPgpSignatureResult2.result == -1) ? (cryptoResultAnnotation2 == null || (openPgpSignatureResult = cryptoResultAnnotation2.openPgpSignatureResult) == null || openPgpSignatureResult.result == -1) ? null : cryptoResultAnnotation2.openPgpPendingIntent : cryptoResultAnnotation.openPgpPendingIntent;
                                    if (pendingIntent != null) {
                                        JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel), null, null, new Preferences$getAccountsFlow$1(viewModel, pendingIntent, (Continuation) null, 9), 3);
                                        break;
                                    }
                                    break;
                                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                case 14:
                                default:
                                    int ordinal = fromResultAnnotation.ordinal();
                                    if (ordinal != 7 && ordinal != 14) {
                                        if (cryptoResultAnnotation.openPgpInsecureWarningPendingIntent != null) {
                                            JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel), null, null, new MessageDetailsViewModel$onCryptoStatusClicked$2(viewModel, null, 1), 3);
                                            break;
                                        }
                                    } else {
                                        JobKt.launch$default(ViewModelKt.getViewModelScope(viewModel), null, null, new MessageDetailsViewModel$onCryptoStatusClicked$2(viewModel, null, 0), 3);
                                        break;
                                    }
                                    break;
                            }
                        }
                        break;
                    default:
                        Uri uri = ((ParticipantItem) abstractItem).participant.contactLookupUri;
                        if (uri != null) {
                            ShowContactLauncher showContactLauncher = (ShowContactLauncher) messageDetailsFragment.showContactLauncher$delegate.getValue();
                            Context requireContext3 = messageDetailsFragment.requireContext();
                            showContactLauncher.getClass();
                            Intent intent2 = new Intent("android.intent.action.VIEW");
                            intent2.setData(uri);
                            intent2.setFlags(268959744);
                            requireContext3.startActivity(intent2);
                            break;
                        }
                        break;
                }
            }
        };
    }

    public final void addParticipants(ListBuilder listBuilder, List list, int i, MessageDetailsAppearance messageDetailsAppearance) {
        if (list.isEmpty()) {
            return;
        }
        String valueOf = list.size() > 1 ? String.valueOf(list.size()) : null;
        String string = getString(i);
        string.getClass();
        listBuilder.add(new SectionHeaderItem(string, valueOf));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            listBuilder.add(new ParticipantItem((ContactPictureLoader) this.contactPictureLoader$delegate.getValue(), messageDetailsAppearance.showContactPicture, messageDetailsAppearance.alwaysHideAddToContactsButton, (Participant) it.next()));
        }
    }

    public final MessageDetailsViewModel getViewModel() {
        return (MessageDetailsViewModel) this.viewModel$delegate.getValue();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle bundle2 = this.mArguments;
        MessageReference parse = MathKt.parse(bundle2 != null ? bundle2.getString("reference") : null);
        if (parse != null) {
            this.messageReference = parse;
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Missing argument reference");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        layoutInflater.getClass();
        return layoutInflater.inflate(R.layout.message_bottom_sheet, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        this.mCalled = true;
        MessageDetailsViewModel viewModel = getViewModel();
        MessageReference messageReference = viewModel.messageReference;
        if (messageReference != null) {
            ContactRepository contactRepository = viewModel.contactRepository;
            if (contactRepository instanceof CachingContactRepository) {
                ((CachingContactRepository) contactRepository).cache.clear();
            }
            CloseableCoroutineScope viewModelScope = ViewModelKt.getViewModelScope(viewModel);
            DefaultScheduler defaultScheduler = Dispatchers.Default;
            JobKt.launch$default(viewModelScope, DefaultIoScheduler.INSTANCE, null, new MutatorMutex$mutate$2(viewModel, messageReference, (Continuation) null, 8), 2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        CryptoResultAnnotation cryptoResultAnnotation = this.cryptoResult;
        if (cryptoResultAnnotation != null) {
            getViewModel().cryptoResult = cryptoResultAnnotation;
        }
        ToolbarBottomSheetDialog toolbarBottomSheetDialog = (ToolbarBottomSheetDialog) this.mDialog;
        if (toolbarBottomSheetDialog == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return;
        }
        int i = 1;
        toolbarBottomSheetDialog.isDismissWithAnimation = true;
        Continuation continuation = null;
        Toolbar toolbar = toolbarBottomSheetDialog != null ? toolbarBottomSheetDialog.toolbar : null;
        if (toolbar == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return;
        }
        toolbar.setTitle(getString(R.string.message_details_toolbar_title));
        toolbar.setNavigationIcon(requireContext().getDrawable(R.drawable.ic_close));
        toolbar.setNavigationOnClickListener(new AlternateRecipientAdapter$$ExternalSyntheticLambda0(3, this));
        ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.message_details_progress);
        View findViewById = view.findViewById(R.id.message_details_error);
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.message_details_list);
        recyclerView.getClass();
        recyclerView.addOnScrollListener(new FastScroller.AnonymousClass2(i, toolbarBottomSheetDialog));
        ItemAdapter itemAdapter = this.itemAdapter;
        itemAdapter.getClass();
        FastAdapter fastAdapter = new FastAdapter();
        ArrayList arrayList = fastAdapter.adapters;
        int i2 = 0;
        arrayList.add(0, itemAdapter);
        BinaryBitmap binaryBitmap = itemAdapter.itemList;
        if (ImageAnalysis$$ExternalSyntheticLambda3.m(binaryBitmap)) {
            binaryBitmap.binarizer = fastAdapter;
        }
        itemAdapter.fastAdapter = fastAdapter;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            int i3 = i2 + 1;
            if (i2 < 0) {
                IntOffsetKt.throwIndexOverflow();
                throw null;
            }
            ((ItemAdapter) next).order = i2;
            i2 = i3;
        }
        fastAdapter.cacheSizes();
        fastAdapter.addEventHook(this.cryptoStatusClickEventHook);
        fastAdapter.addEventHook(this.participantClickEventHook);
        fastAdapter.addEventHook(this.addToContactsClickEventHook);
        fastAdapter.addEventHook(this.overflowClickEventHook);
        recyclerView.setAdapter(fastAdapter);
        Data.Companion.observe(getViewModel().uiEvents, this, new ImageLoadKt$ImageLoad$1$1$1(11, this));
        Data.Companion.observe(getViewModel().internalUiState, this, new TriggerBasedInvalidationTracker$createFlow$1$2(progressBar, findViewById, recyclerView, this, 4));
        MessageDetailsViewModel viewModel = getViewModel();
        MessageReference messageReference = this.messageReference;
        if (messageReference == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageReference");
            throw null;
        }
        viewModel.getClass();
        viewModel.messageReference = messageReference;
        CloseableCoroutineScope viewModelScope = ViewModelKt.getViewModelScope(viewModel);
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        JobKt.launch$default(viewModelScope, DefaultIoScheduler.INSTANCE, null, new MutatorMutex$mutate$2(viewModel, messageReference, continuation, 8), 2);
    }
}
