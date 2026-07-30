package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import androidx.appcompat.widget.SwitchCompat;
import b.e.b.d;
import b.l.V;
import b.l.X;
import b.l.c0;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class SwitchPreferenceCompat extends TwoStatePreference {

    /* renamed from: a, reason: collision with root package name */
    public final c0 f174a;

    /* renamed from: b, reason: collision with root package name */
    public CharSequence f175b;

    /* renamed from: c, reason: collision with root package name */
    public CharSequence f176c;

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.switchPreferenceCompatStyle, 0);
        this.f174a = new c0(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, X.n, R.attr.switchPreferenceCompatStyle, 0);
        setSummaryOn(d.m(obtainStyledAttributes, 7, 0));
        String string = obtainStyledAttributes.getString(6);
        setSummaryOff(string == null ? obtainStyledAttributes.getString(1) : string);
        String string2 = obtainStyledAttributes.getString(9);
        this.f175b = string2 == null ? obtainStyledAttributes.getString(3) : string2;
        notifyChanged();
        String string3 = obtainStyledAttributes.getString(8);
        this.f176c = string3 == null ? obtainStyledAttributes.getString(4) : string3;
        notifyChanged();
        this.mDisableDependentsState = obtainStyledAttributes.getBoolean(5, obtainStyledAttributes.getBoolean(2, false));
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(V v) {
        super.onBindViewHolder(v);
        syncSwitchView(v.a(R.id.switchWidget));
        syncSummaryView(v);
    }

    @Override // androidx.preference.Preference
    public void performClick(View view) {
        super.performClick(view);
        if (((AccessibilityManager) this.mContext.getSystemService("accessibility")).isEnabled()) {
            syncSwitchView(view.findViewById(R.id.switchWidget));
            syncSummaryView(view.findViewById(android.R.id.summary));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void syncSwitchView(View view) {
        boolean z = view instanceof SwitchCompat;
        if (z) {
            ((SwitchCompat) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.mChecked);
        }
        if (z) {
            SwitchCompat switchCompat = (SwitchCompat) view;
            switchCompat.o = this.f175b;
            switchCompat.requestLayout();
            switchCompat.p = this.f176c;
            switchCompat.requestLayout();
            switchCompat.setOnCheckedChangeListener(this.f174a);
        }
    }
}
