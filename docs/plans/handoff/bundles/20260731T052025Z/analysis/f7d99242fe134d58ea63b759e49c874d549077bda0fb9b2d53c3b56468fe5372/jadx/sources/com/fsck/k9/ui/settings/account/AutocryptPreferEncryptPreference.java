package com.fsck.k9.ui.settings.account;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.core.content.res.CamUtils;
import androidx.preference.DialogPreference;
import com.fsck.k9.R;
import com.fsck.k9.ui.R$styleable;
import com.takisoft.preferencex.PreferenceFragmentCompat;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutocryptPreferEncryptPreference extends DialogPreference {
    public boolean isPreferEncryptEnabled;
    public final String summaryOff;
    public final String summaryOn;

    static {
        PreferenceFragmentCompat.registerPreferenceFragment(AutocryptPreferEncryptPreference.class, AutocryptPreferEncryptDialogFragment.class);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AutocryptPreferEncryptPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        context.getClass();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.AutocryptPreferEncryptPreference, i, i2);
        this.summaryOn = obtainStyledAttributes.getString(1);
        this.summaryOff = obtainStyledAttributes.getString(0);
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.DialogPreference, androidx.preference.Preference
    public final void onClick() {
        androidx.preference.PreferenceFragmentCompat preferenceFragmentCompat = this.mPreferenceManager.mOnDisplayPreferenceDialogListener;
        if (preferenceFragmentCompat != null) {
            preferenceFragmentCompat.onDisplayPreferenceDialog(this);
        }
    }

    @Override // androidx.preference.Preference
    public final void onSetInitialValue(Object obj) {
        Boolean bool = obj instanceof Boolean ? (Boolean) obj : null;
        boolean persistedBoolean = getPersistedBoolean(bool != null ? bool.booleanValue() : false);
        this.isPreferEncryptEnabled = persistedBoolean;
        setSummary(persistedBoolean ? this.summaryOn : this.summaryOff);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AutocryptPreferEncryptPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AutocryptPreferEncryptPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0, 8, null);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AutocryptPreferEncryptPreference(Context context) {
        this(context, null, 0, 0, 14, null);
        context.getClass();
    }

    public /* synthetic */ AutocryptPreferEncryptPreference(Context context, AttributeSet attributeSet, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? CamUtils.getAttr(context, R.attr.preferenceStyle, android.R.attr.preferenceStyle) : i, (i3 & 8) != 0 ? 0 : i2);
    }
}
