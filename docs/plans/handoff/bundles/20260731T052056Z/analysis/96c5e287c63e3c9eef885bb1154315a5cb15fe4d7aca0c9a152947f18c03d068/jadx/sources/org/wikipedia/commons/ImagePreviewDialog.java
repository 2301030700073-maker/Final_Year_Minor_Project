package org.wikipedia.commons;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.lifecycle.ViewModelKt;
import androidx.room.Room;
import coil3.util.BitmapsKt;
import coil3.util.ContextsKt;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.gson.GsonBuilder;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.AwaitKt;
import leakcanary.AndroidLeakFixes$Companion$onDecorViewReady$1;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.wikipedia.R;
import org.wikipedia.diff.DiffLineView$$ExternalSyntheticLambda0;
import org.wikipedia.donate.DonateDialog$special$$inlined$viewModels$default$5;
import org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$2;
import org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$3;
import org.wikipedia.page.ExtendedBottomSheetDialogFragment;
import org.wikipedia.page.linkpreview.LinkPreviewErrorView;
import org.wikipedia.util.StringUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lorg/wikipedia/commons/ImagePreviewDialog;", "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;", "Landroid/content/DialogInterface$OnDismissListener;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ImagePreviewDialog extends ExtendedBottomSheetDialogFragment implements DialogInterface.OnDismissListener {
    public GsonBuilder _binding;
    public final Request.Builder viewModel$delegate;

    public ImagePreviewDialog() {
        super(false);
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new HomeFragment$special$$inlined$viewModels$default$2(1, new AndroidLeakFixes$Companion$onDecorViewReady$1(29, this)));
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(ImagePreviewViewModel.class), new HomeFragment$special$$inlined$viewModels$default$3(lazy, 7), new DonateDialog$special$$inlined$viewModels$default$5(this, lazy, 1), new HomeFragment$special$$inlined$viewModels$default$3(lazy, 8));
    }

    public final ImagePreviewViewModel getViewModel() {
        return (ImagePreviewViewModel) this.viewModel$delegate.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.dialog_image_preview, viewGroup, false);
        int i = R.id.dialogDetailContainer;
        LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.dialogDetailContainer);
        if (linearLayout != null) {
            i = R.id.downChevron;
            if (((ImageView) Room.findChildViewById(inflate, R.id.downChevron)) != null) {
                i = R.id.errorView;
                LinkPreviewErrorView linkPreviewErrorView = (LinkPreviewErrorView) Room.findChildViewById(inflate, R.id.errorView);
                if (linkPreviewErrorView != null) {
                    i = R.id.filePageView;
                    FilePageView filePageView = (FilePageView) Room.findChildViewById(inflate, R.id.filePageView);
                    if (filePageView != null) {
                        i = R.id.progressBar;
                        ProgressBar progressBar = (ProgressBar) Room.findChildViewById(inflate, R.id.progressBar);
                        if (progressBar != null) {
                            i = R.id.titleText;
                            TextView textView = (TextView) Room.findChildViewById(inflate, R.id.titleText);
                            if (textView != null) {
                                i = R.id.toolbarView;
                                LinearLayout linearLayout2 = (LinearLayout) Room.findChildViewById(inflate, R.id.toolbarView);
                                if (linearLayout2 != null) {
                                    LinearLayout linearLayout3 = (LinearLayout) inflate;
                                    this._binding = new GsonBuilder(linearLayout3, linearLayout, linkPreviewErrorView, filePageView, progressBar, textView, linearLayout2, 9);
                                    linearLayout3.getClass();
                                    BitmapsKt.setLayoutDirectionByLang(linearLayout3, getViewModel().pageSummaryForEdit.lang);
                                    GsonBuilder gsonBuilder = this._binding;
                                    gsonBuilder.getClass();
                                    LinearLayout linearLayout4 = (LinearLayout) gsonBuilder.excluder;
                                    linearLayout4.getClass();
                                    return linearLayout4;
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

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        GsonBuilder gsonBuilder = this._binding;
        gsonBuilder.getClass();
        ((LinearLayout) gsonBuilder.reflectionFilters).setOnClickListener(null);
        this._binding = null;
        super.onDestroyView();
    }

    @Override // org.wikipedia.page.ExtendedBottomSheetDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        Object parent = requireView().getParent();
        parent.getClass();
        BottomSheetBehavior.from((View) parent).setPeekHeight(Okio__OkioKt.roundedDpToPx(Okio__OkioKt.getDimension(R.dimen.imagePreviewSheetPeekHeight)));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        GsonBuilder gsonBuilder = this._binding;
        gsonBuilder.getClass();
        ((LinearLayout) gsonBuilder.reflectionFilters).setOnClickListener(new DiffLineView$$ExternalSyntheticLambda0(8, this));
        GsonBuilder gsonBuilder2 = this._binding;
        gsonBuilder2.getClass();
        TextView textView = (TextView) gsonBuilder2.hierarchyFactories;
        StringUtil stringUtil = StringUtil.INSTANCE;
        textView.setText(StringUtil.removeHTMLTags(StringUtil.removeNamespace(getViewModel().pageSummaryForEdit.displayTitle)));
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(getViewLifecycleOwner()), null, null, new ImagePreviewDialog$onViewCreated$2(this, null, 0), 3);
    }
}
