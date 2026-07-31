package com.redshift.rs_vapourtraining.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.redshift.rs_vapourtraining.R;

/* loaded from: classes4.dex */
public final class ActivityAddCardBinding implements ViewBinding {
    public final EditText addCardCvv;
    public final EditText addCardName;
    public final EditText addCardNumber;
    public final Button button;
    public final TextView cardTitle;
    public final EditText expMonth;
    public final EditText expYear;
    public final ImageView imageView3;
    private final ConstraintLayout rootView;
    public final TextView slogan3;
    public final TextView slogan4;
    public final TextView slogan5;
    public final TextView slogan6;
    public final TextView textView7;
    public final TextView textView8;

    private ActivityAddCardBinding(ConstraintLayout rootView, EditText addCardCvv, EditText addCardName, EditText addCardNumber, Button button, TextView cardTitle, EditText expMonth, EditText expYear, ImageView imageView3, TextView slogan3, TextView slogan4, TextView slogan5, TextView slogan6, TextView textView7, TextView textView8) {
        this.rootView = rootView;
        this.addCardCvv = addCardCvv;
        this.addCardName = addCardName;
        this.addCardNumber = addCardNumber;
        this.button = button;
        this.cardTitle = cardTitle;
        this.expMonth = expMonth;
        this.expYear = expYear;
        this.imageView3 = imageView3;
        this.slogan3 = slogan3;
        this.slogan4 = slogan4;
        this.slogan5 = slogan5;
        this.slogan6 = slogan6;
        this.textView7 = textView7;
        this.textView8 = textView8;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ActivityAddCardBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ActivityAddCardBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View root = inflater.inflate(R.layout.activity_add_card, parent, false);
        if (attachToParent) {
            parent.addView(root);
        }
        return bind(root);
    }

    public static ActivityAddCardBinding bind(View rootView) {
        int id = R.id.add_card_cvv;
        EditText addCardCvv = (EditText) ViewBindings.findChildViewById(rootView, R.id.add_card_cvv);
        if (addCardCvv != null) {
            id = R.id.add_card_name;
            EditText addCardName = (EditText) ViewBindings.findChildViewById(rootView, R.id.add_card_name);
            if (addCardName != null) {
                id = R.id.add_card_number;
                EditText addCardNumber = (EditText) ViewBindings.findChildViewById(rootView, R.id.add_card_number);
                if (addCardNumber != null) {
                    id = R.id.button;
                    Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.button);
                    if (button != null) {
                        id = R.id.cardTitle;
                        TextView cardTitle = (TextView) ViewBindings.findChildViewById(rootView, R.id.cardTitle);
                        if (cardTitle != null) {
                            id = R.id.exp_month;
                            EditText expMonth = (EditText) ViewBindings.findChildViewById(rootView, R.id.exp_month);
                            if (expMonth != null) {
                                id = R.id.exp_year;
                                EditText expYear = (EditText) ViewBindings.findChildViewById(rootView, R.id.exp_year);
                                if (expYear != null) {
                                    id = R.id.imageView3;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView3);
                                    if (imageView3 != null) {
                                        id = R.id.slogan3;
                                        TextView slogan3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.slogan3);
                                        if (slogan3 != null) {
                                            id = R.id.slogan4;
                                            TextView slogan4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.slogan4);
                                            if (slogan4 != null) {
                                                id = R.id.slogan5;
                                                TextView slogan5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.slogan5);
                                                if (slogan5 != null) {
                                                    id = R.id.slogan6;
                                                    TextView slogan6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.slogan6);
                                                    if (slogan6 != null) {
                                                        id = R.id.textView7;
                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView7);
                                                        if (textView7 != null) {
                                                            id = R.id.textView8;
                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView8);
                                                            if (textView8 != null) {
                                                                return new ActivityAddCardBinding((ConstraintLayout) rootView, addCardCvv, addCardName, addCardNumber, button, cardTitle, expMonth, expYear, imageView3, slogan3, slogan4, slogan5, slogan6, textView7, textView8);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        String missingId = rootView.getResources().getResourceName(id);
        throw new NullPointerException("Missing required view with ID: ".concat(missingId));
    }
}
