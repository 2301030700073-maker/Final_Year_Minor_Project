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
public final class RegisterLayoutBinding implements ViewBinding {
    public final Button button;
    public final EditText registerPassword;
    public final EditText registerUsername;
    private final ConstraintLayout rootView;
    public final TextView textView;
    public final TextView textView12;
    public final TextView textView13;

    private RegisterLayoutBinding(ConstraintLayout rootView, Button button, EditText registerPassword, EditText registerUsername, TextView textView, TextView textView12, TextView textView13) {
        this.rootView = rootView;
        this.button = button;
        this.registerPassword = registerPassword;
        this.registerUsername = registerUsername;
        this.textView = textView;
        this.textView12 = textView12;
        this.textView13 = textView13;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static RegisterLayoutBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static RegisterLayoutBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View root = inflater.inflate(R.layout.register_layout, parent, false);
        if (attachToParent) {
            parent.addView(root);
        }
        return bind(root);
    }

    public static RegisterLayoutBinding bind(View rootView) {
        int id = R.id.button;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.button);
        if (button != null) {
            id = R.id.registerPassword;
            EditText registerPassword = (EditText) ViewBindings.findChildViewById(rootView, R.id.registerPassword);
            if (registerPassword != null) {
                id = R.id.registerUsername;
                EditText registerUsername = (EditText) ViewBindings.findChildViewById(rootView, R.id.registerUsername);
                if (registerUsername != null) {
                    id = R.id.textView;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView);
                    if (textView != null) {
                        id = R.id.textView12;
                        TextView textView12 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView12);
                        if (textView12 != null) {
                            id = R.id.textView13;
                            TextView textView13 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView13);
                            if (textView13 != null) {
                                return new RegisterLayoutBinding((ConstraintLayout) rootView, button, registerPassword, registerUsername, textView, textView12, textView13);
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
