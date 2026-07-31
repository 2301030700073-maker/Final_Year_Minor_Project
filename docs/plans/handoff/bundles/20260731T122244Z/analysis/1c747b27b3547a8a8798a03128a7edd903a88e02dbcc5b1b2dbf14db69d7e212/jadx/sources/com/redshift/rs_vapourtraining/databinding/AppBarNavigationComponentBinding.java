package com.redshift.rs_vapourtraining.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.redshift.rs_vapourtraining.R;

/* loaded from: classes4.dex */
public final class AppBarNavigationComponentBinding implements ViewBinding {
    public final FloatingActionButton fab;
    private final CoordinatorLayout rootView;
    public final Toolbar toolbar;

    private AppBarNavigationComponentBinding(CoordinatorLayout rootView, FloatingActionButton fab, Toolbar toolbar) {
        this.rootView = rootView;
        this.fab = fab;
        this.toolbar = toolbar;
    }

    @Override // androidx.viewbinding.ViewBinding
    public CoordinatorLayout getRoot() {
        return this.rootView;
    }

    public static AppBarNavigationComponentBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static AppBarNavigationComponentBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View root = inflater.inflate(R.layout.app_bar_navigation_component, parent, false);
        if (attachToParent) {
            parent.addView(root);
        }
        return bind(root);
    }

    public static AppBarNavigationComponentBinding bind(View rootView) {
        int id = R.id.fab;
        FloatingActionButton fab = (FloatingActionButton) ViewBindings.findChildViewById(rootView, R.id.fab);
        if (fab != null) {
            id = R.id.toolbar;
            Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(rootView, R.id.toolbar);
            if (toolbar != null) {
                return new AppBarNavigationComponentBinding((CoordinatorLayout) rootView, fab, toolbar);
            }
        }
        String missingId = rootView.getResources().getResourceName(id);
        throw new NullPointerException("Missing required view with ID: ".concat(missingId));
    }
}
