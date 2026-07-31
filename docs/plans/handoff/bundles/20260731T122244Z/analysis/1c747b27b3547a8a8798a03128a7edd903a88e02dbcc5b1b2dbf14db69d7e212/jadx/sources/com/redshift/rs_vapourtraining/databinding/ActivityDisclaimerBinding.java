package com.redshift.rs_vapourtraining.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.redshift.rs_vapourtraining.R;

/* loaded from: classes4.dex */
public final class ActivityDisclaimerBinding implements ViewBinding {
    public final TextView BigTitle;
    public final Button LandLogin;
    public final Button contest;
    public final EditText ipAddress;
    private final ConstraintLayout rootView;
    public final TextView slogan;
    public final TextView slogan2;
    public final TextView textView4;
    public final TextView textView5;
    public final TextView textView6;

    private ActivityDisclaimerBinding(ConstraintLayout rootView, TextView BigTitle, Button LandLogin, Button contest, EditText ipAddress, TextView slogan, TextView slogan2, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = rootView;
        this.BigTitle = BigTitle;
        this.LandLogin = LandLogin;
        this.contest = contest;
        this.ipAddress = ipAddress;
        this.slogan = slogan;
        this.slogan2 = slogan2;
        this.textView4 = textView4;
        this.textView5 = textView5;
        this.textView6 = textView6;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ActivityDisclaimerBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ActivityDisclaimerBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View root = inflater.inflate(R.layout.activity_disclaimer, parent, false);
        if (attachToParent) {
            parent.addView(root);
        }
        return bind(root);
    }

    public static ActivityDisclaimerBinding bind(View rootView) {
        int id = R.id.BigTitle;
        TextView BigTitle = (TextView) ViewBindings.findChildViewById(rootView, R.id.BigTitle);
        if (BigTitle != null) {
            id = R.id.LandLogin;
            Button LandLogin = (Button) ViewBindings.findChildViewById(rootView, R.id.LandLogin);
            if (LandLogin != null) {
                id = R.id.contest;
                Button contest = (Button) ViewBindings.findChildViewById(rootView, R.id.contest);
                if (contest != null) {
                    id = R.id.ipAddress;
                    EditText ipAddress = (EditText) ViewBindings.findChildViewById(rootView, R.id.ipAddress);
                    if (ipAddress != null) {
                        id = R.id.slogan;
                        TextView slogan = (TextView) ViewBindings.findChildViewById(rootView, R.id.slogan);
                        if (slogan != null) {
                            id = R.id.slogan2;
                            TextView slogan2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.slogan2);
                            if (slogan2 != null) {
                                id = R.id.textView4;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView4);
                                if (textView4 != null) {
                                    id = R.id.textView5;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView5);
                                    if (textView5 != null) {
                                        id = R.id.textView6;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView6);
                                        if (textView6 != null) {
                                            return new ActivityDisclaimerBinding((ConstraintLayout) rootView, BigTitle, LandLogin, contest, ipAddress, slogan, slogan2, textView4, textView5, textView6);
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
