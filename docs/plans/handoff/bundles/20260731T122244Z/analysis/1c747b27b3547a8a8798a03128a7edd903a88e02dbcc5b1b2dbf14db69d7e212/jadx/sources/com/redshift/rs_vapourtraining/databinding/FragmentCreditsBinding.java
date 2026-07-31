package com.redshift.rs_vapourtraining.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.redshift.rs_vapourtraining.R;

/* loaded from: classes4.dex */
public final class FragmentCreditsBinding implements ViewBinding {
    public final RecyclerView idRVCardsOwned;
    private final ConstraintLayout rootView;
    public final TextView textCardsCredits;
    public final TextView textView9;

    private FragmentCreditsBinding(ConstraintLayout rootView, RecyclerView idRVCardsOwned, TextView textCardsCredits, TextView textView9) {
        this.rootView = rootView;
        this.idRVCardsOwned = idRVCardsOwned;
        this.textCardsCredits = textCardsCredits;
        this.textView9 = textView9;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentCreditsBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentCreditsBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View root = inflater.inflate(R.layout.fragment_credits, parent, false);
        if (attachToParent) {
            parent.addView(root);
        }
        return bind(root);
    }

    public static FragmentCreditsBinding bind(View rootView) {
        int id = R.id.idRVCardsOwned;
        RecyclerView idRVCardsOwned = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.idRVCardsOwned);
        if (idRVCardsOwned != null) {
            id = R.id.text_cards_credits;
            TextView textCardsCredits = (TextView) ViewBindings.findChildViewById(rootView, R.id.text_cards_credits);
            if (textCardsCredits != null) {
                id = R.id.textView9;
                TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView9);
                if (textView9 != null) {
                    return new FragmentCreditsBinding((ConstraintLayout) rootView, idRVCardsOwned, textCardsCredits, textView9);
                }
            }
        }
        String missingId = rootView.getResources().getResourceName(id);
        throw new NullPointerException("Missing required view with ID: ".concat(missingId));
    }
}
