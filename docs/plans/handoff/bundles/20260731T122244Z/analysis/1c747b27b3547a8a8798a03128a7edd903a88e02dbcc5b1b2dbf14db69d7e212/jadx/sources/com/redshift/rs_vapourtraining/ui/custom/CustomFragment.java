package com.redshift.rs_vapourtraining.ui.custom;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.redshift.rs_vapourtraining.R;

/* loaded from: classes6.dex */
public class CustomFragment extends Fragment {
    TextView cText;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View root = inflater.inflate(R.layout.fragment_custom, container, false);
        TextView textView = (TextView) root.findViewById(R.id.text_custom);
        this.cText = textView;
        textView.setText("Custom Fragment");
        return root;
    }
}
