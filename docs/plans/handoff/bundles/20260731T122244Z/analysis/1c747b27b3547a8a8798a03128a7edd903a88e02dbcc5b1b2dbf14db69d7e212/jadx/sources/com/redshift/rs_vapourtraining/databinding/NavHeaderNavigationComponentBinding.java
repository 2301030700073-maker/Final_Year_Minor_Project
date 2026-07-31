package com.redshift.rs_vapourtraining.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.redshift.rs_vapourtraining.R;

/* loaded from: classes4.dex */
public final class NavHeaderNavigationComponentBinding implements ViewBinding {
    public final TextView ActionCreds;
    public final TextView Actionname;
    public final ImageView imageView;
    private final LinearLayout rootView;

    private NavHeaderNavigationComponentBinding(LinearLayout rootView, TextView ActionCreds, TextView Actionname, ImageView imageView) {
        this.rootView = rootView;
        this.ActionCreds = ActionCreds;
        this.Actionname = Actionname;
        this.imageView = imageView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static NavHeaderNavigationComponentBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static NavHeaderNavigationComponentBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View root = inflater.inflate(R.layout.nav_header_navigation_component, parent, false);
        if (attachToParent) {
            parent.addView(root);
        }
        return bind(root);
    }

    public static NavHeaderNavigationComponentBinding bind(View rootView) {
        int id = R.id.ActionCreds;
        TextView ActionCreds = (TextView) ViewBindings.findChildViewById(rootView, R.id.ActionCreds);
        if (ActionCreds != null) {
            id = R.id.Actionname;
            TextView Actionname = (TextView) ViewBindings.findChildViewById(rootView, R.id.Actionname);
            if (Actionname != null) {
                id = R.id.imageView;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView);
                if (imageView != null) {
                    return new NavHeaderNavigationComponentBinding((LinearLayout) rootView, ActionCreds, Actionname, imageView);
                }
            }
        }
        String missingId = rootView.getResources().getResourceName(id);
        throw new NullPointerException("Missing required view with ID: ".concat(missingId));
    }
}
