package org.wikipedia.history;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.view.ActionMode;
import androidx.compose.ui.node.NodeChain;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LifecycleCoroutineScopeImpl;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.FastScroller;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.snackbar.Snackbar;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.internal.DefaultSocket;
import org.jsoup.Jsoup;
import org.jsoup.select.NodeTraversor;
import org.wikipedia.BackPressedHandler;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.WikipediaApp$logOut$2;
import org.wikipedia.activity.BaseActivity$$ExternalSyntheticLambda0;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.wikipedia.donate.DonateDialog$special$$inlined$viewModels$default$5;
import org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda8;
import org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$2;
import org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$3;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.main.MainFragment;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.page.PageActivity$onCreate$1$1$1;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.readinglist.ReadingListsFragment;
import org.wikipedia.search.HybridSearchAbCTest;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.settings.dev.DeveloperSettingsFragment;
import org.wikipedia.settings.dev.DeveloperSettingsPreferenceLoader;
import org.wikipedia.talk.TalkReplyActivity$sam$androidx_lifecycle_Observer$0;
import org.wikipedia.util.Resource;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.log.L;
import org.wikipedia.views.DefaultViewHolder;
import org.wikipedia.views.MessageCardView;
import org.wikipedia.views.PageItemView;
import org.wikipedia.views.SearchEmptyView;
import org.wikipedia.views.SwipeableItemTouchHelperCallback;
import org.wikipedia.views.WikiCardView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\b\u0005\u0006\u0007\b\t\n\u000b\fB\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\r"}, d2 = {"Lorg/wikipedia/history/HistoryFragment;", "Landroidx/fragment/app/Fragment;", "Lorg/wikipedia/BackPressedHandler;", "<init>", "()V", "Callback", "HeaderViewHolder", "SearchCardViewHolder", "HistoryEntryItemHolder", "HistoryEntryItemAdapter", "org/wikipedia/media/AvPlayer", "HistorySearchCallback", "SearchBar", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class HistoryFragment extends Fragment implements BackPressedHandler {
    public DefaultSocket _binding;
    public ActionMode actionMode;
    public final HistoryEntryItemAdapter adapter;
    public final AvPlayer itemCallback;
    public final HistorySearchCallback searchActionModeCallback;
    public final LinkedHashSet selectedEntries;
    public final Request.Builder viewModel$delegate;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class HeaderViewHolder extends DefaultViewHolder {
        public TextView headerText;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class HistoryEntryItemAdapter extends RecyclerView.Adapter {
        public ArrayList historyEntries = new ArrayList();

        public HistoryEntryItemAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            return this.historyEntries.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemViewType(int i) {
            if (this.historyEntries.get(i) instanceof SearchBar) {
                return 0;
            }
            return this.historyEntries.get(i) instanceof String ? 1 : 2;
        }

        public final boolean isEmpty() {
            return this.historyEntries.size() == 0 || (this.historyEntries.size() == 1 && (this.historyEntries.get(0) instanceof SearchBar));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            DefaultViewHolder defaultViewHolder = (DefaultViewHolder) viewHolder;
            if (defaultViewHolder instanceof SearchCardViewHolder) {
                SearchCardViewHolder searchCardViewHolder = (SearchCardViewHolder) defaultViewHolder;
                ImageView imageView = searchCardViewHolder.clearHistoryButton;
                HistoryEntryItemAdapter historyEntryItemAdapter = HistoryFragment.this.adapter;
                imageView.setVisibility(historyEntryItemAdapter.isEmpty() ? 8 : 0);
                searchCardViewHolder.historyFilterButton.setVisibility(historyEntryItemAdapter.isEmpty() ? 8 : 0);
                return;
            }
            if (!(defaultViewHolder instanceof HistoryEntryItemHolder)) {
                Object obj = this.historyEntries.get(i);
                obj.getClass();
                ((HeaderViewHolder) defaultViewHolder).headerText.setText((String) obj);
                return;
            }
            HistoryEntryItemHolder historyEntryItemHolder = (HistoryEntryItemHolder) defaultViewHolder;
            Object obj2 = this.historyEntries.get(i);
            obj2.getClass();
            HistoryEntry historyEntry = (HistoryEntry) obj2;
            historyEntryItemHolder.entry = historyEntry;
            View view = historyEntryItemHolder.itemView;
            view.getClass();
            PageItemView pageItemView = (PageItemView) view;
            pageItemView.setItem(historyEntry);
            pageItemView.setTitle(historyEntry.getTitle().getDisplayText());
            pageItemView.setTitleTypeface(0);
            pageItemView.setDescription(historyEntry.getTitle().description);
            pageItemView.setImageUrl(historyEntry.getTitle().thumbUrl);
            HistoryFragment historyFragment = HistoryFragment.this;
            pageItemView.setSearchQuery(historyFragment.getViewModel().searchQuery);
            pageItemView.setSelected(historyFragment.selectedEntries.contains(historyEntry));
            LifecycleCoroutineScopeImpl lifecycleScope = ViewModelKt.getLifecycleScope(historyFragment);
            PageTitle title = historyEntry.getTitle();
            OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 = new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(20, historyEntryItemHolder);
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            if (Jsoup.getInstance().isOnline()) {
                onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0.onFinish(true);
            } else {
                AwaitKt.launch$default(lifecycleScope, new LoginClient$login$$inlined$CoroutineExceptionHandler$1(onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0), null, new PageActivity$onCreate$1$1$1(title, onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0, null, 19), 2);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            HistoryFragment historyFragment = HistoryFragment.this;
            if (i == 0) {
                View inflate = LayoutInflater.from(historyFragment.requireContext()).inflate(R.layout.view_history_header_with_search, viewGroup, false);
                inflate.getClass();
                return historyFragment.new SearchCardViewHolder(inflate);
            }
            if (i != 1) {
                return historyFragment.new HistoryEntryItemHolder(new PageItemView(historyFragment.requireContext()));
            }
            View inflate2 = LayoutInflater.from(historyFragment.requireContext()).inflate(R.layout.view_section_header, viewGroup, false);
            inflate2.getClass();
            HeaderViewHolder headerViewHolder = new HeaderViewHolder(inflate2);
            View findViewById = inflate2.findViewById(R.id.section_header_text);
            findViewById.getClass();
            headerViewHolder.headerText = (TextView) findViewById;
            return headerViewHolder;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            DefaultViewHolder defaultViewHolder = (DefaultViewHolder) viewHolder;
            if (defaultViewHolder instanceof HistoryEntryItemHolder) {
                View view = ((HistoryEntryItemHolder) defaultViewHolder).itemView;
                view.getClass();
                ((PageItemView) view).setCallback(HistoryFragment.this.itemCallback);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
            DefaultViewHolder defaultViewHolder = (DefaultViewHolder) viewHolder;
            if (defaultViewHolder instanceof HistoryEntryItemHolder) {
                View view = ((HistoryEntryItemHolder) defaultViewHolder).itemView;
                view.getClass();
                ((PageItemView) view).setCallback(null);
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class HistoryEntryItemHolder extends DefaultViewHolder implements SwipeableItemTouchHelperCallback.Callback {
        public HistoryEntry entry;

        public HistoryEntryItemHolder(PageItemView pageItemView) {
            super(pageItemView);
        }

        @Override // org.wikipedia.views.SwipeableItemTouchHelperCallback.Callback
        public final boolean isSwipeable() {
            return true;
        }

        @Override // org.wikipedia.views.SwipeableItemTouchHelperCallback.Callback
        public final void onSwipe() {
            HistoryFragment historyFragment = HistoryFragment.this;
            LinkedHashSet linkedHashSet = historyFragment.selectedEntries;
            HistoryEntry historyEntry = this.entry;
            if (historyEntry == null) {
                Intrinsics.throwUninitializedPropertyAccessException("entry");
                throw null;
            }
            linkedHashSet.add(historyEntry);
            historyFragment.deleteSelectedPages$1();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class HistorySearchCallback extends NodeTraversor {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Fragment this$0;

        public /* synthetic */ HistorySearchCallback(int i, Fragment fragment) {
            this.$r8$classId = i;
            this.this$0 = fragment;
        }

        @Override // org.jsoup.select.NodeTraversor
        public final Context getParentContext() {
            int i = this.$r8$classId;
            Fragment fragment = this.this$0;
            switch (i) {
                case 0:
                    return ((HistoryFragment) fragment).requireContext();
                case 1:
                    return ((ReadingListFragment) fragment).requireContext();
                case 2:
                    return ((ReadingListsFragment) fragment).requireContext();
                default:
                    return ((DeveloperSettingsFragment) fragment).requireContext();
            }
        }

        @Override // org.jsoup.select.NodeTraversor
        public final String getSearchHintString() {
            int i = this.$r8$classId;
            Fragment fragment = this.this$0;
            switch (i) {
                case 0:
                    String string = ((HistoryFragment) fragment).requireContext().getResources().getString(R.string.history_filter_list_hint);
                    string.getClass();
                    return string;
                case 1:
                    String string2 = ((ReadingListFragment) fragment).getString(R.string.filter_hint_filter_my_lists_and_articles);
                    string2.getClass();
                    return string2;
                case 2:
                    String string3 = ((ReadingListsFragment) fragment).requireContext().getResources().getString(R.string.filter_hint_filter_my_lists_and_articles);
                    string3.getClass();
                    return string3;
                default:
                    String string4 = ((DeveloperSettingsFragment) fragment).requireContext().getResources().getString(R.string.preferences_developer_search_hint);
                    string4.getClass();
                    return string4;
            }
        }

        @Override // org.jsoup.select.NodeTraversor, androidx.appcompat.view.ActionMode.Callback
        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            int i = this.$r8$classId;
            Fragment fragment = this.this$0;
            switch (i) {
                case 0:
                    HistoryFragment historyFragment = (HistoryFragment) fragment;
                    historyFragment.actionMode = actionMode;
                    ((MainFragment) historyFragment.requireParentFragment()).setBottomNavVisible(false);
                    DefaultSocket defaultSocket = historyFragment._binding;
                    defaultSocket.getClass();
                    RecyclerView.Adapter adapter = ((RecyclerView) defaultSocket.source).getAdapter();
                    adapter.getClass();
                    HistoryEntryItemAdapter historyEntryItemAdapter = (HistoryEntryItemAdapter) adapter;
                    if (!historyEntryItemAdapter.historyEntries.isEmpty() && (historyEntryItemAdapter.historyEntries.get(0) instanceof SearchBar)) {
                        historyEntryItemAdapter.historyEntries.remove(0);
                        HistoryFragment.this.adapter.mObservable.notifyItemRangeRemoved(0, 1);
                    }
                    super.onCreateActionMode(actionMode, menu);
                    break;
                case 1:
                    ReadingListFragment readingListFragment = (ReadingListFragment) fragment;
                    readingListFragment.actionMode = actionMode;
                    ActivityLoginBinding activityLoginBinding = readingListFragment._binding;
                    activityLoginBinding.getClass();
                    ((RecyclerView) activityLoginBinding.loginUsernameText).stopScroll();
                    ActivityLoginBinding activityLoginBinding2 = readingListFragment._binding;
                    activityLoginBinding2.getClass();
                    ((AppBarLayout) activityLoginBinding2.footerContainer).setExpanded(false, false, true);
                    readingListFragment.setStatusBarActionMode(true);
                    super.onCreateActionMode(actionMode, menu);
                    break;
                case 2:
                    ReadingListsFragment readingListsFragment = (ReadingListsFragment) fragment;
                    readingListsFragment.actionMode = actionMode;
                    readingListsFragment.enableLayoutTransition(false);
                    NodeChain nodeChain = readingListsFragment._binding;
                    nodeChain.getClass();
                    ((MessageCardView) nodeChain.current).setVisibility(8);
                    if (readingListsFragment.isAdded()) {
                        ((MainFragment) readingListsFragment.requireParentFragment()).setBottomNavVisible(false);
                    }
                    super.onCreateActionMode(actionMode, menu);
                    break;
                default:
                    super.onCreateActionMode(actionMode, menu);
                    break;
            }
            return true;
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public final void onDestroyActionMode(ActionMode actionMode) {
            int i = this.$r8$classId;
            Fragment fragment = this.this$0;
            actionMode.getClass();
            switch (i) {
                case 0:
                    HistoryFragment historyFragment = (HistoryFragment) fragment;
                    historyFragment.getViewModel().setSearchQuery("");
                    historyFragment.actionMode = null;
                    ((MainFragment) historyFragment.requireParentFragment()).setBottomNavVisible(true);
                    break;
                case 1:
                    ReadingListFragment readingListFragment = (ReadingListFragment) fragment;
                    readingListFragment.actionMode = null;
                    readingListFragment.currentSearchQuery = null;
                    readingListFragment.setStatusBarActionMode(false);
                    readingListFragment.updateReadingListData();
                    break;
                case 2:
                    ReadingListsFragment readingListsFragment = (ReadingListsFragment) fragment;
                    readingListsFragment.enableLayoutTransition(true);
                    readingListsFragment.actionMode = null;
                    readingListsFragment.currentSearchQuery = null;
                    if (readingListsFragment.isAdded()) {
                        ((MainFragment) readingListsFragment.requireParentFragment()).setBottomNavVisible(true);
                    }
                    readingListsFragment.updateLists();
                    break;
                default:
                    new DeveloperSettingsPreferenceLoader((DeveloperSettingsFragment) fragment).filterPreferences(null);
                    break;
            }
        }

        @Override // org.jsoup.select.NodeTraversor
        public final void onQueryChange(String str) {
            int i = this.$r8$classId;
            Fragment fragment = this.this$0;
            str.getClass();
            switch (i) {
                case 0:
                    ((HistoryFragment) fragment).getViewModel().setSearchQuery(StringsKt.trim(str).toString());
                    break;
                case 1:
                    ((ReadingListFragment) fragment).setSearchQuery$1(StringsKt.trim(str).toString());
                    break;
                case 2:
                    ((ReadingListsFragment) fragment).updateLists(StringsKt.trim(str).toString(), false);
                    break;
                default:
                    new DeveloperSettingsPreferenceLoader((DeveloperSettingsFragment) fragment).filterPreferences(StringsKt.trim(str).toString());
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SearchBar {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SearchCardViewHolder extends DefaultViewHolder {
        public final ImageView clearHistoryButton;
        public final ImageView historyFilterButton;

        public SearchCardViewHolder(View view) {
            super(view);
            WikiCardView wikiCardView = (WikiCardView) view.findViewById(R.id.search_card);
            View findViewById = view.findViewById(R.id.voice_search_button);
            View findViewById2 = view.findViewById(R.id.history_filter);
            findViewById2.getClass();
            ImageView imageView = (ImageView) findViewById2;
            this.historyFilterButton = imageView;
            View findViewById3 = view.findViewById(R.id.history_delete);
            findViewById3.getClass();
            ImageView imageView2 = (ImageView) findViewById3;
            this.clearHistoryButton = imageView2;
            final int i = 0;
            wikiCardView.setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.history.HistoryFragment$SearchCardViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    int i2 = i;
                    HistoryFragment historyFragment = r1;
                    switch (i2) {
                        case 0:
                            ((MainFragment) historyFragment.requireParentFragment()).openSearchActivity(Constants.InvokeSource.NAV_MENU, null, view2);
                            break;
                        case 1:
                            MainFragment mainFragment = (MainFragment) historyFragment.requireParentFragment();
                            Intent putExtra = new Intent("android.speech.action.RECOGNIZE_SPEECH").putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
                            putExtra.getClass();
                            try {
                                mainFragment.startActivityForResult(putExtra, 45, null);
                                break;
                            } catch (ActivityNotFoundException unused) {
                                ShareUtil.showMessage(R.string.error_voice_search_not_available, mainFragment);
                                return;
                            }
                        case 2:
                            if (historyFragment.actionMode == null) {
                                historyFragment.actionMode = historyFragment.requireActivity().startSupportActionMode(historyFragment.searchActionModeCallback);
                                break;
                            }
                            break;
                        default:
                            if (!historyFragment.selectedEntries.isEmpty()) {
                                historyFragment.deleteSelectedPages$1();
                                break;
                            } else {
                                Context requireContext = historyFragment.requireContext();
                                LifecycleCoroutineScopeImpl lifecycleScope = ViewModelKt.getLifecycleScope(historyFragment);
                                WikiGames$$ExternalSyntheticLambda0 wikiGames$$ExternalSyntheticLambda0 = new WikiGames$$ExternalSyntheticLambda0(15, historyFragment);
                                MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(requireContext, 0);
                                materialAlertDialogBuilder.setTitle(R.string.dialog_title_clear_history);
                                materialAlertDialogBuilder.setMessage(R.string.dialog_message_clear_history);
                                materialAlertDialogBuilder.setPositiveButton(R.string.dialog_message_clear_history_yes, new BaseActivity$$ExternalSyntheticLambda0(1, lifecycleScope, wikiGames$$ExternalSyntheticLambda0));
                                materialAlertDialogBuilder.setNegativeButton(R.string.dialog_message_clear_history_no, (DialogInterface.OnClickListener) null);
                                materialAlertDialogBuilder.show();
                                break;
                            }
                    }
                }
            });
            findViewById.getClass();
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            findViewById.setVisibility(((Boolean) Jsoup.getInstance().voiceRecognitionAvailable$delegate.getValue()).booleanValue() ? 0 : 8);
            final int i2 = 1;
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.history.HistoryFragment$SearchCardViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    int i22 = i2;
                    HistoryFragment historyFragment = r1;
                    switch (i22) {
                        case 0:
                            ((MainFragment) historyFragment.requireParentFragment()).openSearchActivity(Constants.InvokeSource.NAV_MENU, null, view2);
                            break;
                        case 1:
                            MainFragment mainFragment = (MainFragment) historyFragment.requireParentFragment();
                            Intent putExtra = new Intent("android.speech.action.RECOGNIZE_SPEECH").putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
                            putExtra.getClass();
                            try {
                                mainFragment.startActivityForResult(putExtra, 45, null);
                                break;
                            } catch (ActivityNotFoundException unused) {
                                ShareUtil.showMessage(R.string.error_voice_search_not_available, mainFragment);
                                return;
                            }
                        case 2:
                            if (historyFragment.actionMode == null) {
                                historyFragment.actionMode = historyFragment.requireActivity().startSupportActionMode(historyFragment.searchActionModeCallback);
                                break;
                            }
                            break;
                        default:
                            if (!historyFragment.selectedEntries.isEmpty()) {
                                historyFragment.deleteSelectedPages$1();
                                break;
                            } else {
                                Context requireContext = historyFragment.requireContext();
                                LifecycleCoroutineScopeImpl lifecycleScope = ViewModelKt.getLifecycleScope(historyFragment);
                                WikiGames$$ExternalSyntheticLambda0 wikiGames$$ExternalSyntheticLambda0 = new WikiGames$$ExternalSyntheticLambda0(15, historyFragment);
                                MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(requireContext, 0);
                                materialAlertDialogBuilder.setTitle(R.string.dialog_title_clear_history);
                                materialAlertDialogBuilder.setMessage(R.string.dialog_message_clear_history);
                                materialAlertDialogBuilder.setPositiveButton(R.string.dialog_message_clear_history_yes, new BaseActivity$$ExternalSyntheticLambda0(1, lifecycleScope, wikiGames$$ExternalSyntheticLambda0));
                                materialAlertDialogBuilder.setNegativeButton(R.string.dialog_message_clear_history_no, (DialogInterface.OnClickListener) null);
                                materialAlertDialogBuilder.show();
                                break;
                            }
                    }
                }
            });
            final int i3 = 2;
            imageView.setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.history.HistoryFragment$SearchCardViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    int i22 = i3;
                    HistoryFragment historyFragment = r1;
                    switch (i22) {
                        case 0:
                            ((MainFragment) historyFragment.requireParentFragment()).openSearchActivity(Constants.InvokeSource.NAV_MENU, null, view2);
                            break;
                        case 1:
                            MainFragment mainFragment = (MainFragment) historyFragment.requireParentFragment();
                            Intent putExtra = new Intent("android.speech.action.RECOGNIZE_SPEECH").putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
                            putExtra.getClass();
                            try {
                                mainFragment.startActivityForResult(putExtra, 45, null);
                                break;
                            } catch (ActivityNotFoundException unused) {
                                ShareUtil.showMessage(R.string.error_voice_search_not_available, mainFragment);
                                return;
                            }
                        case 2:
                            if (historyFragment.actionMode == null) {
                                historyFragment.actionMode = historyFragment.requireActivity().startSupportActionMode(historyFragment.searchActionModeCallback);
                                break;
                            }
                            break;
                        default:
                            if (!historyFragment.selectedEntries.isEmpty()) {
                                historyFragment.deleteSelectedPages$1();
                                break;
                            } else {
                                Context requireContext = historyFragment.requireContext();
                                LifecycleCoroutineScopeImpl lifecycleScope = ViewModelKt.getLifecycleScope(historyFragment);
                                WikiGames$$ExternalSyntheticLambda0 wikiGames$$ExternalSyntheticLambda0 = new WikiGames$$ExternalSyntheticLambda0(15, historyFragment);
                                MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(requireContext, 0);
                                materialAlertDialogBuilder.setTitle(R.string.dialog_title_clear_history);
                                materialAlertDialogBuilder.setMessage(R.string.dialog_message_clear_history);
                                materialAlertDialogBuilder.setPositiveButton(R.string.dialog_message_clear_history_yes, new BaseActivity$$ExternalSyntheticLambda0(1, lifecycleScope, wikiGames$$ExternalSyntheticLambda0));
                                materialAlertDialogBuilder.setNegativeButton(R.string.dialog_message_clear_history_no, (DialogInterface.OnClickListener) null);
                                materialAlertDialogBuilder.show();
                                break;
                            }
                    }
                }
            });
            final int i4 = 3;
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.history.HistoryFragment$SearchCardViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    int i22 = i4;
                    HistoryFragment historyFragment = r1;
                    switch (i22) {
                        case 0:
                            ((MainFragment) historyFragment.requireParentFragment()).openSearchActivity(Constants.InvokeSource.NAV_MENU, null, view2);
                            break;
                        case 1:
                            MainFragment mainFragment = (MainFragment) historyFragment.requireParentFragment();
                            Intent putExtra = new Intent("android.speech.action.RECOGNIZE_SPEECH").putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
                            putExtra.getClass();
                            try {
                                mainFragment.startActivityForResult(putExtra, 45, null);
                                break;
                            } catch (ActivityNotFoundException unused) {
                                ShareUtil.showMessage(R.string.error_voice_search_not_available, mainFragment);
                                return;
                            }
                        case 2:
                            if (historyFragment.actionMode == null) {
                                historyFragment.actionMode = historyFragment.requireActivity().startSupportActionMode(historyFragment.searchActionModeCallback);
                                break;
                            }
                            break;
                        default:
                            if (!historyFragment.selectedEntries.isEmpty()) {
                                historyFragment.deleteSelectedPages$1();
                                break;
                            } else {
                                Context requireContext = historyFragment.requireContext();
                                LifecycleCoroutineScopeImpl lifecycleScope = ViewModelKt.getLifecycleScope(historyFragment);
                                WikiGames$$ExternalSyntheticLambda0 wikiGames$$ExternalSyntheticLambda0 = new WikiGames$$ExternalSyntheticLambda0(15, historyFragment);
                                MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(requireContext, 0);
                                materialAlertDialogBuilder.setTitle(R.string.dialog_title_clear_history);
                                materialAlertDialogBuilder.setMessage(R.string.dialog_message_clear_history);
                                materialAlertDialogBuilder.setPositiveButton(R.string.dialog_message_clear_history_yes, new BaseActivity$$ExternalSyntheticLambda0(1, lifecycleScope, wikiGames$$ExternalSyntheticLambda0));
                                materialAlertDialogBuilder.setNegativeButton(R.string.dialog_message_clear_history_no, (DialogInterface.OnClickListener) null);
                                materialAlertDialogBuilder.show();
                                break;
                            }
                    }
                }
            });
            View[] viewArr = {imageView, imageView2};
            for (int i5 = 0; i5 < 2; i5++) {
                View view2 = viewArr[i5];
                RegexKt.setTooltipText(view2, view2.getContentDescription());
            }
            wikiCardView.post(new Processor$$ExternalSyntheticLambda2(23, HistoryFragment.this, wikiCardView));
            Context requireContext = HistoryFragment.this.requireContext();
            TypedValue typedValue = new TypedValue();
            typedValue = requireContext.getTheme().resolveAttribute(R.attr.background_color, typedValue, true) ? typedValue : null;
            if (typedValue == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130968673");
                throw null;
            }
            wikiCardView.setCardBackgroundColor(typedValue.data);
            View findViewById4 = wikiCardView.findViewById(R.id.search_icon);
            findViewById4.getClass();
            ImageView imageView3 = (ImageView) findViewById4;
            View findViewById5 = wikiCardView.findViewById(R.id.search_text_view);
            findViewById5.getClass();
            TextView textView = (TextView) findViewById5;
            Prefs prefs = Prefs.INSTANCE;
            if (Prefs.isHybridSearchOnboardingShown() && new HybridSearchAbCTest().isHybridSearchEnabled(Jsoup.getInstance().getAppOrSystemLanguageCode())) {
                i = 1;
            }
            int i6 = R.string.search_hint;
            imageView3.setContentDescription(HistoryFragment.this.getString(i != 0 ? R.string.hybrid_search_search_hint : R.string.search_hint));
            textView.setText(HistoryFragment.this.getString(i != 0 ? R.string.hybrid_search_search_hint : i6));
        }
    }

    public HistoryFragment() {
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new HomeFragment$special$$inlined$viewModels$default$2(17, new HomeFragment$special$$inlined$viewModels$default$2(16, this)));
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(HistoryViewModel.class), new HomeFragment$special$$inlined$viewModels$default$3(lazy, 26), new DonateDialog$special$$inlined$viewModels$default$5(this, lazy, 8), new HomeFragment$special$$inlined$viewModels$default$3(lazy, 27));
        this.adapter = new HistoryEntryItemAdapter();
        this.itemCallback = new AvPlayer(11, this);
        this.searchActionModeCallback = new HistorySearchCallback(0, this);
        this.selectedEntries = new LinkedHashSet();
    }

    public final void deleteSelectedPages$1() {
        HistoryViewModel viewModel = getViewModel();
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), viewModel.handler, null, new WikipediaApp$logOut$2(CollectionsKt.toList(this.selectedEntries), viewModel, (Continuation) null, 6), 2);
    }

    public final HistoryViewModel getViewModel() {
        return (HistoryViewModel) this.viewModel$delegate.getValue();
    }

    @Override // org.wikipedia.BackPressedHandler
    public final boolean onBackPressed() {
        ActionMode actionMode = this.actionMode;
        if (actionMode != null) {
            actionMode.finish();
            return true;
        }
        LinkedHashSet linkedHashSet = this.selectedEntries;
        if (linkedHashSet.size() <= 0) {
            return false;
        }
        linkedHashSet.clear();
        HistoryEntryItemAdapter historyEntryItemAdapter = this.adapter;
        historyEntryItemAdapter.notifyItemRangeChanged(0, historyEntryItemAdapter.historyEntries.size());
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.fragment_history, viewGroup, false);
        int i = R.id.history_empty_container;
        ConstraintLayout constraintLayout = (ConstraintLayout) Room.findChildViewById(inflate, R.id.history_empty_container);
        if (constraintLayout != null) {
            i = R.id.history_empty_image;
            if (((ImageView) Room.findChildViewById(inflate, R.id.history_empty_image)) != null) {
                i = R.id.history_empty_message;
                if (((TextView) Room.findChildViewById(inflate, R.id.history_empty_message)) != null) {
                    i = R.id.history_empty_title;
                    if (((TextView) Room.findChildViewById(inflate, R.id.history_empty_title)) != null) {
                        i = R.id.history_list;
                        RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.history_list);
                        if (recyclerView != null) {
                            i = R.id.search_empty_view;
                            SearchEmptyView searchEmptyView = (SearchEmptyView) Room.findChildViewById(inflate, R.id.search_empty_view);
                            if (searchEmptyView != null) {
                                this._binding = new DefaultSocket((FrameLayout) inflate, constraintLayout, recyclerView, searchEmptyView, 15);
                                searchEmptyView.setEmptyText(R.string.search_history_no_results);
                                SwipeableItemTouchHelperCallback swipeableItemTouchHelperCallback = new SwipeableItemTouchHelperCallback(requireContext());
                                swipeableItemTouchHelperCallback.swipeableEnabled = true;
                                ItemTouchHelper itemTouchHelper = new ItemTouchHelper(swipeableItemTouchHelperCallback);
                                DefaultSocket defaultSocket = this._binding;
                                defaultSocket.getClass();
                                itemTouchHelper.attachToRecyclerView((RecyclerView) defaultSocket.source);
                                DefaultSocket defaultSocket2 = this._binding;
                                defaultSocket2.getClass();
                                ((RecyclerView) defaultSocket2.source).setLayoutManager(new LinearLayoutManager(1));
                                DefaultSocket defaultSocket3 = this._binding;
                                defaultSocket3.getClass();
                                ((RecyclerView) defaultSocket3.source).setAdapter(this.adapter);
                                DefaultSocket defaultSocket4 = this._binding;
                                defaultSocket4.getClass();
                                ((ConstraintLayout) defaultSocket4.closeBits).setVisibility(8);
                                DefaultSocket defaultSocket5 = this._binding;
                                defaultSocket5.getClass();
                                ((RecyclerView) defaultSocket5.source).addOnScrollListener(new FastScroller.AnonymousClass2(1, this));
                                DefaultSocket defaultSocket6 = this._binding;
                                defaultSocket6.getClass();
                                FrameLayout frameLayout = (FrameLayout) defaultSocket6.socket;
                                frameLayout.getClass();
                                return frameLayout;
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        DefaultSocket defaultSocket = this._binding;
        defaultSocket.getClass();
        ((RecyclerView) defaultSocket.source).setAdapter(null);
        DefaultSocket defaultSocket2 = this._binding;
        defaultSocket2.getClass();
        ArrayList arrayList = ((RecyclerView) defaultSocket2.source).mScrollListeners;
        if (arrayList != null) {
            arrayList.clear();
        }
        this.adapter.historyEntries.clear();
        this._binding = null;
        this.mCalled = true;
    }

    public final void onLoadItemsFinished(List list) {
        ArrayList arrayList = new ArrayList();
        ActionMode actionMode = this.actionMode;
        if (!"searchActionMode".equals(actionMode != null ? actionMode.mTag : null)) {
            arrayList.add(new SearchBar());
        }
        arrayList.addAll(list);
        HistoryEntryItemAdapter historyEntryItemAdapter = this.adapter;
        historyEntryItemAdapter.getClass();
        historyEntryItemAdapter.historyEntries = arrayList;
        HistoryFragment.this.adapter.notifyDataSetChanged();
        String str = getViewModel().searchQuery;
        if (str == null || str.length() == 0) {
            DefaultSocket defaultSocket = this._binding;
            defaultSocket.getClass();
            ((SearchEmptyView) defaultSocket.sink).setVisibility(8);
            DefaultSocket defaultSocket2 = this._binding;
            defaultSocket2.getClass();
            ((ConstraintLayout) defaultSocket2.closeBits).setVisibility(historyEntryItemAdapter.isEmpty() ? 0 : 8);
        } else {
            DefaultSocket defaultSocket3 = this._binding;
            defaultSocket3.getClass();
            ((SearchEmptyView) defaultSocket3.sink).setVisibility(historyEntryItemAdapter.isEmpty() ? 0 : 8);
            DefaultSocket defaultSocket4 = this._binding;
            defaultSocket4.getClass();
            ((ConstraintLayout) defaultSocket4.closeBits).setVisibility(8);
        }
        requireActivity().invalidateOptionsMenu();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        this.mCalled = true;
        ActionMode actionMode = this.actionMode;
        if (actionMode != null) {
            actionMode.finish();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        this.mCalled = true;
        getViewModel().reloadHistoryItems();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        final int i = 0;
        getViewModel().historyItems.observe(getViewLifecycleOwner(), new TalkReplyActivity$sam$androidx_lifecycle_Observer$0(new Function1(this) { // from class: org.wikipedia.history.HistoryFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ HistoryFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i2 = i;
                Unit unit = Unit.INSTANCE;
                HistoryFragment historyFragment = this.f$0;
                Resource resource = (Resource) obj;
                switch (i2) {
                    case 0:
                        if (!(resource instanceof Resource.Success)) {
                            if (resource instanceof Resource.Error) {
                                L.e(((Resource.Error) resource).throwable);
                                historyFragment.onLoadItemsFinished(EmptyList.INSTANCE);
                                break;
                            }
                        } else {
                            historyFragment.onLoadItemsFinished((List) ((Resource.Success) resource).data);
                            break;
                        }
                        break;
                    default:
                        resource.getClass();
                        if (resource instanceof Resource.Success) {
                            LinkedHashSet linkedHashSet = historyFragment.selectedEntries;
                            List list = CollectionsKt.toList(linkedHashSet);
                            String string = list.size() == 1 ? historyFragment.getString(R.string.history_item_deleted, ((HistoryEntry) list.get(0)).getTitle().getDisplayText()) : historyFragment.getString(R.string.history_items_deleted, Integer.valueOf(list.size()));
                            string.getClass();
                            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(historyFragment.requireActivity(), string, 0, 12);
                            makeSnackbar$default.setAction(R.string.history_item_delete_undo, new HomeFragment$$ExternalSyntheticLambda8(15, historyFragment, list));
                            makeSnackbar$default.show();
                            linkedHashSet.clear();
                            historyFragment.getViewModel().reloadHistoryItems();
                            break;
                        }
                        break;
                }
                return unit;
            }
        }, 2));
        final int i2 = 1;
        getViewModel().deleteHistoryItemsAction.observe(getViewLifecycleOwner(), new TalkReplyActivity$sam$androidx_lifecycle_Observer$0(new Function1(this) { // from class: org.wikipedia.history.HistoryFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ HistoryFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i22 = i2;
                Unit unit = Unit.INSTANCE;
                HistoryFragment historyFragment = this.f$0;
                Resource resource = (Resource) obj;
                switch (i22) {
                    case 0:
                        if (!(resource instanceof Resource.Success)) {
                            if (resource instanceof Resource.Error) {
                                L.e(((Resource.Error) resource).throwable);
                                historyFragment.onLoadItemsFinished(EmptyList.INSTANCE);
                                break;
                            }
                        } else {
                            historyFragment.onLoadItemsFinished((List) ((Resource.Success) resource).data);
                            break;
                        }
                        break;
                    default:
                        resource.getClass();
                        if (resource instanceof Resource.Success) {
                            LinkedHashSet linkedHashSet = historyFragment.selectedEntries;
                            List list = CollectionsKt.toList(linkedHashSet);
                            String string = list.size() == 1 ? historyFragment.getString(R.string.history_item_deleted, ((HistoryEntry) list.get(0)).getTitle().getDisplayText()) : historyFragment.getString(R.string.history_items_deleted, Integer.valueOf(list.size()));
                            string.getClass();
                            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(historyFragment.requireActivity(), string, 0, 12);
                            makeSnackbar$default.setAction(R.string.history_item_delete_undo, new HomeFragment$$ExternalSyntheticLambda8(15, historyFragment, list));
                            makeSnackbar$default.show();
                            linkedHashSet.clear();
                            historyFragment.getViewModel().reloadHistoryItems();
                            break;
                        }
                        break;
                }
                return unit;
            }
        }, 2));
    }

    public final void refresh() {
        HistoryEntryItemAdapter historyEntryItemAdapter = this.adapter;
        historyEntryItemAdapter.notifyItemRangeChanged(0, historyEntryItemAdapter.historyEntries.size());
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        if (Jsoup.getInstance().isOnline()) {
            return;
        }
        Prefs prefs = Prefs.INSTANCE;
        if (ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_history_offline_articles_toast), true)) {
            Toast.makeText(requireContext(), R.string.history_offline_articles_toast, 0).show();
            PrefsIoUtil.setBoolean(R.string.preference_key_history_offline_articles_toast, false);
        }
    }

    public final void toggleSelectPage(HistoryEntry historyEntry) {
        if (historyEntry == null) {
            return;
        }
        LinkedHashSet linkedHashSet = this.selectedEntries;
        if (linkedHashSet.contains(historyEntry)) {
            linkedHashSet.remove(historyEntry);
        } else {
            linkedHashSet.add(historyEntry);
        }
        int size = linkedHashSet.size();
        ActionMode actionMode = this.actionMode;
        if (size == 0) {
            if (actionMode != null) {
                actionMode.finish();
            }
        } else if (actionMode != null) {
            actionMode.setTitle(getResources().getQuantityString(R.plurals.multi_items_selected, size, Integer.valueOf(size)));
        }
        HistoryEntryItemAdapter historyEntryItemAdapter = this.adapter;
        historyEntryItemAdapter.getClass();
        historyEntryItemAdapter.notifyItemChanged(historyEntryItemAdapter.historyEntries.indexOf(historyEntry));
    }
}
