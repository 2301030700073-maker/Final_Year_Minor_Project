package org.schabi.newpipe.local.subscription.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.os.BundleKt;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.InitializerViewModelFactory;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.Data;
import androidx.work.impl.Processor$$ExternalSyntheticLambda0;
import androidx.work.impl.WorkerWrapper$launch$1$$ExternalSyntheticLambda0;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.google.android.material.textfield.TextInputLayout;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.livefront.bridge.Bridge;
import com.xwray.groupie.GroupieAdapter;
import com.xwray.groupie.Section;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.internal.operators.completable.CompletableFromAction;
import io.reactivex.rxjava3.internal.operators.completable.CompletableObserveOn;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeFlatMapCompletable;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeFromCallable;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeObserveOn;
import io.reactivex.rxjava3.internal.schedulers.IoScheduler;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.SynchronizedLazyImpl;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.enums.EnumEntriesList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Options;
import org.jsoup.nodes.Printer;
import org.jsoup.parser.TokenData;
import org.koin.core.scope.Scope$$ExternalSyntheticLambda0;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.feed.model.FeedGroupEntity;
import org.schabi.newpipe.databinding.DialogFeedGroupCreateBinding;
import org.schabi.newpipe.fragments.BackPressable;
import org.schabi.newpipe.local.feed.FeedDatabaseManager;
import org.schabi.newpipe.local.feed.FeedDatabaseManager$$ExternalSyntheticLambda1;
import org.schabi.newpipe.local.feed.FeedDatabaseManager$$ExternalSyntheticLambda3;
import org.schabi.newpipe.local.feed.FeedFragment$sam$androidx_lifecycle_Observer$0;
import org.schabi.newpipe.local.subscription.FeedGroupIcon;
import org.schabi.newpipe.local.subscription.SubscriptionFragment$sam$androidx_lifecycle_Observer$0;
import org.schabi.newpipe.local.subscription.dialog.FeedGroupDialog;
import org.schabi.newpipe.local.subscription.dialog.FeedGroupDialogViewModel;
import org.schabi.newpipe.local.subscription.item.ImportSubscriptionsHintPlaceholderItem;
import org.schabi.newpipe.local.subscription.item.PickerIconItem;
import org.schabi.newpipe.local.subscription.item.PickerSubscriptionItem;
import org.schabi.newpipe.util.DeviceUtils;
import org.schabi.newpipe.views.NewPipeEditText;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedGroupDialog extends DialogFragment implements BackPressable {
    public static final Companion Companion = new Companion();
    public DialogFeedGroupCreateBinding _feedGroupCreateBinding;
    public Printer _searchLayoutBinding;
    public FeedGroupIcon groupIcon;
    public Parcelable iconsListState;
    public FeedGroupIcon selectedIcon;
    public GroupieAdapter subscriptionGroupAdapter;
    public Parcelable subscriptionsListState;
    public boolean subscriptionsShowOnlyUngrouped;
    public FeedGroupDialogViewModel viewModel;
    public boolean wasSearchSubscriptionsVisible;
    public boolean wasSubscriptionSelectionChanged;
    public long groupId = -1;
    public long groupSortOrder = -1;
    public HashSet<Long> selectedSubscriptions = new HashSet<>();
    public ScreenState currentScreen = ScreenState.InitialScreen.INSTANCE;
    public String subscriptionsCurrentSearchQuery = "";
    public final Section subscriptionMainSection = new Section();
    public final Section subscriptionEmptyFooter = new Section();
    public final FeedGroupDialog$$ExternalSyntheticLambda0 subscriptionPickerItemListener = new FeedGroupDialog$$ExternalSyntheticLambda0(this, 0);
    public final SynchronizedLazyImpl inputMethodManager$delegate = new SynchronizedLazyImpl(new Scope$$ExternalSyntheticLambda0(this, 7));

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
        public static FeedGroupDialog newInstance(long j) {
            FeedGroupDialog feedGroupDialog = new FeedGroupDialog();
            feedGroupDialog.setArguments(BundleKt.bundleOf(new Pair("KEY_GROUP_ID", Long.valueOf(j))));
            return feedGroupDialog;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class ScreenState implements Serializable {

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class DeleteScreen extends ScreenState {
            public static final DeleteScreen INSTANCE = new DeleteScreen();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof DeleteScreen);
            }

            public final int hashCode() {
                return 49004657;
            }

            public final String toString() {
                return "DeleteScreen";
            }
        }

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class IconPickerScreen extends ScreenState {
            public static final IconPickerScreen INSTANCE = new IconPickerScreen();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof IconPickerScreen);
            }

            public final int hashCode() {
                return 1494360877;
            }

            public final String toString() {
                return "IconPickerScreen";
            }
        }

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class InitialScreen extends ScreenState {
            public static final InitialScreen INSTANCE = new InitialScreen();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof InitialScreen);
            }

            public final int hashCode() {
                return -370862698;
            }

            public final String toString() {
                return "InitialScreen";
            }
        }

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class SubscriptionsPickerScreen extends ScreenState {
            public static final SubscriptionsPickerScreen INSTANCE = new SubscriptionsPickerScreen();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof SubscriptionsPickerScreen);
            }

            public final int hashCode() {
                return -1115714442;
            }

            public final String toString() {
                return "SubscriptionsPickerScreen";
            }
        }
    }

    public final void hideSearch() {
        resetSearch();
        Printer printer = this._searchLayoutBinding;
        printer.getClass();
        ((FrameLayout) printer.root).setVisibility(8);
        DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding = this._feedGroupCreateBinding;
        dialogFeedGroupCreateBinding.getClass();
        dialogFeedGroupCreateBinding.subscriptionsHeaderInfoContainer.setVisibility(0);
        DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding2 = this._feedGroupCreateBinding;
        dialogFeedGroupCreateBinding2.getClass();
        dialogFeedGroupCreateBinding2.subscriptionsHeaderToolbar.getMenu().findItem(R.id.action_search).setVisible(true);
        InputMethodManager inputMethodManager = (InputMethodManager) this.inputMethodManager$delegate.getValue();
        Printer printer2 = this._searchLayoutBinding;
        printer2.getClass();
        inputMethodManager.hideSoftInputFromWindow(((NewPipeEditText) printer2.settings).getWindowToken(), 2);
        Printer printer3 = this._searchLayoutBinding;
        printer3.getClass();
        ((NewPipeEditText) printer3.settings).clearFocus();
    }

    public final boolean isSearchVisible() {
        Printer printer = this._searchLayoutBinding;
        return printer != null && ((FrameLayout) printer.root).getVisibility() == 0;
    }

    @Override // org.schabi.newpipe.fragments.BackPressable
    public final boolean onBackPressed() {
        if ((this.currentScreen instanceof ScreenState.SubscriptionsPickerScreen) && isSearchVisible()) {
            hideSearch();
            return true;
        }
        if (this.currentScreen instanceof ScreenState.InitialScreen) {
            return false;
        }
        showScreen(ScreenState.InitialScreen.INSTANCE);
        return true;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bridge.restoreInstanceState(this, bundle);
        setStyle(Options.Companion.isLightThemeSelected(requireContext()) ? R.style.LightDialogMinWidthTheme : R.style.DarkDialogMinWidthTheme);
        Bundle arguments = getArguments();
        this.groupId = arguments != null ? arguments.getLong("KEY_GROUP_ID", -1L) : -1L;
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        final FragmentActivity requireActivity = requireActivity();
        final int i = this.mTheme;
        return new Dialog(requireActivity, i) { // from class: org.schabi.newpipe.local.subscription.dialog.FeedGroupDialog$onCreateDialog$1
            @Override // android.app.Dialog
            public final void onBackPressed() {
                if (FeedGroupDialog.this.onBackPressed()) {
                    return;
                }
                super.onBackPressed();
            }
        };
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        return layoutInflater.inflate(R.layout.dialog_feed_group_create, viewGroup);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding = this._feedGroupCreateBinding;
        dialogFeedGroupCreateBinding.getClass();
        dialogFeedGroupCreateBinding.subscriptionsSelectorList.setAdapter(null);
        DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding2 = this._feedGroupCreateBinding;
        dialogFeedGroupCreateBinding2.getClass();
        dialogFeedGroupCreateBinding2.iconSelector.setAdapter(null);
        this._feedGroupCreateBinding = null;
        this._searchLayoutBinding = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        this.wasSearchSubscriptionsVisible = isSearchVisible();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(bundle);
        DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding = this._feedGroupCreateBinding;
        dialogFeedGroupCreateBinding.getClass();
        RecyclerView.LayoutManager layoutManager = dialogFeedGroupCreateBinding.iconSelector.getLayoutManager();
        this.iconsListState = layoutManager != null ? layoutManager.onSaveInstanceState() : null;
        DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding2 = this._feedGroupCreateBinding;
        dialogFeedGroupCreateBinding2.getClass();
        RecyclerView.LayoutManager layoutManager2 = dialogFeedGroupCreateBinding2.subscriptionsSelectorList.getLayoutManager();
        this.subscriptionsListState = layoutManager2 != null ? layoutManager2.onSaveInstanceState() : null;
        Bridge.saveInstanceState(this, bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        int i = R.id.cancel_button;
        Button button = (Button) Options.Companion.findChildViewById(R.id.cancel_button, view);
        if (button != null) {
            i = R.id.confirm_button;
            Button button2 = (Button) Options.Companion.findChildViewById(R.id.confirm_button, view);
            if (button2 != null) {
                i = R.id.delete_button;
                ImageButton imageButton = (ImageButton) Options.Companion.findChildViewById(R.id.delete_button, view);
                if (imageButton != null) {
                    i = R.id.delete_screen_message;
                    NewPipeTextView newPipeTextView = (NewPipeTextView) Options.Companion.findChildViewById(R.id.delete_screen_message, view);
                    if (newPipeTextView != null) {
                        i = R.id.group_name_input;
                        NewPipeEditText newPipeEditText = (NewPipeEditText) Options.Companion.findChildViewById(R.id.group_name_input, view);
                        if (newPipeEditText != null) {
                            i = R.id.group_name_input_container;
                            TextInputLayout textInputLayout = (TextInputLayout) Options.Companion.findChildViewById(R.id.group_name_input_container, view);
                            if (textInputLayout != null) {
                                i = R.id.icon_preview;
                                ImageButton imageButton2 = (ImageButton) Options.Companion.findChildViewById(R.id.icon_preview, view);
                                if (imageButton2 != null) {
                                    i = R.id.icon_selector;
                                    RecyclerView recyclerView = (RecyclerView) Options.Companion.findChildViewById(R.id.icon_selector, view);
                                    if (recyclerView != null) {
                                        i = R.id.options_root;
                                        ConstraintLayout constraintLayout = (ConstraintLayout) Options.Companion.findChildViewById(R.id.options_root, view);
                                        if (constraintLayout != null) {
                                            i = R.id.select_channel_button;
                                            Button button3 = (Button) Options.Companion.findChildViewById(R.id.select_channel_button, view);
                                            if (button3 != null) {
                                                i = R.id.selected_subscription_count_view;
                                                NewPipeTextView newPipeTextView2 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.selected_subscription_count_view, view);
                                                if (newPipeTextView2 != null) {
                                                    i = R.id.separator;
                                                    View findChildViewById = Options.Companion.findChildViewById(R.id.separator, view);
                                                    if (findChildViewById != null) {
                                                        i = R.id.subscriptions_header_info;
                                                        NewPipeTextView newPipeTextView3 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.subscriptions_header_info, view);
                                                        if (newPipeTextView3 != null) {
                                                            i = R.id.subscriptions_header_info_container;
                                                            LinearLayout linearLayout = (LinearLayout) Options.Companion.findChildViewById(R.id.subscriptions_header_info_container, view);
                                                            if (linearLayout != null) {
                                                                i = R.id.subscriptions_header_search_container;
                                                                View findChildViewById2 = Options.Companion.findChildViewById(R.id.subscriptions_header_search_container, view);
                                                                if (findChildViewById2 != null) {
                                                                    Printer bind$1 = Printer.bind$1(findChildViewById2);
                                                                    i = R.id.subscriptions_header_toolbar;
                                                                    Toolbar toolbar = (Toolbar) Options.Companion.findChildViewById(R.id.subscriptions_header_toolbar, view);
                                                                    if (toolbar != null) {
                                                                        i = R.id.subscriptions_selector;
                                                                        LinearLayout linearLayout2 = (LinearLayout) Options.Companion.findChildViewById(R.id.subscriptions_selector, view);
                                                                        if (linearLayout2 != null) {
                                                                            i = R.id.subscriptions_selector_list;
                                                                            RecyclerView recyclerView2 = (RecyclerView) Options.Companion.findChildViewById(R.id.subscriptions_selector_list, view);
                                                                            if (recyclerView2 != null) {
                                                                                this._feedGroupCreateBinding = new DialogFeedGroupCreateBinding((LinearLayout) view, button, button2, imageButton, newPipeTextView, newPipeEditText, textInputLayout, imageButton2, recyclerView, constraintLayout, button3, newPipeTextView2, findChildViewById, newPipeTextView3, linearLayout, bind$1, toolbar, linearLayout2, recyclerView2);
                                                                                this._searchLayoutBinding = bind$1;
                                                                                FeedGroupDialogViewModel.Companion companion = FeedGroupDialogViewModel.Companion;
                                                                                final Context requireContext = requireContext();
                                                                                requireContext.getClass();
                                                                                final long j = this.groupId;
                                                                                final String str = this.subscriptionsCurrentSearchQuery;
                                                                                final boolean z = this.subscriptionsShowOnlyUngrouped;
                                                                                companion.getClass();
                                                                                str.getClass();
                                                                                final int i2 = 2;
                                                                                Data.Builder builder = new Data.Builder(2);
                                                                                builder.addInitializer(Reflection.getOrCreateKotlinClass(FeedGroupDialogViewModel.class), new Function1() { // from class: org.schabi.newpipe.local.subscription.dialog.FeedGroupDialogViewModel$Companion$$ExternalSyntheticLambda0
                                                                                    @Override // kotlin.jvm.functions.Function1
                                                                                    public final Object invoke(Object obj) {
                                                                                        ((CreationExtras) obj).getClass();
                                                                                        Context applicationContext = requireContext.getApplicationContext();
                                                                                        applicationContext.getClass();
                                                                                        return new FeedGroupDialogViewModel(applicationContext, j, str, z);
                                                                                    }
                                                                                });
                                                                                InitializerViewModelFactory build = builder.build();
                                                                                ViewModelStore viewModelStore = getViewModelStore();
                                                                                CreationExtras viewModelCreationExtras = ViewModelKt.getViewModelCreationExtras(this);
                                                                                viewModelStore.getClass();
                                                                                viewModelCreationExtras.getClass();
                                                                                Dispatcher dispatcher = new Dispatcher(viewModelStore, build, viewModelCreationExtras);
                                                                                ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(FeedGroupDialogViewModel.class);
                                                                                String qualifiedName = orCreateKotlinClass.getQualifiedName();
                                                                                if (qualifiedName == null) {
                                                                                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Local and anonymous classes can not be ViewModels");
                                                                                    return;
                                                                                }
                                                                                FeedGroupDialogViewModel feedGroupDialogViewModel = (FeedGroupDialogViewModel) dispatcher.getViewModel$lifecycle_viewmodel("androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(qualifiedName), orCreateKotlinClass);
                                                                                this.viewModel = feedGroupDialogViewModel;
                                                                                final int i3 = 1;
                                                                                feedGroupDialogViewModel.groupLiveData.observe(getViewLifecycleOwner(), new FeedFragment$sam$androidx_lifecycle_Observer$0(this, i3));
                                                                                FeedGroupDialogViewModel feedGroupDialogViewModel2 = this.viewModel;
                                                                                if (feedGroupDialogViewModel2 == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                                                                                    throw null;
                                                                                }
                                                                                final int i4 = 0;
                                                                                feedGroupDialogViewModel2.subscriptionsLiveData.observe(getViewLifecycleOwner(), new SubscriptionFragment$sam$androidx_lifecycle_Observer$0(new Function1(this) { // from class: org.schabi.newpipe.local.subscription.dialog.FeedGroupDialog$$ExternalSyntheticLambda2
                                                                                    public final /* synthetic */ FeedGroupDialog f$0;

                                                                                    {
                                                                                        this.f$0 = this;
                                                                                    }

                                                                                    @Override // kotlin.jvm.functions.Function1
                                                                                    public final Object invoke(Object obj) {
                                                                                        int i5 = i4;
                                                                                        Unit unit = Unit.INSTANCE;
                                                                                        FeedGroupDialog feedGroupDialog = this.f$0;
                                                                                        switch (i5) {
                                                                                            case 0:
                                                                                                Pair pair = (Pair) obj;
                                                                                                List<PickerSubscriptionItem> list = (List) pair.getFirst();
                                                                                                Set set = (Set) pair.getSecond();
                                                                                                Section section = feedGroupDialog.subscriptionEmptyFooter;
                                                                                                if (!feedGroupDialog.wasSubscriptionSelectionChanged) {
                                                                                                    feedGroupDialog.selectedSubscriptions.addAll(set);
                                                                                                }
                                                                                                feedGroupDialog.updateSubscriptionSelectedCount();
                                                                                                if (list.isEmpty()) {
                                                                                                    section.clear();
                                                                                                    ImportSubscriptionsHintPlaceholderItem importSubscriptionsHintPlaceholderItem = new ImportSubscriptionsHintPlaceholderItem();
                                                                                                    importSubscriptionsHintPlaceholderItem.registerGroupDataObserver(section);
                                                                                                    int itemCountWithoutFooter = section.getItemCountWithoutFooter();
                                                                                                    section.children.add(importSubscriptionsHintPlaceholderItem);
                                                                                                    section.notifyItemRangeInserted(itemCountWithoutFooter, 1);
                                                                                                    section.refreshEmptyState();
                                                                                                } else {
                                                                                                    section.clear();
                                                                                                }
                                                                                                for (PickerSubscriptionItem pickerSubscriptionItem : list) {
                                                                                                    pickerSubscriptionItem.isSelected = feedGroupDialog.selectedSubscriptions.contains(Long.valueOf(pickerSubscriptionItem.subscriptionEntity.uid));
                                                                                                }
                                                                                                feedGroupDialog.subscriptionMainSection.update(list, false);
                                                                                                Parcelable parcelable = feedGroupDialog.subscriptionsListState;
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding = feedGroupDialog._feedGroupCreateBinding;
                                                                                                if (parcelable != null) {
                                                                                                    dialogFeedGroupCreateBinding.getClass();
                                                                                                    RecyclerView.LayoutManager layoutManager = dialogFeedGroupCreateBinding.subscriptionsSelectorList.getLayoutManager();
                                                                                                    if (layoutManager != null) {
                                                                                                        layoutManager.onRestoreInstanceState(feedGroupDialog.subscriptionsListState);
                                                                                                    }
                                                                                                    feedGroupDialog.subscriptionsListState = null;
                                                                                                } else {
                                                                                                    dialogFeedGroupCreateBinding.getClass();
                                                                                                    dialogFeedGroupCreateBinding.subscriptionsSelectorList.scrollToPosition(0);
                                                                                                }
                                                                                                return unit;
                                                                                            default:
                                                                                                FeedGroupDialogViewModel.DialogEvent dialogEvent = (FeedGroupDialogViewModel.DialogEvent) obj;
                                                                                                if (Intrinsics.areEqual(dialogEvent, FeedGroupDialogViewModel.DialogEvent.ProcessingEvent.INSTANCE)) {
                                                                                                    DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding2 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                    if (dialogFeedGroupCreateBinding2 != null) {
                                                                                                        dialogFeedGroupCreateBinding2.deleteButton.setEnabled(false);
                                                                                                    }
                                                                                                    DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding3 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                    if (dialogFeedGroupCreateBinding3 != null) {
                                                                                                        dialogFeedGroupCreateBinding3.confirmButton.setEnabled(false);
                                                                                                    }
                                                                                                    DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding4 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                    if (dialogFeedGroupCreateBinding4 != null) {
                                                                                                        dialogFeedGroupCreateBinding4.cancelButton.setEnabled(false);
                                                                                                    }
                                                                                                    feedGroupDialog.mCancelable = false;
                                                                                                    Dialog dialog = feedGroupDialog.mDialog;
                                                                                                    if (dialog != null) {
                                                                                                        dialog.setCancelable(false);
                                                                                                    }
                                                                                                    InputMethodManager inputMethodManager = (InputMethodManager) feedGroupDialog.inputMethodManager$delegate.getValue();
                                                                                                    DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding5 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                    dialogFeedGroupCreateBinding5.getClass();
                                                                                                    inputMethodManager.hideSoftInputFromWindow(dialogFeedGroupCreateBinding5.groupNameInput.getWindowToken(), 2);
                                                                                                    DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding6 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                    dialogFeedGroupCreateBinding6.getClass();
                                                                                                    dialogFeedGroupCreateBinding6.groupNameInput.clearFocus();
                                                                                                } else {
                                                                                                    if (!Intrinsics.areEqual(dialogEvent, FeedGroupDialogViewModel.DialogEvent.SuccessEvent.INSTANCE)) {
                                                                                                        DecodeUtils$$ExternalSyntheticBUOutline0.m();
                                                                                                        return null;
                                                                                                    }
                                                                                                    feedGroupDialog.dismissInternal(false, false);
                                                                                                }
                                                                                                return unit;
                                                                                        }
                                                                                    }
                                                                                }, 1));
                                                                                FeedGroupDialogViewModel feedGroupDialogViewModel3 = this.viewModel;
                                                                                if (feedGroupDialogViewModel3 == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                                                                                    throw null;
                                                                                }
                                                                                feedGroupDialogViewModel3.dialogEventLiveData.observe(getViewLifecycleOwner(), new SubscriptionFragment$sam$androidx_lifecycle_Observer$0(new Function1(this) { // from class: org.schabi.newpipe.local.subscription.dialog.FeedGroupDialog$$ExternalSyntheticLambda2
                                                                                    public final /* synthetic */ FeedGroupDialog f$0;

                                                                                    {
                                                                                        this.f$0 = this;
                                                                                    }

                                                                                    @Override // kotlin.jvm.functions.Function1
                                                                                    public final Object invoke(Object obj) {
                                                                                        int i5 = i3;
                                                                                        Unit unit = Unit.INSTANCE;
                                                                                        FeedGroupDialog feedGroupDialog = this.f$0;
                                                                                        switch (i5) {
                                                                                            case 0:
                                                                                                Pair pair = (Pair) obj;
                                                                                                List<PickerSubscriptionItem> list = (List) pair.getFirst();
                                                                                                Set set = (Set) pair.getSecond();
                                                                                                Section section = feedGroupDialog.subscriptionEmptyFooter;
                                                                                                if (!feedGroupDialog.wasSubscriptionSelectionChanged) {
                                                                                                    feedGroupDialog.selectedSubscriptions.addAll(set);
                                                                                                }
                                                                                                feedGroupDialog.updateSubscriptionSelectedCount();
                                                                                                if (list.isEmpty()) {
                                                                                                    section.clear();
                                                                                                    ImportSubscriptionsHintPlaceholderItem importSubscriptionsHintPlaceholderItem = new ImportSubscriptionsHintPlaceholderItem();
                                                                                                    importSubscriptionsHintPlaceholderItem.registerGroupDataObserver(section);
                                                                                                    int itemCountWithoutFooter = section.getItemCountWithoutFooter();
                                                                                                    section.children.add(importSubscriptionsHintPlaceholderItem);
                                                                                                    section.notifyItemRangeInserted(itemCountWithoutFooter, 1);
                                                                                                    section.refreshEmptyState();
                                                                                                } else {
                                                                                                    section.clear();
                                                                                                }
                                                                                                for (PickerSubscriptionItem pickerSubscriptionItem : list) {
                                                                                                    pickerSubscriptionItem.isSelected = feedGroupDialog.selectedSubscriptions.contains(Long.valueOf(pickerSubscriptionItem.subscriptionEntity.uid));
                                                                                                }
                                                                                                feedGroupDialog.subscriptionMainSection.update(list, false);
                                                                                                Parcelable parcelable = feedGroupDialog.subscriptionsListState;
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding = feedGroupDialog._feedGroupCreateBinding;
                                                                                                if (parcelable != null) {
                                                                                                    dialogFeedGroupCreateBinding.getClass();
                                                                                                    RecyclerView.LayoutManager layoutManager = dialogFeedGroupCreateBinding.subscriptionsSelectorList.getLayoutManager();
                                                                                                    if (layoutManager != null) {
                                                                                                        layoutManager.onRestoreInstanceState(feedGroupDialog.subscriptionsListState);
                                                                                                    }
                                                                                                    feedGroupDialog.subscriptionsListState = null;
                                                                                                } else {
                                                                                                    dialogFeedGroupCreateBinding.getClass();
                                                                                                    dialogFeedGroupCreateBinding.subscriptionsSelectorList.scrollToPosition(0);
                                                                                                }
                                                                                                return unit;
                                                                                            default:
                                                                                                FeedGroupDialogViewModel.DialogEvent dialogEvent = (FeedGroupDialogViewModel.DialogEvent) obj;
                                                                                                if (Intrinsics.areEqual(dialogEvent, FeedGroupDialogViewModel.DialogEvent.ProcessingEvent.INSTANCE)) {
                                                                                                    DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding2 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                    if (dialogFeedGroupCreateBinding2 != null) {
                                                                                                        dialogFeedGroupCreateBinding2.deleteButton.setEnabled(false);
                                                                                                    }
                                                                                                    DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding3 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                    if (dialogFeedGroupCreateBinding3 != null) {
                                                                                                        dialogFeedGroupCreateBinding3.confirmButton.setEnabled(false);
                                                                                                    }
                                                                                                    DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding4 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                    if (dialogFeedGroupCreateBinding4 != null) {
                                                                                                        dialogFeedGroupCreateBinding4.cancelButton.setEnabled(false);
                                                                                                    }
                                                                                                    feedGroupDialog.mCancelable = false;
                                                                                                    Dialog dialog = feedGroupDialog.mDialog;
                                                                                                    if (dialog != null) {
                                                                                                        dialog.setCancelable(false);
                                                                                                    }
                                                                                                    InputMethodManager inputMethodManager = (InputMethodManager) feedGroupDialog.inputMethodManager$delegate.getValue();
                                                                                                    DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding5 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                    dialogFeedGroupCreateBinding5.getClass();
                                                                                                    inputMethodManager.hideSoftInputFromWindow(dialogFeedGroupCreateBinding5.groupNameInput.getWindowToken(), 2);
                                                                                                    DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding6 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                    dialogFeedGroupCreateBinding6.getClass();
                                                                                                    dialogFeedGroupCreateBinding6.groupNameInput.clearFocus();
                                                                                                } else {
                                                                                                    if (!Intrinsics.areEqual(dialogEvent, FeedGroupDialogViewModel.DialogEvent.SuccessEvent.INSTANCE)) {
                                                                                                        DecodeUtils$$ExternalSyntheticBUOutline0.m();
                                                                                                        return null;
                                                                                                    }
                                                                                                    feedGroupDialog.dismissInternal(false, false);
                                                                                                }
                                                                                                return unit;
                                                                                        }
                                                                                    }
                                                                                }, 1));
                                                                                GroupieAdapter groupieAdapter = new GroupieAdapter();
                                                                                groupieAdapter.add(this.subscriptionMainSection);
                                                                                groupieAdapter.add(this.subscriptionEmptyFooter);
                                                                                final int i5 = 4;
                                                                                groupieAdapter.spanCount = 4;
                                                                                this.subscriptionGroupAdapter = groupieAdapter;
                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding = this._feedGroupCreateBinding;
                                                                                dialogFeedGroupCreateBinding.getClass();
                                                                                RecyclerView recyclerView3 = dialogFeedGroupCreateBinding.subscriptionsSelectorList;
                                                                                recyclerView3.setItemAnimator(null);
                                                                                GroupieAdapter groupieAdapter2 = this.subscriptionGroupAdapter;
                                                                                if (groupieAdapter2 == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("subscriptionGroupAdapter");
                                                                                    throw null;
                                                                                }
                                                                                recyclerView3.setAdapter(groupieAdapter2);
                                                                                Context requireContext2 = requireContext();
                                                                                GroupieAdapter groupieAdapter3 = this.subscriptionGroupAdapter;
                                                                                if (groupieAdapter3 == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("subscriptionGroupAdapter");
                                                                                    throw null;
                                                                                }
                                                                                GridLayoutManager gridLayoutManager = new GridLayoutManager(requireContext2, groupieAdapter3.spanCount, 0);
                                                                                GroupieAdapter groupieAdapter4 = this.subscriptionGroupAdapter;
                                                                                if (groupieAdapter4 == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("subscriptionGroupAdapter");
                                                                                    throw null;
                                                                                }
                                                                                gridLayoutManager.mSpanSizeLookup = groupieAdapter4.spanSizeLookup;
                                                                                recyclerView3.setLayoutManager(gridLayoutManager);
                                                                                GroupieAdapter groupieAdapter5 = new GroupieAdapter();
                                                                                EnumEntriesList enumEntriesList = FeedGroupIcon.$ENTRIES;
                                                                                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(enumEntriesList, 10));
                                                                                Iterator it = enumEntriesList.iterator();
                                                                                while (it.hasNext()) {
                                                                                    arrayList.add(new PickerIconItem((FeedGroupIcon) it.next()));
                                                                                }
                                                                                groupieAdapter5.addAll(arrayList);
                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding2 = this._feedGroupCreateBinding;
                                                                                dialogFeedGroupCreateBinding2.getClass();
                                                                                RecyclerView recyclerView4 = dialogFeedGroupCreateBinding2.iconSelector;
                                                                                recyclerView4.setLayoutManager(new GridLayoutManager(requireContext(), 7, 0));
                                                                                recyclerView4.setAdapter(groupieAdapter5);
                                                                                if (this.iconsListState != null) {
                                                                                    RecyclerView.LayoutManager layoutManager = recyclerView4.getLayoutManager();
                                                                                    if (layoutManager != null) {
                                                                                        layoutManager.onRestoreInstanceState(this.iconsListState);
                                                                                    }
                                                                                    this.iconsListState = null;
                                                                                }
                                                                                groupieAdapter5.onItemClickListener = new FeedGroupDialog$$ExternalSyntheticLambda0(this, i3);
                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding3 = this._feedGroupCreateBinding;
                                                                                dialogFeedGroupCreateBinding3.getClass();
                                                                                final int i6 = 3;
                                                                                dialogFeedGroupCreateBinding3.iconPreview.setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.local.subscription.dialog.FeedGroupDialog$$ExternalSyntheticLambda4
                                                                                    public final /* synthetic */ FeedGroupDialog f$0;

                                                                                    {
                                                                                        this.f$0 = this;
                                                                                    }

                                                                                    @Override // android.view.View.OnClickListener
                                                                                    public final void onClick(View view2) {
                                                                                        int i7 = i6;
                                                                                        FeedGroupDialog.ScreenState.InitialScreen initialScreen = FeedGroupDialog.ScreenState.InitialScreen.INSTANCE;
                                                                                        int i8 = 0;
                                                                                        FeedGroupDialog feedGroupDialog = this.f$0;
                                                                                        switch (i7) {
                                                                                            case 0:
                                                                                                feedGroupDialog.showScreen(FeedGroupDialog.ScreenState.DeleteScreen.INSTANCE);
                                                                                                return;
                                                                                            case 1:
                                                                                                Printer printer = feedGroupDialog._searchLayoutBinding;
                                                                                                printer.getClass();
                                                                                                Editable text = ((NewPipeEditText) printer.settings).getText();
                                                                                                if (text == null || text.length() == 0) {
                                                                                                    feedGroupDialog.hideSearch();
                                                                                                    return;
                                                                                                } else {
                                                                                                    feedGroupDialog.resetSearch();
                                                                                                    feedGroupDialog.showKeyboardSearch$1();
                                                                                                    return;
                                                                                                }
                                                                                            case 2:
                                                                                                if (DeviceUtils.isTv(feedGroupDialog.getContext())) {
                                                                                                    feedGroupDialog.showKeyboardSearch$1();
                                                                                                    return;
                                                                                                }
                                                                                                return;
                                                                                            case 3:
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding4 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                dialogFeedGroupCreateBinding4.getClass();
                                                                                                dialogFeedGroupCreateBinding4.iconSelector.scrollToPosition(0);
                                                                                                feedGroupDialog.showScreen(FeedGroupDialog.ScreenState.IconPickerScreen.INSTANCE);
                                                                                                return;
                                                                                            case 4:
                                                                                                if (Intrinsics.areEqual(feedGroupDialog.currentScreen, initialScreen)) {
                                                                                                    feedGroupDialog.dismissInternal(false, false);
                                                                                                    return;
                                                                                                } else {
                                                                                                    feedGroupDialog.showScreen(initialScreen);
                                                                                                    return;
                                                                                                }
                                                                                            case 5:
                                                                                                FeedGroupDialog.ScreenState screenState = feedGroupDialog.currentScreen;
                                                                                                int i9 = 1;
                                                                                                if (!(screenState instanceof FeedGroupDialog.ScreenState.InitialScreen)) {
                                                                                                    if (!(screenState instanceof FeedGroupDialog.ScreenState.DeleteScreen)) {
                                                                                                        if ((screenState instanceof FeedGroupDialog.ScreenState.SubscriptionsPickerScreen) && feedGroupDialog.isSearchVisible()) {
                                                                                                            feedGroupDialog.hideSearch();
                                                                                                            return;
                                                                                                        } else {
                                                                                                            feedGroupDialog.showScreen(initialScreen);
                                                                                                            return;
                                                                                                        }
                                                                                                    }
                                                                                                    FeedGroupDialogViewModel feedGroupDialogViewModel4 = feedGroupDialog.viewModel;
                                                                                                    if (feedGroupDialogViewModel4 == null) {
                                                                                                        Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                                                                                                        throw null;
                                                                                                    }
                                                                                                    FeedDatabaseManager feedDatabaseManager = feedGroupDialogViewModel4.feedDatabaseManager;
                                                                                                    long j2 = feedGroupDialogViewModel4.groupId;
                                                                                                    feedDatabaseManager.getClass();
                                                                                                    feedGroupDialogViewModel4.doAction$1(new CompletableFromAction(new FeedDatabaseManager$$ExternalSyntheticLambda1(feedDatabaseManager, j2, i8), i9).subscribeOn(Schedulers.IO).observeOn(AndroidSchedulers.mainThread()));
                                                                                                    return;
                                                                                                }
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding5 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                dialogFeedGroupCreateBinding5.getClass();
                                                                                                String obj = StringsKt.trim(String.valueOf(dialogFeedGroupCreateBinding5.groupNameInput.getText())).toString();
                                                                                                FeedGroupIcon feedGroupIcon = feedGroupDialog.selectedIcon;
                                                                                                if (feedGroupIcon == null && (feedGroupIcon = feedGroupDialog.groupIcon) == null) {
                                                                                                    feedGroupIcon = FeedGroupIcon.ALL;
                                                                                                }
                                                                                                FeedGroupIcon feedGroupIcon2 = feedGroupIcon;
                                                                                                boolean isBlank = StringsKt.isBlank(obj);
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding6 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                if (isBlank) {
                                                                                                    dialogFeedGroupCreateBinding6.getClass();
                                                                                                    dialogFeedGroupCreateBinding6.groupNameInputContainer.setError(feedGroupDialog.getString(R.string.feed_group_dialog_empty_name));
                                                                                                    DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding7 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                    dialogFeedGroupCreateBinding7.getClass();
                                                                                                    dialogFeedGroupCreateBinding7.groupNameInput.setText((CharSequence) null);
                                                                                                    DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding8 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                    dialogFeedGroupCreateBinding8.getClass();
                                                                                                    dialogFeedGroupCreateBinding8.groupNameInput.requestFocus();
                                                                                                    return;
                                                                                                }
                                                                                                dialogFeedGroupCreateBinding6.getClass();
                                                                                                dialogFeedGroupCreateBinding6.groupNameInputContainer.setError(null);
                                                                                                if (feedGroupDialog.selectedSubscriptions.isEmpty()) {
                                                                                                    Toast.makeText(feedGroupDialog.requireContext(), feedGroupDialog.getString(R.string.feed_group_dialog_empty_selection), 0).show();
                                                                                                    return;
                                                                                                }
                                                                                                long j3 = feedGroupDialog.groupId;
                                                                                                FeedGroupDialogViewModel feedGroupDialogViewModel5 = feedGroupDialog.viewModel;
                                                                                                if (j3 == -1) {
                                                                                                    if (feedGroupDialogViewModel5 == null) {
                                                                                                        Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                                                                                                        throw null;
                                                                                                    }
                                                                                                    HashSet<Long> hashSet = feedGroupDialog.selectedSubscriptions;
                                                                                                    hashSet.getClass();
                                                                                                    FeedDatabaseManager feedDatabaseManager2 = feedGroupDialogViewModel5.feedDatabaseManager;
                                                                                                    feedDatabaseManager2.getClass();
                                                                                                    feedGroupDialogViewModel5.doAction$1(new MaybeFlatMapCompletable(new MaybeObserveOn(new MaybeFromCallable(new Processor$$ExternalSyntheticLambda0(feedDatabaseManager2, obj, feedGroupIcon2)).subscribeOn(Schedulers.IO), AndroidSchedulers.mainThread(), i8), new TokenData(feedGroupDialogViewModel5, hashSet, 17)));
                                                                                                    return;
                                                                                                }
                                                                                                if (feedGroupDialogViewModel5 == null) {
                                                                                                    Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                                                                                                    throw null;
                                                                                                }
                                                                                                HashSet<Long> hashSet2 = feedGroupDialog.selectedSubscriptions;
                                                                                                long j4 = feedGroupDialog.groupSortOrder;
                                                                                                hashSet2.getClass();
                                                                                                FeedDatabaseManager feedDatabaseManager3 = feedGroupDialogViewModel5.feedDatabaseManager;
                                                                                                long j5 = feedGroupDialogViewModel5.groupId;
                                                                                                List list = CollectionsKt.toList(hashSet2);
                                                                                                feedDatabaseManager3.getClass();
                                                                                                CompletableFromAction completableFromAction = new CompletableFromAction(new FeedDatabaseManager$$ExternalSyntheticLambda3(feedDatabaseManager3, j5, list), i9);
                                                                                                IoScheduler ioScheduler = Schedulers.IO;
                                                                                                feedGroupDialogViewModel5.doAction$1(new CompletableObserveOn(completableFromAction.subscribeOn(ioScheduler).observeOn(AndroidSchedulers.mainThread()), new CompletableFromAction(new WorkerWrapper$launch$1$$ExternalSyntheticLambda0(feedDatabaseManager3, new FeedGroupEntity(feedGroupDialogViewModel5.groupId, obj, feedGroupIcon2, j4), 3), i9).subscribeOn(ioScheduler).observeOn(AndroidSchedulers.mainThread()), 2));
                                                                                                return;
                                                                                            default:
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding9 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                dialogFeedGroupCreateBinding9.getClass();
                                                                                                dialogFeedGroupCreateBinding9.subscriptionsSelectorList.scrollToPosition(0);
                                                                                                feedGroupDialog.showScreen(FeedGroupDialog.ScreenState.SubscriptionsPickerScreen.INSTANCE);
                                                                                                return;
                                                                                        }
                                                                                    }
                                                                                });
                                                                                if (this.groupId == -1) {
                                                                                    FeedGroupIcon feedGroupIcon = this.selectedIcon;
                                                                                    if (feedGroupIcon == null) {
                                                                                        feedGroupIcon = FeedGroupIcon.ALL;
                                                                                    }
                                                                                    DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding4 = this._feedGroupCreateBinding;
                                                                                    dialogFeedGroupCreateBinding4.getClass();
                                                                                    dialogFeedGroupCreateBinding4.iconPreview.setImageResource(feedGroupIcon.getDrawableRes());
                                                                                }
                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding5 = this._feedGroupCreateBinding;
                                                                                dialogFeedGroupCreateBinding5.getClass();
                                                                                dialogFeedGroupCreateBinding5.deleteButton.setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.local.subscription.dialog.FeedGroupDialog$$ExternalSyntheticLambda4
                                                                                    public final /* synthetic */ FeedGroupDialog f$0;

                                                                                    {
                                                                                        this.f$0 = this;
                                                                                    }

                                                                                    @Override // android.view.View.OnClickListener
                                                                                    public final void onClick(View view2) {
                                                                                        int i7 = i4;
                                                                                        FeedGroupDialog.ScreenState.InitialScreen initialScreen = FeedGroupDialog.ScreenState.InitialScreen.INSTANCE;
                                                                                        int i8 = 0;
                                                                                        FeedGroupDialog feedGroupDialog = this.f$0;
                                                                                        switch (i7) {
                                                                                            case 0:
                                                                                                feedGroupDialog.showScreen(FeedGroupDialog.ScreenState.DeleteScreen.INSTANCE);
                                                                                                return;
                                                                                            case 1:
                                                                                                Printer printer = feedGroupDialog._searchLayoutBinding;
                                                                                                printer.getClass();
                                                                                                Editable text = ((NewPipeEditText) printer.settings).getText();
                                                                                                if (text == null || text.length() == 0) {
                                                                                                    feedGroupDialog.hideSearch();
                                                                                                    return;
                                                                                                } else {
                                                                                                    feedGroupDialog.resetSearch();
                                                                                                    feedGroupDialog.showKeyboardSearch$1();
                                                                                                    return;
                                                                                                }
                                                                                            case 2:
                                                                                                if (DeviceUtils.isTv(feedGroupDialog.getContext())) {
                                                                                                    feedGroupDialog.showKeyboardSearch$1();
                                                                                                    return;
                                                                                                }
                                                                                                return;
                                                                                            case 3:
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding42 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                dialogFeedGroupCreateBinding42.getClass();
                                                                                                dialogFeedGroupCreateBinding42.iconSelector.scrollToPosition(0);
                                                                                                feedGroupDialog.showScreen(FeedGroupDialog.ScreenState.IconPickerScreen.INSTANCE);
                                                                                                return;
                                                                                            case 4:
                                                                                                if (Intrinsics.areEqual(feedGroupDialog.currentScreen, initialScreen)) {
                                                                                                    feedGroupDialog.dismissInternal(false, false);
                                                                                                    return;
                                                                                                } else {
                                                                                                    feedGroupDialog.showScreen(initialScreen);
                                                                                                    return;
                                                                                                }
                                                                                            case 5:
                                                                                                FeedGroupDialog.ScreenState screenState = feedGroupDialog.currentScreen;
                                                                                                int i9 = 1;
                                                                                                if (!(screenState instanceof FeedGroupDialog.ScreenState.InitialScreen)) {
                                                                                                    if (!(screenState instanceof FeedGroupDialog.ScreenState.DeleteScreen)) {
                                                                                                        if ((screenState instanceof FeedGroupDialog.ScreenState.SubscriptionsPickerScreen) && feedGroupDialog.isSearchVisible()) {
                                                                                                            feedGroupDialog.hideSearch();
                                                                                                            return;
                                                                                                        } else {
                                                                                                            feedGroupDialog.showScreen(initialScreen);
                                                                                                            return;
                                                                                                        }
                                                                                                    }
                                                                                                    FeedGroupDialogViewModel feedGroupDialogViewModel4 = feedGroupDialog.viewModel;
                                                                                                    if (feedGroupDialogViewModel4 == null) {
                                                                                                        Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                                                                                                        throw null;
                                                                                                    }
                                                                                                    FeedDatabaseManager feedDatabaseManager = feedGroupDialogViewModel4.feedDatabaseManager;
                                                                                                    long j2 = feedGroupDialogViewModel4.groupId;
                                                                                                    feedDatabaseManager.getClass();
                                                                                                    feedGroupDialogViewModel4.doAction$1(new CompletableFromAction(new FeedDatabaseManager$$ExternalSyntheticLambda1(feedDatabaseManager, j2, i8), i9).subscribeOn(Schedulers.IO).observeOn(AndroidSchedulers.mainThread()));
                                                                                                    return;
                                                                                                }
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding52 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                dialogFeedGroupCreateBinding52.getClass();
                                                                                                String obj = StringsKt.trim(String.valueOf(dialogFeedGroupCreateBinding52.groupNameInput.getText())).toString();
                                                                                                FeedGroupIcon feedGroupIcon2 = feedGroupDialog.selectedIcon;
                                                                                                if (feedGroupIcon2 == null && (feedGroupIcon2 = feedGroupDialog.groupIcon) == null) {
                                                                                                    feedGroupIcon2 = FeedGroupIcon.ALL;
                                                                                                }
                                                                                                FeedGroupIcon feedGroupIcon22 = feedGroupIcon2;
                                                                                                boolean isBlank = StringsKt.isBlank(obj);
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding6 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                if (isBlank) {
                                                                                                    dialogFeedGroupCreateBinding6.getClass();
                                                                                                    dialogFeedGroupCreateBinding6.groupNameInputContainer.setError(feedGroupDialog.getString(R.string.feed_group_dialog_empty_name));
                                                                                                    DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding7 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                    dialogFeedGroupCreateBinding7.getClass();
                                                                                                    dialogFeedGroupCreateBinding7.groupNameInput.setText((CharSequence) null);
                                                                                                    DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding8 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                    dialogFeedGroupCreateBinding8.getClass();
                                                                                                    dialogFeedGroupCreateBinding8.groupNameInput.requestFocus();
                                                                                                    return;
                                                                                                }
                                                                                                dialogFeedGroupCreateBinding6.getClass();
                                                                                                dialogFeedGroupCreateBinding6.groupNameInputContainer.setError(null);
                                                                                                if (feedGroupDialog.selectedSubscriptions.isEmpty()) {
                                                                                                    Toast.makeText(feedGroupDialog.requireContext(), feedGroupDialog.getString(R.string.feed_group_dialog_empty_selection), 0).show();
                                                                                                    return;
                                                                                                }
                                                                                                long j3 = feedGroupDialog.groupId;
                                                                                                FeedGroupDialogViewModel feedGroupDialogViewModel5 = feedGroupDialog.viewModel;
                                                                                                if (j3 == -1) {
                                                                                                    if (feedGroupDialogViewModel5 == null) {
                                                                                                        Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                                                                                                        throw null;
                                                                                                    }
                                                                                                    HashSet<Long> hashSet = feedGroupDialog.selectedSubscriptions;
                                                                                                    hashSet.getClass();
                                                                                                    FeedDatabaseManager feedDatabaseManager2 = feedGroupDialogViewModel5.feedDatabaseManager;
                                                                                                    feedDatabaseManager2.getClass();
                                                                                                    feedGroupDialogViewModel5.doAction$1(new MaybeFlatMapCompletable(new MaybeObserveOn(new MaybeFromCallable(new Processor$$ExternalSyntheticLambda0(feedDatabaseManager2, obj, feedGroupIcon22)).subscribeOn(Schedulers.IO), AndroidSchedulers.mainThread(), i8), new TokenData(feedGroupDialogViewModel5, hashSet, 17)));
                                                                                                    return;
                                                                                                }
                                                                                                if (feedGroupDialogViewModel5 == null) {
                                                                                                    Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                                                                                                    throw null;
                                                                                                }
                                                                                                HashSet<Long> hashSet2 = feedGroupDialog.selectedSubscriptions;
                                                                                                long j4 = feedGroupDialog.groupSortOrder;
                                                                                                hashSet2.getClass();
                                                                                                FeedDatabaseManager feedDatabaseManager3 = feedGroupDialogViewModel5.feedDatabaseManager;
                                                                                                long j5 = feedGroupDialogViewModel5.groupId;
                                                                                                List list = CollectionsKt.toList(hashSet2);
                                                                                                feedDatabaseManager3.getClass();
                                                                                                CompletableFromAction completableFromAction = new CompletableFromAction(new FeedDatabaseManager$$ExternalSyntheticLambda3(feedDatabaseManager3, j5, list), i9);
                                                                                                IoScheduler ioScheduler = Schedulers.IO;
                                                                                                feedGroupDialogViewModel5.doAction$1(new CompletableObserveOn(completableFromAction.subscribeOn(ioScheduler).observeOn(AndroidSchedulers.mainThread()), new CompletableFromAction(new WorkerWrapper$launch$1$$ExternalSyntheticLambda0(feedDatabaseManager3, new FeedGroupEntity(feedGroupDialogViewModel5.groupId, obj, feedGroupIcon22, j4), 3), i9).subscribeOn(ioScheduler).observeOn(AndroidSchedulers.mainThread()), 2));
                                                                                                return;
                                                                                            default:
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding9 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                dialogFeedGroupCreateBinding9.getClass();
                                                                                                dialogFeedGroupCreateBinding9.subscriptionsSelectorList.scrollToPosition(0);
                                                                                                feedGroupDialog.showScreen(FeedGroupDialog.ScreenState.SubscriptionsPickerScreen.INSTANCE);
                                                                                                return;
                                                                                        }
                                                                                    }
                                                                                });
                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding6 = this._feedGroupCreateBinding;
                                                                                dialogFeedGroupCreateBinding6.getClass();
                                                                                dialogFeedGroupCreateBinding6.cancelButton.setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.local.subscription.dialog.FeedGroupDialog$$ExternalSyntheticLambda4
                                                                                    public final /* synthetic */ FeedGroupDialog f$0;

                                                                                    {
                                                                                        this.f$0 = this;
                                                                                    }

                                                                                    @Override // android.view.View.OnClickListener
                                                                                    public final void onClick(View view2) {
                                                                                        int i7 = i5;
                                                                                        FeedGroupDialog.ScreenState.InitialScreen initialScreen = FeedGroupDialog.ScreenState.InitialScreen.INSTANCE;
                                                                                        int i8 = 0;
                                                                                        FeedGroupDialog feedGroupDialog = this.f$0;
                                                                                        switch (i7) {
                                                                                            case 0:
                                                                                                feedGroupDialog.showScreen(FeedGroupDialog.ScreenState.DeleteScreen.INSTANCE);
                                                                                                return;
                                                                                            case 1:
                                                                                                Printer printer = feedGroupDialog._searchLayoutBinding;
                                                                                                printer.getClass();
                                                                                                Editable text = ((NewPipeEditText) printer.settings).getText();
                                                                                                if (text == null || text.length() == 0) {
                                                                                                    feedGroupDialog.hideSearch();
                                                                                                    return;
                                                                                                } else {
                                                                                                    feedGroupDialog.resetSearch();
                                                                                                    feedGroupDialog.showKeyboardSearch$1();
                                                                                                    return;
                                                                                                }
                                                                                            case 2:
                                                                                                if (DeviceUtils.isTv(feedGroupDialog.getContext())) {
                                                                                                    feedGroupDialog.showKeyboardSearch$1();
                                                                                                    return;
                                                                                                }
                                                                                                return;
                                                                                            case 3:
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding42 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                dialogFeedGroupCreateBinding42.getClass();
                                                                                                dialogFeedGroupCreateBinding42.iconSelector.scrollToPosition(0);
                                                                                                feedGroupDialog.showScreen(FeedGroupDialog.ScreenState.IconPickerScreen.INSTANCE);
                                                                                                return;
                                                                                            case 4:
                                                                                                if (Intrinsics.areEqual(feedGroupDialog.currentScreen, initialScreen)) {
                                                                                                    feedGroupDialog.dismissInternal(false, false);
                                                                                                    return;
                                                                                                } else {
                                                                                                    feedGroupDialog.showScreen(initialScreen);
                                                                                                    return;
                                                                                                }
                                                                                            case 5:
                                                                                                FeedGroupDialog.ScreenState screenState = feedGroupDialog.currentScreen;
                                                                                                int i9 = 1;
                                                                                                if (!(screenState instanceof FeedGroupDialog.ScreenState.InitialScreen)) {
                                                                                                    if (!(screenState instanceof FeedGroupDialog.ScreenState.DeleteScreen)) {
                                                                                                        if ((screenState instanceof FeedGroupDialog.ScreenState.SubscriptionsPickerScreen) && feedGroupDialog.isSearchVisible()) {
                                                                                                            feedGroupDialog.hideSearch();
                                                                                                            return;
                                                                                                        } else {
                                                                                                            feedGroupDialog.showScreen(initialScreen);
                                                                                                            return;
                                                                                                        }
                                                                                                    }
                                                                                                    FeedGroupDialogViewModel feedGroupDialogViewModel4 = feedGroupDialog.viewModel;
                                                                                                    if (feedGroupDialogViewModel4 == null) {
                                                                                                        Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                                                                                                        throw null;
                                                                                                    }
                                                                                                    FeedDatabaseManager feedDatabaseManager = feedGroupDialogViewModel4.feedDatabaseManager;
                                                                                                    long j2 = feedGroupDialogViewModel4.groupId;
                                                                                                    feedDatabaseManager.getClass();
                                                                                                    feedGroupDialogViewModel4.doAction$1(new CompletableFromAction(new FeedDatabaseManager$$ExternalSyntheticLambda1(feedDatabaseManager, j2, i8), i9).subscribeOn(Schedulers.IO).observeOn(AndroidSchedulers.mainThread()));
                                                                                                    return;
                                                                                                }
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding52 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                dialogFeedGroupCreateBinding52.getClass();
                                                                                                String obj = StringsKt.trim(String.valueOf(dialogFeedGroupCreateBinding52.groupNameInput.getText())).toString();
                                                                                                FeedGroupIcon feedGroupIcon2 = feedGroupDialog.selectedIcon;
                                                                                                if (feedGroupIcon2 == null && (feedGroupIcon2 = feedGroupDialog.groupIcon) == null) {
                                                                                                    feedGroupIcon2 = FeedGroupIcon.ALL;
                                                                                                }
                                                                                                FeedGroupIcon feedGroupIcon22 = feedGroupIcon2;
                                                                                                boolean isBlank = StringsKt.isBlank(obj);
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding62 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                if (isBlank) {
                                                                                                    dialogFeedGroupCreateBinding62.getClass();
                                                                                                    dialogFeedGroupCreateBinding62.groupNameInputContainer.setError(feedGroupDialog.getString(R.string.feed_group_dialog_empty_name));
                                                                                                    DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding7 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                    dialogFeedGroupCreateBinding7.getClass();
                                                                                                    dialogFeedGroupCreateBinding7.groupNameInput.setText((CharSequence) null);
                                                                                                    DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding8 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                    dialogFeedGroupCreateBinding8.getClass();
                                                                                                    dialogFeedGroupCreateBinding8.groupNameInput.requestFocus();
                                                                                                    return;
                                                                                                }
                                                                                                dialogFeedGroupCreateBinding62.getClass();
                                                                                                dialogFeedGroupCreateBinding62.groupNameInputContainer.setError(null);
                                                                                                if (feedGroupDialog.selectedSubscriptions.isEmpty()) {
                                                                                                    Toast.makeText(feedGroupDialog.requireContext(), feedGroupDialog.getString(R.string.feed_group_dialog_empty_selection), 0).show();
                                                                                                    return;
                                                                                                }
                                                                                                long j3 = feedGroupDialog.groupId;
                                                                                                FeedGroupDialogViewModel feedGroupDialogViewModel5 = feedGroupDialog.viewModel;
                                                                                                if (j3 == -1) {
                                                                                                    if (feedGroupDialogViewModel5 == null) {
                                                                                                        Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                                                                                                        throw null;
                                                                                                    }
                                                                                                    HashSet<Long> hashSet = feedGroupDialog.selectedSubscriptions;
                                                                                                    hashSet.getClass();
                                                                                                    FeedDatabaseManager feedDatabaseManager2 = feedGroupDialogViewModel5.feedDatabaseManager;
                                                                                                    feedDatabaseManager2.getClass();
                                                                                                    feedGroupDialogViewModel5.doAction$1(new MaybeFlatMapCompletable(new MaybeObserveOn(new MaybeFromCallable(new Processor$$ExternalSyntheticLambda0(feedDatabaseManager2, obj, feedGroupIcon22)).subscribeOn(Schedulers.IO), AndroidSchedulers.mainThread(), i8), new TokenData(feedGroupDialogViewModel5, hashSet, 17)));
                                                                                                    return;
                                                                                                }
                                                                                                if (feedGroupDialogViewModel5 == null) {
                                                                                                    Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                                                                                                    throw null;
                                                                                                }
                                                                                                HashSet<Long> hashSet2 = feedGroupDialog.selectedSubscriptions;
                                                                                                long j4 = feedGroupDialog.groupSortOrder;
                                                                                                hashSet2.getClass();
                                                                                                FeedDatabaseManager feedDatabaseManager3 = feedGroupDialogViewModel5.feedDatabaseManager;
                                                                                                long j5 = feedGroupDialogViewModel5.groupId;
                                                                                                List list = CollectionsKt.toList(hashSet2);
                                                                                                feedDatabaseManager3.getClass();
                                                                                                CompletableFromAction completableFromAction = new CompletableFromAction(new FeedDatabaseManager$$ExternalSyntheticLambda3(feedDatabaseManager3, j5, list), i9);
                                                                                                IoScheduler ioScheduler = Schedulers.IO;
                                                                                                feedGroupDialogViewModel5.doAction$1(new CompletableObserveOn(completableFromAction.subscribeOn(ioScheduler).observeOn(AndroidSchedulers.mainThread()), new CompletableFromAction(new WorkerWrapper$launch$1$$ExternalSyntheticLambda0(feedDatabaseManager3, new FeedGroupEntity(feedGroupDialogViewModel5.groupId, obj, feedGroupIcon22, j4), 3), i9).subscribeOn(ioScheduler).observeOn(AndroidSchedulers.mainThread()), 2));
                                                                                                return;
                                                                                            default:
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding9 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                dialogFeedGroupCreateBinding9.getClass();
                                                                                                dialogFeedGroupCreateBinding9.subscriptionsSelectorList.scrollToPosition(0);
                                                                                                feedGroupDialog.showScreen(FeedGroupDialog.ScreenState.SubscriptionsPickerScreen.INSTANCE);
                                                                                                return;
                                                                                        }
                                                                                    }
                                                                                });
                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding7 = this._feedGroupCreateBinding;
                                                                                dialogFeedGroupCreateBinding7.getClass();
                                                                                dialogFeedGroupCreateBinding7.groupNameInputContainer.setError(null);
                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding8 = this._feedGroupCreateBinding;
                                                                                dialogFeedGroupCreateBinding8.getClass();
                                                                                dialogFeedGroupCreateBinding8.groupNameInput.addTextChangedListener(new TextWatcher(this) { // from class: org.schabi.newpipe.local.subscription.dialog.FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$1
                                                                                    public final /* synthetic */ FeedGroupDialog this$0;

                                                                                    {
                                                                                        this.this$0 = this;
                                                                                    }

                                                                                    @Override // android.text.TextWatcher
                                                                                    public final void afterTextChanged(Editable editable) {
                                                                                        int i7 = i4;
                                                                                    }

                                                                                    @Override // android.text.TextWatcher
                                                                                    public final void beforeTextChanged(CharSequence charSequence, int i7, int i8, int i9) {
                                                                                        int i10 = i4;
                                                                                    }

                                                                                    @Override // android.text.TextWatcher
                                                                                    public final void onTextChanged(CharSequence charSequence, int i7, int i8, int i9) {
                                                                                        int i10 = i4;
                                                                                        FeedGroupDialog feedGroupDialog = this.this$0;
                                                                                        switch (i10) {
                                                                                            case 0:
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding9 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                dialogFeedGroupCreateBinding9.getClass();
                                                                                                if (!dialogFeedGroupCreateBinding9.groupNameInputContainer.indicatorViewController.errorEnabled || charSequence == null || StringsKt.isBlank(charSequence)) {
                                                                                                    return;
                                                                                                }
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding10 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                dialogFeedGroupCreateBinding10.getClass();
                                                                                                dialogFeedGroupCreateBinding10.groupNameInputContainer.setError(null);
                                                                                                return;
                                                                                            default:
                                                                                                Printer printer = feedGroupDialog._searchLayoutBinding;
                                                                                                printer.getClass();
                                                                                                String valueOf = String.valueOf(((NewPipeEditText) printer.settings).getText());
                                                                                                feedGroupDialog.subscriptionsCurrentSearchQuery = valueOf;
                                                                                                FeedGroupDialogViewModel feedGroupDialogViewModel4 = feedGroupDialog.viewModel;
                                                                                                if (feedGroupDialogViewModel4 != null) {
                                                                                                    feedGroupDialogViewModel4.filterSubscriptions.onNext(valueOf);
                                                                                                    return;
                                                                                                } else {
                                                                                                    Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                                                                                                    throw null;
                                                                                                }
                                                                                        }
                                                                                    }

                                                                                    private final void afterTextChanged$org$schabi$newpipe$local$subscription$dialog$FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$1(Editable editable) {
                                                                                    }

                                                                                    private final void afterTextChanged$org$schabi$newpipe$local$subscription$dialog$FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$2(Editable editable) {
                                                                                    }

                                                                                    private final void beforeTextChanged$org$schabi$newpipe$local$subscription$dialog$FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$1(int i7, int i8, int i9, CharSequence charSequence) {
                                                                                    }

                                                                                    private final void beforeTextChanged$org$schabi$newpipe$local$subscription$dialog$FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$2(int i7, int i8, int i9, CharSequence charSequence) {
                                                                                    }
                                                                                });
                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding9 = this._feedGroupCreateBinding;
                                                                                dialogFeedGroupCreateBinding9.getClass();
                                                                                final int i7 = 5;
                                                                                dialogFeedGroupCreateBinding9.confirmButton.setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.local.subscription.dialog.FeedGroupDialog$$ExternalSyntheticLambda4
                                                                                    public final /* synthetic */ FeedGroupDialog f$0;

                                                                                    {
                                                                                        this.f$0 = this;
                                                                                    }

                                                                                    @Override // android.view.View.OnClickListener
                                                                                    public final void onClick(View view2) {
                                                                                        int i72 = i7;
                                                                                        FeedGroupDialog.ScreenState.InitialScreen initialScreen = FeedGroupDialog.ScreenState.InitialScreen.INSTANCE;
                                                                                        int i8 = 0;
                                                                                        FeedGroupDialog feedGroupDialog = this.f$0;
                                                                                        switch (i72) {
                                                                                            case 0:
                                                                                                feedGroupDialog.showScreen(FeedGroupDialog.ScreenState.DeleteScreen.INSTANCE);
                                                                                                return;
                                                                                            case 1:
                                                                                                Printer printer = feedGroupDialog._searchLayoutBinding;
                                                                                                printer.getClass();
                                                                                                Editable text = ((NewPipeEditText) printer.settings).getText();
                                                                                                if (text == null || text.length() == 0) {
                                                                                                    feedGroupDialog.hideSearch();
                                                                                                    return;
                                                                                                } else {
                                                                                                    feedGroupDialog.resetSearch();
                                                                                                    feedGroupDialog.showKeyboardSearch$1();
                                                                                                    return;
                                                                                                }
                                                                                            case 2:
                                                                                                if (DeviceUtils.isTv(feedGroupDialog.getContext())) {
                                                                                                    feedGroupDialog.showKeyboardSearch$1();
                                                                                                    return;
                                                                                                }
                                                                                                return;
                                                                                            case 3:
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding42 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                dialogFeedGroupCreateBinding42.getClass();
                                                                                                dialogFeedGroupCreateBinding42.iconSelector.scrollToPosition(0);
                                                                                                feedGroupDialog.showScreen(FeedGroupDialog.ScreenState.IconPickerScreen.INSTANCE);
                                                                                                return;
                                                                                            case 4:
                                                                                                if (Intrinsics.areEqual(feedGroupDialog.currentScreen, initialScreen)) {
                                                                                                    feedGroupDialog.dismissInternal(false, false);
                                                                                                    return;
                                                                                                } else {
                                                                                                    feedGroupDialog.showScreen(initialScreen);
                                                                                                    return;
                                                                                                }
                                                                                            case 5:
                                                                                                FeedGroupDialog.ScreenState screenState = feedGroupDialog.currentScreen;
                                                                                                int i9 = 1;
                                                                                                if (!(screenState instanceof FeedGroupDialog.ScreenState.InitialScreen)) {
                                                                                                    if (!(screenState instanceof FeedGroupDialog.ScreenState.DeleteScreen)) {
                                                                                                        if ((screenState instanceof FeedGroupDialog.ScreenState.SubscriptionsPickerScreen) && feedGroupDialog.isSearchVisible()) {
                                                                                                            feedGroupDialog.hideSearch();
                                                                                                            return;
                                                                                                        } else {
                                                                                                            feedGroupDialog.showScreen(initialScreen);
                                                                                                            return;
                                                                                                        }
                                                                                                    }
                                                                                                    FeedGroupDialogViewModel feedGroupDialogViewModel4 = feedGroupDialog.viewModel;
                                                                                                    if (feedGroupDialogViewModel4 == null) {
                                                                                                        Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                                                                                                        throw null;
                                                                                                    }
                                                                                                    FeedDatabaseManager feedDatabaseManager = feedGroupDialogViewModel4.feedDatabaseManager;
                                                                                                    long j2 = feedGroupDialogViewModel4.groupId;
                                                                                                    feedDatabaseManager.getClass();
                                                                                                    feedGroupDialogViewModel4.doAction$1(new CompletableFromAction(new FeedDatabaseManager$$ExternalSyntheticLambda1(feedDatabaseManager, j2, i8), i9).subscribeOn(Schedulers.IO).observeOn(AndroidSchedulers.mainThread()));
                                                                                                    return;
                                                                                                }
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding52 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                dialogFeedGroupCreateBinding52.getClass();
                                                                                                String obj = StringsKt.trim(String.valueOf(dialogFeedGroupCreateBinding52.groupNameInput.getText())).toString();
                                                                                                FeedGroupIcon feedGroupIcon2 = feedGroupDialog.selectedIcon;
                                                                                                if (feedGroupIcon2 == null && (feedGroupIcon2 = feedGroupDialog.groupIcon) == null) {
                                                                                                    feedGroupIcon2 = FeedGroupIcon.ALL;
                                                                                                }
                                                                                                FeedGroupIcon feedGroupIcon22 = feedGroupIcon2;
                                                                                                boolean isBlank = StringsKt.isBlank(obj);
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding62 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                if (isBlank) {
                                                                                                    dialogFeedGroupCreateBinding62.getClass();
                                                                                                    dialogFeedGroupCreateBinding62.groupNameInputContainer.setError(feedGroupDialog.getString(R.string.feed_group_dialog_empty_name));
                                                                                                    DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding72 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                    dialogFeedGroupCreateBinding72.getClass();
                                                                                                    dialogFeedGroupCreateBinding72.groupNameInput.setText((CharSequence) null);
                                                                                                    DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding82 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                    dialogFeedGroupCreateBinding82.getClass();
                                                                                                    dialogFeedGroupCreateBinding82.groupNameInput.requestFocus();
                                                                                                    return;
                                                                                                }
                                                                                                dialogFeedGroupCreateBinding62.getClass();
                                                                                                dialogFeedGroupCreateBinding62.groupNameInputContainer.setError(null);
                                                                                                if (feedGroupDialog.selectedSubscriptions.isEmpty()) {
                                                                                                    Toast.makeText(feedGroupDialog.requireContext(), feedGroupDialog.getString(R.string.feed_group_dialog_empty_selection), 0).show();
                                                                                                    return;
                                                                                                }
                                                                                                long j3 = feedGroupDialog.groupId;
                                                                                                FeedGroupDialogViewModel feedGroupDialogViewModel5 = feedGroupDialog.viewModel;
                                                                                                if (j3 == -1) {
                                                                                                    if (feedGroupDialogViewModel5 == null) {
                                                                                                        Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                                                                                                        throw null;
                                                                                                    }
                                                                                                    HashSet<Long> hashSet = feedGroupDialog.selectedSubscriptions;
                                                                                                    hashSet.getClass();
                                                                                                    FeedDatabaseManager feedDatabaseManager2 = feedGroupDialogViewModel5.feedDatabaseManager;
                                                                                                    feedDatabaseManager2.getClass();
                                                                                                    feedGroupDialogViewModel5.doAction$1(new MaybeFlatMapCompletable(new MaybeObserveOn(new MaybeFromCallable(new Processor$$ExternalSyntheticLambda0(feedDatabaseManager2, obj, feedGroupIcon22)).subscribeOn(Schedulers.IO), AndroidSchedulers.mainThread(), i8), new TokenData(feedGroupDialogViewModel5, hashSet, 17)));
                                                                                                    return;
                                                                                                }
                                                                                                if (feedGroupDialogViewModel5 == null) {
                                                                                                    Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                                                                                                    throw null;
                                                                                                }
                                                                                                HashSet<Long> hashSet2 = feedGroupDialog.selectedSubscriptions;
                                                                                                long j4 = feedGroupDialog.groupSortOrder;
                                                                                                hashSet2.getClass();
                                                                                                FeedDatabaseManager feedDatabaseManager3 = feedGroupDialogViewModel5.feedDatabaseManager;
                                                                                                long j5 = feedGroupDialogViewModel5.groupId;
                                                                                                List list = CollectionsKt.toList(hashSet2);
                                                                                                feedDatabaseManager3.getClass();
                                                                                                CompletableFromAction completableFromAction = new CompletableFromAction(new FeedDatabaseManager$$ExternalSyntheticLambda3(feedDatabaseManager3, j5, list), i9);
                                                                                                IoScheduler ioScheduler = Schedulers.IO;
                                                                                                feedGroupDialogViewModel5.doAction$1(new CompletableObserveOn(completableFromAction.subscribeOn(ioScheduler).observeOn(AndroidSchedulers.mainThread()), new CompletableFromAction(new WorkerWrapper$launch$1$$ExternalSyntheticLambda0(feedDatabaseManager3, new FeedGroupEntity(feedGroupDialogViewModel5.groupId, obj, feedGroupIcon22, j4), 3), i9).subscribeOn(ioScheduler).observeOn(AndroidSchedulers.mainThread()), 2));
                                                                                                return;
                                                                                            default:
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding92 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                dialogFeedGroupCreateBinding92.getClass();
                                                                                                dialogFeedGroupCreateBinding92.subscriptionsSelectorList.scrollToPosition(0);
                                                                                                feedGroupDialog.showScreen(FeedGroupDialog.ScreenState.SubscriptionsPickerScreen.INSTANCE);
                                                                                                return;
                                                                                        }
                                                                                    }
                                                                                });
                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding10 = this._feedGroupCreateBinding;
                                                                                dialogFeedGroupCreateBinding10.getClass();
                                                                                final int i8 = 6;
                                                                                dialogFeedGroupCreateBinding10.selectChannelButton.setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.local.subscription.dialog.FeedGroupDialog$$ExternalSyntheticLambda4
                                                                                    public final /* synthetic */ FeedGroupDialog f$0;

                                                                                    {
                                                                                        this.f$0 = this;
                                                                                    }

                                                                                    @Override // android.view.View.OnClickListener
                                                                                    public final void onClick(View view2) {
                                                                                        int i72 = i8;
                                                                                        FeedGroupDialog.ScreenState.InitialScreen initialScreen = FeedGroupDialog.ScreenState.InitialScreen.INSTANCE;
                                                                                        int i82 = 0;
                                                                                        FeedGroupDialog feedGroupDialog = this.f$0;
                                                                                        switch (i72) {
                                                                                            case 0:
                                                                                                feedGroupDialog.showScreen(FeedGroupDialog.ScreenState.DeleteScreen.INSTANCE);
                                                                                                return;
                                                                                            case 1:
                                                                                                Printer printer = feedGroupDialog._searchLayoutBinding;
                                                                                                printer.getClass();
                                                                                                Editable text = ((NewPipeEditText) printer.settings).getText();
                                                                                                if (text == null || text.length() == 0) {
                                                                                                    feedGroupDialog.hideSearch();
                                                                                                    return;
                                                                                                } else {
                                                                                                    feedGroupDialog.resetSearch();
                                                                                                    feedGroupDialog.showKeyboardSearch$1();
                                                                                                    return;
                                                                                                }
                                                                                            case 2:
                                                                                                if (DeviceUtils.isTv(feedGroupDialog.getContext())) {
                                                                                                    feedGroupDialog.showKeyboardSearch$1();
                                                                                                    return;
                                                                                                }
                                                                                                return;
                                                                                            case 3:
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding42 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                dialogFeedGroupCreateBinding42.getClass();
                                                                                                dialogFeedGroupCreateBinding42.iconSelector.scrollToPosition(0);
                                                                                                feedGroupDialog.showScreen(FeedGroupDialog.ScreenState.IconPickerScreen.INSTANCE);
                                                                                                return;
                                                                                            case 4:
                                                                                                if (Intrinsics.areEqual(feedGroupDialog.currentScreen, initialScreen)) {
                                                                                                    feedGroupDialog.dismissInternal(false, false);
                                                                                                    return;
                                                                                                } else {
                                                                                                    feedGroupDialog.showScreen(initialScreen);
                                                                                                    return;
                                                                                                }
                                                                                            case 5:
                                                                                                FeedGroupDialog.ScreenState screenState = feedGroupDialog.currentScreen;
                                                                                                int i9 = 1;
                                                                                                if (!(screenState instanceof FeedGroupDialog.ScreenState.InitialScreen)) {
                                                                                                    if (!(screenState instanceof FeedGroupDialog.ScreenState.DeleteScreen)) {
                                                                                                        if ((screenState instanceof FeedGroupDialog.ScreenState.SubscriptionsPickerScreen) && feedGroupDialog.isSearchVisible()) {
                                                                                                            feedGroupDialog.hideSearch();
                                                                                                            return;
                                                                                                        } else {
                                                                                                            feedGroupDialog.showScreen(initialScreen);
                                                                                                            return;
                                                                                                        }
                                                                                                    }
                                                                                                    FeedGroupDialogViewModel feedGroupDialogViewModel4 = feedGroupDialog.viewModel;
                                                                                                    if (feedGroupDialogViewModel4 == null) {
                                                                                                        Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                                                                                                        throw null;
                                                                                                    }
                                                                                                    FeedDatabaseManager feedDatabaseManager = feedGroupDialogViewModel4.feedDatabaseManager;
                                                                                                    long j2 = feedGroupDialogViewModel4.groupId;
                                                                                                    feedDatabaseManager.getClass();
                                                                                                    feedGroupDialogViewModel4.doAction$1(new CompletableFromAction(new FeedDatabaseManager$$ExternalSyntheticLambda1(feedDatabaseManager, j2, i82), i9).subscribeOn(Schedulers.IO).observeOn(AndroidSchedulers.mainThread()));
                                                                                                    return;
                                                                                                }
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding52 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                dialogFeedGroupCreateBinding52.getClass();
                                                                                                String obj = StringsKt.trim(String.valueOf(dialogFeedGroupCreateBinding52.groupNameInput.getText())).toString();
                                                                                                FeedGroupIcon feedGroupIcon2 = feedGroupDialog.selectedIcon;
                                                                                                if (feedGroupIcon2 == null && (feedGroupIcon2 = feedGroupDialog.groupIcon) == null) {
                                                                                                    feedGroupIcon2 = FeedGroupIcon.ALL;
                                                                                                }
                                                                                                FeedGroupIcon feedGroupIcon22 = feedGroupIcon2;
                                                                                                boolean isBlank = StringsKt.isBlank(obj);
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding62 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                if (isBlank) {
                                                                                                    dialogFeedGroupCreateBinding62.getClass();
                                                                                                    dialogFeedGroupCreateBinding62.groupNameInputContainer.setError(feedGroupDialog.getString(R.string.feed_group_dialog_empty_name));
                                                                                                    DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding72 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                    dialogFeedGroupCreateBinding72.getClass();
                                                                                                    dialogFeedGroupCreateBinding72.groupNameInput.setText((CharSequence) null);
                                                                                                    DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding82 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                    dialogFeedGroupCreateBinding82.getClass();
                                                                                                    dialogFeedGroupCreateBinding82.groupNameInput.requestFocus();
                                                                                                    return;
                                                                                                }
                                                                                                dialogFeedGroupCreateBinding62.getClass();
                                                                                                dialogFeedGroupCreateBinding62.groupNameInputContainer.setError(null);
                                                                                                if (feedGroupDialog.selectedSubscriptions.isEmpty()) {
                                                                                                    Toast.makeText(feedGroupDialog.requireContext(), feedGroupDialog.getString(R.string.feed_group_dialog_empty_selection), 0).show();
                                                                                                    return;
                                                                                                }
                                                                                                long j3 = feedGroupDialog.groupId;
                                                                                                FeedGroupDialogViewModel feedGroupDialogViewModel5 = feedGroupDialog.viewModel;
                                                                                                if (j3 == -1) {
                                                                                                    if (feedGroupDialogViewModel5 == null) {
                                                                                                        Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                                                                                                        throw null;
                                                                                                    }
                                                                                                    HashSet<Long> hashSet = feedGroupDialog.selectedSubscriptions;
                                                                                                    hashSet.getClass();
                                                                                                    FeedDatabaseManager feedDatabaseManager2 = feedGroupDialogViewModel5.feedDatabaseManager;
                                                                                                    feedDatabaseManager2.getClass();
                                                                                                    feedGroupDialogViewModel5.doAction$1(new MaybeFlatMapCompletable(new MaybeObserveOn(new MaybeFromCallable(new Processor$$ExternalSyntheticLambda0(feedDatabaseManager2, obj, feedGroupIcon22)).subscribeOn(Schedulers.IO), AndroidSchedulers.mainThread(), i82), new TokenData(feedGroupDialogViewModel5, hashSet, 17)));
                                                                                                    return;
                                                                                                }
                                                                                                if (feedGroupDialogViewModel5 == null) {
                                                                                                    Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                                                                                                    throw null;
                                                                                                }
                                                                                                HashSet<Long> hashSet2 = feedGroupDialog.selectedSubscriptions;
                                                                                                long j4 = feedGroupDialog.groupSortOrder;
                                                                                                hashSet2.getClass();
                                                                                                FeedDatabaseManager feedDatabaseManager3 = feedGroupDialogViewModel5.feedDatabaseManager;
                                                                                                long j5 = feedGroupDialogViewModel5.groupId;
                                                                                                List list = CollectionsKt.toList(hashSet2);
                                                                                                feedDatabaseManager3.getClass();
                                                                                                CompletableFromAction completableFromAction = new CompletableFromAction(new FeedDatabaseManager$$ExternalSyntheticLambda3(feedDatabaseManager3, j5, list), i9);
                                                                                                IoScheduler ioScheduler = Schedulers.IO;
                                                                                                feedGroupDialogViewModel5.doAction$1(new CompletableObserveOn(completableFromAction.subscribeOn(ioScheduler).observeOn(AndroidSchedulers.mainThread()), new CompletableFromAction(new WorkerWrapper$launch$1$$ExternalSyntheticLambda0(feedDatabaseManager3, new FeedGroupEntity(feedGroupDialogViewModel5.groupId, obj, feedGroupIcon22, j4), 3), i9).subscribeOn(ioScheduler).observeOn(AndroidSchedulers.mainThread()), 2));
                                                                                                return;
                                                                                            default:
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding92 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                dialogFeedGroupCreateBinding92.getClass();
                                                                                                dialogFeedGroupCreateBinding92.subscriptionsSelectorList.scrollToPosition(0);
                                                                                                feedGroupDialog.showScreen(FeedGroupDialog.ScreenState.SubscriptionsPickerScreen.INSTANCE);
                                                                                                return;
                                                                                        }
                                                                                    }
                                                                                });
                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding11 = this._feedGroupCreateBinding;
                                                                                dialogFeedGroupCreateBinding11.getClass();
                                                                                Menu menu = dialogFeedGroupCreateBinding11.subscriptionsHeaderToolbar.getMenu();
                                                                                requireActivity().getMenuInflater().inflate(R.menu.menu_feed_group_dialog, menu);
                                                                                menu.findItem(R.id.action_search).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener(this) { // from class: org.schabi.newpipe.local.subscription.dialog.FeedGroupDialog$$ExternalSyntheticLambda8
                                                                                    public final /* synthetic */ FeedGroupDialog f$0;

                                                                                    {
                                                                                        this.f$0 = this;
                                                                                    }

                                                                                    @Override // android.view.MenuItem.OnMenuItemClickListener
                                                                                    public final boolean onMenuItemClick(MenuItem menuItem) {
                                                                                        int i9 = i4;
                                                                                        FeedGroupDialog feedGroupDialog = this.f$0;
                                                                                        switch (i9) {
                                                                                            case 0:
                                                                                                menuItem.getClass();
                                                                                                feedGroupDialog.showSearch();
                                                                                                return true;
                                                                                            default:
                                                                                                menuItem.getClass();
                                                                                                boolean z2 = !feedGroupDialog.subscriptionsShowOnlyUngrouped;
                                                                                                feedGroupDialog.subscriptionsShowOnlyUngrouped = z2;
                                                                                                menuItem.setChecked(z2);
                                                                                                FeedGroupDialogViewModel feedGroupDialogViewModel4 = feedGroupDialog.viewModel;
                                                                                                if (feedGroupDialogViewModel4 == null) {
                                                                                                    Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                                                                                                    throw null;
                                                                                                }
                                                                                                feedGroupDialogViewModel4.toggleShowOnlyUngrouped.onNext(Boolean.valueOf(feedGroupDialog.subscriptionsShowOnlyUngrouped));
                                                                                                return true;
                                                                                        }
                                                                                    }
                                                                                });
                                                                                MenuItem findItem = menu.findItem(R.id.feed_group_toggle_show_only_ungrouped_subscriptions);
                                                                                findItem.setChecked(this.subscriptionsShowOnlyUngrouped);
                                                                                findItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener(this) { // from class: org.schabi.newpipe.local.subscription.dialog.FeedGroupDialog$$ExternalSyntheticLambda8
                                                                                    public final /* synthetic */ FeedGroupDialog f$0;

                                                                                    {
                                                                                        this.f$0 = this;
                                                                                    }

                                                                                    @Override // android.view.MenuItem.OnMenuItemClickListener
                                                                                    public final boolean onMenuItemClick(MenuItem menuItem) {
                                                                                        int i9 = i3;
                                                                                        FeedGroupDialog feedGroupDialog = this.f$0;
                                                                                        switch (i9) {
                                                                                            case 0:
                                                                                                menuItem.getClass();
                                                                                                feedGroupDialog.showSearch();
                                                                                                return true;
                                                                                            default:
                                                                                                menuItem.getClass();
                                                                                                boolean z2 = !feedGroupDialog.subscriptionsShowOnlyUngrouped;
                                                                                                feedGroupDialog.subscriptionsShowOnlyUngrouped = z2;
                                                                                                menuItem.setChecked(z2);
                                                                                                FeedGroupDialogViewModel feedGroupDialogViewModel4 = feedGroupDialog.viewModel;
                                                                                                if (feedGroupDialogViewModel4 == null) {
                                                                                                    Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                                                                                                    throw null;
                                                                                                }
                                                                                                feedGroupDialogViewModel4.toggleShowOnlyUngrouped.onNext(Boolean.valueOf(feedGroupDialog.subscriptionsShowOnlyUngrouped));
                                                                                                return true;
                                                                                        }
                                                                                    }
                                                                                });
                                                                                Printer printer = this._searchLayoutBinding;
                                                                                printer.getClass();
                                                                                ((FrameLayout) printer.accum).setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.local.subscription.dialog.FeedGroupDialog$$ExternalSyntheticLambda4
                                                                                    public final /* synthetic */ FeedGroupDialog f$0;

                                                                                    {
                                                                                        this.f$0 = this;
                                                                                    }

                                                                                    @Override // android.view.View.OnClickListener
                                                                                    public final void onClick(View view2) {
                                                                                        int i72 = i3;
                                                                                        FeedGroupDialog.ScreenState.InitialScreen initialScreen = FeedGroupDialog.ScreenState.InitialScreen.INSTANCE;
                                                                                        int i82 = 0;
                                                                                        FeedGroupDialog feedGroupDialog = this.f$0;
                                                                                        switch (i72) {
                                                                                            case 0:
                                                                                                feedGroupDialog.showScreen(FeedGroupDialog.ScreenState.DeleteScreen.INSTANCE);
                                                                                                return;
                                                                                            case 1:
                                                                                                Printer printer2 = feedGroupDialog._searchLayoutBinding;
                                                                                                printer2.getClass();
                                                                                                Editable text = ((NewPipeEditText) printer2.settings).getText();
                                                                                                if (text == null || text.length() == 0) {
                                                                                                    feedGroupDialog.hideSearch();
                                                                                                    return;
                                                                                                } else {
                                                                                                    feedGroupDialog.resetSearch();
                                                                                                    feedGroupDialog.showKeyboardSearch$1();
                                                                                                    return;
                                                                                                }
                                                                                            case 2:
                                                                                                if (DeviceUtils.isTv(feedGroupDialog.getContext())) {
                                                                                                    feedGroupDialog.showKeyboardSearch$1();
                                                                                                    return;
                                                                                                }
                                                                                                return;
                                                                                            case 3:
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding42 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                dialogFeedGroupCreateBinding42.getClass();
                                                                                                dialogFeedGroupCreateBinding42.iconSelector.scrollToPosition(0);
                                                                                                feedGroupDialog.showScreen(FeedGroupDialog.ScreenState.IconPickerScreen.INSTANCE);
                                                                                                return;
                                                                                            case 4:
                                                                                                if (Intrinsics.areEqual(feedGroupDialog.currentScreen, initialScreen)) {
                                                                                                    feedGroupDialog.dismissInternal(false, false);
                                                                                                    return;
                                                                                                } else {
                                                                                                    feedGroupDialog.showScreen(initialScreen);
                                                                                                    return;
                                                                                                }
                                                                                            case 5:
                                                                                                FeedGroupDialog.ScreenState screenState = feedGroupDialog.currentScreen;
                                                                                                int i9 = 1;
                                                                                                if (!(screenState instanceof FeedGroupDialog.ScreenState.InitialScreen)) {
                                                                                                    if (!(screenState instanceof FeedGroupDialog.ScreenState.DeleteScreen)) {
                                                                                                        if ((screenState instanceof FeedGroupDialog.ScreenState.SubscriptionsPickerScreen) && feedGroupDialog.isSearchVisible()) {
                                                                                                            feedGroupDialog.hideSearch();
                                                                                                            return;
                                                                                                        } else {
                                                                                                            feedGroupDialog.showScreen(initialScreen);
                                                                                                            return;
                                                                                                        }
                                                                                                    }
                                                                                                    FeedGroupDialogViewModel feedGroupDialogViewModel4 = feedGroupDialog.viewModel;
                                                                                                    if (feedGroupDialogViewModel4 == null) {
                                                                                                        Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                                                                                                        throw null;
                                                                                                    }
                                                                                                    FeedDatabaseManager feedDatabaseManager = feedGroupDialogViewModel4.feedDatabaseManager;
                                                                                                    long j2 = feedGroupDialogViewModel4.groupId;
                                                                                                    feedDatabaseManager.getClass();
                                                                                                    feedGroupDialogViewModel4.doAction$1(new CompletableFromAction(new FeedDatabaseManager$$ExternalSyntheticLambda1(feedDatabaseManager, j2, i82), i9).subscribeOn(Schedulers.IO).observeOn(AndroidSchedulers.mainThread()));
                                                                                                    return;
                                                                                                }
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding52 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                dialogFeedGroupCreateBinding52.getClass();
                                                                                                String obj = StringsKt.trim(String.valueOf(dialogFeedGroupCreateBinding52.groupNameInput.getText())).toString();
                                                                                                FeedGroupIcon feedGroupIcon2 = feedGroupDialog.selectedIcon;
                                                                                                if (feedGroupIcon2 == null && (feedGroupIcon2 = feedGroupDialog.groupIcon) == null) {
                                                                                                    feedGroupIcon2 = FeedGroupIcon.ALL;
                                                                                                }
                                                                                                FeedGroupIcon feedGroupIcon22 = feedGroupIcon2;
                                                                                                boolean isBlank = StringsKt.isBlank(obj);
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding62 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                if (isBlank) {
                                                                                                    dialogFeedGroupCreateBinding62.getClass();
                                                                                                    dialogFeedGroupCreateBinding62.groupNameInputContainer.setError(feedGroupDialog.getString(R.string.feed_group_dialog_empty_name));
                                                                                                    DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding72 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                    dialogFeedGroupCreateBinding72.getClass();
                                                                                                    dialogFeedGroupCreateBinding72.groupNameInput.setText((CharSequence) null);
                                                                                                    DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding82 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                    dialogFeedGroupCreateBinding82.getClass();
                                                                                                    dialogFeedGroupCreateBinding82.groupNameInput.requestFocus();
                                                                                                    return;
                                                                                                }
                                                                                                dialogFeedGroupCreateBinding62.getClass();
                                                                                                dialogFeedGroupCreateBinding62.groupNameInputContainer.setError(null);
                                                                                                if (feedGroupDialog.selectedSubscriptions.isEmpty()) {
                                                                                                    Toast.makeText(feedGroupDialog.requireContext(), feedGroupDialog.getString(R.string.feed_group_dialog_empty_selection), 0).show();
                                                                                                    return;
                                                                                                }
                                                                                                long j3 = feedGroupDialog.groupId;
                                                                                                FeedGroupDialogViewModel feedGroupDialogViewModel5 = feedGroupDialog.viewModel;
                                                                                                if (j3 == -1) {
                                                                                                    if (feedGroupDialogViewModel5 == null) {
                                                                                                        Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                                                                                                        throw null;
                                                                                                    }
                                                                                                    HashSet<Long> hashSet = feedGroupDialog.selectedSubscriptions;
                                                                                                    hashSet.getClass();
                                                                                                    FeedDatabaseManager feedDatabaseManager2 = feedGroupDialogViewModel5.feedDatabaseManager;
                                                                                                    feedDatabaseManager2.getClass();
                                                                                                    feedGroupDialogViewModel5.doAction$1(new MaybeFlatMapCompletable(new MaybeObserveOn(new MaybeFromCallable(new Processor$$ExternalSyntheticLambda0(feedDatabaseManager2, obj, feedGroupIcon22)).subscribeOn(Schedulers.IO), AndroidSchedulers.mainThread(), i82), new TokenData(feedGroupDialogViewModel5, hashSet, 17)));
                                                                                                    return;
                                                                                                }
                                                                                                if (feedGroupDialogViewModel5 == null) {
                                                                                                    Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                                                                                                    throw null;
                                                                                                }
                                                                                                HashSet<Long> hashSet2 = feedGroupDialog.selectedSubscriptions;
                                                                                                long j4 = feedGroupDialog.groupSortOrder;
                                                                                                hashSet2.getClass();
                                                                                                FeedDatabaseManager feedDatabaseManager3 = feedGroupDialogViewModel5.feedDatabaseManager;
                                                                                                long j5 = feedGroupDialogViewModel5.groupId;
                                                                                                List list = CollectionsKt.toList(hashSet2);
                                                                                                feedDatabaseManager3.getClass();
                                                                                                CompletableFromAction completableFromAction = new CompletableFromAction(new FeedDatabaseManager$$ExternalSyntheticLambda3(feedDatabaseManager3, j5, list), i9);
                                                                                                IoScheduler ioScheduler = Schedulers.IO;
                                                                                                feedGroupDialogViewModel5.doAction$1(new CompletableObserveOn(completableFromAction.subscribeOn(ioScheduler).observeOn(AndroidSchedulers.mainThread()), new CompletableFromAction(new WorkerWrapper$launch$1$$ExternalSyntheticLambda0(feedDatabaseManager3, new FeedGroupEntity(feedGroupDialogViewModel5.groupId, obj, feedGroupIcon22, j4), 3), i9).subscribeOn(ioScheduler).observeOn(AndroidSchedulers.mainThread()), 2));
                                                                                                return;
                                                                                            default:
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding92 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                dialogFeedGroupCreateBinding92.getClass();
                                                                                                dialogFeedGroupCreateBinding92.subscriptionsSelectorList.scrollToPosition(0);
                                                                                                feedGroupDialog.showScreen(FeedGroupDialog.ScreenState.SubscriptionsPickerScreen.INSTANCE);
                                                                                                return;
                                                                                        }
                                                                                    }
                                                                                });
                                                                                Printer printer2 = this._searchLayoutBinding;
                                                                                printer2.getClass();
                                                                                ((NewPipeEditText) printer2.settings).setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.local.subscription.dialog.FeedGroupDialog$$ExternalSyntheticLambda4
                                                                                    public final /* synthetic */ FeedGroupDialog f$0;

                                                                                    {
                                                                                        this.f$0 = this;
                                                                                    }

                                                                                    @Override // android.view.View.OnClickListener
                                                                                    public final void onClick(View view2) {
                                                                                        int i72 = i2;
                                                                                        FeedGroupDialog.ScreenState.InitialScreen initialScreen = FeedGroupDialog.ScreenState.InitialScreen.INSTANCE;
                                                                                        int i82 = 0;
                                                                                        FeedGroupDialog feedGroupDialog = this.f$0;
                                                                                        switch (i72) {
                                                                                            case 0:
                                                                                                feedGroupDialog.showScreen(FeedGroupDialog.ScreenState.DeleteScreen.INSTANCE);
                                                                                                return;
                                                                                            case 1:
                                                                                                Printer printer22 = feedGroupDialog._searchLayoutBinding;
                                                                                                printer22.getClass();
                                                                                                Editable text = ((NewPipeEditText) printer22.settings).getText();
                                                                                                if (text == null || text.length() == 0) {
                                                                                                    feedGroupDialog.hideSearch();
                                                                                                    return;
                                                                                                } else {
                                                                                                    feedGroupDialog.resetSearch();
                                                                                                    feedGroupDialog.showKeyboardSearch$1();
                                                                                                    return;
                                                                                                }
                                                                                            case 2:
                                                                                                if (DeviceUtils.isTv(feedGroupDialog.getContext())) {
                                                                                                    feedGroupDialog.showKeyboardSearch$1();
                                                                                                    return;
                                                                                                }
                                                                                                return;
                                                                                            case 3:
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding42 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                dialogFeedGroupCreateBinding42.getClass();
                                                                                                dialogFeedGroupCreateBinding42.iconSelector.scrollToPosition(0);
                                                                                                feedGroupDialog.showScreen(FeedGroupDialog.ScreenState.IconPickerScreen.INSTANCE);
                                                                                                return;
                                                                                            case 4:
                                                                                                if (Intrinsics.areEqual(feedGroupDialog.currentScreen, initialScreen)) {
                                                                                                    feedGroupDialog.dismissInternal(false, false);
                                                                                                    return;
                                                                                                } else {
                                                                                                    feedGroupDialog.showScreen(initialScreen);
                                                                                                    return;
                                                                                                }
                                                                                            case 5:
                                                                                                FeedGroupDialog.ScreenState screenState = feedGroupDialog.currentScreen;
                                                                                                int i9 = 1;
                                                                                                if (!(screenState instanceof FeedGroupDialog.ScreenState.InitialScreen)) {
                                                                                                    if (!(screenState instanceof FeedGroupDialog.ScreenState.DeleteScreen)) {
                                                                                                        if ((screenState instanceof FeedGroupDialog.ScreenState.SubscriptionsPickerScreen) && feedGroupDialog.isSearchVisible()) {
                                                                                                            feedGroupDialog.hideSearch();
                                                                                                            return;
                                                                                                        } else {
                                                                                                            feedGroupDialog.showScreen(initialScreen);
                                                                                                            return;
                                                                                                        }
                                                                                                    }
                                                                                                    FeedGroupDialogViewModel feedGroupDialogViewModel4 = feedGroupDialog.viewModel;
                                                                                                    if (feedGroupDialogViewModel4 == null) {
                                                                                                        Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                                                                                                        throw null;
                                                                                                    }
                                                                                                    FeedDatabaseManager feedDatabaseManager = feedGroupDialogViewModel4.feedDatabaseManager;
                                                                                                    long j2 = feedGroupDialogViewModel4.groupId;
                                                                                                    feedDatabaseManager.getClass();
                                                                                                    feedGroupDialogViewModel4.doAction$1(new CompletableFromAction(new FeedDatabaseManager$$ExternalSyntheticLambda1(feedDatabaseManager, j2, i82), i9).subscribeOn(Schedulers.IO).observeOn(AndroidSchedulers.mainThread()));
                                                                                                    return;
                                                                                                }
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding52 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                dialogFeedGroupCreateBinding52.getClass();
                                                                                                String obj = StringsKt.trim(String.valueOf(dialogFeedGroupCreateBinding52.groupNameInput.getText())).toString();
                                                                                                FeedGroupIcon feedGroupIcon2 = feedGroupDialog.selectedIcon;
                                                                                                if (feedGroupIcon2 == null && (feedGroupIcon2 = feedGroupDialog.groupIcon) == null) {
                                                                                                    feedGroupIcon2 = FeedGroupIcon.ALL;
                                                                                                }
                                                                                                FeedGroupIcon feedGroupIcon22 = feedGroupIcon2;
                                                                                                boolean isBlank = StringsKt.isBlank(obj);
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding62 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                if (isBlank) {
                                                                                                    dialogFeedGroupCreateBinding62.getClass();
                                                                                                    dialogFeedGroupCreateBinding62.groupNameInputContainer.setError(feedGroupDialog.getString(R.string.feed_group_dialog_empty_name));
                                                                                                    DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding72 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                    dialogFeedGroupCreateBinding72.getClass();
                                                                                                    dialogFeedGroupCreateBinding72.groupNameInput.setText((CharSequence) null);
                                                                                                    DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding82 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                    dialogFeedGroupCreateBinding82.getClass();
                                                                                                    dialogFeedGroupCreateBinding82.groupNameInput.requestFocus();
                                                                                                    return;
                                                                                                }
                                                                                                dialogFeedGroupCreateBinding62.getClass();
                                                                                                dialogFeedGroupCreateBinding62.groupNameInputContainer.setError(null);
                                                                                                if (feedGroupDialog.selectedSubscriptions.isEmpty()) {
                                                                                                    Toast.makeText(feedGroupDialog.requireContext(), feedGroupDialog.getString(R.string.feed_group_dialog_empty_selection), 0).show();
                                                                                                    return;
                                                                                                }
                                                                                                long j3 = feedGroupDialog.groupId;
                                                                                                FeedGroupDialogViewModel feedGroupDialogViewModel5 = feedGroupDialog.viewModel;
                                                                                                if (j3 == -1) {
                                                                                                    if (feedGroupDialogViewModel5 == null) {
                                                                                                        Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                                                                                                        throw null;
                                                                                                    }
                                                                                                    HashSet<Long> hashSet = feedGroupDialog.selectedSubscriptions;
                                                                                                    hashSet.getClass();
                                                                                                    FeedDatabaseManager feedDatabaseManager2 = feedGroupDialogViewModel5.feedDatabaseManager;
                                                                                                    feedDatabaseManager2.getClass();
                                                                                                    feedGroupDialogViewModel5.doAction$1(new MaybeFlatMapCompletable(new MaybeObserveOn(new MaybeFromCallable(new Processor$$ExternalSyntheticLambda0(feedDatabaseManager2, obj, feedGroupIcon22)).subscribeOn(Schedulers.IO), AndroidSchedulers.mainThread(), i82), new TokenData(feedGroupDialogViewModel5, hashSet, 17)));
                                                                                                    return;
                                                                                                }
                                                                                                if (feedGroupDialogViewModel5 == null) {
                                                                                                    Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                                                                                                    throw null;
                                                                                                }
                                                                                                HashSet<Long> hashSet2 = feedGroupDialog.selectedSubscriptions;
                                                                                                long j4 = feedGroupDialog.groupSortOrder;
                                                                                                hashSet2.getClass();
                                                                                                FeedDatabaseManager feedDatabaseManager3 = feedGroupDialogViewModel5.feedDatabaseManager;
                                                                                                long j5 = feedGroupDialogViewModel5.groupId;
                                                                                                List list = CollectionsKt.toList(hashSet2);
                                                                                                feedDatabaseManager3.getClass();
                                                                                                CompletableFromAction completableFromAction = new CompletableFromAction(new FeedDatabaseManager$$ExternalSyntheticLambda3(feedDatabaseManager3, j5, list), i9);
                                                                                                IoScheduler ioScheduler = Schedulers.IO;
                                                                                                feedGroupDialogViewModel5.doAction$1(new CompletableObserveOn(completableFromAction.subscribeOn(ioScheduler).observeOn(AndroidSchedulers.mainThread()), new CompletableFromAction(new WorkerWrapper$launch$1$$ExternalSyntheticLambda0(feedDatabaseManager3, new FeedGroupEntity(feedGroupDialogViewModel5.groupId, obj, feedGroupIcon22, j4), 3), i9).subscribeOn(ioScheduler).observeOn(AndroidSchedulers.mainThread()), 2));
                                                                                                return;
                                                                                            default:
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding92 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                dialogFeedGroupCreateBinding92.getClass();
                                                                                                dialogFeedGroupCreateBinding92.subscriptionsSelectorList.scrollToPosition(0);
                                                                                                feedGroupDialog.showScreen(FeedGroupDialog.ScreenState.SubscriptionsPickerScreen.INSTANCE);
                                                                                                return;
                                                                                        }
                                                                                    }
                                                                                });
                                                                                Printer printer3 = this._searchLayoutBinding;
                                                                                printer3.getClass();
                                                                                ((NewPipeEditText) printer3.settings).addTextChangedListener(new TextWatcher(this) { // from class: org.schabi.newpipe.local.subscription.dialog.FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$1
                                                                                    public final /* synthetic */ FeedGroupDialog this$0;

                                                                                    {
                                                                                        this.this$0 = this;
                                                                                    }

                                                                                    @Override // android.text.TextWatcher
                                                                                    public final void afterTextChanged(Editable editable) {
                                                                                        int i72 = i3;
                                                                                    }

                                                                                    @Override // android.text.TextWatcher
                                                                                    public final void beforeTextChanged(CharSequence charSequence, int i72, int i82, int i9) {
                                                                                        int i10 = i3;
                                                                                    }

                                                                                    @Override // android.text.TextWatcher
                                                                                    public final void onTextChanged(CharSequence charSequence, int i72, int i82, int i9) {
                                                                                        int i10 = i3;
                                                                                        FeedGroupDialog feedGroupDialog = this.this$0;
                                                                                        switch (i10) {
                                                                                            case 0:
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding92 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                dialogFeedGroupCreateBinding92.getClass();
                                                                                                if (!dialogFeedGroupCreateBinding92.groupNameInputContainer.indicatorViewController.errorEnabled || charSequence == null || StringsKt.isBlank(charSequence)) {
                                                                                                    return;
                                                                                                }
                                                                                                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding102 = feedGroupDialog._feedGroupCreateBinding;
                                                                                                dialogFeedGroupCreateBinding102.getClass();
                                                                                                dialogFeedGroupCreateBinding102.groupNameInputContainer.setError(null);
                                                                                                return;
                                                                                            default:
                                                                                                Printer printer4 = feedGroupDialog._searchLayoutBinding;
                                                                                                printer4.getClass();
                                                                                                String valueOf = String.valueOf(((NewPipeEditText) printer4.settings).getText());
                                                                                                feedGroupDialog.subscriptionsCurrentSearchQuery = valueOf;
                                                                                                FeedGroupDialogViewModel feedGroupDialogViewModel4 = feedGroupDialog.viewModel;
                                                                                                if (feedGroupDialogViewModel4 != null) {
                                                                                                    feedGroupDialogViewModel4.filterSubscriptions.onNext(valueOf);
                                                                                                    return;
                                                                                                } else {
                                                                                                    Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                                                                                                    throw null;
                                                                                                }
                                                                                        }
                                                                                    }

                                                                                    private final void afterTextChanged$org$schabi$newpipe$local$subscription$dialog$FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$1(Editable editable) {
                                                                                    }

                                                                                    private final void afterTextChanged$org$schabi$newpipe$local$subscription$dialog$FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$2(Editable editable) {
                                                                                    }

                                                                                    private final void beforeTextChanged$org$schabi$newpipe$local$subscription$dialog$FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$1(int i72, int i82, int i9, CharSequence charSequence) {
                                                                                    }

                                                                                    private final void beforeTextChanged$org$schabi$newpipe$local$subscription$dialog$FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$2(int i72, int i82, int i9, CharSequence charSequence) {
                                                                                    }
                                                                                });
                                                                                GroupieAdapter groupieAdapter6 = this.subscriptionGroupAdapter;
                                                                                if (groupieAdapter6 == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("subscriptionGroupAdapter");
                                                                                    throw null;
                                                                                }
                                                                                groupieAdapter6.onItemClickListener = this.subscriptionPickerItemListener;
                                                                                showScreen(this.currentScreen);
                                                                                if (Intrinsics.areEqual(this.currentScreen, ScreenState.SubscriptionsPickerScreen.INSTANCE) && this.wasSearchSubscriptionsVisible) {
                                                                                    showSearch();
                                                                                    return;
                                                                                }
                                                                                if (Intrinsics.areEqual(this.currentScreen, ScreenState.InitialScreen.INSTANCE) && this.groupId == -1) {
                                                                                    DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding12 = this._feedGroupCreateBinding;
                                                                                    dialogFeedGroupCreateBinding12.getClass();
                                                                                    if (dialogFeedGroupCreateBinding12.groupNameInput.requestFocus()) {
                                                                                        InputMethodManager inputMethodManager = (InputMethodManager) this.inputMethodManager$delegate.getValue();
                                                                                        DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding13 = this._feedGroupCreateBinding;
                                                                                        dialogFeedGroupCreateBinding13.getClass();
                                                                                        inputMethodManager.showSoftInput(dialogFeedGroupCreateBinding13.groupNameInput, 1);
                                                                                        return;
                                                                                    }
                                                                                    return;
                                                                                }
                                                                                return;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public final void onlyVisibleIn(View view, ScreenState... screenStateArr) {
        view.setVisibility(ArraysKt.contains(screenStateArr, this.currentScreen) ? 0 : 8);
    }

    public final void resetSearch() {
        Printer printer = this._searchLayoutBinding;
        printer.getClass();
        ((NewPipeEditText) printer.settings).setText("");
        this.subscriptionsCurrentSearchQuery = "";
        FeedGroupDialogViewModel feedGroupDialogViewModel = this.viewModel;
        if (feedGroupDialogViewModel != null) {
            feedGroupDialogViewModel.filterSubscriptions.onNext("");
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
            throw null;
        }
    }

    public final void showKeyboardSearch$1() {
        Printer printer = this._searchLayoutBinding;
        printer.getClass();
        if (((NewPipeEditText) printer.settings).requestFocus()) {
            InputMethodManager inputMethodManager = (InputMethodManager) this.inputMethodManager$delegate.getValue();
            Printer printer2 = this._searchLayoutBinding;
            printer2.getClass();
            inputMethodManager.showSoftInput((NewPipeEditText) printer2.settings, 1);
        }
    }

    public final void showScreen(ScreenState screenState) {
        this.currentScreen = screenState;
        DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding = this._feedGroupCreateBinding;
        dialogFeedGroupCreateBinding.getClass();
        ConstraintLayout constraintLayout = dialogFeedGroupCreateBinding.optionsRoot;
        ScreenState.InitialScreen initialScreen = ScreenState.InitialScreen.INSTANCE;
        onlyVisibleIn(constraintLayout, initialScreen);
        DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding2 = this._feedGroupCreateBinding;
        dialogFeedGroupCreateBinding2.getClass();
        RecyclerView recyclerView = dialogFeedGroupCreateBinding2.iconSelector;
        ScreenState.IconPickerScreen iconPickerScreen = ScreenState.IconPickerScreen.INSTANCE;
        onlyVisibleIn(recyclerView, iconPickerScreen);
        DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding3 = this._feedGroupCreateBinding;
        dialogFeedGroupCreateBinding3.getClass();
        LinearLayout linearLayout = dialogFeedGroupCreateBinding3.subscriptionsSelector;
        ScreenState.SubscriptionsPickerScreen subscriptionsPickerScreen = ScreenState.SubscriptionsPickerScreen.INSTANCE;
        onlyVisibleIn(linearLayout, subscriptionsPickerScreen);
        DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding4 = this._feedGroupCreateBinding;
        dialogFeedGroupCreateBinding4.getClass();
        NewPipeTextView newPipeTextView = dialogFeedGroupCreateBinding4.deleteScreenMessage;
        ScreenState.DeleteScreen deleteScreen = ScreenState.DeleteScreen.INSTANCE;
        onlyVisibleIn(newPipeTextView, deleteScreen);
        DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding5 = this._feedGroupCreateBinding;
        dialogFeedGroupCreateBinding5.getClass();
        onlyVisibleIn(dialogFeedGroupCreateBinding5.separator, subscriptionsPickerScreen, iconPickerScreen);
        DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding6 = this._feedGroupCreateBinding;
        dialogFeedGroupCreateBinding6.getClass();
        onlyVisibleIn(dialogFeedGroupCreateBinding6.cancelButton, initialScreen, deleteScreen);
        DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding7 = this._feedGroupCreateBinding;
        dialogFeedGroupCreateBinding7.getClass();
        dialogFeedGroupCreateBinding7.confirmButton.setText((Intrinsics.areEqual(this.currentScreen, initialScreen) && this.groupId == -1) ? R.string.create : R.string.ok);
        DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding8 = this._feedGroupCreateBinding;
        dialogFeedGroupCreateBinding8.getClass();
        dialogFeedGroupCreateBinding8.deleteButton.setVisibility((!Intrinsics.areEqual(this.currentScreen, initialScreen) || this.groupId == -1) ? 8 : 0);
        InputMethodManager inputMethodManager = (InputMethodManager) this.inputMethodManager$delegate.getValue();
        DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding9 = this._feedGroupCreateBinding;
        dialogFeedGroupCreateBinding9.getClass();
        inputMethodManager.hideSoftInputFromWindow(dialogFeedGroupCreateBinding9.groupNameInput.getWindowToken(), 2);
        DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding10 = this._feedGroupCreateBinding;
        dialogFeedGroupCreateBinding10.getClass();
        dialogFeedGroupCreateBinding10.groupNameInput.clearFocus();
        hideSearch();
    }

    public final void showSearch() {
        Printer printer = this._searchLayoutBinding;
        printer.getClass();
        ((FrameLayout) printer.root).setVisibility(0);
        DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding = this._feedGroupCreateBinding;
        dialogFeedGroupCreateBinding.getClass();
        dialogFeedGroupCreateBinding.subscriptionsHeaderInfoContainer.setVisibility(8);
        DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding2 = this._feedGroupCreateBinding;
        dialogFeedGroupCreateBinding2.getClass();
        dialogFeedGroupCreateBinding2.subscriptionsHeaderToolbar.getMenu().findItem(R.id.action_search).setVisible(false);
        showKeyboardSearch$1();
    }

    public final void updateSubscriptionSelectedCount() {
        int size = this.selectedSubscriptions.size();
        String quantityString = getResources().getQuantityString(R.plurals.feed_group_dialog_selection_count, size, Integer.valueOf(size));
        quantityString.getClass();
        DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding = this._feedGroupCreateBinding;
        dialogFeedGroupCreateBinding.getClass();
        dialogFeedGroupCreateBinding.selectedSubscriptionCountView.setText(quantityString);
        DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding2 = this._feedGroupCreateBinding;
        dialogFeedGroupCreateBinding2.getClass();
        dialogFeedGroupCreateBinding2.subscriptionsHeaderInfo.setText(quantityString);
    }
}
