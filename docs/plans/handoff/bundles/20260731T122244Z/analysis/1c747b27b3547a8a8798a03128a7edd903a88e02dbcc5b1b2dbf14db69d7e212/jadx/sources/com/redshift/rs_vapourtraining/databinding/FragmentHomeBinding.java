package com.redshift.rs_vapourtraining.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.redshift.rs_vapourtraining.R;

/* loaded from: classes4.dex */
public final class FragmentHomeBinding implements ViewBinding {
    public final TextView creditsAmount;
    public final TextView games;
    public final TextView gamesAmount;
    public final RecyclerView idRVProductsOwned;
    public final ImageView imageView;
    public final ImageView imageView2;
    public final MaterialCardView materialCardView;
    public final MaterialCardView materialCardView2;
    public final TextView paymentDesc;
    public final ConstraintLayout relativeLayout;
    private final LinearLayout rootView;
    public final TextView textView9;
    public final TextView title2Home;

    private FragmentHomeBinding(LinearLayout rootView, TextView creditsAmount, TextView games, TextView gamesAmount, RecyclerView idRVProductsOwned, ImageView imageView, ImageView imageView2, MaterialCardView materialCardView, MaterialCardView materialCardView2, TextView paymentDesc, ConstraintLayout relativeLayout, TextView textView9, TextView title2Home) {
        this.rootView = rootView;
        this.creditsAmount = creditsAmount;
        this.games = games;
        this.gamesAmount = gamesAmount;
        this.idRVProductsOwned = idRVProductsOwned;
        this.imageView = imageView;
        this.imageView2 = imageView2;
        this.materialCardView = materialCardView;
        this.materialCardView2 = materialCardView2;
        this.paymentDesc = paymentDesc;
        this.relativeLayout = relativeLayout;
        this.textView9 = textView9;
        this.title2Home = title2Home;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentHomeBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentHomeBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View root = inflater.inflate(R.layout.fragment_home, parent, false);
        if (attachToParent) {
            parent.addView(root);
        }
        return bind(root);
    }

    public static FragmentHomeBinding bind(View rootView) {
        int id = R.id.credits_amount;
        TextView creditsAmount = (TextView) ViewBindings.findChildViewById(rootView, R.id.credits_amount);
        if (creditsAmount != null) {
            id = R.id.games;
            TextView games = (TextView) ViewBindings.findChildViewById(rootView, R.id.games);
            if (games != null) {
                id = R.id.games_amount;
                TextView gamesAmount = (TextView) ViewBindings.findChildViewById(rootView, R.id.games_amount);
                if (gamesAmount != null) {
                    id = R.id.idRVProductsOwned;
                    RecyclerView idRVProductsOwned = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.idRVProductsOwned);
                    if (idRVProductsOwned != null) {
                        id = R.id.imageView;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView);
                        if (imageView != null) {
                            id = R.id.imageView2;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView2);
                            if (imageView2 != null) {
                                id = R.id.materialCardView;
                                MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(rootView, R.id.materialCardView);
                                if (materialCardView != null) {
                                    id = R.id.materialCardView2;
                                    MaterialCardView materialCardView2 = (MaterialCardView) ViewBindings.findChildViewById(rootView, R.id.materialCardView2);
                                    if (materialCardView2 != null) {
                                        id = R.id.payment_desc;
                                        TextView paymentDesc = (TextView) ViewBindings.findChildViewById(rootView, R.id.payment_desc);
                                        if (paymentDesc != null) {
                                            id = R.id.relativeLayout;
                                            ConstraintLayout relativeLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.relativeLayout);
                                            if (relativeLayout != null) {
                                                id = R.id.textView9;
                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView9);
                                                if (textView9 != null) {
                                                    id = R.id.title2Home;
                                                    TextView title2Home = (TextView) ViewBindings.findChildViewById(rootView, R.id.title2Home);
                                                    if (title2Home != null) {
                                                        return new FragmentHomeBinding((LinearLayout) rootView, creditsAmount, games, gamesAmount, idRVProductsOwned, imageView, imageView2, materialCardView, materialCardView2, paymentDesc, relativeLayout, textView9, title2Home);
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
