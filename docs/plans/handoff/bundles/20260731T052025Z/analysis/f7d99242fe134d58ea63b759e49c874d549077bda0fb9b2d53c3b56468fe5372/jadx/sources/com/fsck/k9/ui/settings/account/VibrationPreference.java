package com.fsck.k9.ui.settings.account;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.app.ActionBar;
import androidx.core.content.res.CamUtils;
import androidx.preference.ListPreference;
import com.fsck.k9.R;
import com.takisoft.preferencex.PreferenceFragmentCompat;
import kotlin.Triple;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.thunderbird.feature.notification.VibratePattern;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class VibrationPreference extends ListPreference {
    public static final VibratePattern DEFAULT_VIBRATE_PATTERN = VibratePattern.Default;
    public boolean isVibrationEnabled;
    public VibratePattern vibratePattern;
    public int vibrationTimes;

    static {
        PreferenceFragmentCompat.registerPreferenceFragment(VibrationPreference.class, VibrationDialogFragment.class);
    }

    public /* synthetic */ VibrationPreference(Context context, AttributeSet attributeSet, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? CamUtils.getAttr(context, R.attr.preferenceStyle, android.R.attr.preferenceStyle) : i, (i3 & 8) != 0 ? 0 : i2);
    }

    @Override // androidx.preference.DialogPreference, androidx.preference.Preference
    public final void onClick() {
        androidx.preference.PreferenceFragmentCompat preferenceFragmentCompat = this.mPreferenceManager.mOnDisplayPreferenceDialogListener;
        if (preferenceFragmentCompat != null) {
            preferenceFragmentCompat.onDisplayPreferenceDialog(this);
        }
    }

    @Override // androidx.preference.ListPreference, androidx.preference.Preference
    public final void onSetInitialValue(Object obj) {
        String persistedString = getPersistedString((String) obj);
        persistedString.getClass();
        Triple decode = ActionBar.decode(persistedString);
        boolean booleanValue = ((Boolean) decode.first).booleanValue();
        VibratePattern vibratePattern = (VibratePattern) decode.second;
        int intValue = ((Number) decode.third).intValue();
        this.isVibrationEnabled = booleanValue;
        this.vibratePattern = vibratePattern;
        this.vibrationTimes = intValue;
        updateSummary();
    }

    public final void updateSummary() {
        CharSequence string;
        if (this.isVibrationEnabled) {
            CharSequence[] charSequenceArr = this.mEntryValues;
            charSequenceArr.getClass();
            string = this.mEntries[ArraysKt___ArraysKt.indexOf(charSequenceArr, String.valueOf(this.vibratePattern.serialize()))];
        } else {
            string = this.mContext.getString(R.string.account_settings_vibrate_summary_disabled);
        }
        setSummary(string);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public VibrationPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public VibrationPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0, 8, null);
        context.getClass();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VibrationPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        context.getClass();
        this.vibratePattern = DEFAULT_VIBRATE_PATTERN;
        this.vibrationTimes = 1;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public VibrationPreference(Context context) {
        this(context, null, 0, 0, 14, null);
        context.getClass();
    }
}
