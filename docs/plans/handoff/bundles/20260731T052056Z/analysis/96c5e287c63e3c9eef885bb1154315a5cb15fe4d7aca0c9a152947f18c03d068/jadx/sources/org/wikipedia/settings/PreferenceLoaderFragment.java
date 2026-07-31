package org.wikipedia.settings;

import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.preference.PreferenceFragmentCompat;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lorg/wikipedia/settings/PreferenceLoaderFragment;", "Landroidx/preference/PreferenceFragmentCompat;", "Lorg/wikipedia/settings/PreferenceLoader;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class PreferenceLoaderFragment extends PreferenceFragmentCompat implements PreferenceLoader {
    @Override // androidx.preference.PreferenceFragmentCompat
    public final void onCreatePreferences() {
        loadPreferences();
    }

    @Override // androidx.preference.PreferenceFragmentCompat
    public final RecyclerView onCreateRecyclerView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RecyclerView onCreateRecyclerView = super.onCreateRecyclerView(layoutInflater, viewGroup, bundle);
        Context requireContext = requireContext();
        TypedValue typedValue = new TypedValue();
        if (!requireContext.getTheme().resolveAttribute(R.attr.paper_color, typedValue, true)) {
            typedValue = null;
        }
        if (typedValue != null) {
            onCreateRecyclerView.setBackgroundColor(typedValue.data);
            return onCreateRecyclerView;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969831");
        return null;
    }
}
