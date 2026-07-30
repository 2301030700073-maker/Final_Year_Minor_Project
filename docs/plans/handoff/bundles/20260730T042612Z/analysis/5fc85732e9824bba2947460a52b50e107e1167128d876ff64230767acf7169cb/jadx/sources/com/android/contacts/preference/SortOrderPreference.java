package com.android.contacts.preference;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.preference.ListPreference;
import android.util.AttributeSet;
import com.android.contacts.R;

/* loaded from: classes.dex */
public final class SortOrderPreference extends ListPreference {
    private Context mContext;
    private ContactsPreferences mPreferences;

    @Override // android.preference.Preference
    protected boolean shouldPersist() {
        return false;
    }

    public SortOrderPreference(Context context) {
        super(context);
        prepare();
    }

    public SortOrderPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        prepare();
    }

    private void prepare() {
        Context context = getContext();
        this.mContext = context;
        this.mPreferences = new ContactsPreferences(context);
        setEntries(new String[]{this.mContext.getString(R.string.display_options_sort_by_given_name), this.mContext.getString(R.string.display_options_sort_by_family_name)});
        setEntryValues(new String[]{String.valueOf(1), String.valueOf(2)});
        setValue(String.valueOf(this.mPreferences.getSortOrder()));
    }

    @Override // android.preference.ListPreference, android.preference.Preference
    public CharSequence getSummary() {
        int sortOrder = this.mPreferences.getSortOrder();
        if (sortOrder == 1) {
            return this.mContext.getString(R.string.display_options_sort_by_given_name);
        }
        if (sortOrder != 2) {
            return null;
        }
        return this.mContext.getString(R.string.display_options_sort_by_family_name);
    }

    @Override // android.preference.Preference
    protected boolean persistString(String str) {
        int parseInt = Integer.parseInt(str);
        if (parseInt == this.mPreferences.getSortOrder()) {
            return true;
        }
        this.mPreferences.setSortOrder(parseInt);
        notifyChanged();
        return true;
    }

    @Override // android.preference.ListPreference, android.preference.DialogPreference
    protected void onPrepareDialogBuilder(AlertDialog.Builder builder) {
        super.onPrepareDialogBuilder(builder);
        builder.setNegativeButton((CharSequence) null, (DialogInterface.OnClickListener) null);
    }
}
