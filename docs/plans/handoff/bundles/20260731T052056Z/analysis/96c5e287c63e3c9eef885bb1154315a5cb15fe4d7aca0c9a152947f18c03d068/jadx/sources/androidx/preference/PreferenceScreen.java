package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import androidx.core.content.res.CamUtils;
import androidx.fragment.app.Fragment;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PreferenceScreen extends PreferenceGroup {
    public final boolean mShouldUseGeneratedIds;

    public PreferenceScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, CamUtils.getAttr(context, R.attr.preferenceScreenStyle, android.R.attr.preferenceScreenStyle), 0);
        this.mShouldUseGeneratedIds = true;
    }

    @Override // androidx.preference.Preference
    public final void onClick() {
        Fragment fragment;
        if (this.mIntent != null || this.mFragment != null || this.mPreferences.size() == 0 || (fragment = (PreferenceFragmentCompat) this.mPreferenceManager.mOnNavigateToScreenListener) == null) {
            return;
        }
        for (fragment = (PreferenceFragmentCompat) this.mPreferenceManager.mOnNavigateToScreenListener; fragment != null; fragment = fragment.mParentFragment) {
        }
    }
}
