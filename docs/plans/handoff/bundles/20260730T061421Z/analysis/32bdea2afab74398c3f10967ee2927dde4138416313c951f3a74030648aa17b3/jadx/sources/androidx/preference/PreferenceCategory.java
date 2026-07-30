package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import b.e.b.d;
import b.l.V;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class PreferenceCategory extends PreferenceGroup {
    public PreferenceCategory(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, d.g(context, R.attr.preferenceCategoryStyle, android.R.attr.preferenceCategoryStyle), 0);
    }

    @Override // androidx.preference.Preference
    public boolean isEnabled() {
        return false;
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(V v) {
        super.onBindViewHolder(v);
        v.itemView.setAccessibilityHeading(true);
    }

    @Override // androidx.preference.Preference
    public boolean shouldDisableDependents() {
        return !super.isEnabled();
    }
}
