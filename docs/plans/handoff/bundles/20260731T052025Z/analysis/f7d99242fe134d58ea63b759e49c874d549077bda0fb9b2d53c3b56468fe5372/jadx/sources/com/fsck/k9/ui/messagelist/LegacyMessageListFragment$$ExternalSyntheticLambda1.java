package com.fsck.k9.ui.messagelist;

import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.fsck.k9.R;
import com.fsck.k9.activity.FolderInfoHolder;
import com.fsck.k9.activity.MessageHomeActivity;
import com.fsck.k9.helper.Utility;
import com.fsck.k9.ui.helper.RelativeDateTimeFormatter;
import com.fsck.k9.ui.messagelist.MessageListViewItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptySet;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class LegacyMessageListFragment$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ LegacyMessageListFragment f$0;

    public /* synthetic */ LegacyMessageListFragment$$ExternalSyntheticLambda1(LegacyMessageListFragment legacyMessageListFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = legacyMessageListFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        LegacyMessageListFragment legacyMessageListFragment = this.f$0;
        switch (i) {
            case 0:
                MessageListInfo messageListInfo = (MessageListInfo) obj;
                messageListInfo.getClass();
                List list = messageListInfo.messageListItems;
                if (legacyMessageListFragment.isThreadDisplay && list.isEmpty()) {
                    MessageHomeActivity messageHomeActivity = legacyMessageListFragment.fragmentListener;
                    if (messageHomeActivity == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("fragmentListener");
                        throw null;
                    }
                    messageHomeActivity.getOnBackPressedDispatcher().onBackPressed();
                } else {
                    SwipeRefreshLayout swipeRefreshLayout = legacyMessageListFragment.swipeRefreshLayout;
                    if (swipeRefreshLayout != null) {
                        swipeRefreshLayout.setRefreshing(false);
                        swipeRefreshLayout.setEnabled(legacyMessageListFragment.isRemoteSearchAllowed() || (!legacyMessageListFragment.getLocalSearch().isManualSearch && (legacyMessageListFragment.allAccounts || !legacyMessageListFragment.isSingleAccountMode || !legacyMessageListFragment.isSingleFolderMode || legacyMessageListFragment.isRemoteFolder())));
                    }
                    if (legacyMessageListFragment.isThreadDisplay && !list.isEmpty()) {
                        String str = ((MessageListItem) CollectionsKt.first(list)).subject;
                        String stripSubject = str != null ? Utility.stripSubject(str) : null;
                        if (stripSubject == null || stripSubject.length() == 0) {
                            stripSubject = legacyMessageListFragment.getString(R.string.general_no_subject);
                        }
                        legacyMessageListFragment.threadTitle = stripSubject;
                        legacyMessageListFragment.updateTitle();
                    }
                    MessageListAdapter messageListAdapter = legacyMessageListFragment.adapter;
                    if (messageListAdapter == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("adapter");
                        throw null;
                    }
                    ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
                    if (((InMemoryFeatureFlagProvider) legacyMessageListFragment.featureFlagProvider$delegate.getValue()).m1030providedj3aFNw("display_in_app_notifications").isEnabled()) {
                        createListBuilder.add(MessageListViewItem.InAppNotificationBannerList.INSTANCE);
                    }
                    ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        arrayList.add(new MessageListViewItem.Message((MessageListItem) it.next()));
                    }
                    createListBuilder.addAll(arrayList);
                    messageListAdapter.setViewItems(IntOffsetKt.build(createListBuilder));
                    Set set = legacyMessageListFragment.rememberedSelected;
                    if (set != null) {
                        legacyMessageListFragment.rememberedSelected = null;
                        MessageListAdapter messageListAdapter2 = legacyMessageListFragment.adapter;
                        if (messageListAdapter2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("adapter");
                            throw null;
                        }
                        if (set.isEmpty()) {
                            messageListAdapter2.setSelected(EmptySet.INSTANCE);
                        } else {
                            messageListAdapter2.setSelected(CollectionsKt.intersect(set, messageListAdapter2.messagesMap.keySet()));
                        }
                    }
                    ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(((MessageListItem) it2.next()).account);
                    }
                    Iterator it3 = CollectionsKt.toSet(arrayList2).iterator();
                    while (it3.hasNext()) {
                        legacyMessageListFragment.getMessagingController().checkAuthenticationProblem(((LegacyAccount) it3.next()).id);
                    }
                    legacyMessageListFragment.resetActionMode();
                    legacyMessageListFragment.computeBatchDirection();
                    AppCompatActivity activity = legacyMessageListFragment.getActivity();
                    if (activity != null) {
                        activity.invalidateOptionsMenu();
                    }
                    legacyMessageListFragment.initialMessageListLoad = false;
                    FolderInfoHolder folderInfoHolder = legacyMessageListFragment.currentFolder;
                    if (folderInfoHolder != null) {
                        folderInfoHolder.moreMessages = messageListInfo.hasMoreMessages;
                        legacyMessageListFragment.updateFooterText();
                    }
                }
                return Unit.INSTANCE;
            default:
                return ((RelativeDateTimeFormatter) legacyMessageListFragment.relativeDateTimeFormatter$delegate.getValue()).formatDate(((Long) obj).longValue(), legacyMessageListFragment.getMessageListSettings().dateTimeFormat);
        }
    }
}
