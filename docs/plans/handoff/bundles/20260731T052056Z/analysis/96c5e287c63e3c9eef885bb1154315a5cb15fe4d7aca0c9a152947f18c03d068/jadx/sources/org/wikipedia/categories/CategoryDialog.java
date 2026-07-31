package org.wikipedia.categories;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.util.BitmapsKt;
import coil3.util.ContextsKt;
import com.caverock.androidsvg.SVGAndroidRenderer;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;
import leakcanary.AndroidLeakFixes$Companion$onDecorViewReady$1;
import okhttp3.ConnectionPool;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.diff.DiffLineView$$ExternalSyntheticLambda0;
import org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$3;
import org.wikipedia.main.MainActivity$$ExternalSyntheticLambda1;
import org.wikipedia.page.ExtendedBottomSheetDialogFragment;
import org.wikipedia.util.SingleLiveData$sam$androidx_lifecycle_Observer$0;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.DrawableItemDecoration;
import org.wikipedia.views.PageItemView;
import org.wikipedia.views.WikiErrorView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0007"}, d2 = {"Lorg/wikipedia/categories/CategoryDialog;", "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;", "<init>", "()V", "CategoryItemHolder", "AppIconAdapter", "okhttp3/ConnectionPool", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CategoryDialog extends ExtendedBottomSheetDialogFragment {
    public SVGAndroidRenderer _binding;
    public final ConnectionPool itemCallback;
    public final Request.Builder viewModel$delegate;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CategoryItemHolder extends RecyclerView.ViewHolder {
        public final PageItemView view;

        public CategoryItemHolder(PageItemView pageItemView) {
            super(pageItemView);
            this.view = pageItemView;
        }
    }

    public CategoryDialog() {
        super(false);
        this.itemCallback = new ConnectionPool(23, this);
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new AndroidLeakFixes$Companion$onDecorViewReady$1(26, new AndroidLeakFixes$Companion$onDecorViewReady$1(25, this)));
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(CategoryDialogViewModel.class), new HomeFragment$special$$inlined$viewModels$default$3(lazy, 3), new KTypeImpl$arguments$2(28, this, lazy), new HomeFragment$special$$inlined$viewModels$default$3(lazy, 4));
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        boolean z = false;
        View inflate = layoutInflater.inflate(R.layout.dialog_categories, viewGroup, false);
        int i = R.id.categories_dialog_page_title;
        TextView textView = (TextView) Room.findChildViewById(inflate, R.id.categories_dialog_page_title);
        if (textView != null) {
            i = R.id.categories_dialog_title;
            if (((TextView) Room.findChildViewById(inflate, R.id.categories_dialog_title)) != null) {
                i = R.id.categories_error;
                WikiErrorView wikiErrorView = (WikiErrorView) Room.findChildViewById(inflate, R.id.categories_error);
                if (wikiErrorView != null) {
                    i = R.id.categories_none_found;
                    TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.categories_none_found);
                    if (textView2 != null) {
                        i = R.id.categories_recycler;
                        RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.categories_recycler);
                        if (recyclerView != null) {
                            i = R.id.categories_thumbnail;
                            if (((ImageView) Room.findChildViewById(inflate, R.id.categories_thumbnail)) != null) {
                                i = R.id.dialog_categories_progress;
                                ProgressBar progressBar = (ProgressBar) Room.findChildViewById(inflate, R.id.dialog_categories_progress);
                                if (progressBar != null) {
                                    this._binding = new SVGAndroidRenderer((FrameLayout) inflate, textView, wikiErrorView, textView2, recyclerView, progressBar);
                                    requireActivity();
                                    recyclerView.setLayoutManager(new LinearLayoutManager(1));
                                    SVGAndroidRenderer sVGAndroidRenderer = this._binding;
                                    sVGAndroidRenderer.getClass();
                                    ((RecyclerView) sVGAndroidRenderer.parentStack).addItemDecoration(new DrawableItemDecoration(requireContext(), z, z, 16));
                                    SVGAndroidRenderer sVGAndroidRenderer2 = this._binding;
                                    sVGAndroidRenderer2.getClass();
                                    TextView textView3 = (TextView) sVGAndroidRenderer2.document;
                                    StringUtil stringUtil = StringUtil.INSTANCE;
                                    Request.Builder builder = this.viewModel$delegate;
                                    textView3.setText(StringUtil.fromHtml(((CategoryDialogViewModel) builder.getValue()).pageTitle.getDisplayText()));
                                    SVGAndroidRenderer sVGAndroidRenderer3 = this._binding;
                                    sVGAndroidRenderer3.getClass();
                                    FrameLayout frameLayout = (FrameLayout) sVGAndroidRenderer3.canvas;
                                    frameLayout.getClass();
                                    BitmapsKt.setLayoutDirectionByLang(frameLayout, ((CategoryDialogViewModel) builder.getValue()).pageTitle.wikiSite.languageCode);
                                    SVGAndroidRenderer sVGAndroidRenderer4 = this._binding;
                                    sVGAndroidRenderer4.getClass();
                                    ((WikiErrorView) sVGAndroidRenderer4.state).setVisibility(8);
                                    SVGAndroidRenderer sVGAndroidRenderer5 = this._binding;
                                    sVGAndroidRenderer5.getClass();
                                    ((TextView) sVGAndroidRenderer5.stateStack).setVisibility(8);
                                    SVGAndroidRenderer sVGAndroidRenderer6 = this._binding;
                                    sVGAndroidRenderer6.getClass();
                                    ((RecyclerView) sVGAndroidRenderer6.parentStack).setVisibility(8);
                                    SVGAndroidRenderer sVGAndroidRenderer7 = this._binding;
                                    sVGAndroidRenderer7.getClass();
                                    ((ProgressBar) sVGAndroidRenderer7.matrixStack).setVisibility(0);
                                    SVGAndroidRenderer sVGAndroidRenderer8 = this._binding;
                                    sVGAndroidRenderer8.getClass();
                                    ((WikiErrorView) sVGAndroidRenderer8.state).setBackClickListener(new DiffLineView$$ExternalSyntheticLambda0(6, this));
                                    ((CategoryDialogViewModel) builder.getValue()).categoriesData.observe(this, new SingleLiveData$sam$androidx_lifecycle_Observer$0(new MainActivity$$ExternalSyntheticLambda1(2, this), 1));
                                    SVGAndroidRenderer sVGAndroidRenderer9 = this._binding;
                                    sVGAndroidRenderer9.getClass();
                                    FrameLayout frameLayout2 = (FrameLayout) sVGAndroidRenderer9.canvas;
                                    frameLayout2.getClass();
                                    return frameLayout2;
                                }
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
    public final void onDestroy() {
        this._binding = null;
        this.mCalled = true;
    }
}
