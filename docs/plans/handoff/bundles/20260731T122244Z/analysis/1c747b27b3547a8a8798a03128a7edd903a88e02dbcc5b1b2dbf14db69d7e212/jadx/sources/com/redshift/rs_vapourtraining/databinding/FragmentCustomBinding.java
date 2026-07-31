package com.redshift.rs_vapourtraining.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.redshift.rs_vapourtraining.R;

/* loaded from: classes4.dex */
public final class FragmentCustomBinding implements ViewBinding {
    private final ConstraintLayout rootView;
    public final TextView textCustom;

    private FragmentCustomBinding(ConstraintLayout rootView, TextView textCustom) {
        this.rootView = rootView;
        this.textCustom = textCustom;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentCustomBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentCustomBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View root = inflater.inflate(R.layout.fragment_custom, parent, false);
        if (attachToParent) {
            parent.addView(root);
        }
        return bind(root);
    }

    public static FragmentCustomBinding bind(View rootView) {
        TextView textCustom = (TextView) ViewBindings.findChildViewById(rootView, R.id.text_custom);
        if (textCustom == null) {
            String missingId = rootView.getResources().getResourceName(R.id.text_custom);
            throw new NullPointerException("Missing required view with ID: ".concat(missingId));
        }
        return new FragmentCustomBinding((ConstraintLayout) rootView, textCustom);
    }
}
