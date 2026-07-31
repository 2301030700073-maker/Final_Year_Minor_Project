package org.schabi.newpipe.fragments;

import android.os.Bundle;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.observers.LambdaObserver;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;
import org.acra.builder.ReportExecutor$$ExternalSyntheticLambda0;
import org.schabi.newpipe.BaseFragment;
import org.schabi.newpipe.R;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorPanelHelper;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.util.InfoCache;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class BaseStateFragment<I> extends BaseFragment {
    public TextView emptyStateMessageView;
    public View emptyStateView;
    public ErrorPanelHelper errorPanelHelper;
    public ProgressBar loadingProgressBar;
    protected AtomicBoolean wasLoading = new AtomicBoolean();
    public final AtomicBoolean isLoading = new AtomicBoolean();
    protected ErrorInfo lastPanelError = null;

    public void doInitialLoadLogic() {
        startLoading(true);
    }

    public void handleError() {
        this.isLoading.set(false);
        InfoCache.INSTANCE.getClass();
        InfoCache.clearCache();
        View view = this.emptyStateView;
        if (view != null) {
            AppKt.animate$default(view, false, 150L, null, 0L, null, 28);
        }
        ProgressBar progressBar = this.loadingProgressBar;
        if (progressBar != null) {
            AppKt.animate$default(progressBar, false, 0L, null, 0L, null, 28);
        }
    }

    public final void hideErrorPanel() {
        ErrorPanelHelper errorPanelHelper = this.errorPanelHelper;
        errorPanelHelper.errorActionButton.setOnClickListener(null);
        AppKt.animate$default(errorPanelHelper.errorPanelRoot, false, 150L, null, 0L, null, 28);
        this.lastPanelError = null;
    }

    public void hideLoading() {
        View view = this.emptyStateView;
        if (view != null) {
            AppKt.animate(view, false, 150L);
        }
        ProgressBar progressBar = this.loadingProgressBar;
        if (progressBar != null) {
            AppKt.animate(progressBar, false, 0L);
        }
        hideErrorPanel();
    }

    @Override // org.schabi.newpipe.BaseFragment
    public void initViews(View view, Bundle bundle) {
        this.emptyStateView = view.findViewById(R.id.empty_state_view);
        this.emptyStateMessageView = (TextView) view.findViewById(R.id.empty_state_message);
        this.loadingProgressBar = (ProgressBar) view.findViewById(R.id.loading_progress_bar);
        this.errorPanelHelper = new ErrorPanelHelper(this, view, new ReportExecutor$$ExternalSyntheticLambda0(this, 26));
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        ErrorPanelHelper errorPanelHelper = this.errorPanelHelper;
        if (errorPanelHelper != null) {
            errorPanelHelper.errorActionButton.setOnClickListener(null);
            errorPanelHelper.errorRetryButton.setOnClickListener(null);
            LambdaObserver lambdaObserver = errorPanelHelper.errorDisposable;
            if (lambdaObserver != null) {
                DisposableHelper.dispose(lambdaObserver);
            }
        }
        this.emptyStateView = null;
        this.emptyStateMessageView = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.wasLoading.set(this.isLoading.get());
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        ErrorInfo errorInfo = this.lastPanelError;
        if (errorInfo != null) {
            showError(errorInfo);
        }
    }

    @Override // org.schabi.newpipe.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        doInitialLoadLogic();
    }

    public void reloadContent() {
        startLoading(true);
    }

    public void showEmptyState() {
        this.isLoading.set(false);
        View view = this.emptyStateView;
        if (view != null) {
            AppKt.animate$default(view, true, 200L, null, 0L, null, 28);
        }
        ProgressBar progressBar = this.loadingProgressBar;
        if (progressBar != null) {
            AppKt.animate$default(progressBar, false, 0L, null, 0L, null, 28);
        }
        hideErrorPanel();
    }

    public final void showError(ErrorInfo errorInfo) {
        handleError();
        if (isDetached() || isRemoving()) {
            return;
        }
        this.errorPanelHelper.showError(errorInfo);
        this.lastPanelError = errorInfo;
    }

    public void showLoading() {
        View view = this.emptyStateView;
        if (view != null) {
            AppKt.animate(view, false, 150L);
        }
        ProgressBar progressBar = this.loadingProgressBar;
        if (progressBar != null) {
            AppKt.animate(progressBar, true, 400L);
        }
        hideErrorPanel();
    }

    public final void showSnackBarError(ErrorInfo errorInfo) {
        ErrorUtil.Companion.getClass();
        ErrorUtil.Companion.showSnackbar(this, errorInfo);
    }

    public final void showTextError(String str) {
        handleError();
        if (isDetached() || isRemoving()) {
            return;
        }
        ErrorPanelHelper errorPanelHelper = this.errorPanelHelper;
        errorPanelHelper.getClass();
        str.getClass();
        errorPanelHelper.ensureDefaultVisibility();
        MathKt.setTextWithLinks(errorPanelHelper.errorTextView, str);
        AppKt.animate$default(errorPanelHelper.errorPanelRoot, true, 300L, null, 0L, null, 28);
    }

    public void startLoading(boolean z) {
        showLoading();
        this.isLoading.set(true);
    }
}
