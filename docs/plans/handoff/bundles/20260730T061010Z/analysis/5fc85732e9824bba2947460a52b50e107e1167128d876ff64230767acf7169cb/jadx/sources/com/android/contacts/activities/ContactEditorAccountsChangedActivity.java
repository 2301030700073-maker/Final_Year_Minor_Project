package com.android.contacts.activities;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.android.contacts.R;
import com.android.contacts.editor.ContactEditorUtils;
import com.android.contacts.model.AccountTypeManager;
import com.android.contacts.model.account.AccountInfo;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.model.account.AccountsLoader;
import com.android.contacts.util.AccountsListAdapter;
import com.android.contacts.util.ImplicitIntentsUtil;
import java.util.List;

/* loaded from: classes.dex */
public class ContactEditorAccountsChangedActivity extends Activity implements AccountsLoader.AccountsListener {
    private AccountsListAdapter mAccountListAdapter;
    private final AdapterView.OnItemClickListener mAccountListItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.android.contacts.activities.ContactEditorAccountsChangedActivity.1
        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (ContactEditorAccountsChangedActivity.this.mAccountListAdapter == null) {
                return;
            }
            ContactEditorAccountsChangedActivity contactEditorAccountsChangedActivity = ContactEditorAccountsChangedActivity.this;
            contactEditorAccountsChangedActivity.saveAccountAndReturnResult(contactEditorAccountsChangedActivity.mAccountListAdapter.getItem(i));
        }
    };
    private final View.OnClickListener mAddAccountClickListener = new View.OnClickListener() { // from class: com.android.contacts.activities.ContactEditorAccountsChangedActivity.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ContactEditorAccountsChangedActivity.this.startActivityForResult(ImplicitIntentsUtil.getIntentForAddingGoogleAccount(), 1);
        }
    };
    private AlertDialog mDialog;
    private ContactEditorUtils mEditorUtils;

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        AlertDialog alertDialog = this.mDialog;
        if (alertDialog == null || alertDialog.isShowing()) {
            return;
        }
        this.mDialog.show();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        AlertDialog alertDialog = this.mDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mEditorUtils = ContactEditorUtils.create(this);
        AccountsLoader.loadAccounts(this, 0, AccountTypeManager.writableFilter());
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1 && i2 == -1) {
            AccountWithDataSet createdAccount = this.mEditorUtils.getCreatedAccount(i2, intent);
            if (createdAccount == null) {
                setResult(i2);
                finish();
            } else {
                saveAccountAndReturnResult(createdAccount);
            }
        }
    }

    private void updateDisplayedAccounts(List<AccountInfo> list) {
        View inflate;
        int size = list.size();
        if (size < 0) {
            throw new IllegalStateException("Cannot have a negative number of accounts");
        }
        if (size >= 2) {
            inflate = View.inflate(this, R.layout.contact_editor_accounts_changed_activity_with_picker, null);
            ((TextView) inflate.findViewById(R.id.text)).setText(getString(R.string.contact_editor_prompt_multiple_accounts));
            Button button = (Button) inflate.findViewById(R.id.add_account_button);
            button.setText(getString(R.string.add_new_account));
            button.setOnClickListener(this.mAddAccountClickListener);
            ListView listView = (ListView) inflate.findViewById(R.id.account_list);
            AccountsListAdapter accountsListAdapter = new AccountsListAdapter(this, list);
            this.mAccountListAdapter = accountsListAdapter;
            listView.setAdapter((ListAdapter) accountsListAdapter);
            listView.setOnItemClickListener(this.mAccountListItemClickListener);
        } else if (size == 1 && !list.get(0).getAccount().isNullAccount()) {
            View inflate2 = View.inflate(this, R.layout.contact_editor_accounts_changed_activity_with_text, null);
            TextView textView = (TextView) inflate2.findViewById(R.id.text);
            Button button2 = (Button) inflate2.findViewById(R.id.left_button);
            Button button3 = (Button) inflate2.findViewById(R.id.right_button);
            final AccountInfo accountInfo = list.get(0);
            textView.setText(getString(R.string.contact_editor_prompt_one_account, new Object[]{accountInfo.getNameLabel()}));
            button2.setText(getString(R.string.add_new_account));
            button2.setOnClickListener(this.mAddAccountClickListener);
            button3.setText(getString(android.R.string.ok));
            button3.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.activities.ContactEditorAccountsChangedActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ContactEditorAccountsChangedActivity.this.saveAccountAndReturnResult(accountInfo.getAccount());
                }
            });
            inflate = inflate2;
        } else {
            inflate = View.inflate(this, R.layout.contact_editor_accounts_changed_activity_with_text, null);
            TextView textView2 = (TextView) inflate.findViewById(R.id.text);
            Button button4 = (Button) inflate.findViewById(R.id.left_button);
            Button button5 = (Button) inflate.findViewById(R.id.right_button);
            textView2.setText(getString(R.string.contact_editor_prompt_zero_accounts));
            button4.setText(getString(android.R.string.cancel));
            button4.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.activities.ContactEditorAccountsChangedActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ContactEditorAccountsChangedActivity.this.saveAccountAndReturnResult(AccountWithDataSet.getNullAccount());
                    ContactEditorAccountsChangedActivity.this.finish();
                }
            });
            button5.setText(getString(R.string.add_account));
            button5.setOnClickListener(this.mAddAccountClickListener);
        }
        AlertDialog alertDialog = this.mDialog;
        if (alertDialog != null && alertDialog.isShowing()) {
            this.mDialog.dismiss();
        }
        AlertDialog create = new AlertDialog.Builder(this).setView(inflate).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.android.contacts.activities.ContactEditorAccountsChangedActivity.5
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                ContactEditorAccountsChangedActivity.this.finish();
            }
        }).create();
        this.mDialog = create;
        create.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveAccountAndReturnResult(AccountWithDataSet accountWithDataSet) {
        this.mEditorUtils.saveDefaultAccount(accountWithDataSet);
        Intent intent = new Intent();
        intent.putExtra("android.provider.extra.ACCOUNT", accountWithDataSet);
        setResult(-1, intent);
        finish();
    }

    @Override // com.android.contacts.model.account.AccountsLoader.AccountsListener
    public void onAccountsLoaded(List<AccountInfo> list) {
        updateDisplayedAccounts(list);
    }
}
