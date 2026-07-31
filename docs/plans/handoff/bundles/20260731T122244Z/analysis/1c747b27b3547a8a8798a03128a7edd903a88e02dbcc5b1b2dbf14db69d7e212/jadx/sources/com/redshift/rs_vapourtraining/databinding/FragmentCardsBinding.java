package com.redshift.rs_vapourtraining.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.redshift.rs_vapourtraining.R;

/* loaded from: classes4.dex */
public final class FragmentCardsBinding implements ViewBinding {
    public final Button addCard;
    public final TextView blank;
    public final RecyclerView idRVCardsOwned;
    private final ConstraintLayout rootView;
    public final TextView textCards;
    public final TextView textView9;

    private FragmentCardsBinding(ConstraintLayout rootView, Button addCard, TextView blank, RecyclerView idRVCardsOwned, TextView textCards, TextView textView9) {
        this.rootView = rootView;
        this.addCard = addCard;
        this.blank = blank;
        this.idRVCardsOwned = idRVCardsOwned;
        this.textCards = textCards;
        this.textView9 = textView9;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentCardsBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentCardsBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View root = inflater.inflate(R.layout.fragment_cards, parent, false);
        if (attachToParent) {
            parent.addView(root);
        }
        return bind(root);
    }

    public static FragmentCardsBinding bind(View rootView) {
        int id = R.id.add_card;
        Button addCard = (Button) ViewBindings.findChildViewById(rootView, R.id.add_card);
        if (addCard != null) {
            id = R.id.blank;
            TextView blank = (TextView) ViewBindings.findChildViewById(rootView, R.id.blank);
            if (blank != null) {
                id = R.id.idRVCardsOwned;
                RecyclerView idRVCardsOwned = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.idRVCardsOwned);
                if (idRVCardsOwned != null) {
                    id = R.id.text_cards;
                    TextView textCards = (TextView) ViewBindings.findChildViewById(rootView, R.id.text_cards);
                    if (textCards != null) {
                        id = R.id.textView9;
                        TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView9);
                        if (textView9 != null) {
                            return new FragmentCardsBinding((ConstraintLayout) rootView, addCard, blank, idRVCardsOwned, textCards, textView9);
                        }
                    }
                }
            }
        }
        String missingId = rootView.getResources().getResourceName(id);
        throw new NullPointerException("Missing required view with ID: ".concat(missingId));
    }
}
