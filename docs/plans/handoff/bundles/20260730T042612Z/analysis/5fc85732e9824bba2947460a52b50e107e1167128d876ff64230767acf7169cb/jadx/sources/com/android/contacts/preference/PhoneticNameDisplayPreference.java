package com.android.contacts.preference;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.preference.ListPreference;
import android.util.AttributeSet;
import com.android.contacts.R;

/* loaded from: classes.dex */
public final class PhoneticNameDisplayPreference extends ListPreference {
    private Context mContext;
    private ContactsPreferences mPreferences;

    @Override // android.preference.Preference
    protected boolean shouldPersist() {
        return false;
    }

    public PhoneticNameDisplayPreference(Context context) {
        super(context);
        prepare();
    }

    public PhoneticNameDisplayPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        prepare();
    }

    private void prepare() {
        Context context = getContext();
        this.mContext = context;
        this.mPreferences = new ContactsPreferences(context);
        setEntries(new String[]{this.mContext.getString(R.string.editor_options_always_show_phonetic_names), this.mContext.getString(R.string.editor_options_hide_phonetic_names_if_empty)});
        setEntryValues(new String[]{String.valueOf(0), String.valueOf(1)});
        setValue(String.valueOf(this.mPreferences.getPhoneticNameDisplayPreference()));
    }

    @Override // android.preference.ListPreference, android.preference.Preference
    public CharSequence getSummary() {
        int phoneticNameDisplayPreference = this.mPreferences.getPhoneticNameDisplayPreference();
        if (phoneticNameDisplayPreference == 0) {
            return this.mContext.getString(R.string.editor_options_always_show_phonetic_names);
        }
        if (phoneticNameDisplayPreference != 1) {
            return null;
        }
        return this.mContext.getString(R.string.editor_options_hide_phonetic_names_if_empty);
    }

    @Override // android.preference.Preference
    protected boolean persistString(String str) {
        int parseInt = Integer.parseInt(str);
        if (parseInt == this.mPreferences.getPhoneticNameDisplayPreference()) {
            return true;
        }
        this.mPreferences.setPhoneticNameDisplayPreference(parseInt);
        notifyChanged();
        return true;
    }

    @Override // android.preference.ListPreference, android.preference.DialogPreference
    protected void onPrepareDialogBuilder(AlertDialog.Builder builder) {
        super.onPrepareDialogBuilder(builder);
        builder.setNegativeButton((CharSequence) null, (DialogInterface.OnClickListener) null);
    }
}
