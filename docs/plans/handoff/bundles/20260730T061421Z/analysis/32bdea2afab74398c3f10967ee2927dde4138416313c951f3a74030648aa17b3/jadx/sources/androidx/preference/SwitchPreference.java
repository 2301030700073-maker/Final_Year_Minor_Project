package androidx.preference;

import android.R;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.Switch;
import b.l.V;
import b.l.b0;

/* loaded from: classes.dex */
public class SwitchPreference extends TwoStatePreference {
    public final b0 mListener;
    public CharSequence mSwitchOff;
    public CharSequence mSwitchOn;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SwitchPreference(android.content.Context r4, android.util.AttributeSet r5) {
        /*
            r3 = this;
            r0 = 2130968946(0x7f040172, float:1.754656E38)
            r1 = 16843629(0x101036d, float:2.3696016E-38)
            int r0 = b.e.b.d.g(r4, r0, r1)
            r1 = 0
            r3.<init>(r4, r5, r0, r1)
            b.l.b0 r2 = new b.l.b0
            r2.<init>(r3)
            r3.mListener = r2
            int[] r2 = b.l.X.m
            android.content.res.TypedArray r4 = r4.obtainStyledAttributes(r5, r2, r0, r1)
            r5 = 7
            java.lang.String r5 = b.e.b.d.m(r4, r5, r1)
            r3.setSummaryOn(r5)
            r5 = 6
            java.lang.String r5 = r4.getString(r5)
            if (r5 != 0) goto L2f
            r5 = 1
            java.lang.String r5 = r4.getString(r5)
        L2f:
            r3.setSummaryOff(r5)
            r5 = 9
            r0 = 3
            java.lang.String r5 = r4.getString(r5)
            if (r5 != 0) goto L3f
            java.lang.String r5 = r4.getString(r0)
        L3f:
            r3.mSwitchOn = r5
            r3.notifyChanged()
            r5 = 8
            r0 = 4
            java.lang.String r5 = r4.getString(r5)
            if (r5 != 0) goto L51
            java.lang.String r5 = r4.getString(r0)
        L51:
            r3.mSwitchOff = r5
            r3.notifyChanged()
            r5 = 5
            r0 = 2
            boolean r0 = r4.getBoolean(r0, r1)
            boolean r5 = r4.getBoolean(r5, r0)
            r3.mDisableDependentsState = r5
            r4.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.SwitchPreference.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(V v) {
        super.onBindViewHolder(v);
        syncSwitchView(v.a(R.id.switch_widget));
        syncSummaryView(v);
    }

    @Override // androidx.preference.Preference
    public void performClick(View view) {
        super.performClick(view);
        if (((AccessibilityManager) this.mContext.getSystemService("accessibility")).isEnabled()) {
            syncSwitchView(view.findViewById(R.id.switch_widget));
            syncSummaryView(view.findViewById(R.id.summary));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void syncSwitchView(View view) {
        boolean z = view instanceof Switch;
        if (z) {
            ((Switch) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.mChecked);
        }
        if (z) {
            Switch r4 = (Switch) view;
            r4.setTextOn(this.mSwitchOn);
            r4.setTextOff(this.mSwitchOff);
            r4.setOnCheckedChangeListener(this.mListener);
        }
    }
}
