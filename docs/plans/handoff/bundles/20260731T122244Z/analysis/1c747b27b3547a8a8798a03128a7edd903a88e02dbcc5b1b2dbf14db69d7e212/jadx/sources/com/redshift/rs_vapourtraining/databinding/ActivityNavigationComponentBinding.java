package com.redshift.rs_vapourtraining.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.navigation.NavigationView;
import com.redshift.rs_vapourtraining.R;

/* loaded from: classes4.dex */
public final class ActivityNavigationComponentBinding implements ViewBinding {
    public final AppBarNavigationComponentBinding appBarNavigationComponent;
    public final DrawerLayout drawerLayout;
    public final NavigationView navView;
    private final DrawerLayout rootView;

    private ActivityNavigationComponentBinding(DrawerLayout rootView, AppBarNavigationComponentBinding appBarNavigationComponent, DrawerLayout drawerLayout, NavigationView navView) {
        this.rootView = rootView;
        this.appBarNavigationComponent = appBarNavigationComponent;
        this.drawerLayout = drawerLayout;
        this.navView = navView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public DrawerLayout getRoot() {
        return this.rootView;
    }

    public static ActivityNavigationComponentBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ActivityNavigationComponentBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View root = inflater.inflate(R.layout.activity_navigation_component, parent, false);
        if (attachToParent) {
            parent.addView(root);
        }
        return bind(root);
    }

    public static ActivityNavigationComponentBinding bind(View rootView) {
        int id = R.id.app_bar_navigation_component;
        View appBarNavigationComponent = ViewBindings.findChildViewById(rootView, R.id.app_bar_navigation_component);
        if (appBarNavigationComponent != null) {
            AppBarNavigationComponentBinding binding_appBarNavigationComponent = AppBarNavigationComponentBinding.bind(appBarNavigationComponent);
            DrawerLayout drawerLayout = (DrawerLayout) rootView;
            id = R.id.nav_view;
            NavigationView navView = (NavigationView) ViewBindings.findChildViewById(rootView, R.id.nav_view);
            if (navView != null) {
                return new ActivityNavigationComponentBinding((DrawerLayout) rootView, binding_appBarNavigationComponent, drawerLayout, navView);
            }
        }
        String missingId = rootView.getResources().getResourceName(id);
        throw new NullPointerException("Missing required view with ID: ".concat(missingId));
    }
}
