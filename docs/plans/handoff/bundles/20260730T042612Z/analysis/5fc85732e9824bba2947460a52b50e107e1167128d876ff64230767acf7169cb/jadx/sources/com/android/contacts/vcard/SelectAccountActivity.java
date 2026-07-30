package com.android.contacts.vcard;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.android.contacts.R;
import com.android.contacts.model.AccountTypeManager;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.util.AccountSelectionUtil;
import java.util.List;

/* loaded from: classes.dex */
public class SelectAccountActivity extends Activity {
    private AccountSelectionUtil.AccountSelectedListener mAccountSelectionListener;

    private class CancelListener implements DialogInterface.OnClickListener, DialogInterface.OnCancelListener {
        private CancelListener() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            SelectAccountActivity.this.finish();
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            SelectAccountActivity.this.finish();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().addSystemFlags(524288);
        List<AccountWithDataSet> blockForWritableAccounts = AccountTypeManager.getInstance(this).blockForWritableAccounts();
        if (blockForWritableAccounts.size() == 0) {
            Log.w("SelectAccountActivity", "Account does not exist");
            finish();
            return;
        }
        if (blockForWritableAccounts.size() == 1) {
            AccountWithDataSet accountWithDataSet = blockForWritableAccounts.get(0);
            Intent intent = new Intent();
            intent.putExtra("account_name", accountWithDataSet.name);
            intent.putExtra("account_type", accountWithDataSet.type);
            intent.putExtra("data_set", accountWithDataSet.dataSet);
            setResult(-1, intent);
            finish();
            return;
        }
        Log.i("SelectAccountActivity", "The number of available accounts: " + blockForWritableAccounts.size());
        this.mAccountSelectionListener = new AccountSelectionUtil.AccountSelectedListener(this, blockForWritableAccounts, R.string.import_from_vcf_file) { // from class: com.android.contacts.vcard.SelectAccountActivity.1
            @Override // com.android.contacts.util.AccountSelectionUtil.AccountSelectedListener, android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                AccountWithDataSet accountWithDataSet2 = this.mAccountList.get(i);
                Intent intent2 = new Intent();
                intent2.putExtra("account_name", accountWithDataSet2.name);
                intent2.putExtra("account_type", accountWithDataSet2.type);
                intent2.putExtra("data_set", accountWithDataSet2.dataSet);
                SelectAccountActivity.this.setResult(-1, intent2);
                SelectAccountActivity.this.finish();
            }
        };
        showDialog(R.string.import_from_vcf_file);
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i, Bundle bundle) {
        if (i == R.string.import_from_vcf_file) {
            AccountSelectionUtil.AccountSelectedListener accountSelectedListener = this.mAccountSelectionListener;
            if (accountSelectedListener == null) {
                throw new NullPointerException("mAccountSelectionListener must not be null.");
            }
            return AccountSelectionUtil.getSelectAccountDialog(this, i, accountSelectedListener, new CancelListener());
        }
        return super.onCreateDialog(i, bundle);
    }
}
