package com.android.contacts.preference;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.View;
import com.android.contacts.model.account.AccountInfo;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.util.AccountsListAdapter;
import java.util.List;

/* loaded from: classes.dex */
public class DefaultAccountPreference extends DialogPreference {
    private List<AccountInfo> mAccounts;
    private int mChosenIndex;
    private AccountsListAdapter mListAdapter;
    private ContactsPreferences mPreferences;

    @Override // android.preference.Preference
    protected boolean shouldPersist() {
        return false;
    }

    public DefaultAccountPreference(Context context) {
        super(context);
        this.mChosenIndex = -1;
        prepare();
    }

    public DefaultAccountPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mChosenIndex = -1;
        prepare();
    }

    public void setAccounts(List<AccountInfo> list) {
        this.mAccounts = list;
        AccountsListAdapter accountsListAdapter = this.mListAdapter;
        if (accountsListAdapter != null) {
            accountsListAdapter.setAccounts(list, null);
            notifyChanged();
        }
    }

    @Override // android.preference.DialogPreference
    protected View onCreateDialogView() {
        prepare();
        return super.onCreateDialogView();
    }

    private void prepare() {
        this.mPreferences = new ContactsPreferences(getContext());
        AccountsListAdapter accountsListAdapter = new AccountsListAdapter(getContext());
        this.mListAdapter = accountsListAdapter;
        List<AccountInfo> list = this.mAccounts;
        if (list != null) {
            accountsListAdapter.setAccounts(list, null);
        }
    }

    @Override // android.preference.Preference
    public CharSequence getSummary() {
        List<AccountInfo> list;
        AccountWithDataSet defaultAccount = this.mPreferences.getDefaultAccount();
        if (defaultAccount == null || (list = this.mAccounts) == null || !AccountInfo.contains(list, defaultAccount)) {
            return null;
        }
        return AccountInfo.getAccount(this.mAccounts, defaultAccount).getNameLabel();
    }

    @Override // android.preference.DialogPreference
    protected void onPrepareDialogBuilder(AlertDialog.Builder builder) {
        super.onPrepareDialogBuilder(builder);
        builder.setNegativeButton((CharSequence) null, (DialogInterface.OnClickListener) null);
        builder.setPositiveButton((CharSequence) null, (DialogInterface.OnClickListener) null);
        builder.setAdapter(this.mListAdapter, new DialogInterface.OnClickListener() { // from class: com.android.contacts.preference.DefaultAccountPreference.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                DefaultAccountPreference.this.mChosenIndex = i;
            }
        });
    }

    @Override // android.preference.DialogPreference
    protected void onDialogClosed(boolean z) {
        AccountWithDataSet defaultAccount = this.mPreferences.getDefaultAccount();
        int i = this.mChosenIndex;
        if (i != -1) {
            AccountWithDataSet item = this.mListAdapter.getItem(i);
            if (item.equals(defaultAccount)) {
                return;
            }
            this.mPreferences.setDefaultAccount(item);
            notifyChanged();
        }
    }
}
