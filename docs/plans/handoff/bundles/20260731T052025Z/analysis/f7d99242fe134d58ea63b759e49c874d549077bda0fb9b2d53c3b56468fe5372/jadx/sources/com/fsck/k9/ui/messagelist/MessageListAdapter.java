package com.fsck.k9.ui.messagelist;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.ComposeView;
import androidx.constraintlayout.widget.Guideline;
import androidx.core.content.res.ResourcesCompat;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.InvalidationTracker$implementation$1;
import androidx.sqlite.SQLite;
import app.k9mail.core.android.common.contact.ContactRepository;
import app.k9mail.core.ui.compose.designsystem.atom.SwitchKt$$ExternalSyntheticLambda0;
import app.k9mail.legacy.message.controller.MessageReference;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.FontSizes;
import com.fsck.k9.R;
import com.fsck.k9.activity.FolderInfoHolder;
import com.fsck.k9.contacts.ContactPictureLoader;
import com.fsck.k9.controller.ArchiveOperations$$ExternalSyntheticLambda6;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.controller.MessagingController$$ExternalSyntheticLambda0;
import com.fsck.k9.controller.MessagingControllerWrapper;
import com.fsck.k9.controller.NotificationOperations$$ExternalSyntheticLambda2;
import com.fsck.k9.helper.Utility;
import com.fsck.k9.mail.Address;
import com.fsck.k9.ui.messagelist.MessageListFragment;
import com.fsck.k9.ui.messagelist.MessageListViewItem;
import com.fsck.k9.ui.messagelist.item.BannerInlineListInAppNotificationViewHolder;
import com.fsck.k9.ui.messagelist.item.ComposableMessageViewHolder;
import com.fsck.k9.ui.messagelist.item.FooterViewHolder;
import com.fsck.k9.ui.messagelist.item.MessageListInAppNotificationViewHolder$$ExternalSyntheticLambda0;
import com.fsck.k9.ui.messagelist.item.MessageListViewHolder;
import com.fsck.k9.ui.messagelist.item.MessageViewHolder;
import com.fsck.k9.ui.messagelist.item.MessageViewHolderColors;
import com.google.android.material.textview.MaterialTextView;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.collections.EmptySet;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.FilteringSequence$iterator$1;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TakeWhileSequence;
import kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;
import kotlin.time.InstantKt$$ExternalSyntheticLambda0;
import kotlinx.coroutines.internal.LockFreeLinkedListNode$toString$1;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.featureflag.FeatureFlagResult;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;
import net.thunderbird.core.ui.theme.api.FeatureThemeProvider;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.avatar.DefaultAvatarMonogramCreator;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListAdapter extends RecyclerView.Adapter {
    public MessageReference activeMessage;
    public final LockFreeLinkedListNode$toString$1 appearance;
    public final DefaultAvatarMonogramCreator avatarMonogramCreator;
    public final MessageViewHolderColors colors;
    public final MessageListAdapter$$ExternalSyntheticLambda12 contactPictureContainerClickListener;
    public final ContactRepository contactRepository;
    public final ContactPictureLoader contactsPictureLoader;
    public final InMemoryFeatureFlagProvider featureFlagProvider;
    public final MessageListAdapter$$ExternalSyntheticLambda12 footerClickListener;
    public final LegacyMessageListFragment$$ExternalSyntheticLambda1 formatDate;
    public final LayoutInflater layoutInflater;
    public final LegacyMessageListFragment listItemListener;
    public final MessageListAdapter$$ExternalSyntheticLambda12 messageClickedListener;
    public final MessageListAdapter$$ExternalSyntheticLambda13 messageLongClickedListener;
    public Map messagesMap;
    public final Resources res;
    public Set selected;
    public int selectedCount;
    public final MessageListAdapter$$ExternalSyntheticLambda12 starClickListener;
    public final Resources.Theme theme;
    public final FeatureThemeProvider themeProvider;
    public List viewItems;

    /* JADX WARN: Type inference failed for: r1v10, types: [com.fsck.k9.ui.messagelist.MessageListAdapter$$ExternalSyntheticLambda12] */
    /* JADX WARN: Type inference failed for: r1v6, types: [com.fsck.k9.ui.messagelist.MessageListAdapter$$ExternalSyntheticLambda12] */
    /* JADX WARN: Type inference failed for: r1v7, types: [com.fsck.k9.ui.messagelist.MessageListAdapter$$ExternalSyntheticLambda13] */
    /* JADX WARN: Type inference failed for: r1v8, types: [com.fsck.k9.ui.messagelist.MessageListAdapter$$ExternalSyntheticLambda12] */
    /* JADX WARN: Type inference failed for: r1v9, types: [com.fsck.k9.ui.messagelist.MessageListAdapter$$ExternalSyntheticLambda12] */
    public MessageListAdapter(Resources.Theme theme, Resources resources, LayoutInflater layoutInflater, ContactPictureLoader contactPictureLoader, LegacyMessageListFragment legacyMessageListFragment, LockFreeLinkedListNode$toString$1 lockFreeLinkedListNode$toString$1, FeatureThemeProvider featureThemeProvider, InMemoryFeatureFlagProvider inMemoryFeatureFlagProvider, ContactRepository contactRepository, DefaultAvatarMonogramCreator defaultAvatarMonogramCreator, LegacyMessageListFragment$$ExternalSyntheticLambda1 legacyMessageListFragment$$ExternalSyntheticLambda1) {
        featureThemeProvider.getClass();
        inMemoryFeatureFlagProvider.getClass();
        contactRepository.getClass();
        defaultAvatarMonogramCreator.getClass();
        this.theme = theme;
        this.res = resources;
        this.layoutInflater = layoutInflater;
        this.contactsPictureLoader = contactPictureLoader;
        this.listItemListener = legacyMessageListFragment;
        this.appearance = lockFreeLinkedListNode$toString$1;
        this.themeProvider = featureThemeProvider;
        this.featureFlagProvider = inMemoryFeatureFlagProvider;
        this.contactRepository = contactRepository;
        this.avatarMonogramCreator = defaultAvatarMonogramCreator;
        this.formatDate = legacyMessageListFragment$$ExternalSyntheticLambda1;
        this.colors = new MessageViewHolderColors(MathKt.resolveColorAttribute(theme, R.attr.colorOnSecondaryContainer), MathKt.resolveColorAttribute(theme, R.attr.colorSecondaryContainer), MathKt.resolveColorAttribute(theme, R.attr.colorOnSurfaceVariant), MathKt.resolveColorAttribute(theme, R.attr.colorSurfaceVariant), MathKt.resolveColorAttribute(theme, R.attr.colorOnSurface), MathKt.resolveColorAttribute(theme, R.attr.colorSurface), MathKt.resolveColorAttribute(theme, R.attr.colorOutline), MathKt.resolveColorAttribute(theme, R.attr.colorSurfaceContainerHigh), MathKt.resolveColorAttribute(theme, R.attr.colorOnSurface), MathKt.resolveColorAttribute(theme, R.attr.colorSurface), MathKt.resolveColorAttribute(theme, R.attr.colorOutline), MathKt.resolveColorAttribute(theme, R.attr.colorOnSecondary), MathKt.resolveColorAttribute(theme, R.attr.colorOnSurfaceVariant));
        this.viewItems = EmptyList.INSTANCE;
        this.messagesMap = EmptyMap.INSTANCE;
        this.selected = EmptySet.INSTANCE;
        final int i = 0;
        this.messageClickedListener = new View.OnClickListener(this) { // from class: com.fsck.k9.ui.messagelist.MessageListAdapter$$ExternalSyntheticLambda12
            public final /* synthetic */ MessageListAdapter f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                List list;
                int i2 = i;
                MessageListAdapter messageListAdapter = this.f$0;
                switch (i2) {
                    case 0:
                        view.getClass();
                        MessageListItem itemFromView = messageListAdapter.getItemFromView(view);
                        if (itemFromView != null) {
                            messageListAdapter.listItemListener.onMessageClicked(itemFromView);
                            break;
                        }
                        break;
                    case 1:
                        LegacyMessageListFragment legacyMessageListFragment2 = messageListAdapter.listItemListener;
                        LegacyAccount legacyAccount = legacyMessageListFragment2.account;
                        if (legacyAccount != null) {
                            AccountId accountId = legacyAccount.id;
                            FolderInfoHolder folderInfoHolder = legacyMessageListFragment2.currentFolder;
                            if (folderInfoHolder != null) {
                                if (folderInfoHolder.moreMessages && !legacyMessageListFragment2.getLocalSearch().isManualSearch) {
                                    long j = folderInfoHolder.databaseId;
                                    MessagingControllerWrapper messagingController = legacyMessageListFragment2.getMessagingController();
                                    messagingController.getClass();
                                    accountId.getClass();
                                    LegacyAccountDto accountDtoOrThrow = messagingController.getAccountDtoOrThrow(accountId);
                                    MessagingController messagingController2 = messagingController.messagingController;
                                    messagingController2.putBackground("loadMoreMessages", new MessagingController$$ExternalSyntheticLambda0(messagingController2, accountDtoOrThrow, j, 0));
                                    break;
                                } else if (legacyMessageListFragment2.isRemoteSearch && (list = legacyMessageListFragment2.extraSearchResults) != null && !list.isEmpty()) {
                                    int i3 = legacyAccount.remoteSearchNumResults;
                                    if (1 > i3 || i3 >= list.size()) {
                                        legacyMessageListFragment2.extraSearchResults = null;
                                        legacyMessageListFragment2.updateFooterText(null);
                                    } else {
                                        legacyMessageListFragment2.extraSearchResults = list.subList(i3, list.size());
                                        list = list.subList(0, i3);
                                    }
                                    List list2 = list;
                                    MessagingControllerWrapper messagingController3 = legacyMessageListFragment2.getMessagingController();
                                    long j2 = folderInfoHolder.databaseId;
                                    MessageListFragment.MessageListActivityListener messageListActivityListener = legacyMessageListFragment2.activityListener;
                                    messagingController3.getClass();
                                    accountId.getClass();
                                    list2.getClass();
                                    messageListActivityListener.getClass();
                                    LegacyAccountDto accountDtoOrThrow2 = messagingController3.getAccountDtoOrThrow(accountId);
                                    MessagingController messagingController4 = messagingController3.messagingController;
                                    messagingController4.threadPool.execute(new ArchiveOperations$$ExternalSyntheticLambda6(messagingController4, messageListActivityListener, accountDtoOrThrow2, j2, list2));
                                    break;
                                }
                            }
                        }
                        break;
                    case 2:
                        view.getClass();
                        Object parent = view.getParent();
                        parent.getClass();
                        MessageListItem itemFromView2 = messageListAdapter.getItemFromView((View) parent);
                        if (itemFromView2 != null) {
                            messageListAdapter.listItemListener.onToggleMessageFlag(itemFromView2);
                            break;
                        }
                        break;
                    default:
                        view.getClass();
                        Object parent2 = view.getParent();
                        parent2.getClass();
                        MessageListItem itemFromView3 = messageListAdapter.getItemFromView((View) parent2);
                        if (itemFromView3 != null) {
                            LegacyMessageListFragment legacyMessageListFragment3 = messageListAdapter.listItemListener;
                            legacyMessageListFragment3.getClass();
                            legacyMessageListFragment3.toggleMessageSelect(itemFromView3);
                            break;
                        }
                        break;
                }
            }
        };
        this.messageLongClickedListener = new View.OnLongClickListener() { // from class: com.fsck.k9.ui.messagelist.MessageListAdapter$$ExternalSyntheticLambda13
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                view.getClass();
                MessageListAdapter messageListAdapter = MessageListAdapter.this;
                MessageListItem itemFromView = messageListAdapter.getItemFromView(view);
                if (itemFromView == null) {
                    return true;
                }
                LegacyMessageListFragment legacyMessageListFragment2 = messageListAdapter.listItemListener;
                legacyMessageListFragment2.getClass();
                legacyMessageListFragment2.toggleMessageSelect(itemFromView);
                return true;
            }
        };
        final int i2 = 1;
        this.footerClickListener = new View.OnClickListener(this) { // from class: com.fsck.k9.ui.messagelist.MessageListAdapter$$ExternalSyntheticLambda12
            public final /* synthetic */ MessageListAdapter f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                List list;
                int i22 = i2;
                MessageListAdapter messageListAdapter = this.f$0;
                switch (i22) {
                    case 0:
                        view.getClass();
                        MessageListItem itemFromView = messageListAdapter.getItemFromView(view);
                        if (itemFromView != null) {
                            messageListAdapter.listItemListener.onMessageClicked(itemFromView);
                            break;
                        }
                        break;
                    case 1:
                        LegacyMessageListFragment legacyMessageListFragment2 = messageListAdapter.listItemListener;
                        LegacyAccount legacyAccount = legacyMessageListFragment2.account;
                        if (legacyAccount != null) {
                            AccountId accountId = legacyAccount.id;
                            FolderInfoHolder folderInfoHolder = legacyMessageListFragment2.currentFolder;
                            if (folderInfoHolder != null) {
                                if (folderInfoHolder.moreMessages && !legacyMessageListFragment2.getLocalSearch().isManualSearch) {
                                    long j = folderInfoHolder.databaseId;
                                    MessagingControllerWrapper messagingController = legacyMessageListFragment2.getMessagingController();
                                    messagingController.getClass();
                                    accountId.getClass();
                                    LegacyAccountDto accountDtoOrThrow = messagingController.getAccountDtoOrThrow(accountId);
                                    MessagingController messagingController2 = messagingController.messagingController;
                                    messagingController2.putBackground("loadMoreMessages", new MessagingController$$ExternalSyntheticLambda0(messagingController2, accountDtoOrThrow, j, 0));
                                    break;
                                } else if (legacyMessageListFragment2.isRemoteSearch && (list = legacyMessageListFragment2.extraSearchResults) != null && !list.isEmpty()) {
                                    int i3 = legacyAccount.remoteSearchNumResults;
                                    if (1 > i3 || i3 >= list.size()) {
                                        legacyMessageListFragment2.extraSearchResults = null;
                                        legacyMessageListFragment2.updateFooterText(null);
                                    } else {
                                        legacyMessageListFragment2.extraSearchResults = list.subList(i3, list.size());
                                        list = list.subList(0, i3);
                                    }
                                    List list2 = list;
                                    MessagingControllerWrapper messagingController3 = legacyMessageListFragment2.getMessagingController();
                                    long j2 = folderInfoHolder.databaseId;
                                    MessageListFragment.MessageListActivityListener messageListActivityListener = legacyMessageListFragment2.activityListener;
                                    messagingController3.getClass();
                                    accountId.getClass();
                                    list2.getClass();
                                    messageListActivityListener.getClass();
                                    LegacyAccountDto accountDtoOrThrow2 = messagingController3.getAccountDtoOrThrow(accountId);
                                    MessagingController messagingController4 = messagingController3.messagingController;
                                    messagingController4.threadPool.execute(new ArchiveOperations$$ExternalSyntheticLambda6(messagingController4, messageListActivityListener, accountDtoOrThrow2, j2, list2));
                                    break;
                                }
                            }
                        }
                        break;
                    case 2:
                        view.getClass();
                        Object parent = view.getParent();
                        parent.getClass();
                        MessageListItem itemFromView2 = messageListAdapter.getItemFromView((View) parent);
                        if (itemFromView2 != null) {
                            messageListAdapter.listItemListener.onToggleMessageFlag(itemFromView2);
                            break;
                        }
                        break;
                    default:
                        view.getClass();
                        Object parent2 = view.getParent();
                        parent2.getClass();
                        MessageListItem itemFromView3 = messageListAdapter.getItemFromView((View) parent2);
                        if (itemFromView3 != null) {
                            LegacyMessageListFragment legacyMessageListFragment3 = messageListAdapter.listItemListener;
                            legacyMessageListFragment3.getClass();
                            legacyMessageListFragment3.toggleMessageSelect(itemFromView3);
                            break;
                        }
                        break;
                }
            }
        };
        final int i3 = 2;
        this.starClickListener = new View.OnClickListener(this) { // from class: com.fsck.k9.ui.messagelist.MessageListAdapter$$ExternalSyntheticLambda12
            public final /* synthetic */ MessageListAdapter f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                List list;
                int i22 = i3;
                MessageListAdapter messageListAdapter = this.f$0;
                switch (i22) {
                    case 0:
                        view.getClass();
                        MessageListItem itemFromView = messageListAdapter.getItemFromView(view);
                        if (itemFromView != null) {
                            messageListAdapter.listItemListener.onMessageClicked(itemFromView);
                            break;
                        }
                        break;
                    case 1:
                        LegacyMessageListFragment legacyMessageListFragment2 = messageListAdapter.listItemListener;
                        LegacyAccount legacyAccount = legacyMessageListFragment2.account;
                        if (legacyAccount != null) {
                            AccountId accountId = legacyAccount.id;
                            FolderInfoHolder folderInfoHolder = legacyMessageListFragment2.currentFolder;
                            if (folderInfoHolder != null) {
                                if (folderInfoHolder.moreMessages && !legacyMessageListFragment2.getLocalSearch().isManualSearch) {
                                    long j = folderInfoHolder.databaseId;
                                    MessagingControllerWrapper messagingController = legacyMessageListFragment2.getMessagingController();
                                    messagingController.getClass();
                                    accountId.getClass();
                                    LegacyAccountDto accountDtoOrThrow = messagingController.getAccountDtoOrThrow(accountId);
                                    MessagingController messagingController2 = messagingController.messagingController;
                                    messagingController2.putBackground("loadMoreMessages", new MessagingController$$ExternalSyntheticLambda0(messagingController2, accountDtoOrThrow, j, 0));
                                    break;
                                } else if (legacyMessageListFragment2.isRemoteSearch && (list = legacyMessageListFragment2.extraSearchResults) != null && !list.isEmpty()) {
                                    int i32 = legacyAccount.remoteSearchNumResults;
                                    if (1 > i32 || i32 >= list.size()) {
                                        legacyMessageListFragment2.extraSearchResults = null;
                                        legacyMessageListFragment2.updateFooterText(null);
                                    } else {
                                        legacyMessageListFragment2.extraSearchResults = list.subList(i32, list.size());
                                        list = list.subList(0, i32);
                                    }
                                    List list2 = list;
                                    MessagingControllerWrapper messagingController3 = legacyMessageListFragment2.getMessagingController();
                                    long j2 = folderInfoHolder.databaseId;
                                    MessageListFragment.MessageListActivityListener messageListActivityListener = legacyMessageListFragment2.activityListener;
                                    messagingController3.getClass();
                                    accountId.getClass();
                                    list2.getClass();
                                    messageListActivityListener.getClass();
                                    LegacyAccountDto accountDtoOrThrow2 = messagingController3.getAccountDtoOrThrow(accountId);
                                    MessagingController messagingController4 = messagingController3.messagingController;
                                    messagingController4.threadPool.execute(new ArchiveOperations$$ExternalSyntheticLambda6(messagingController4, messageListActivityListener, accountDtoOrThrow2, j2, list2));
                                    break;
                                }
                            }
                        }
                        break;
                    case 2:
                        view.getClass();
                        Object parent = view.getParent();
                        parent.getClass();
                        MessageListItem itemFromView2 = messageListAdapter.getItemFromView((View) parent);
                        if (itemFromView2 != null) {
                            messageListAdapter.listItemListener.onToggleMessageFlag(itemFromView2);
                            break;
                        }
                        break;
                    default:
                        view.getClass();
                        Object parent2 = view.getParent();
                        parent2.getClass();
                        MessageListItem itemFromView3 = messageListAdapter.getItemFromView((View) parent2);
                        if (itemFromView3 != null) {
                            LegacyMessageListFragment legacyMessageListFragment3 = messageListAdapter.listItemListener;
                            legacyMessageListFragment3.getClass();
                            legacyMessageListFragment3.toggleMessageSelect(itemFromView3);
                            break;
                        }
                        break;
                }
            }
        };
        final int i4 = 3;
        this.contactPictureContainerClickListener = new View.OnClickListener(this) { // from class: com.fsck.k9.ui.messagelist.MessageListAdapter$$ExternalSyntheticLambda12
            public final /* synthetic */ MessageListAdapter f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                List list;
                int i22 = i4;
                MessageListAdapter messageListAdapter = this.f$0;
                switch (i22) {
                    case 0:
                        view.getClass();
                        MessageListItem itemFromView = messageListAdapter.getItemFromView(view);
                        if (itemFromView != null) {
                            messageListAdapter.listItemListener.onMessageClicked(itemFromView);
                            break;
                        }
                        break;
                    case 1:
                        LegacyMessageListFragment legacyMessageListFragment2 = messageListAdapter.listItemListener;
                        LegacyAccount legacyAccount = legacyMessageListFragment2.account;
                        if (legacyAccount != null) {
                            AccountId accountId = legacyAccount.id;
                            FolderInfoHolder folderInfoHolder = legacyMessageListFragment2.currentFolder;
                            if (folderInfoHolder != null) {
                                if (folderInfoHolder.moreMessages && !legacyMessageListFragment2.getLocalSearch().isManualSearch) {
                                    long j = folderInfoHolder.databaseId;
                                    MessagingControllerWrapper messagingController = legacyMessageListFragment2.getMessagingController();
                                    messagingController.getClass();
                                    accountId.getClass();
                                    LegacyAccountDto accountDtoOrThrow = messagingController.getAccountDtoOrThrow(accountId);
                                    MessagingController messagingController2 = messagingController.messagingController;
                                    messagingController2.putBackground("loadMoreMessages", new MessagingController$$ExternalSyntheticLambda0(messagingController2, accountDtoOrThrow, j, 0));
                                    break;
                                } else if (legacyMessageListFragment2.isRemoteSearch && (list = legacyMessageListFragment2.extraSearchResults) != null && !list.isEmpty()) {
                                    int i32 = legacyAccount.remoteSearchNumResults;
                                    if (1 > i32 || i32 >= list.size()) {
                                        legacyMessageListFragment2.extraSearchResults = null;
                                        legacyMessageListFragment2.updateFooterText(null);
                                    } else {
                                        legacyMessageListFragment2.extraSearchResults = list.subList(i32, list.size());
                                        list = list.subList(0, i32);
                                    }
                                    List list2 = list;
                                    MessagingControllerWrapper messagingController3 = legacyMessageListFragment2.getMessagingController();
                                    long j2 = folderInfoHolder.databaseId;
                                    MessageListFragment.MessageListActivityListener messageListActivityListener = legacyMessageListFragment2.activityListener;
                                    messagingController3.getClass();
                                    accountId.getClass();
                                    list2.getClass();
                                    messageListActivityListener.getClass();
                                    LegacyAccountDto accountDtoOrThrow2 = messagingController3.getAccountDtoOrThrow(accountId);
                                    MessagingController messagingController4 = messagingController3.messagingController;
                                    messagingController4.threadPool.execute(new ArchiveOperations$$ExternalSyntheticLambda6(messagingController4, messageListActivityListener, accountDtoOrThrow2, j2, list2));
                                    break;
                                }
                            }
                        }
                        break;
                    case 2:
                        view.getClass();
                        Object parent = view.getParent();
                        parent.getClass();
                        MessageListItem itemFromView2 = messageListAdapter.getItemFromView((View) parent);
                        if (itemFromView2 != null) {
                            messageListAdapter.listItemListener.onToggleMessageFlag(itemFromView2);
                            break;
                        }
                        break;
                    default:
                        view.getClass();
                        Object parent2 = view.getParent();
                        parent2.getClass();
                        MessageListItem itemFromView3 = messageListAdapter.getItemFromView((View) parent2);
                        if (itemFromView3 != null) {
                            LegacyMessageListFragment legacyMessageListFragment3 = messageListAdapter.listItemListener;
                            legacyMessageListFragment3.getClass();
                            legacyMessageListFragment3.toggleMessageSelect(itemFromView3);
                            break;
                        }
                        break;
                }
            }
        };
        setHasStableIds(true);
    }

    public static ArrayList filterMessageListItem(List list) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (obj instanceof MessageListViewItem.Message) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((MessageListViewItem.Message) it.next()).item);
        }
        return arrayList2;
    }

    public final MessageListItem getItem(MessageReference messageReference) {
        Object obj;
        messageReference.getClass();
        Iterator it = filterMessageListItem(this.viewItems).iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            MessageListItem messageListItem = (MessageListItem) obj;
            if (Intrinsics.areEqual(messageListItem.account.uuid, messageReference.accountUuid) && messageListItem.folderId == messageReference.folderId && Intrinsics.areEqual(messageListItem.messageUid, messageReference.uid)) {
                break;
            }
        }
        return (MessageListItem) obj;
    }

    public final MessageListItem getItemById(long j) {
        return (MessageListItem) this.messagesMap.get(Long.valueOf(j));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.viewItems.size();
    }

    public final MessageListItem getItemFromView(View view) {
        if (this.featureFlagProvider.m1030providedj3aFNw("use_compose_for_message_list_items").isEnabled()) {
            Object tag = view.getTag();
            tag.getClass();
            return getItemById(((ComposableMessageViewHolder) tag).uniqueId);
        }
        Object tag2 = view.getTag();
        tag2.getClass();
        return getItemById(((MessageViewHolder) tag2).uniqueId);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long getItemId(int i) {
        return ((MessageListViewItem) this.viewItems.get(i)).getViewId();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        return ((MessageListViewItem) this.viewItems.get(i)).getViewType();
    }

    public final Integer getPosition(MessageReference messageReference) {
        if (messageReference != null) {
            List<MessageListViewItem> list = this.viewItems;
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
            for (MessageListViewItem messageListViewItem : list) {
                MessageListViewItem.Message message = messageListViewItem instanceof MessageListViewItem.Message ? (MessageListViewItem.Message) messageListViewItem : null;
                arrayList.add(message != null ? message.item : null);
            }
            Iterator it = arrayList.iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                }
                MessageListItem messageListItem = (MessageListItem) it.next();
                if (messageListItem != null) {
                    if (messageReference.equals(messageListItem.folderId, messageListItem.account.uuid, messageListItem.messageUid)) {
                        break;
                    }
                }
                i++;
            }
            Integer valueOf = Integer.valueOf(i);
            if (i != -1) {
                return valueOf;
            }
        }
        return null;
    }

    public final ArrayList getSelectedMessages() {
        Set set = this.selected;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set, 10));
        Iterator it = set.iterator();
        while (it.hasNext()) {
            Object obj = this.messagesMap.get(Long.valueOf(((Number) it.next()).longValue()));
            obj.getClass();
            arrayList.add((MessageListItem) obj);
        }
        return arrayList;
    }

    public final boolean isActiveMessage(MessageListItem messageListItem) {
        MessageReference messageReference = this.activeMessage;
        return messageReference != null && Intrinsics.areEqual(messageListItem.account.uuid, messageReference.accountUuid) && messageListItem.folderId == messageReference.folderId && Intrinsics.areEqual(messageListItem.messageUid, messageReference.uid);
    }

    public final boolean isSelected(MessageListItem messageListItem) {
        messageListItem.getClass();
        return this.selected.contains(Long.valueOf(messageListItem.uniqueId));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        boolean z;
        int i2;
        int i3;
        String str;
        MessageListViewHolder messageListViewHolder = (MessageListViewHolder) viewHolder;
        int itemViewType = getItemViewType(i);
        byte b = 0;
        InMemoryFeatureFlagProvider inMemoryFeatureFlagProvider = this.featureFlagProvider;
        if (itemViewType == 2 && inMemoryFeatureFlagProvider.m1030providedj3aFNw("display_in_app_notifications").equals(FeatureFlagResult.Enabled.INSTANCE)) {
            BannerInlineListInAppNotificationViewHolder bannerInlineListInAppNotificationViewHolder = (BannerInlineListInAppNotificationViewHolder) messageListViewHolder;
            bannerInlineListInAppNotificationViewHolder.view.setContent(new ComposableLambdaImpl(-741288763, new MessageListInAppNotificationViewHolder$$ExternalSyntheticLambda0(bannerInlineListInAppNotificationViewHolder, b, b), true));
            return;
        }
        if (itemViewType != 0) {
            if (itemViewType != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Unsupported type: ", itemViewType);
                return;
            }
            Object obj = this.viewItems.get(i);
            obj.getClass();
            ((FooterViewHolder) messageListViewHolder).textView.setText(((MessageListViewItem.Footer) obj).text);
            return;
        }
        Object obj2 = this.viewItems.get(i);
        obj2.getClass();
        MessageListItem messageListItem = ((MessageListViewItem.Message) obj2).item;
        String str2 = (String) this.formatDate.invoke(Long.valueOf(messageListItem.messageDate));
        LegacyAccount legacyAccount = messageListItem.account;
        String str3 = messageListItem.subject;
        int i4 = messageListItem.threadCount;
        long j = messageListItem.messageDate;
        long j2 = messageListItem.internalDate;
        CharSequence charSequence = messageListItem.displayName;
        Address address = messageListItem.displayAddress;
        String str4 = messageListItem.previewText;
        boolean z2 = messageListItem.isMessageEncrypted;
        boolean z3 = messageListItem.isRead;
        boolean z4 = messageListItem.isStarred;
        boolean z5 = messageListItem.isAnswered;
        boolean z6 = messageListItem.isForwarded;
        boolean z7 = messageListItem.hasAttachments;
        long j3 = messageListItem.uniqueId;
        long j4 = messageListItem.folderId;
        String str5 = messageListItem.messageUid;
        long j5 = messageListItem.databaseId;
        long j6 = messageListItem.threadRoot;
        int i5 = messageListItem.contactColor;
        charSequence.getClass();
        str5.getClass();
        MessageListItem messageListItem2 = new MessageListItem(legacyAccount, str3, i4, j, j2, charSequence, address, str2, str4, z2, z3, z4, z5, z6, z7, j3, j4, str5, j5, j6, i5);
        if (inMemoryFeatureFlagProvider.m1030providedj3aFNw("use_compose_for_message_list_items").isEnabled()) {
            ComposableMessageViewHolder composableMessageViewHolder = (ComposableMessageViewHolder) messageListViewHolder;
            boolean isActiveMessage = isActiveMessage(messageListItem);
            boolean isSelected = isSelected(messageListItem);
            composableMessageViewHolder.uniqueId = j3;
            composableMessageViewHolder.composeView.setContent(new ComposableLambdaImpl(243695301, new SwitchKt$$ExternalSyntheticLambda0(composableMessageViewHolder, messageListItem2, isActiveMessage, isSelected), true));
            return;
        }
        MessageViewHolder messageViewHolder = (MessageViewHolder) messageListViewHolder;
        boolean isActiveMessage2 = isActiveMessage(messageListItem);
        boolean isSelected2 = isSelected(messageListItem);
        ImageView imageView = messageViewHolder.statusView;
        ImageView imageView2 = messageViewHolder.attachmentView;
        ImageView imageView3 = messageViewHolder.starView;
        ImageView imageView4 = messageViewHolder.chipView;
        View view = messageViewHolder.selectedView;
        View view2 = messageViewHolder.contactPictureClickArea;
        MaterialTextView materialTextView = messageViewHolder.dateView;
        MaterialTextView materialTextView2 = messageViewHolder.previewView;
        MessageViewHolderColors messageViewHolderColors = messageViewHolder.colors;
        MaterialTextView materialTextView3 = messageViewHolder.subjectView;
        ImageView imageView5 = messageViewHolder.contactPictureView;
        Resources resources = messageViewHolder.res;
        Function0 function0 = messageViewHolder.appearance;
        MessageListAppearance messageListAppearance = (MessageListAppearance) function0.invoke();
        boolean z8 = messageListAppearance.showContactPicture;
        boolean z9 = messageListAppearance.senderAboveSubject;
        if (z8) {
            view2.setSelected(isSelected2);
            if (isSelected2) {
                imageView5.setVisibility(8);
                view.setVisibility(0);
                z = isSelected2;
            } else {
                z = isSelected2;
                view.setVisibility(8);
                imageView5.setVisibility(0);
            }
            view2.setContentDescription(z ? resources.getString(R.string.swipe_action_deselect) : resources.getString(R.string.swipe_action_select));
        } else {
            z = isSelected2;
        }
        messageViewHolder.uniqueId = j3;
        int i6 = z ? messageViewHolderColors.selected : isActiveMessage2 ? messageViewHolderColors.active : z3 ? messageViewHolderColors.read : !z3 ? messageViewHolderColors.unread : messageViewHolderColors.regular;
        int i7 = !z3 ? 1 : 0;
        int i8 = messageListAppearance.showingThreadedList ? i4 : 0;
        CharSequence string = resources.getString(R.string.general_no_subject);
        string.getClass();
        if (str3 != null && str3.length() != 0) {
            if (i8 > 1) {
                string = Utility.stripSubject(str3);
                string.getClass();
            } else {
                string = str3;
            }
        }
        if (messageListAppearance.showAccountIndicator) {
            Drawable mutate = imageView4.getDrawable().mutate();
            mutate.getClass();
            mutate.setTint(legacyAccount.profile.color);
            imageView4.setImageDrawable(mutate);
        }
        if (messageListAppearance.stars) {
            imageView3.setSelected(z4);
            if (z4) {
                imageView3.clearColorFilter();
            } else {
                imageView3.setColorFilter(i6);
            }
            messageViewHolder.starClickAreaView.setContentDescription(z4 ? resources.getString(R.string.unflag_action) : resources.getString(R.string.flag_action));
        }
        if (messageListAppearance.showContactPicture && imageView5.getVisibility() == 0) {
            if (address != null) {
                messageViewHolder.contactsPictureLoader.setContactPicture(imageView5, address);
            } else {
                imageView5.setImageResource(R.drawable.ic_check);
            }
        }
        View view3 = messageViewHolder.itemView;
        boolean z10 = ((MessageListAppearance) function0.invoke()).backGroundAsReadIndicator;
        view3.setBackgroundColor(z ? messageViewHolderColors.selectedBackground : isActiveMessage2 ? messageViewHolderColors.activeBackground : (z10 && z3) ? messageViewHolderColors.readBackground : (!z10 || z3) ? messageViewHolderColors.regularBackground : messageViewHolderColors.unreadBackground);
        MaterialTextView materialTextView4 = messageViewHolder.threadCountView;
        if (i8 > 1) {
            materialTextView4.setText(String.format(Locale.US, "%d", Arrays.copyOf(new Object[]{Integer.valueOf(i8)}, 1)));
            materialTextView4.setVisibility(0);
        } else {
            materialTextView4.setVisibility(8);
        }
        CharSequence charSequence2 = z9 ? string : charSequence;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence2);
        if (messageListAppearance.previewLines > 0) {
            if (z2) {
                str = resources.getString(R.string.preview_encrypted);
                str.getClass();
            } else {
                str = str4;
            }
            if (str.length() > 0) {
                spannableStringBuilder.append((CharSequence) " – ").append((CharSequence) str);
            }
        }
        materialTextView2.setTextColor(i6);
        materialTextView2.setText(spannableStringBuilder, TextView.BufferType.SPANNABLE);
        CharSequence text = materialTextView2.getText();
        text.getClass();
        Spannable spannable = (Spannable) text;
        int i9 = z ? messageViewHolderColors.previewSelectedText : isActiveMessage2 ? messageViewHolderColors.previewActiveText : messageViewHolderColors.previewText;
        int length = charSequence2.length();
        MessageListAppearance messageListAppearance2 = (MessageListAppearance) function0.invoke();
        boolean z11 = messageListAppearance2.senderAboveSubject;
        FontSizes fontSizes = messageListAppearance2.fontSizes;
        int i10 = z11 ? fontSizes.messageListSubject : fontSizes.messageListSender;
        if (i10 != -1) {
            i3 = 1;
            AbsoluteSizeSpan absoluteSizeSpan = new AbsoluteSizeSpan(i10, true);
            i2 = 0;
            spannable.setSpan(absoluteSizeSpan, 0, length, 33);
        } else {
            i2 = 0;
            i3 = 1;
        }
        if (!z3) {
            spannable.setSpan(new StyleSpan(i3), i2, length, 33);
        }
        spannable.setSpan(new ForegroundColorSpan(i9), length, spannable.length(), 33);
        materialTextView3.setTypeface(Typeface.create(materialTextView3.getTypeface(), i7));
        materialTextView3.setTextColor(i6);
        CharSequence charSequence3 = z9 ? charSequence : string;
        materialTextView3.setText(charSequence3);
        Drawable drawable = null;
        materialTextView3.setContentDescription(z3 ? null : resources.getString(R.string.message_list_content_description_unread_prefix, charSequence3));
        materialTextView.setTypeface(Typeface.create(materialTextView.getTypeface(), i7));
        materialTextView.setTextColor(i6);
        materialTextView.setText(str2);
        imageView2.setVisibility(z7 ? 0 : 8);
        imageView2.setColorFilter(i6);
        Resources.Theme theme = messageViewHolder.theme;
        if (z6 && z5) {
            ThreadLocal threadLocal = ResourcesCompat.sTempTypedValue;
            drawable = resources.getDrawable(R.drawable.ic_compare_arrows, theme);
            drawable.getClass();
        } else if (z5) {
            ThreadLocal threadLocal2 = ResourcesCompat.sTempTypedValue;
            drawable = resources.getDrawable(R.drawable.ic_reply, theme);
            drawable.getClass();
        } else if (z6) {
            ThreadLocal threadLocal3 = ResourcesCompat.sTempTypedValue;
            drawable = resources.getDrawable(R.drawable.ic_forward, theme);
            drawable.getClass();
        }
        if (drawable == null) {
            imageView.setVisibility(8);
        } else {
            imageView.setImageDrawable(drawable);
            imageView.setVisibility(0);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        int dimensionPixelSize;
        int dimensionPixelSize2;
        float floatCompat;
        InMemoryFeatureFlagProvider inMemoryFeatureFlagProvider = this.featureFlagProvider;
        LayoutInflater layoutInflater = this.layoutInflater;
        if (i != 0) {
            if (i == 1) {
                int i2 = FooterViewHolder.$r8$clinit;
                layoutInflater.getClass();
                MessageListAdapter$$ExternalSyntheticLambda12 messageListAdapter$$ExternalSyntheticLambda12 = this.footerClickListener;
                messageListAdapter$$ExternalSyntheticLambda12.getClass();
                View inflate = layoutInflater.inflate(R.layout.message_list_item_footer, viewGroup, false);
                inflate.setOnClickListener(messageListAdapter$$ExternalSyntheticLambda12);
                return new FooterViewHolder(inflate);
            }
            if (i != 2 || !inMemoryFeatureFlagProvider.m1030providedj3aFNw("display_in_app_notifications").equals(FeatureFlagResult.Enabled.INSTANCE)) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Unsupported type: ", i);
                return null;
            }
            Context context = viewGroup.getContext();
            context.getClass();
            return new BannerInlineListInAppNotificationViewHolder(new InvalidationTracker$implementation$1(1, this.listItemListener, MessageListItemActionListener.class, "onNotificationActionClicked", "onNotificationActionClicked(Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;)V", 0, 12), new InvalidationTracker$implementation$1(1, this.listItemListener, MessageListItemActionListener.class, "filterInAppNotificationEvents", "filterInAppNotificationEvents(Lnet/thunderbird/feature/notification/api/content/InAppNotification;)Z", 0, 11), new ComposeView(context, null, 0, 6, null));
        }
        boolean isEnabled = inMemoryFeatureFlagProvider.m1030providedj3aFNw("use_compose_for_message_list_items").isEnabled();
        LockFreeLinkedListNode$toString$1 lockFreeLinkedListNode$toString$1 = this.appearance;
        if (isEnabled) {
            int i3 = ComposableMessageViewHolder.$r8$clinit;
            Context context2 = viewGroup.getContext();
            context2.getClass();
            MessageListAdapter$$ExternalSyntheticLambda1 messageListAdapter$$ExternalSyntheticLambda1 = new MessageListAdapter$$ExternalSyntheticLambda1(this, 3);
            MessageListAdapter$$ExternalSyntheticLambda1 messageListAdapter$$ExternalSyntheticLambda13 = new MessageListAdapter$$ExternalSyntheticLambda1(this, 4);
            MessageListAdapter$$ExternalSyntheticLambda1 messageListAdapter$$ExternalSyntheticLambda14 = new MessageListAdapter$$ExternalSyntheticLambda1(this, 5);
            MessageListAdapter$$ExternalSyntheticLambda1 messageListAdapter$$ExternalSyntheticLambda15 = new MessageListAdapter$$ExternalSyntheticLambda1(this, 6);
            FeatureThemeProvider featureThemeProvider = this.themeProvider;
            featureThemeProvider.getClass();
            ContactRepository contactRepository = this.contactRepository;
            contactRepository.getClass();
            DefaultAvatarMonogramCreator defaultAvatarMonogramCreator = this.avatarMonogramCreator;
            defaultAvatarMonogramCreator.getClass();
            lockFreeLinkedListNode$toString$1.getClass();
            ComposeView composeView = new ComposeView(context2, null, 0, 6, null);
            ComposableMessageViewHolder composableMessageViewHolder = new ComposableMessageViewHolder(composeView, featureThemeProvider, messageListAdapter$$ExternalSyntheticLambda1, messageListAdapter$$ExternalSyntheticLambda13, messageListAdapter$$ExternalSyntheticLambda15, messageListAdapter$$ExternalSyntheticLambda14, lockFreeLinkedListNode$toString$1, contactRepository, defaultAvatarMonogramCreator);
            composeView.setTag(composableMessageViewHolder);
            return composableMessageViewHolder;
        }
        int i4 = MessageViewHolder.$r8$clinit;
        layoutInflater.getClass();
        lockFreeLinkedListNode$toString$1.getClass();
        Resources.Theme theme = this.theme;
        theme.getClass();
        Resources resources = this.res;
        resources.getClass();
        ContactPictureLoader contactPictureLoader = this.contactsPictureLoader;
        contactPictureLoader.getClass();
        MessageViewHolderColors messageViewHolderColors = this.colors;
        messageViewHolderColors.getClass();
        MessageListAdapter$$ExternalSyntheticLambda12 messageListAdapter$$ExternalSyntheticLambda122 = this.messageClickedListener;
        messageListAdapter$$ExternalSyntheticLambda122.getClass();
        MessageListAdapter$$ExternalSyntheticLambda13 messageListAdapter$$ExternalSyntheticLambda132 = this.messageLongClickedListener;
        messageListAdapter$$ExternalSyntheticLambda132.getClass();
        MessageListAdapter$$ExternalSyntheticLambda12 messageListAdapter$$ExternalSyntheticLambda123 = this.contactPictureContainerClickListener;
        messageListAdapter$$ExternalSyntheticLambda123.getClass();
        MessageListAdapter$$ExternalSyntheticLambda12 messageListAdapter$$ExternalSyntheticLambda124 = this.starClickListener;
        messageListAdapter$$ExternalSyntheticLambda124.getClass();
        View inflate2 = layoutInflater.inflate(R.layout.message_list_item, viewGroup, false);
        inflate2.setOnClickListener(messageListAdapter$$ExternalSyntheticLambda122);
        inflate2.setOnLongClickListener(messageListAdapter$$ExternalSyntheticLambda132);
        MessageViewHolder messageViewHolder = new MessageViewHolder(inflate2, lockFreeLinkedListNode$toString$1, theme, resources, contactPictureLoader, messageViewHolderColors);
        MessageListAppearance messageListAppearance = (MessageListAppearance) lockFreeLinkedListNode$toString$1.get();
        FontSizes fontSizes = messageListAppearance.fontSizes;
        boolean z = messageListAppearance.stars;
        boolean z2 = messageListAppearance.senderAboveSubject;
        MaterialTextView materialTextView = messageViewHolder.subjectView;
        if (z2) {
            FontSizes.setViewTextSize(materialTextView, fontSizes.messageListSender);
        } else {
            FontSizes.setViewTextSize(materialTextView, fontSizes.messageListSubject);
        }
        FontSizes.setViewTextSize(messageViewHolder.dateView, fontSizes.messageListDate);
        int ordinal = messageListAppearance.density.ordinal();
        if (ordinal == 0) {
            dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.messageListCompactVerticalPadding);
            dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.messageListCompactTextViewMargin);
            floatCompat = SQLite.getFloatCompat(R.dimen.messageListCompactLineSpacingMultiplier, resources);
        } else if (ordinal == 1) {
            dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.messageListDefaultVerticalPadding);
            dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.messageListDefaultTextViewMargin);
            floatCompat = SQLite.getFloatCompat(R.dimen.messageListDefaultLineSpacingMultiplier, resources);
        } else {
            if (ordinal != 2) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
            }
            dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.messageListRelaxedVerticalPadding);
            dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.messageListRelaxedTextViewMargin);
            floatCompat = SQLite.getFloatCompat(R.dimen.messageListRelaxedLineSpacingMultiplier, resources);
        }
        ((Guideline) inflate2.findViewById(R.id.top_guideline)).setGuidelineBegin(dimensionPixelSize);
        ((Guideline) inflate2.findViewById(R.id.bottom_guideline)).setGuidelineEnd(dimensionPixelSize);
        MaterialTextView materialTextView2 = messageViewHolder.previewView;
        ViewGroup.LayoutParams layoutParams = materialTextView2.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            marginLayoutParams.topMargin = dimensionPixelSize2;
        }
        materialTextView2.setLineSpacing(materialTextView2.getLineSpacingExtra(), floatCompat);
        boolean z3 = messageListAppearance.showContactPicture;
        View view = messageViewHolder.contactPictureClickArea;
        if (z3) {
            view.setOnClickListener(messageListAdapter$$ExternalSyntheticLambda123);
        } else {
            view.setVisibility(8);
            messageViewHolder.selectedView.setVisibility(8);
            messageViewHolder.contactPictureView.setVisibility(8);
        }
        messageViewHolder.chipView.setVisibility(messageListAppearance.showAccountIndicator ? 0 : 8);
        materialTextView2.setMaxLines(Math.max(messageListAppearance.previewLines, 1));
        FontSizes.setViewTextSize(materialTextView2, fontSizes.messageListPreview);
        FontSizes.setViewTextSize(messageViewHolder.threadCountView, fontSizes.messageListSubject);
        messageViewHolder.starView.setVisibility(z ? 0 : 8);
        int i5 = z ? 0 : 8;
        View view2 = messageViewHolder.starClickAreaView;
        view2.setVisibility(i5);
        view2.setOnClickListener(messageListAdapter$$ExternalSyntheticLambda124);
        inflate2.setTag(messageViewHolder);
        return messageViewHolder;
    }

    public final void setActiveMessage(MessageReference messageReference) {
        if (Intrinsics.areEqual(messageReference, this.activeMessage)) {
            return;
        }
        Integer position = getPosition(this.activeMessage);
        Integer position2 = getPosition(messageReference);
        this.activeMessage = messageReference;
        RecyclerView.AdapterDataObservable adapterDataObservable = this.mObservable;
        if (position != null) {
            adapterDataObservable.notifyItemRangeChanged(position.intValue(), 1, null);
        }
        if (position2 != null) {
            adapterDataObservable.notifyItemRangeChanged(position2.intValue(), 1, null);
        }
    }

    public final void setSelected(Set set) {
        RecyclerView.AdapterDataObservable adapterDataObservable;
        if (set.equals(this.selected)) {
            return;
        }
        FilteringSequence$iterator$1 filteringSequence$iterator$1 = new FilteringSequence$iterator$1(SequencesKt.filterNotNull(new TakeWhileSequence(SequencesKt.filterNotNull(new TakeWhileSequence(new FilteringSequence(CollectionsKt.asSequence(this.selected), true, new NotificationOperations$$ExternalSyntheticLambda2(set, 1)), new MessageListAdapter$$ExternalSyntheticLambda1(this, 7), 2)), new MessageListAdapter$$ExternalSyntheticLambda1(this, 8), 2)));
        while (true) {
            boolean hasNext = filteringSequence$iterator$1.hasNext();
            adapterDataObservable = this.mObservable;
            if (!hasNext) {
                break;
            } else {
                adapterDataObservable.notifyItemRangeChanged(((Number) filteringSequence$iterator$1.next()).intValue(), 1, null);
            }
        }
        FilteringSequence$iterator$1 filteringSequence$iterator$12 = new FilteringSequence$iterator$1(SequencesKt.filterNotNull(new TakeWhileSequence(SequencesKt.filterNotNull(new TakeWhileSequence(new FilteringSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(2, set), true, new MessageListAdapter$$ExternalSyntheticLambda1(this, 9)), new MessageListAdapter$$ExternalSyntheticLambda1(this, 1), 2)), new MessageListAdapter$$ExternalSyntheticLambda1(this, 2), 2)));
        while (filteringSequence$iterator$12.hasNext()) {
            adapterDataObservable.notifyItemRangeChanged(((Number) filteringSequence$iterator$12.next()).intValue(), 1, null);
        }
        this.selected = set;
        int i = 0;
        if (!set.isEmpty()) {
            if (((MessageListAppearance) this.appearance.get()).showingThreadedList) {
                FilteringSequence$iterator$1 filteringSequence$iterator$13 = new FilteringSequence$iterator$1(new FilteringSequence(new TakeWhileSequence(new FilteringSequence(CollectionsKt.asSequence(this.viewItems), true, MessageListAdapter$calculateSelectionCount$$inlined$filterIsInstance$1.INSTANCE), new InstantKt$$ExternalSyntheticLambda0(4), 2), true, new MessageListAdapter$$ExternalSyntheticLambda1(this, 0)));
                while (filteringSequence$iterator$13.hasNext()) {
                    int i2 = ((MessageListItem) filteringSequence$iterator$13.next()).threadCount;
                    if (i2 < 1) {
                        i2 = 1;
                    }
                    i += i2;
                }
            } else {
                i = this.selected.size();
            }
        }
        this.selectedCount = i;
    }

    public final void setViewItems(AbstractList abstractList) {
        abstractList.getClass();
        List list = this.viewItems;
        this.viewItems = abstractList;
        ArrayList filterMessageListItem = filterMessageListItem(abstractList);
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(filterMessageListItem, 10));
        Iterator it = filterMessageListItem.iterator();
        while (it.hasNext()) {
            arrayList.add(((MessageListItem) it.next()).account.uuid);
        }
        CollectionsKt.toSet(arrayList);
        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(filterMessageListItem, 10));
        if (mapCapacity < 16) {
            mapCapacity = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
        Iterator it2 = filterMessageListItem.iterator();
        while (it2.hasNext()) {
            Object next = it2.next();
            linkedHashMap.put(Long.valueOf(((MessageListItem) next).uniqueId), next);
        }
        this.messagesMap = linkedHashMap;
        if (!this.selected.isEmpty()) {
            setSelected(CollectionsKt.intersect(this.selected, this.messagesMap.keySet()));
        }
        DiffUtil.calculateDiff(new MessageListDiffCallback(list, abstractList, 0)).dispatchUpdatesTo(this);
    }

    public final Integer getPosition(MessageListItem messageListItem) {
        messageListItem.getClass();
        List list = this.viewItems;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (true) {
            MessageListItem messageListItem2 = null;
            if (!it.hasNext()) {
                break;
            }
            MessageListViewItem messageListViewItem = (MessageListViewItem) it.next();
            MessageListViewItem.Message message = messageListViewItem instanceof MessageListViewItem.Message ? (MessageListViewItem.Message) messageListViewItem : null;
            if (message != null) {
                messageListItem2 = message.item;
            }
            arrayList.add(messageListItem2);
        }
        Integer valueOf = Integer.valueOf(arrayList.indexOf(messageListItem));
        if (valueOf.intValue() != -1) {
            return valueOf;
        }
        return null;
    }
}
