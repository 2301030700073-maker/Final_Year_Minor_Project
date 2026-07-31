package com.fsck.k9.ui.messagelist;

import android.view.View;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.widget.SearchView;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.fragment.app.FragmentManager;
import app.k9mail.legacy.message.controller.MessageReference;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.beetstra.jutf7.Base64Util;
import com.fsck.k9.R;
import com.fsck.k9.activity.FolderInfoHolder;
import com.fsck.k9.activity.MessageHomeActivity;
import com.fsck.k9.controller.ArchiveOperations$$ExternalSyntheticLambda0;
import com.fsck.k9.controller.ArchiveOperations$$ExternalSyntheticLambda2;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.ui.messagelist.LegacyMessageListFragment;
import com.google.android.material.snackbar.Snackbar;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.common.action.SwipeAction;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.feature.mail.message.list.internal.ui.dialog.SetupArchiveFolderDialogFragment;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LegacyMessageListFragment$swipeListener$1 implements SearchView.OnQueryTextListener {
    public final /* synthetic */ LegacyMessageListFragment this$0;

    public /* synthetic */ LegacyMessageListFragment$swipeListener$1(LegacyMessageListFragment legacyMessageListFragment) {
        this.this$0 = legacyMessageListFragment;
    }

    @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextChange(String str) {
        str.getClass();
        return false;
    }

    @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextSubmit(String str) {
        str.getClass();
        LegacyMessageListFragment legacyMessageListFragment = this.this$0;
        FolderInfoHolder folderInfoHolder = legacyMessageListFragment.currentFolder;
        Long valueOf = folderInfoHolder != null ? Long.valueOf(folderInfoHolder.databaseId) : null;
        MessageHomeActivity messageHomeActivity = legacyMessageListFragment.fragmentListener;
        if (messageHomeActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentListener");
            throw null;
        }
        messageHomeActivity.startSearch(str, legacyMessageListFragment.account, valueOf);
        legacyMessageListFragment.collapseSearchView$1();
        return true;
    }

    public void onSwipeAction(MessageListItem messageListItem, SwipeAction swipeAction) {
        swipeAction.getClass();
        boolean z = swipeAction.removesItem;
        int i = 0;
        LegacyMessageListFragment legacyMessageListFragment = this.this$0;
        if (z || swipeAction == SwipeAction.ToggleSelection) {
            legacyMessageListFragment.itemSelectedOnSwipeStart = false;
        }
        int i2 = 1;
        switch (swipeAction.ordinal()) {
            case 0:
                break;
            case 1:
                legacyMessageListFragment.toggleMessageSelect(messageListItem);
                break;
            case 2:
                legacyMessageListFragment.setFlag(messageListItem, Flag.SEEN, true ^ messageListItem.isRead);
                break;
            case 3:
                legacyMessageListFragment.setFlag(messageListItem, Flag.FLAGGED, true ^ messageListItem.isStarred);
                break;
            case 4:
                List listOf = IntOffsetKt.listOf(messageListItem.getMessageReference());
                if (legacyMessageListFragment.checkCopyOrMovePossible(listOf, LegacyMessageListFragment.FolderOperation.MOVE)) {
                    if (!legacyMessageListFragment.showingThreadedList) {
                        legacyMessageListFragment.getMessagingController().messagingController.archiveOperations.archiveMessages(listOf);
                        break;
                    } else {
                        Base64Util base64Util = legacyMessageListFragment.getMessagingController().messagingController.archiveOperations;
                        base64Util.getClass();
                        ((MessagingController) base64Util.alphabet).actOnMessagesGroupedByAccountAndFolder(listOf, new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(20, new ArchiveOperations$$ExternalSyntheticLambda2(base64Util, "archiveThreads", new ArchiveOperations$$ExternalSyntheticLambda0(base64Util, i2), i)));
                        break;
                    }
                }
                break;
            case 5:
                View view = legacyMessageListFragment.mView;
                if (view == null) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Required value was null.");
                    break;
                } else {
                    int[] iArr = Snackbar.SNACKBAR_CONTENT_STYLE_ATTRS;
                    Snackbar.make(view, view.getResources().getText(R.string.archiving_not_available_for_this_account), 0).show();
                    break;
                }
            case 6:
                SetupArchiveFolderDialogFragment.Factory factory = (SetupArchiveFolderDialogFragment.Factory) legacyMessageListFragment.setupArchiveFolderDialogFragmentFactory$delegate.getValue();
                String str = messageListItem.account.uuid;
                FragmentManager parentFragmentManager = legacyMessageListFragment.getParentFragmentManager();
                factory.getClass();
                str.getClass();
                SetupArchiveFolderDialogFragment setupArchiveFolderDialogFragment = new SetupArchiveFolderDialogFragment();
                setupArchiveFolderDialogFragment.setArguments(Util.bundleOf(new Pair("SetupArchiveFolderDialogFragmentFactory_accountUuid", str)));
                setupArchiveFolderDialogFragment.show(parentFragmentManager, "SetupArchiveFolderDialogFragmentFactory");
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                legacyMessageListFragment.onDelete(IntOffsetKt.listOf(messageListItem.getMessageReference()));
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                List listOf2 = IntOffsetKt.listOf(messageListItem.getMessageReference());
                if (!((DefaultGeneralSettingsManager) legacyMessageListFragment.getGeneralSettingsManager$2()).getConfig().interaction.isConfirmSpam) {
                    legacyMessageListFragment.onSpamConfirmed(listOf2);
                    break;
                } else {
                    legacyMessageListFragment.activeMessages = listOf2;
                    legacyMessageListFragment.showDialog$1(R.id.dialog_confirm_spam);
                    break;
                }
            case 9:
                MessageReference messageReference = messageListItem.getMessageReference();
                legacyMessageListFragment.resetSwipedView(messageReference);
                legacyMessageListFragment.onMove(IntOffsetKt.listOf(messageReference));
                break;
            default:
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                break;
        }
    }
}
