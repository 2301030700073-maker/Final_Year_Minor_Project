package com.redshift.rs_vapourtraining.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.redshift.rs_vapourtraining.R;

/* loaded from: classes4.dex */
public final class CardRcItemBinding implements ViewBinding {
    public final TextView ExpireDate;
    public final TextView cardCvv;
    public final TextView cardName;
    public final TextView cardNummber;
    public final ImageView cardPic;
    private final CardView rootView;
    public final CardView singleItemCardView;

    private CardRcItemBinding(CardView rootView, TextView ExpireDate, TextView cardCvv, TextView cardName, TextView cardNummber, ImageView cardPic, CardView singleItemCardView) {
        this.rootView = rootView;
        this.ExpireDate = ExpireDate;
        this.cardCvv = cardCvv;
        this.cardName = cardName;
        this.cardNummber = cardNummber;
        this.cardPic = cardPic;
        this.singleItemCardView = singleItemCardView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public CardView getRoot() {
        return this.rootView;
    }

    public static CardRcItemBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static CardRcItemBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View root = inflater.inflate(R.layout.card_rc_item, parent, false);
        if (attachToParent) {
            parent.addView(root);
        }
        return bind(root);
    }

    public static CardRcItemBinding bind(View rootView) {
        int id = R.id.Expire_date;
        TextView ExpireDate = (TextView) ViewBindings.findChildViewById(rootView, R.id.Expire_date);
        if (ExpireDate != null) {
            id = R.id.card_cvv;
            TextView cardCvv = (TextView) ViewBindings.findChildViewById(rootView, R.id.card_cvv);
            if (cardCvv != null) {
                id = R.id.card_name;
                TextView cardName = (TextView) ViewBindings.findChildViewById(rootView, R.id.card_name);
                if (cardName != null) {
                    id = R.id.card_nummber;
                    TextView cardNummber = (TextView) ViewBindings.findChildViewById(rootView, R.id.card_nummber);
                    if (cardNummber != null) {
                        id = R.id.card_pic;
                        ImageView cardPic = (ImageView) ViewBindings.findChildViewById(rootView, R.id.card_pic);
                        if (cardPic != null) {
                            CardView singleItemCardView = (CardView) rootView;
                            return new CardRcItemBinding((CardView) rootView, ExpireDate, cardCvv, cardName, cardNummber, cardPic, singleItemCardView);
                        }
                    }
                }
            }
        }
        String missingId = rootView.getResources().getResourceName(id);
        throw new NullPointerException("Missing required view with ID: ".concat(missingId));
    }
}
