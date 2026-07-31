package com.fsck.k9.ui.messageview;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import com.fsck.k9.R;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PlaceholderFragment extends Fragment {
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        layoutInflater.getClass();
        return layoutInflater.inflate(R.layout.empty_message_view, viewGroup, false);
    }
}
