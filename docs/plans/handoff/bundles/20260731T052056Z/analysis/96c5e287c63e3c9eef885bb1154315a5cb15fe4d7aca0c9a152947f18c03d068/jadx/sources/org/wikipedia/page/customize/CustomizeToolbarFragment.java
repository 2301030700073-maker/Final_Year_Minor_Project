package org.wikipedia.page.customize;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.ContextsKt;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.diff.DiffUtil$DiffLinesAdapter;
import org.wikipedia.donate.DonateDialog$special$$inlined$viewModels$default$5;
import org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$2;
import org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$3;
import org.wikipedia.talk.template.TalkTemplatesFragment;
import org.wikipedia.views.DefaultViewHolder;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001:\u0007\u0004\u0005\u0006\u0007\b\b\bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\t"}, d2 = {"Lorg/wikipedia/page/customize/CustomizeToolbarFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "DiffLinesAdapter", "RearrangeableItemTouchHelperCallback", "HeaderViewHolder", "ItemHolder", "DescriptionViewHolder", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CustomizeToolbarFragment extends Fragment {
    public RecyclerView.AnonymousClass4 _binding;
    public DiffUtil$DiffLinesAdapter adapter;
    public ItemTouchHelper itemTouchHelper;
    public final Request.Builder viewModel$delegate;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class DescriptionViewHolder extends DefaultViewHolder {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class HeaderViewHolder extends DefaultViewHolder {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ItemHolder extends DefaultViewHolder {
    }

    public CustomizeToolbarFragment() {
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new HomeFragment$special$$inlined$viewModels$default$2(19, new HomeFragment$special$$inlined$viewModels$default$2(18, this)));
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(CustomizeToolbarViewModel.class), new HomeFragment$special$$inlined$viewModels$default$3(lazy, 28), new DonateDialog$special$$inlined$viewModels$default$5(this, lazy, 9), new HomeFragment$special$$inlined$viewModels$default$3(lazy, 29));
    }

    public final CustomizeToolbarViewModel getViewModel() {
        return (CustomizeToolbarViewModel) this.viewModel$delegate.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_customize_toolbar, viewGroup, false);
        if (inflate == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("rootView");
            return null;
        }
        RecyclerView recyclerView = (RecyclerView) inflate;
        this._binding = new RecyclerView.AnonymousClass4(recyclerView, recyclerView);
        return recyclerView;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this._binding = null;
        this.mCalled = true;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        setupRecyclerView$1();
    }

    public final void setupRecyclerView$1() {
        RecyclerView.AnonymousClass4 anonymousClass4 = this._binding;
        anonymousClass4.getClass();
        anonymousClass4.this$0.setHasFixedSize(true);
        this.adapter = new DiffUtil$DiffLinesAdapter(2, this);
        RecyclerView.AnonymousClass4 anonymousClass42 = this._binding;
        anonymousClass42.getClass();
        RecyclerView recyclerView = anonymousClass42.this$0;
        DiffUtil$DiffLinesAdapter diffUtil$DiffLinesAdapter = this.adapter;
        if (diffUtil$DiffLinesAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        recyclerView.setAdapter(diffUtil$DiffLinesAdapter);
        RecyclerView.AnonymousClass4 anonymousClass43 = this._binding;
        anonymousClass43.getClass();
        RecyclerView recyclerView2 = anonymousClass43.this$0;
        requireActivity();
        recyclerView2.setLayoutManager(new LinearLayoutManager(1));
        DiffUtil$DiffLinesAdapter diffUtil$DiffLinesAdapter2 = this.adapter;
        if (diffUtil$DiffLinesAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new TalkTemplatesFragment.RearrangeableItemTouchHelperCallback(this, diffUtil$DiffLinesAdapter2));
        this.itemTouchHelper = itemTouchHelper;
        RecyclerView.AnonymousClass4 anonymousClass44 = this._binding;
        anonymousClass44.getClass();
        itemTouchHelper.attachToRecyclerView(anonymousClass44.this$0);
    }
}
