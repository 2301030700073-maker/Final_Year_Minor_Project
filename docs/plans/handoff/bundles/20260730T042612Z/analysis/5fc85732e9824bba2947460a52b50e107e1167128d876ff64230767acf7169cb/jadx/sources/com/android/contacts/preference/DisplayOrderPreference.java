package com.android.contacts.preference;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.preference.ListPreference;
import android.util.AttributeSet;
import com.android.contacts.R;

/* loaded from: classes.dex */
public final class DisplayOrderPreference extends ListPreference {
    private Context mContext;
    private ContactsPreferences mPreferences;

    @Override // android.preference.Preference
    protected boolean shouldPersist() {
        return false;
    }

    public DisplayOrderPreference(Context context) {
        super(context);
        prepare();
    }

    public DisplayOrderPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        prepare();
    }

    private void prepare() {
        Context context = getContext();
        this.mContext = context;
        this.mPreferences = new ContactsPreferences(context);
        setEntries(new String[]{this.mContext.getString(R.string.display_options_view_given_name_first), this.mContext.getString(R.string.display_options_view_family_name_first)});
        setEntryValues(new String[]{String.valueOf(1), String.valueOf(2)});
        setValue(String.valueOf(this.mPreferences.getDisplayOrder()));
    }

    @Override // android.preference.ListPreference, android.preference.Preference
    public CharSequence getSummary() {
        int displayOrder = this.mPreferences.getDisplayOrder();
        if (displayOrder == 1) {
            return this.mContext.getString(R.string.display_options_view_given_name_first);
        }
        if (displayOrder != 2) {
            return null;
        }
        return this.mContext.getString(R.string.display_options_view_family_name_first);
    }

    @Override // android.preference.Preference
    protected boolean persistString(String str) {
        int parseInt = Integer.parseInt(str);
        if (parseInt == this.mPreferences.getDisplayOrder()) {
            return true;
        }
        this.mPreferences.setDisplayOrder(parseInt);
        notifyChanged();
        return true;
    }

    @Override // android.preference.ListPreference, android.preference.DialogPreference
    protected void onPrepareDialogBuilder(AlertDialog.Builder builder) {
        super.onPrepareDialogBuilder(builder);
        builder.setNegativeButton((CharSequence) null, (DialogInterface.OnClickListener) null);
    }
}
