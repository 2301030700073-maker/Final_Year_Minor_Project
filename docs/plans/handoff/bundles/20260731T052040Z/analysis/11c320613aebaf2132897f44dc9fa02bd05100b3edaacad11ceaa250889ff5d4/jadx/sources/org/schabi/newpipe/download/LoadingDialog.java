package org.schabi.newpipe.download;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.DialogFragment;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import okio.Options;
import org.jsoup.nodes.Printer;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LoadingDialog extends DialogFragment {
    public final int title = R.string.loading_metadata_title;

    static {
        int i = MainActivity.$r8$clinit;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mCancelable = false;
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            dialog.setCancelable(false);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.download_loading_dialog, viewGroup);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        int i = R.id.loader;
        if (((ProgressBar) Options.Companion.findChildViewById(R.id.loader, view)) != null) {
            i = R.id.toolbar_layout;
            View findChildViewById = Options.Companion.findChildViewById(R.id.toolbar_layout, view);
            if (findChildViewById != null) {
                Toolbar toolbar = (Toolbar) Printer.bind(findChildViewById).accum;
                toolbar.setTitle(requireContext().getString(this.title));
                toolbar.setNavigationOnClickListener(new LoadingDialog$$ExternalSyntheticLambda0(this, 0));
                return;
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
