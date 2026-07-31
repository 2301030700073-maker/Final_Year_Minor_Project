package com.redshift.rs_vapourtraining.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.redshift.rs_vapourtraining.R;

/* loaded from: classes4.dex */
public final class ContentNavigationComponentBinding implements ViewBinding {
    private final ConstraintLayout rootView;

    private ContentNavigationComponentBinding(ConstraintLayout rootView) {
        this.rootView = rootView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ContentNavigationComponentBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ContentNavigationComponentBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View root = inflater.inflate(R.layout.content_navigation_component, parent, false);
        if (attachToParent) {
            parent.addView(root);
        }
        return bind(root);
    }

    public static ContentNavigationComponentBinding bind(View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        return new ContentNavigationComponentBinding((ConstraintLayout) rootView);
    }
}
