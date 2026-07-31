package org.schabi.newpipe.fragments;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.observers.LambdaObserver;
import org.schabi.newpipe.BaseFragment;
import org.schabi.newpipe.R;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorPanelHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class BlankFragment extends BaseFragment {
    ErrorInfo errorInfo;
    public ErrorPanelHelper errorPanel;

    public BlankFragment(ErrorInfo errorInfo) {
        this.errorPanel = null;
        this.errorInfo = errorInfo;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        setTitle("NewPipe");
        View inflate = layoutInflater.inflate(R.layout.fragment_blank, viewGroup, false);
        if (this.errorInfo != null) {
            ErrorPanelHelper errorPanelHelper = new ErrorPanelHelper(this, inflate, null);
            this.errorPanel = errorPanelHelper;
            errorPanelHelper.showError(this.errorInfo);
            inflate.findViewById(R.id.blank_page_content).setVisibility(8);
        }
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        ErrorPanelHelper errorPanelHelper = this.errorPanel;
        if (errorPanelHelper != null) {
            errorPanelHelper.errorActionButton.setOnClickListener(null);
            errorPanelHelper.errorRetryButton.setOnClickListener(null);
            LambdaObserver lambdaObserver = errorPanelHelper.errorDisposable;
            if (lambdaObserver != null) {
                DisposableHelper.dispose(lambdaObserver);
            }
            this.errorPanel = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        setTitle("NewPipe");
    }

    public BlankFragment() {
        this(null);
    }
}
