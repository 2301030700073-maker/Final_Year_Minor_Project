package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import androidx.core.content.res.CamUtils;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class DialogPreference extends Preference {
    public final Drawable mDialogIcon;
    public final int mDialogLayoutResId;
    public final String mDialogMessage;
    public final CharSequence mDialogTitle;
    public final String mNegativeButtonText;
    public final String mPositiveButtonText;

    public DialogPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.DialogPreference, i, i2);
        String string = obtainStyledAttributes.getString(9);
        string = string == null ? obtainStyledAttributes.getString(0) : string;
        this.mDialogTitle = string;
        if (string == null) {
            this.mDialogTitle = this.mTitle;
        }
        String string2 = obtainStyledAttributes.getString(8);
        this.mDialogMessage = string2 == null ? obtainStyledAttributes.getString(1) : string2;
        Drawable drawable = obtainStyledAttributes.getDrawable(6);
        this.mDialogIcon = drawable == null ? obtainStyledAttributes.getDrawable(2) : drawable;
        String string3 = obtainStyledAttributes.getString(11);
        this.mPositiveButtonText = string3 == null ? obtainStyledAttributes.getString(3) : string3;
        String string4 = obtainStyledAttributes.getString(10);
        this.mNegativeButtonText = string4 == null ? obtainStyledAttributes.getString(4) : string4;
        this.mDialogLayoutResId = obtainStyledAttributes.getResourceId(7, obtainStyledAttributes.getResourceId(5, 0));
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public void onClick() {
        DialogFragment multiSelectListPreferenceDialogFragmentCompat;
        PreferenceFragmentCompat preferenceFragmentCompat = (PreferenceFragmentCompat) this.mPreferenceManager.mOnDisplayPreferenceDialogListener;
        if (preferenceFragmentCompat != null) {
            for (Fragment fragment = preferenceFragmentCompat; fragment != null; fragment = fragment.getParentFragment()) {
            }
            preferenceFragmentCompat.getContext();
            preferenceFragmentCompat.getActivity();
            if (preferenceFragmentCompat.getParentFragmentManager().findFragmentByTag("androidx.preference.PreferenceFragment.DIALOG") != null) {
                return;
            }
            boolean z = this instanceof EditTextPreference;
            String str = this.mKey;
            if (z) {
                multiSelectListPreferenceDialogFragmentCompat = new EditTextPreferenceDialogFragmentCompat();
                Bundle bundle = new Bundle(1);
                bundle.putString("key", str);
                multiSelectListPreferenceDialogFragmentCompat.setArguments(bundle);
            } else if (this instanceof ListPreference) {
                multiSelectListPreferenceDialogFragmentCompat = new ListPreferenceDialogFragmentCompat();
                Bundle bundle2 = new Bundle(1);
                bundle2.putString("key", str);
                multiSelectListPreferenceDialogFragmentCompat.setArguments(bundle2);
            } else {
                if (!(this instanceof MultiSelectListPreference)) {
                    DecodeUtils$$ExternalSyntheticBUOutline0.m(getClass().getSimpleName(), ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference.", "Cannot display dialog for an unknown Preference type: ");
                    return;
                }
                multiSelectListPreferenceDialogFragmentCompat = new MultiSelectListPreferenceDialogFragmentCompat();
                Bundle bundle3 = new Bundle(1);
                bundle3.putString("key", str);
                multiSelectListPreferenceDialogFragmentCompat.setArguments(bundle3);
            }
            multiSelectListPreferenceDialogFragmentCompat.setTargetFragment(preferenceFragmentCompat, 0);
            multiSelectListPreferenceDialogFragmentCompat.show(preferenceFragmentCompat.getParentFragmentManager(), "androidx.preference.PreferenceFragment.DIALOG");
        }
    }

    public DialogPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, CamUtils.getAttr(context, R.attr.dialogPreferenceStyle, android.R.attr.dialogPreferenceStyle), 0);
    }
}
