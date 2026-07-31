package com.redshift.rs_vapourtraining.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentContainerView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.redshift.rs_vapourtraining.R;

/* loaded from: classes4.dex */
public final class FragmentStoreBinding implements ViewBinding {
    public final RecyclerView idRVProducts;
    public final FragmentContainerView navHostFragment;
    private final ConstraintLayout rootView;
    public final TextView textView9;
    public final Toolbar toolbar;

    private FragmentStoreBinding(ConstraintLayout rootView, RecyclerView idRVProducts, FragmentContainerView navHostFragment, TextView textView9, Toolbar toolbar) {
        this.rootView = rootView;
        this.idRVProducts = idRVProducts;
        this.navHostFragment = navHostFragment;
        this.textView9 = textView9;
        this.toolbar = toolbar;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentStoreBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentStoreBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View root = inflater.inflate(R.layout.fragment_store, parent, false);
        if (attachToParent) {
            parent.addView(root);
        }
        return bind(root);
    }

    public static FragmentStoreBinding bind(View rootView) {
        int id = R.id.idRVProducts;
        RecyclerView idRVProducts = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.idRVProducts);
        if (idRVProducts != null) {
            id = R.id.nav_host_fragment;
            FragmentContainerView navHostFragment = (FragmentContainerView) ViewBindings.findChildViewById(rootView, R.id.nav_host_fragment);
            if (navHostFragment != null) {
                id = R.id.textView9;
                TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView9);
                if (textView9 != null) {
                    id = R.id.toolbar;
                    Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(rootView, R.id.toolbar);
                    if (toolbar != null) {
                        return new FragmentStoreBinding((ConstraintLayout) rootView, idRVProducts, navHostFragment, textView9, toolbar);
                    }
                }
            }
        }
        String missingId = rootView.getResources().getResourceName(id);
        throw new NullPointerException("Missing required view with ID: ".concat(missingId));
    }
}
