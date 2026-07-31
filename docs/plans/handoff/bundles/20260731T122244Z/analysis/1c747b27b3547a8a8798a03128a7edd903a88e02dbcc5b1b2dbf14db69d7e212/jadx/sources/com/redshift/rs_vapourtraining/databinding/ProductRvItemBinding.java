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
public final class ProductRvItemBinding implements ViewBinding {
    public final TextView idproductDescTV;
    public final TextView idproductNameTV;
    public final TextView idproductPriceTV;
    public final ImageView idproductURLTV;
    private final CardView rootView;
    public final CardView singleItemCardView;

    private ProductRvItemBinding(CardView rootView, TextView idproductDescTV, TextView idproductNameTV, TextView idproductPriceTV, ImageView idproductURLTV, CardView singleItemCardView) {
        this.rootView = rootView;
        this.idproductDescTV = idproductDescTV;
        this.idproductNameTV = idproductNameTV;
        this.idproductPriceTV = idproductPriceTV;
        this.idproductURLTV = idproductURLTV;
        this.singleItemCardView = singleItemCardView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public CardView getRoot() {
        return this.rootView;
    }

    public static ProductRvItemBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ProductRvItemBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View root = inflater.inflate(R.layout.product_rv_item, parent, false);
        if (attachToParent) {
            parent.addView(root);
        }
        return bind(root);
    }

    public static ProductRvItemBinding bind(View rootView) {
        int id = R.id.idproductDescTV;
        TextView idproductDescTV = (TextView) ViewBindings.findChildViewById(rootView, R.id.idproductDescTV);
        if (idproductDescTV != null) {
            id = R.id.idproductNameTV;
            TextView idproductNameTV = (TextView) ViewBindings.findChildViewById(rootView, R.id.idproductNameTV);
            if (idproductNameTV != null) {
                id = R.id.idproductPriceTV;
                TextView idproductPriceTV = (TextView) ViewBindings.findChildViewById(rootView, R.id.idproductPriceTV);
                if (idproductPriceTV != null) {
                    id = R.id.idproductURLTV;
                    ImageView idproductURLTV = (ImageView) ViewBindings.findChildViewById(rootView, R.id.idproductURLTV);
                    if (idproductURLTV != null) {
                        CardView singleItemCardView = (CardView) rootView;
                        return new ProductRvItemBinding((CardView) rootView, idproductDescTV, idproductNameTV, idproductPriceTV, idproductURLTV, singleItemCardView);
                    }
                }
            }
        }
        String missingId = rootView.getResources().getResourceName(id);
        throw new NullPointerException("Missing required view with ID: ".concat(missingId));
    }
}
