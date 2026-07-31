package com.fsck.k9.ui.messagedetails;

import android.content.res.Resources;
import androidx.lifecycle.ViewModel;
import app.k9mail.core.android.common.contact.AndroidContactPermissionResolver;
import app.k9mail.core.android.common.contact.ContactRepository;
import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import app.k9mail.legacy.message.controller.MessageReference;
import app.k9mail.legacy.ui.folder.FolderNameFormatter;
import com.fsck.k9.helper.ClipboardManager;
import com.fsck.k9.mailstore.CryptoResultAnnotation;
import com.fsck.k9.mailstore.MessageRepository;
import com.fsck.k9.ui.messagedetails.MessageDetailsState;
import java.text.DateFormat;
import java.util.Locale;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.ChannelAsFlow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import okhttp3.Cookie;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageDetailsViewModel extends ViewModel {
    public final LegacyAccountDtoManager accountManager;
    public final ClipboardManager clipboardManager;
    public final AndroidContactPermissionResolver contactPermissionResolver;
    public final ContactRepository contactRepository;
    public final ContactSettingsProvider contactSettingsProvider;
    public CryptoResultAnnotation cryptoResult;
    public final BufferedChannel eventChannel;
    public final FolderNameFormatter folderNameFormatter;
    public final DefaultFolderRepository folderRepository;
    public MessageReference messageReference;
    public final MessageRepository messageRepository;
    public final RealMessageDetailsParticipantFormatter participantFormatter;
    public final Resources resources;
    public final ChannelAsFlow uiEvents;
    public final DateFormat dateFormat = DateFormat.getDateTimeInstance(1, 2, Locale.getDefault());
    public final StateFlowImpl internalUiState = FlowKt.MutableStateFlow(MessageDetailsState.Error.INSTANCE$1);

    public MessageDetailsViewModel(Resources resources, MessageRepository messageRepository, DefaultFolderRepository defaultFolderRepository, ContactSettingsProvider contactSettingsProvider, ContactRepository contactRepository, AndroidContactPermissionResolver androidContactPermissionResolver, ClipboardManager clipboardManager, LegacyAccountDtoManager legacyAccountDtoManager, RealMessageDetailsParticipantFormatter realMessageDetailsParticipantFormatter, FolderNameFormatter folderNameFormatter) {
        this.resources = resources;
        this.messageRepository = messageRepository;
        this.folderRepository = defaultFolderRepository;
        this.contactSettingsProvider = contactSettingsProvider;
        this.contactRepository = contactRepository;
        this.contactPermissionResolver = androidContactPermissionResolver;
        this.clipboardManager = clipboardManager;
        this.accountManager = legacyAccountDtoManager;
        this.participantFormatter = realMessageDetailsParticipantFormatter;
        this.folderNameFormatter = folderNameFormatter;
        BufferedChannel Channel$default = Cookie.Companion.Channel$default(0, null, null, 7);
        this.eventChannel = Channel$default;
        this.uiEvents = new ChannelAsFlow(Channel$default, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x008c, code lost:
    
        if (r2 == null) goto L30;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.util.ArrayList access$toParticipants(com.fsck.k9.ui.messagedetails.MessageDetailsViewModel r9, java.util.List r10, net.thunderbird.core.android.account.LegacyAccountDto r11) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = 10
            int r1 = kotlin.collections.CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(r10, r1)
            r0.<init>(r1)
            java.util.Iterator r10 = r10.iterator()
        Lf:
            boolean r1 = r10.hasNext()
            if (r1 == 0) goto Laa
            java.lang.Object r1 = r10.next()
            com.fsck.k9.mail.Address r1 = (com.fsck.k9.mail.Address) r1
            com.fsck.k9.ui.messagedetails.RealMessageDetailsParticipantFormatter r2 = r9.participantFormatter
            r2.getClass()
            r1.getClass()
            java.lang.String r3 = r1.address
            java.lang.String r4 = r1.personal
            r11.getClass()
            net.thunderbird.core.android.account.Identity r1 = r11.findIdentity(r1)
            r5 = 0
            if (r1 == 0) goto L4e
            java.lang.String r4 = r2.meText
            java.util.List r2 = r11.getIdentities()
            java.util.ArrayList r2 = (java.util.ArrayList) r2
            int r2 = r2.size()
            r6 = 1
            if (r2 != r6) goto L41
            goto L8e
        L41:
            java.lang.String r2 = r1.description
            if (r2 != 0) goto L4c
            java.lang.String r1 = r1.name
            if (r1 != 0) goto L4a
            goto L8e
        L4a:
            r4 = r1
            goto L8e
        L4c:
            r4 = r2
            goto L8e
        L4e:
            boolean r1 = r2.showContactNames
            if (r1 == 0) goto L8e
            java.lang.Integer r1 = r2.contactNameColor
            com.fsck.k9.helper.RealContactNameProvider r2 = r2.contactNameProvider
            r3.getClass()
            net.thunderbird.core.common.mail.EmailAddress r6 = net.thunderbird.core.common.mail.TokensKt.toEmailAddressOrNull(r3)
            if (r6 == 0) goto L6c
            app.k9mail.core.android.common.contact.ContactRepository r2 = r2.contactRepository
            app.k9mail.core.android.common.contact.CachingContactRepository r2 = (app.k9mail.core.android.common.contact.CachingContactRepository) r2
            app.k9mail.core.android.common.contact.Contact r2 = r2.getContactFor(r6)
            if (r2 == 0) goto L6c
            java.lang.String r2 = r2.name
            goto L6d
        L6c:
            r2 = r5
        L6d:
            if (r2 != 0) goto L71
            r2 = r5
            goto L8c
        L71:
            if (r1 == 0) goto L8c
            android.text.SpannableString r6 = new android.text.SpannableString
            r6.<init>(r2)
            android.text.style.ForegroundColorSpan r7 = new android.text.style.ForegroundColorSpan
            int r1 = r1.intValue()
            r7.<init>(r1)
            int r1 = r2.length()
            r2 = 33
            r8 = 0
            r6.setSpan(r7, r8, r1, r2)
            r2 = r6
        L8c:
            if (r2 != 0) goto L4c
        L8e:
            com.fsck.k9.ui.messagedetails.Participant r1 = new com.fsck.k9.ui.messagedetails.Participant
            net.thunderbird.core.common.mail.EmailAddress r2 = net.thunderbird.core.common.mail.TokensKt.toEmailAddressOrNull(r3)
            if (r2 == 0) goto La2
            app.k9mail.core.android.common.contact.ContactRepository r6 = r9.contactRepository
            app.k9mail.core.android.common.contact.CachingContactRepository r6 = (app.k9mail.core.android.common.contact.CachingContactRepository) r6
            app.k9mail.core.android.common.contact.Contact r2 = r6.getContactFor(r2)
            if (r2 == 0) goto La2
            android.net.Uri r5 = r2.uri
        La2:
            r1.<init>(r4, r3, r5)
            r0.add(r1)
            goto Lf
        Laa:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.ui.messagedetails.MessageDetailsViewModel.access$toParticipants(com.fsck.k9.ui.messagedetails.MessageDetailsViewModel, java.util.List, net.thunderbird.core.android.account.LegacyAccountDto):java.util.ArrayList");
    }
}
