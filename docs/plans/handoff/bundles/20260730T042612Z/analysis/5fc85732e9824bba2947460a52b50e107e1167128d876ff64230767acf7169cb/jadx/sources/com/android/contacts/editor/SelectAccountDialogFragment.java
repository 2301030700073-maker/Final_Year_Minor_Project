package com.android.contacts.editor;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.ComponentCallbacks2;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.android.contacts.R;
import com.android.contacts.model.AccountTypeManager;
import com.android.contacts.model.account.AccountInfo;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.model.account.AccountsLoader;
import com.android.contacts.util.AccountsListAdapter;
import com.google.common.base.Preconditions;
import java.util.List;

/* loaded from: classes.dex */
public final class SelectAccountDialogFragment extends DialogFragment implements AccountsLoader.AccountsListener {
    private AccountsListAdapter mAccountsAdapter;
    private AccountTypeManager.AccountFilter mFilter;

    public interface Listener {
        void onAccountChosen(AccountWithDataSet accountWithDataSet, Bundle bundle);

        void onAccountSelectorCancelled();
    }

    public static void show(FragmentManager fragmentManager, int i, AccountTypeManager.AccountFilter accountFilter, Bundle bundle) {
        show(fragmentManager, i, accountFilter, bundle, null);
    }

    public static void show(FragmentManager fragmentManager, int i, AccountTypeManager.AccountFilter accountFilter, Bundle bundle, String str) {
        Bundle bundle2 = new Bundle();
        bundle2.putInt("title_res_id", i);
        if (bundle == null) {
            bundle = Bundle.EMPTY;
        }
        bundle2.putBundle("extra_args", bundle);
        bundle2.putSerializable("list_filter", accountFilter);
        SelectAccountDialogFragment selectAccountDialogFragment = new SelectAccountDialogFragment();
        selectAccountDialogFragment.setArguments(bundle2);
        selectAccountDialogFragment.show(fragmentManager, str);
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AccountTypeManager.AccountFilter accountFilter = (AccountTypeManager.AccountFilter) getArguments().getSerializable("list_filter");
        this.mFilter = accountFilter;
        if (accountFilter == null) {
            this.mFilter = AccountTypeManager.AccountFilter.ALL;
        }
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        Bundle arguments = getArguments();
        AccountsListAdapter accountsListAdapter = new AccountsListAdapter(builder.getContext());
        this.mAccountsAdapter = accountsListAdapter;
        accountsListAdapter.setCustomLayout(R.layout.account_selector_list_item_condensed);
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.android.contacts.editor.SelectAccountDialogFragment.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                SelectAccountDialogFragment selectAccountDialogFragment = SelectAccountDialogFragment.this;
                selectAccountDialogFragment.onAccountSelected(selectAccountDialogFragment.mAccountsAdapter.getItem(i));
            }
        };
        TextView textView = (TextView) View.inflate(getActivity(), R.layout.dialog_title, null);
        textView.setText(arguments.getInt("title_res_id"));
        builder.setCustomTitle(textView);
        builder.setSingleChoiceItems(this.mAccountsAdapter, 0, onClickListener);
        return builder.create();
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        AccountsLoader.loadAccounts(this, 0, this.mFilter);
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
        Listener listener = getListener();
        if (listener != null) {
            listener.onAccountSelectorCancelled();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAccountSelected(AccountWithDataSet accountWithDataSet) {
        Listener listener = getListener();
        if (listener != null) {
            listener.onAccountChosen(accountWithDataSet, getArguments().getBundle("extra_args"));
        }
    }

    private Listener getListener() {
        ComponentCallbacks2 activity = getActivity();
        if (activity == null || !(activity instanceof Listener)) {
            return null;
        }
        return (Listener) activity;
    }

    @Override // com.android.contacts.model.account.AccountsLoader.AccountsListener
    public void onAccountsLoaded(List<AccountInfo> list) {
        Preconditions.checkNotNull(this.mAccountsAdapter, "Accounts adapter should have been initialized");
        this.mAccountsAdapter.setAccounts(list, null);
    }
}
