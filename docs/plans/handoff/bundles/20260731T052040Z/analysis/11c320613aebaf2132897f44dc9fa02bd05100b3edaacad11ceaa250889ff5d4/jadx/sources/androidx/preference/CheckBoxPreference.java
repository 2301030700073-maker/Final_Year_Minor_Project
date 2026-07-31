package androidx.preference;

import android.R;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.preference.SwitchPreference;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class CheckBoxPreference extends TwoStatePreference {
    public final SwitchPreference.Listener mListener;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public CheckBoxPreference(android.content.Context r5, android.util.AttributeSet r6) {
        /*
            r4 = this;
            r0 = 2130968771(0x7f0400c3, float:1.7546205E38)
            r1 = 16842895(0x101008f, float:2.369396E-38)
            int r0 = androidx.core.content.res.CamUtils.getAttr(r5, r0, r1)
            r1 = 0
            r4.<init>(r5, r6, r0, r1)
            androidx.preference.SwitchPreference$Listener r2 = new androidx.preference.SwitchPreference$Listener
            r3 = 1
            r2.<init>(r4, r3)
            r4.mListener = r2
            int[] r2 = androidx.preference.R$styleable.CheckBoxPreference
            android.content.res.TypedArray r5 = r5.obtainStyledAttributes(r6, r2, r0, r1)
            r6 = 5
            java.lang.String r6 = r5.getString(r6)
            if (r6 != 0) goto L27
            java.lang.String r6 = r5.getString(r1)
        L27:
            r4.mSummaryOn = r6
            boolean r6 = r4.mChecked
            if (r6 == 0) goto L30
            r4.notifyChanged()
        L30:
            r6 = 4
            java.lang.String r6 = r5.getString(r6)
            if (r6 != 0) goto L3b
            java.lang.String r6 = r5.getString(r3)
        L3b:
            r4.mSummaryOff = r6
            boolean r6 = r4.mChecked
            if (r6 != 0) goto L44
            r4.notifyChanged()
        L44:
            r6 = 2
            boolean r6 = r5.getBoolean(r6, r1)
            r0 = 3
            boolean r6 = r5.getBoolean(r0, r6)
            r4.mDisableDependentsState = r6
            r5.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.CheckBoxPreference.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    @Override // androidx.preference.Preference
    public final void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        super.onBindViewHolder(preferenceViewHolder);
        syncCheckboxView(preferenceViewHolder.findViewById(R.id.checkbox));
        syncSummaryView(preferenceViewHolder.findViewById(R.id.summary));
    }

    @Override // androidx.preference.Preference
    public final void performClick(View view) {
        super.performClick(view);
        if (((AccessibilityManager) this.mContext.getSystemService("accessibility")).isEnabled()) {
            syncCheckboxView(view.findViewById(R.id.checkbox));
            syncSummaryView(view.findViewById(R.id.summary));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void syncCheckboxView(View view) {
        boolean z = view instanceof CompoundButton;
        if (z) {
            ((CompoundButton) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.mChecked);
        }
        if (z) {
            ((CompoundButton) view).setOnCheckedChangeListener(this.mListener);
        }
    }
}
