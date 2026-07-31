package com.fsck.k9.ui.messagelist;

import androidx.appcompat.app.AppCompatActivity;
import app.k9mail.legacy.message.controller.MessageReference;
import net.thunderbird.feature.search.legacy.LocalMessageSearch;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface MessageListFragmentBridgeContract {
    void collapseSearchView$1();

    void expandSearchView();

    void finishActionMode();

    void folderLoading(long j, boolean z);

    AppCompatActivity getFragmentActivity();

    MessageListViewModel getLegacyViewModel();

    LocalMessageSearch getLocalSearch();

    boolean isSearchViewCollapsed$1();

    boolean isShowAccountIndicator$1();

    void onArchive();

    void onCompose();

    void onCopy();

    void onCycleSort();

    void onDelete();

    void onFullyActive();

    void onMove();

    void onReverseSort();

    void onToggleFlagged();

    void onToggleRead();

    void progress(boolean z);

    void remoteSearchFinished();

    void setActive(boolean z);

    void setActiveMessage(MessageReference messageReference);

    void toggleMessageSelect();

    void updateFooterText(String str);

    void updateTitle();
}
