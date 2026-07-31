package com.fsck.k9.ui.messagelist.item;

import androidx.compose.ui.platform.ComposeView;
import app.k9mail.core.android.common.contact.ContactRepository;
import com.fsck.k9.ui.messagelist.MessageListAdapter$$ExternalSyntheticLambda1;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.internal.LockFreeLinkedListNode$toString$1;
import net.thunderbird.core.ui.theme.api.FeatureThemeProvider;
import net.thunderbird.feature.account.avatar.DefaultAvatarMonogramCreator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ComposableMessageViewHolder extends MessageListViewHolder {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Function0 appearance;
    public final DefaultAvatarMonogramCreator avatarMonogramCreator;
    public final ComposeView composeView;
    public final ContactRepository contactRepository;
    public final MessageListAdapter$$ExternalSyntheticLambda1 onAvatarClick;
    public final MessageListAdapter$$ExternalSyntheticLambda1 onClick;
    public final MessageListAdapter$$ExternalSyntheticLambda1 onFavouriteClick;
    public final MessageListAdapter$$ExternalSyntheticLambda1 onLongClick;
    public final FeatureThemeProvider themeProvider;
    public long uniqueId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposableMessageViewHolder(ComposeView composeView, FeatureThemeProvider featureThemeProvider, MessageListAdapter$$ExternalSyntheticLambda1 messageListAdapter$$ExternalSyntheticLambda1, MessageListAdapter$$ExternalSyntheticLambda1 messageListAdapter$$ExternalSyntheticLambda12, MessageListAdapter$$ExternalSyntheticLambda1 messageListAdapter$$ExternalSyntheticLambda13, MessageListAdapter$$ExternalSyntheticLambda1 messageListAdapter$$ExternalSyntheticLambda14, LockFreeLinkedListNode$toString$1 lockFreeLinkedListNode$toString$1, ContactRepository contactRepository, DefaultAvatarMonogramCreator defaultAvatarMonogramCreator) {
        super(composeView);
        featureThemeProvider.getClass();
        lockFreeLinkedListNode$toString$1.getClass();
        contactRepository.getClass();
        defaultAvatarMonogramCreator.getClass();
        this.composeView = composeView;
        this.themeProvider = featureThemeProvider;
        this.onClick = messageListAdapter$$ExternalSyntheticLambda1;
        this.onLongClick = messageListAdapter$$ExternalSyntheticLambda12;
        this.onAvatarClick = messageListAdapter$$ExternalSyntheticLambda13;
        this.onFavouriteClick = messageListAdapter$$ExternalSyntheticLambda14;
        this.appearance = lockFreeLinkedListNode$toString$1;
        this.contactRepository = contactRepository;
        this.avatarMonogramCreator = defaultAvatarMonogramCreator;
        this.uniqueId = -1L;
    }
}
