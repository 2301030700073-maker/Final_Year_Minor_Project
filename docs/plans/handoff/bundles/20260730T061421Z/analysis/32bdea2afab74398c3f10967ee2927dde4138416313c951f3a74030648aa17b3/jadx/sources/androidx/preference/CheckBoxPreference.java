package androidx.preference;

import android.R;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import b.l.C0140a;
import b.l.V;

/* loaded from: classes.dex */
public class CheckBoxPreference extends TwoStatePreference {

    /* renamed from: a, reason: collision with root package name */
    public final C0140a f142a;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public CheckBoxPreference(android.content.Context r4, android.util.AttributeSet r5) {
        /*
            r3 = this;
            r0 = 2130968663(0x7f040057, float:1.7545986E38)
            r1 = 16842895(0x101008f, float:2.369396E-38)
            int r0 = b.e.b.d.g(r4, r0, r1)
            r1 = 0
            r3.<init>(r4, r5, r0, r1)
            b.l.a r2 = new b.l.a
            r2.<init>(r3)
            r3.f142a = r2
            int[] r2 = b.l.X.f1050b
            android.content.res.TypedArray r4 = r4.obtainStyledAttributes(r5, r2, r0, r1)
            r5 = 5
            java.lang.String r5 = b.e.b.d.m(r4, r5, r1)
            r3.setSummaryOn(r5)
            r5 = 4
            java.lang.String r5 = r4.getString(r5)
            if (r5 != 0) goto L2f
            r5 = 1
            java.lang.String r5 = r4.getString(r5)
        L2f:
            r3.setSummaryOff(r5)
            r5 = 3
            r0 = 2
            boolean r0 = r4.getBoolean(r0, r1)
            boolean r5 = r4.getBoolean(r5, r0)
            r3.mDisableDependentsState = r5
            r4.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.CheckBoxPreference.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void e(View view) {
        boolean z = view instanceof CompoundButton;
        if (z) {
            ((CompoundButton) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.mChecked);
        }
        if (z) {
            ((CompoundButton) view).setOnCheckedChangeListener(this.f142a);
        }
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(V v) {
        super.onBindViewHolder(v);
        e(v.a(R.id.checkbox));
        syncSummaryView(v);
    }

    @Override // androidx.preference.Preference
    public void performClick(View view) {
        super.performClick(view);
        if (((AccessibilityManager) this.mContext.getSystemService("accessibility")).isEnabled()) {
            e(view.findViewById(R.id.checkbox));
            syncSummaryView(view.findViewById(R.id.summary));
        }
    }
}
