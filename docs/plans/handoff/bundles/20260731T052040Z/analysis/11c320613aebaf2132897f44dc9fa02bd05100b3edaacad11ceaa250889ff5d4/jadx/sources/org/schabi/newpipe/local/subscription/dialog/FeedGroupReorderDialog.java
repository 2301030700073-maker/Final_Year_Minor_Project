package org.schabi.newpipe.local.subscription.dialog;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.fragment.app.DialogFragment;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.livefront.bridge.Bridge;
import com.xwray.groupie.GroupieAdapter;
import java.util.ArrayList;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.rx3.RxAwaitKt$$ExternalSyntheticLambda0;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Options;
import org.jsoup.nodes.Printer;
import org.schabi.newpipe.R;
import org.schabi.newpipe.local.feed.FeedFragment$sam$androidx_lifecycle_Observer$0;
import org.schabi.newpipe.settings.tabs.ChooseTabsFragment;
import us.shandian.giga.ui.common.Deleter$$ExternalSyntheticLambda4;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedGroupReorderDialog extends DialogFragment {
    public Printer _binding;
    public FeedGroupReorderDialogViewModel viewModel;
    public ArrayList<Long> groupOrderedIdList = new ArrayList<>();
    public final GroupieAdapter groupAdapter = new GroupieAdapter();
    public final ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new ChooseTabsFragment.AnonymousClass2(this));

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bridge.restoreInstanceState(this, bundle);
        setStyle(Options.Companion.isLightThemeSelected(requireContext()) ? R.style.LightDialogMinWidthTheme : R.style.DarkDialogMinWidthTheme);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        return layoutInflater.inflate(R.layout.dialog_feed_group_reorder, viewGroup);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this._binding = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(bundle);
        Bridge.saveInstanceState(this, bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        int i = R.id.confirm_button;
        Button button = (Button) Options.Companion.findChildViewById(R.id.confirm_button, view);
        if (button != null) {
            i = R.id.feed_groups_list;
            RecyclerView recyclerView = (RecyclerView) Options.Companion.findChildViewById(R.id.feed_groups_list, view);
            if (recyclerView != null) {
                this._binding = new Printer(5, (LinearLayout) view, button, recyclerView);
                ViewModelStore viewModelStore = getViewModelStore();
                ViewModelProvider$Factory viewModelProviderFactory = ViewModelKt.getViewModelProviderFactory(this);
                CreationExtras viewModelCreationExtras = ViewModelKt.getViewModelCreationExtras(this);
                viewModelStore.getClass();
                viewModelProviderFactory.getClass();
                viewModelCreationExtras.getClass();
                Dispatcher dispatcher = new Dispatcher(viewModelStore, viewModelProviderFactory, viewModelCreationExtras);
                ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(FeedGroupReorderDialogViewModel.class);
                String qualifiedName = orCreateKotlinClass.getQualifiedName();
                if (qualifiedName == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Local and anonymous classes can not be ViewModels");
                    return;
                }
                FeedGroupReorderDialogViewModel feedGroupReorderDialogViewModel = (FeedGroupReorderDialogViewModel) dispatcher.getViewModel$lifecycle_viewmodel("androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(qualifiedName), orCreateKotlinClass);
                this.viewModel = feedGroupReorderDialogViewModel;
                feedGroupReorderDialogViewModel.groupsLiveData.observe(getViewLifecycleOwner(), new FeedFragment$sam$androidx_lifecycle_Observer$0(this, 2));
                FeedGroupReorderDialogViewModel feedGroupReorderDialogViewModel2 = this.viewModel;
                if (feedGroupReorderDialogViewModel2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                    throw null;
                }
                feedGroupReorderDialogViewModel2.dialogEventLiveData.observe(getViewLifecycleOwner(), new FeedFragment$sam$androidx_lifecycle_Observer$0(new RxAwaitKt$$ExternalSyntheticLambda0(this, 14), 3));
                Printer printer = this._binding;
                printer.getClass();
                ((RecyclerView) printer.settings).setLayoutManager(new LinearLayoutManager(requireContext()));
                Printer printer2 = this._binding;
                printer2.getClass();
                ((RecyclerView) printer2.settings).setAdapter(this.groupAdapter);
                Printer printer3 = this._binding;
                printer3.getClass();
                this.itemTouchHelper.attachToRecyclerView((RecyclerView) printer3.settings);
                Printer printer4 = this._binding;
                printer4.getClass();
                ((Button) printer4.accum).setOnClickListener(new Deleter$$ExternalSyntheticLambda4(this, 7));
                return;
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
