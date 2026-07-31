package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import androidx.core.content.res.CamUtils;
import androidx.fragment.app.Fragment;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        if (this.mIntent != null || this.mFragment != null || this.mPreferences.size() == 0 || (preferenceFragmentCompat = (PreferenceFragmentCompat) this.mPreferenceManager.mOnNavigateToScreenListener) == null) {
            return;
        }
        for (Fragment fragment = preferenceFragmentCompat; fragment != null; fragment = fragment.getParentFragment()) {
        }
        preferenceFragmentCompat.getContext();
        preferenceFragmentCompat.getActivity();
    }
}
