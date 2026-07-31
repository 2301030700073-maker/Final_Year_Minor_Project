package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import androidx.core.content.res.CamUtils;
import androidx.fragment.app.Fragment;
import androidx.preference.PreferenceFragmentCompat;
import com.fsck.k9.R;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PreferenceScreen extends PreferenceGroup {
    public final boolean mShouldUseGeneratedIds;

    public PreferenceScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, CamUtils.getAttr(context, R.attr.preferenceScreenStyle, android.R.attr.preferenceScreenStyle), 0);
        this.mShouldUseGeneratedIds = true;
    }

    @Override // androidx.preference.Preference
    public final void onClick() {
        PreferenceFragmentCompat preferenceFragmentCompat;
        if (this.mIntent != null || this.mFragment != null || this.mPreferences.size() == 0 || (preferenceFragmentCompat = this.mPreferenceManager.mOnNavigateToScreenListener) == null) {
            return;
        }
        boolean z = false;
        for (Fragment fragment = preferenceFragmentCompat; !z && fragment != null; fragment = fragment.mParentFragment) {
            if (fragment instanceof PreferenceFragmentCompat.OnPreferenceStartScreenCallback) {
                ((PreferenceFragmentCompat.OnPreferenceStartScreenCallback) fragment).onPreferenceStartScreen(preferenceFragmentCompat, this);
                z = true;
            }
        }
        if (!z && (preferenceFragmentCompat.getContext() instanceof PreferenceFragmentCompat.OnPreferenceStartScreenCallback)) {
            ((PreferenceFragmentCompat.OnPreferenceStartScreenCallback) preferenceFragmentCompat.getContext()).onPreferenceStartScreen(preferenceFragmentCompat, this);
            z = true;
        }
        if (z || !(preferenceFragmentCompat.getActivity() instanceof PreferenceFragmentCompat.OnPreferenceStartScreenCallback)) {
            return;
        }
        ((PreferenceFragmentCompat.OnPreferenceStartScreenCallback) preferenceFragmentCompat.getActivity()).onPreferenceStartScreen(preferenceFragmentCompat, this);
    }
}
