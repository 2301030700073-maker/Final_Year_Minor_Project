package com.fsck.k9.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.appcompat.widget.PopupMenu;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0;
import app.k9mail.legacy.message.controller.MessageReference;
import com.fsck.k9.FontSizes;
import com.fsck.k9.K9;
import com.fsck.k9.R;
import com.fsck.k9.contacts.ContactPictureLoader;
import com.fsck.k9.helper.ClipboardManager;
import com.fsck.k9.helper.IdentityHelper$$ExternalSyntheticLambda1;
import com.fsck.k9.helper.MessageHelper;
import com.fsck.k9.helper.ReplyToParser;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.Message$RecipientType;
import com.fsck.k9.mail.internet.MimeMessage;
import com.fsck.k9.mailstore.AttachmentViewInfo;
import com.fsck.k9.mailstore.MessageViewInfo;
import com.fsck.k9.message.ReplyAction;
import com.fsck.k9.message.ReplyActionStrategy;
import com.fsck.k9.message.ReplyActions;
import com.fsck.k9.ui.helper.BottomBaselineTextView;
import com.fsck.k9.ui.helper.RelativeDateTimeFormatter;
import com.fsck.k9.ui.messagedetails.MessageDetailsFragment;
import com.fsck.k9.ui.messageview.AttachmentListItemModel;
import com.fsck.k9.ui.messageview.DisplayRecipients;
import com.fsck.k9.ui.messageview.MessageCryptoPresenter;
import com.fsck.k9.ui.messageview.MessageHeaderClickListener;
import com.fsck.k9.ui.messageview.MessageViewFragment;
import com.fsck.k9.ui.messageview.MessageViewFragment$messageCryptoMvpView$1;
import com.fsck.k9.ui.messageview.RealMessageViewRecipientFormatter;
import com.fsck.k9.ui.messageview.RecipientNamesView;
import com.google.android.material.button.MaterialButton$$ExternalSyntheticLambda0;
import com.google.android.material.chip.Chip;
import com.google.android.material.textview.MaterialTextView;
import com.google.zxing.BinaryBitmap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt$flatMap$2;
import kotlin.sequences.TakeWhileSequence;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlin.time.InstantKt$$ExternalSyntheticLambda0;
import kotlinx.coroutines.flow.StateFlowImpl;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.core.preference.display.visualSettings.message.list.DefaultMessageListPreferencesManager;
import net.thunderbird.core.preference.display.visualSettings.message.list.DisplayMessageListSettings;
import net.thunderbird.core.preference.display.visualSettings.message.list.MessageListDateTimeFormat;
import okhttp3.ConnectionPool;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class MessageHeader extends LinearLayout implements View.OnClickListener, View.OnLongClickListener {
    public Chip accountNameView;
    public View attachmentSummaryContainer;
    public MaterialTextView attachmentSummaryText;
    public ImageView contactPictureView;
    public ImageView cryptoStatusIcon;
    public MaterialTextView dateView;
    public final FontSizes fontSizes;
    public MaterialTextView fromView;
    public ImageView menuPrimaryActionView;
    public MessageHeaderClickListener messageHeaderClickListener;
    public final MessageHelper messageHelper;
    public final DefaultMessageListPreferencesManager messageListPreferencesManager;
    public final RealMessageViewRecipientFormatter recipientFormatter;
    public RecipientNamesView recipientNamesView;
    public final RelativeDateTimeFormatter relativeDateTimeFormatter;
    public final ReplyActionStrategy replyActionStrategy;
    public ReplyActions replyActions;
    public ImageView starView;
    public BottomBaselineTextView subjectView;
    public MaterialTextView viewAllAttachmentsButton;

    public MessageHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.recipientFormatter = (RealMessageViewRecipientFormatter) CloseableKt.get$default(RealMessageViewRecipientFormatter.class);
        this.messageListPreferencesManager = (DefaultMessageListPreferencesManager) CloseableKt.get$default(DefaultMessageListPreferencesManager.class);
        this.replyActionStrategy = (ReplyActionStrategy) CloseableKt.get$default(ReplyActionStrategy.class);
        this.messageHelper = (MessageHelper) CloseableKt.get$default(MessageHelper.class);
        this.fontSizes = K9.fontSizes;
        isInEditMode();
        this.relativeDateTimeFormatter = (RelativeDateTimeFormatter) CloseableKt.get$default(RelativeDateTimeFormatter.class);
    }

    private void setAdditionalReplyActions(PopupMenu popupMenu) {
        List list = this.replyActions.additionalActions;
        if (!list.contains(ReplyAction.REPLY)) {
            popupMenu.mMenu.removeItem(R.id.reply);
        }
        if (list.contains(ReplyAction.REPLY_ALL)) {
            return;
        }
        popupMenu.mMenu.removeItem(R.id.reply_all);
    }

    private void setCryptoDisplayStatus(MessageCryptoDisplayStatus messageCryptoDisplayStatus) {
        Context context = getContext();
        int i = messageCryptoDisplayStatus.colorAttr;
        TypedValue typedValue = ThemeUtils.TYPED_VALUE;
        Resources.Theme theme = context.getTheme();
        TypedValue typedValue2 = ThemeUtils.TYPED_VALUE;
        theme.resolveAttribute(i, typedValue2, true);
        int i2 = typedValue2.data;
        this.cryptoStatusIcon.setEnabled(messageCryptoDisplayStatus.isEnabled);
        this.cryptoStatusIcon.setVisibility(0);
        this.cryptoStatusIcon.setImageResource(messageCryptoDisplayStatus.statusIconRes);
        this.cryptoStatusIcon.setColorFilter(i2);
    }

    private void setDefaultReplyAction(ReplyAction replyAction) {
        int i;
        String string;
        if (replyAction == null) {
            this.menuPrimaryActionView.setVisibility(8);
            return;
        }
        int ordinal = replyAction.ordinal();
        if (ordinal == 0) {
            i = R.drawable.ic_reply;
        } else {
            if (ordinal != 1) {
                Regex$$ExternalSyntheticBUOutline0.m$1(replyAction, "Unknown reply action: ");
                return;
            }
            i = R.drawable.ic_reply_all;
        }
        this.menuPrimaryActionView.setImageResource(i);
        Context context = getContext();
        int ordinal2 = replyAction.ordinal();
        if (ordinal2 == 0) {
            string = context.getString(R.string.reply_action);
        } else {
            if (ordinal2 != 1) {
                Regex$$ExternalSyntheticBUOutline0.m$1(replyAction, "Unknown reply action: ");
                return;
            }
            string = context.getString(R.string.reply_all_action);
        }
        Operation$State.setTooltipText(this.menuPrimaryActionView, string);
        this.menuPrimaryActionView.setVisibility(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r4v3 */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        MessageViewFragment messageViewFragment;
        MessageViewInfo messageViewInfo;
        ArrayList arrayList;
        Object value;
        int id = view.getId();
        int i = 3;
        if (id == R.id.subject) {
            int maxLines = this.subjectView.getMaxLines();
            BottomBaselineTextView bottomBaselineTextView = this.subjectView;
            if (maxLines == 3) {
                bottomBaselineTextView.setMaxLines(Integer.MAX_VALUE);
                return;
            } else {
                bottomBaselineTextView.setMaxLines(3);
                return;
            }
        }
        if (id == R.id.menu_primary_action) {
            ReplyAction replyAction = this.replyActions.defaultAction;
            if (replyAction == null) {
                return;
            }
            int ordinal = replyAction.ordinal();
            if (ordinal == 0) {
                ((MessageViewFragment$messageCryptoMvpView$1) this.messageHeaderClickListener).onMenuItemClick(R.id.reply);
                return;
            } else if (ordinal == 1) {
                ((MessageViewFragment$messageCryptoMvpView$1) this.messageHeaderClickListener).onMenuItemClick(R.id.reply_all);
                return;
            } else {
                Regex$$ExternalSyntheticBUOutline0.m$1(replyAction, "Unknown reply action: ");
                return;
            }
        }
        if (id == R.id.menu_overflow) {
            Context context = getContext();
            PopupMenu popupMenu = new PopupMenu(context, view);
            popupMenu.mMenuItemClickListener = new MaterialButton$$ExternalSyntheticLambda0(i, this);
            new SupportMenuInflater(context).inflate(R.menu.single_message_options, popupMenu.mMenu);
            setAdditionalReplyActions(popupMenu);
            MenuPopupHelper menuPopupHelper = popupMenu.mPopup;
            if (menuPopupHelper.isShowing()) {
                return;
            }
            if (menuPopupHelper.mAnchorView != null) {
                menuPopupHelper.showPopup(0, 0, false, false);
                return;
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("MenuPopupHelper cannot be used without an anchor");
                return;
            }
        }
        ArrayList arrayList2 = null;
        if (id == R.id.participants_container) {
            MessageViewFragment messageViewFragment2 = ((MessageViewFragment$messageCryptoMvpView$1) this.messageHeaderClickListener).this$0;
            MessageReference messageReference = messageViewFragment2.getMessageReference();
            MessageDetailsFragment messageDetailsFragment = new MessageDetailsFragment();
            OperationKt.withArguments(messageDetailsFragment, new Pair("reference", messageReference.toIdentityString()));
            MessageCryptoPresenter messageCryptoPresenter = messageViewFragment2.messageCryptoPresenter;
            if (messageCryptoPresenter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("messageCryptoPresenter");
                throw null;
            }
            messageDetailsFragment.cryptoResult = messageCryptoPresenter.cryptoResultAnnotation;
            messageDetailsFragment.show(messageViewFragment2.getParentFragmentManager(), "message_details");
            return;
        }
        if ((id == R.id.view_all_attachments || id == R.id.attachment_summary_container) && (messageViewInfo = (messageViewFragment = ((MessageViewFragment$messageCryptoMvpView$1) this.messageHeaderClickListener).this$0).mMessageViewInfo) != null) {
            List list = messageViewInfo.attachments;
            if (list != null) {
                ArrayList arrayList3 = new ArrayList();
                for (Object obj : list) {
                    if (!((AttachmentViewInfo) obj).inlineAttachment) {
                        arrayList3.add(obj);
                    }
                }
                arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList3, 10));
                Iterator it = arrayList3.iterator();
                while (it.hasNext()) {
                    AttachmentViewInfo attachmentViewInfo = (AttachmentViewInfo) it.next();
                    attachmentViewInfo.getClass();
                    arrayList.add(new AttachmentListItemModel(attachmentViewInfo, false));
                }
            } else {
                arrayList = null;
            }
            ?? r4 = EmptyList.INSTANCE;
            if (arrayList == null) {
                arrayList = r4;
            }
            List list2 = messageViewInfo.extraAttachments;
            if (list2 != null) {
                ArrayList arrayList4 = new ArrayList();
                for (Object obj2 : list2) {
                    if (!((AttachmentViewInfo) obj2).inlineAttachment) {
                        arrayList4.add(obj2);
                    }
                }
                ArrayList arrayList5 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList4, 10));
                Iterator it2 = arrayList4.iterator();
                while (it2.hasNext()) {
                    AttachmentViewInfo attachmentViewInfo2 = (AttachmentViewInfo) it2.next();
                    attachmentViewInfo2.getClass();
                    arrayList5.add(new AttachmentListItemModel(attachmentViewInfo2, true));
                }
                arrayList2 = arrayList5;
            }
            if (arrayList2 != null) {
                r4 = arrayList2;
            }
            ArrayList plus = CollectionsKt.plus((Collection) arrayList, (Iterable) r4);
            if (plus.isEmpty()) {
                return;
            }
            StateFlowImpl stateFlowImpl = messageViewFragment.attachmentListBottomSheetState;
            do {
                value = stateFlowImpl.getValue();
            } while (!stateFlowImpl.compareAndSet(value, Okio.toPersistentList(plus)));
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.accountNameView = (Chip) findViewById(R.id.account_name);
        this.subjectView = (BottomBaselineTextView) findViewById(R.id.subject);
        this.starView = (ImageView) findViewById(R.id.flagged);
        this.contactPictureView = (ImageView) findViewById(R.id.contact_picture);
        this.fromView = (MaterialTextView) findViewById(R.id.from);
        this.cryptoStatusIcon = (ImageView) findViewById(R.id.crypto_status_icon);
        this.recipientNamesView = (RecipientNamesView) findViewById(R.id.recipients);
        this.dateView = (MaterialTextView) findViewById(R.id.date);
        Chip chip = this.accountNameView;
        FontSizes fontSizes = this.fontSizes;
        FontSizes.setViewTextSize(chip, fontSizes.messageViewAccountName);
        FontSizes.setViewTextSize(this.subjectView, fontSizes.messageViewSubject);
        FontSizes.setViewTextSize(this.dateView, fontSizes.messageViewDate);
        FontSizes.setViewTextSize(this.fromView, fontSizes.messageViewSender);
        int i = fontSizes.messageViewRecipients;
        if (i != -1) {
            this.recipientNamesView.setTextSize(i);
        }
        this.subjectView.setOnClickListener(this);
        this.subjectView.setOnLongClickListener(this);
        ImageView imageView = (ImageView) findViewById(R.id.menu_primary_action);
        this.menuPrimaryActionView = imageView;
        imageView.setOnClickListener(this);
        View findViewById = findViewById(R.id.menu_overflow);
        findViewById.setOnClickListener(this);
        Operation$State.setTooltipText(findViewById, getContext().getString(R.string.abc_action_menu_overflow_description));
        findViewById(R.id.participants_container).setOnClickListener(this);
        View findViewById2 = findViewById(R.id.attachment_summary_container);
        this.attachmentSummaryContainer = findViewById2;
        findViewById2.setOnClickListener(this);
        this.attachmentSummaryText = (MaterialTextView) findViewById(R.id.attachment_summary_text);
        MaterialTextView materialTextView = (MaterialTextView) findViewById(R.id.view_all_attachments);
        this.viewAllAttachmentsButton = materialTextView;
        materialTextView.setOnClickListener(this);
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        if (view.getId() == R.id.subject) {
            ((ClipboardManager) CloseableKt.get$default(ClipboardManager.class)).setText("subject", this.subjectView.getText().toString());
            Toast.makeText(getContext(), getResources().getString(R.string.copy_subject_to_clipboard), 1).show();
        }
        return true;
    }

    public final void populate(MimeMessage mimeMessage, LegacyAccountDto legacyAccountDto, boolean z, boolean z2) {
        ReplyActions replyActions;
        ReplyActions replyActions2;
        Chip chip = this.accountNameView;
        if (z2) {
            chip.setVisibility(0);
            this.accountNameView.setText(legacyAccountDto.getDisplayName());
            this.accountNameView.setChipBackgroundColor(ColorStateList.valueOf(legacyAccountDto.getChipColor()));
        } else {
            chip.setVisibility(8);
        }
        Address[] from = mimeMessage.getFrom();
        Address address = from.length > 0 ? from[0] : null;
        boolean z3 = ((DisplayMessageListSettings) this.messageListPreferencesManager.getConfig()).isShowContactPicture;
        ImageView imageView = this.contactPictureView;
        if (z3) {
            imageView.setVisibility(0);
            if (address != null) {
                ((ContactPictureLoader) CloseableKt.get$default(ContactPictureLoader.class)).setContactPicture(this.contactPictureView, address);
            } else {
                this.contactPictureView.setImageResource(R.drawable.ic_account_circle);
            }
        } else {
            imageView.setVisibility(8);
        }
        this.fromView.setText(this.messageHelper.getSenderDisplayName(address));
        ImageView imageView2 = this.starView;
        if (z) {
            imageView2.setVisibility(0);
            this.starView.setSelected(mimeMessage.mFlags.contains(Flag.FLAGGED));
        } else {
            imageView2.setVisibility(8);
        }
        Date sentDate = mimeMessage.getSentDate();
        MaterialTextView materialTextView = this.dateView;
        if (sentDate != null) {
            materialTextView.setText(this.relativeDateTimeFormatter.formatDate(mimeMessage.getSentDate().getTime(), MessageListDateTimeFormat.Contextual));
        } else {
            materialTextView.setText("");
        }
        int maxNumberOfRecipientNames = this.recipientNamesView.getMaxNumberOfRecipientNames();
        RealMessageViewRecipientFormatter realMessageViewRecipientFormatter = this.recipientFormatter;
        ConnectionPool connectionPool = new ConnectionPool(realMessageViewRecipientFormatter, maxNumberOfRecipientNames);
        legacyAccountDto.getClass();
        Address[] recipients = mimeMessage.getRecipients(Message$RecipientType.TO);
        Address[] recipients2 = mimeMessage.getRecipients(Message$RecipientType.CC);
        Address[] recipients3 = mimeMessage.getRecipients(Message$RecipientType.BCC);
        int length = recipients.length + recipients2.length + recipients3.length;
        Sequence asSequence = ArraysKt___ArraysKt.asSequence(new Address[][]{recipients, recipients2, recipients3});
        InstantKt$$ExternalSyntheticLambda0 instantKt$$ExternalSyntheticLambda0 = new InstantKt$$ExternalSyntheticLambda0(5);
        SequencesKt___SequencesKt$flatMap$2 sequencesKt___SequencesKt$flatMap$2 = SequencesKt___SequencesKt$flatMap$2.INSTANCE;
        Address address2 = (Address) SequencesKt.firstOrNull(new FilteringSequence(new TakeWhileSequence(asSequence, instantKt$$ExternalSyntheticLambda0, 1), true, new IdentityHelper$$ExternalSyntheticLambda1(legacyAccountDto, 1)));
        if (address2 != null) {
            maxNumberOfRecipientNames--;
        }
        List list = SequencesKt.toList(SequencesKt.take(new TakeWhileSequence(new FilteringSequence(new TakeWhileSequence(ArraysKt___ArraysKt.asSequence(new Address[][]{recipients, recipients2, recipients3}), new InstantKt$$ExternalSyntheticLambda0(6), 1), true, new AbstractMap$$ExternalSyntheticLambda0(16, address2)), new DI$$ExternalSyntheticLambda0(22, connectionPool, legacyAccountDto), 2), maxNumberOfRecipientNames));
        DisplayRecipients displayRecipients = address2 != null ? new DisplayRecipients(length, CollectionsKt.plus((Collection) IntOffsetKt.listOf(realMessageViewRecipientFormatter.getDisplayName(address2, legacyAccountDto)), (Iterable) list)) : new DisplayRecipients(length, list);
        RecipientNamesView recipientNamesView = this.recipientNamesView;
        recipientNamesView.getClass();
        List list2 = recipientNamesView.recipientNames;
        List list3 = displayRecipients.recipientNames;
        if (!list3.equals(list2)) {
            int i = recipientNamesView.numberOfRecipients;
            int i2 = displayRecipients.numberOfRecipients;
            if (i2 != i) {
                recipientNamesView.recipientNames = list3;
                recipientNamesView.numberOfRecipients = i2;
                recipientNamesView.requestLayout();
            }
        }
        this.replyActionStrategy.getClass();
        BinaryBitmap recipientsToReplyTo = ReplyToParser.getRecipientsToReplyTo(mimeMessage, legacyAccountDto);
        BinaryBitmap recipientsToReplyAllTo = ReplyToParser.getRecipientsToReplyAllTo(mimeMessage, legacyAccountDto);
        int length2 = ((Address[]) recipientsToReplyAllTo.binarizer).length + ((Address[]) recipientsToReplyAllTo.matrix).length;
        ReplyAction replyAction = ReplyAction.REPLY;
        if (length2 <= 1) {
            Address[] addressArr = (Address[]) recipientsToReplyTo.binarizer;
            addressArr.getClass();
            if (addressArr.length == 0) {
                replyActions2 = new ReplyActions(null);
                this.replyActions = replyActions2;
                setDefaultReplyAction(replyActions2.defaultAction);
                setVisibility(0);
            }
            replyActions = new ReplyActions(replyAction);
        } else {
            replyActions = new ReplyActions(replyAction, IntOffsetKt.listOf(ReplyAction.REPLY_ALL));
        }
        replyActions2 = replyActions;
        this.replyActions = replyActions2;
        setDefaultReplyAction(replyActions2.defaultAction);
        setVisibility(0);
    }

    public void setCryptoStatus(MessageCryptoDisplayStatus messageCryptoDisplayStatus) {
        setCryptoDisplayStatus(messageCryptoDisplayStatus);
    }

    public final void setCryptoStatusDisabled() {
        setCryptoDisplayStatus(MessageCryptoDisplayStatus.DISABLED);
    }

    public final void setCryptoStatusLoading() {
        setCryptoDisplayStatus(MessageCryptoDisplayStatus.LOADING);
    }

    public void setMessageHeaderClickListener(MessageHeaderClickListener messageHeaderClickListener) {
        this.messageHeaderClickListener = messageHeaderClickListener;
    }

    public void setOnFlagListener(View.OnClickListener onClickListener) {
        this.starView.setOnClickListener(onClickListener);
    }

    public void setSubject(String str) {
        this.subjectView.setText(str);
    }
}
