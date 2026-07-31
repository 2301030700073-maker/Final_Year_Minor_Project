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
public final class LoginLayoutBinding implements ViewBinding {
    public final Button button;
    public final Button button2;
    public final EditText editTextTextPassword;
    public final EditText editTextTextPersonName;
    private final ConstraintLayout rootView;
    public final TextView textView;
    public final TextView textView2;
    public final TextView textView3;

    private LoginLayoutBinding(ConstraintLayout rootView, Button button, Button button2, EditText editTextTextPassword, EditText editTextTextPersonName, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = rootView;
        this.button = button;
        this.button2 = button2;
        this.editTextTextPassword = editTextTextPassword;
        this.editTextTextPersonName = editTextTextPersonName;
        this.textView = textView;
        this.textView2 = textView2;
        this.textView3 = textView3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LoginLayoutBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static LoginLayoutBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View root = inflater.inflate(R.layout.login_layout, parent, false);
        if (attachToParent) {
            parent.addView(root);
        }
        return bind(root);
    }

    public static LoginLayoutBinding bind(View rootView) {
        int id = R.id.button;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.button);
        if (button != null) {
            id = R.id.button2;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.button2);
            if (button2 != null) {
                id = R.id.editTextTextPassword;
                EditText editTextTextPassword = (EditText) ViewBindings.findChildViewById(rootView, R.id.editTextTextPassword);
                if (editTextTextPassword != null) {
                    id = R.id.editTextTextPersonName;
                    EditText editTextTextPersonName = (EditText) ViewBindings.findChildViewById(rootView, R.id.editTextTextPersonName);
                    if (editTextTextPersonName != null) {
                        id = R.id.textView;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView);
                        if (textView != null) {
                            id = R.id.textView2;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView2);
                            if (textView2 != null) {
                                id = R.id.textView3;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView3);
                                if (textView3 != null) {
                                    return new LoginLayoutBinding((ConstraintLayout) rootView, button, button2, editTextTextPassword, editTextTextPersonName, textView, textView2, textView3);
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
