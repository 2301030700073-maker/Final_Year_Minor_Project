package com.redshift.rs_vapourtraining.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.redshift.rs_vapourtraining.R;

/* loaded from: classes4.dex */
public final class ActivityWebViewCreditsBinding implements ViewBinding {
    private final ConstraintLayout rootView;
    public final WebView webview;

    private ActivityWebViewCreditsBinding(ConstraintLayout rootView, WebView webview) {
        this.rootView = rootView;
        this.webview = webview;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ActivityWebViewCreditsBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ActivityWebViewCreditsBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View root = inflater.inflate(R.layout.activity_web_view_credits, parent, false);
        if (attachToParent) {
            parent.addView(root);
        }
        return bind(root);
    }

    public static ActivityWebViewCreditsBinding bind(View rootView) {
        WebView webview = (WebView) ViewBindings.findChildViewById(rootView, R.id.webview);
        if (webview == null) {
            String missingId = rootView.getResources().getResourceName(R.id.webview);
            throw new NullPointerException("Missing required view with ID: ".concat(missingId));
        }
        return new ActivityWebViewCreditsBinding((ConstraintLayout) rootView, webview);
    }
}
