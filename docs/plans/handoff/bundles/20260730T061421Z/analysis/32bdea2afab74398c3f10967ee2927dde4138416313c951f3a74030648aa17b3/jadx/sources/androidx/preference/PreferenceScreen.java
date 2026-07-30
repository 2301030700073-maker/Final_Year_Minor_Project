package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import b.e.b.d;
import b.l.P;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public final class PreferenceScreen extends PreferenceGroup {
    public boolean j;

    public PreferenceScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, d.g(context, R.attr.preferenceScreenStyle, android.R.attr.preferenceScreenStyle));
        this.j = true;
    }

    @Override // androidx.preference.PreferenceGroup
    public boolean j() {
        return false;
    }

    @Override // androidx.preference.Preference
    public void onClick() {
        P p;
        if (this.mIntent != null || this.mFragment != null || i() == 0 || (p = this.mPreferenceManager.k) == null) {
            return;
        }
        p.onNavigateToScreen(this);
    }
}
