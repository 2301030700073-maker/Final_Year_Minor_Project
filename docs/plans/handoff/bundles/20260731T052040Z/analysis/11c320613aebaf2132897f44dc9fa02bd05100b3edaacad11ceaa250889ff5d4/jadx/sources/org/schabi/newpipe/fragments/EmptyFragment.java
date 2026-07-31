package org.schabi.newpipe.fragments;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import org.schabi.newpipe.BaseFragment;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class EmptyFragment extends BaseFragment {
    public static final EmptyFragment newInstance(boolean z) {
        EmptyFragment emptyFragment = new EmptyFragment();
        Bundle bundle = new Bundle(1);
        bundle.putBoolean("SHOW_MESSAGE", z);
        emptyFragment.setArguments(bundle);
        return emptyFragment;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        boolean z = getArguments().getBoolean("SHOW_MESSAGE");
        View inflate = layoutInflater.inflate(R.layout.fragment_empty, viewGroup, false);
        inflate.findViewById(R.id.empty_state_view).setVisibility(z ? 0 : 8);
        return inflate;
    }
}
