package org.schabi.newpipe.settings;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceManager;
import androidx.preference.PreferenceScreen;
import androidx.recyclerview.widget.RecyclerView;
import j$.util.Objects;
import okio.Options;
import org.schabi.newpipe.MainActivity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class BasePreferenceFragment extends PreferenceFragmentCompat {
    public final String TAG = getClass().getSimpleName() + "@" + Integer.toHexString(hashCode());
    public SharedPreferences defaultPreferences;

    static {
        int i = MainActivity.$r8$clinit;
    }

    public final void addPreferencesFromResourceRegistry() {
        addPreferencesFromResource(SettingsResourceRegistry.INSTANCE.getPreferencesResId(getClass()));
    }

    @Override // androidx.preference.PreferenceFragmentCompat, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        this.defaultPreferences = PreferenceManager.getDefaultSharedPreferences(requireActivity());
        super.onCreate(bundle);
    }

    @Override // androidx.preference.PreferenceFragmentCompat
    public void onCreatePreferences() {
        addPreferencesFromResourceRegistry();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        Options.Companion.setTitleToAppCompatActivity(getActivity(), ((PreferenceScreen) this.mPreferenceManager.mPreferenceScreen).mTitle);
    }

    @Override // androidx.preference.PreferenceFragmentCompat, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        PreferenceFragmentCompat.DividerDecoration dividerDecoration = this.mDividerDecoration;
        dividerDecoration.mDividerHeight = 0;
        dividerDecoration.mDivider = null;
        RecyclerView recyclerView = PreferenceFragmentCompat.this.mList;
        if (recyclerView.mItemDecorations.size() != 0) {
            RecyclerView.LayoutManager layoutManager = recyclerView.mLayout;
            if (layoutManager != null) {
                layoutManager.assertNotInLayoutOrScroll("Cannot invalidate item decorations during a scroll or layout");
            }
            recyclerView.markItemDecorInsetsDirty();
            recyclerView.requestLayout();
        }
        Options.Companion.setTitleToAppCompatActivity(getActivity(), ((PreferenceScreen) this.mPreferenceManager.mPreferenceScreen).mTitle);
    }

    public final Preference requirePreference(int i) {
        Preference findPreference = findPreference(getString(i));
        Objects.requireNonNull(findPreference);
        return findPreference;
    }
}
