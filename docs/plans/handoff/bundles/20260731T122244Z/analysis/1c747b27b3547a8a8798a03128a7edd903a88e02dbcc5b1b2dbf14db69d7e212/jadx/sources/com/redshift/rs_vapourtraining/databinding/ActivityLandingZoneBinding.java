package com.redshift.rs_vapourtraining.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.redshift.rs_vapourtraining.R;

/* loaded from: classes4.dex */
public final class ActivityLandingZoneBinding implements ViewBinding {
    public final TextView BigTitle;
    public final Button LandLogin;
    private final ConstraintLayout rootView;
    public final TextView slogan;

    private ActivityLandingZoneBinding(ConstraintLayout rootView, TextView BigTitle, Button LandLogin, TextView slogan) {
        this.rootView = rootView;
        this.BigTitle = BigTitle;
        this.LandLogin = LandLogin;
        this.slogan = slogan;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ActivityLandingZoneBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ActivityLandingZoneBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View root = inflater.inflate(R.layout.activity_landing_zone, parent, false);
        if (attachToParent) {
            parent.addView(root);
        }
        return bind(root);
    }

    public static ActivityLandingZoneBinding bind(View rootView) {
        int id = R.id.BigTitle;
        TextView BigTitle = (TextView) ViewBindings.findChildViewById(rootView, R.id.BigTitle);
        if (BigTitle != null) {
            id = R.id.LandLogin;
            Button LandLogin = (Button) ViewBindings.findChildViewById(rootView, R.id.LandLogin);
            if (LandLogin != null) {
                id = R.id.slogan;
                TextView slogan = (TextView) ViewBindings.findChildViewById(rootView, R.id.slogan);
                if (slogan != null) {
                    return new ActivityLandingZoneBinding((ConstraintLayout) rootView, BigTitle, LandLogin, slogan);
                }
            }
        }
        String missingId = rootView.getResources().getResourceName(id);
        throw new NullPointerException("Missing required view with ID: ".concat(missingId));
    }
}
