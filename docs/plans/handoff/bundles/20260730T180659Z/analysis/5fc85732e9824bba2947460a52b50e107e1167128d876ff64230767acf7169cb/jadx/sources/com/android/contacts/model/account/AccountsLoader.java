package com.android.contacts.model.account;

import android.app.Activity;
import android.app.Fragment;
import android.app.LoaderManager;
import android.content.Context;
import android.content.IntentFilter;
import android.content.Loader;
import android.os.Bundle;
import com.android.contacts.model.AccountTypeManager;
import com.android.contacts.util.concurrent.ListenableFutureLoader;
import com.google.common.base.Objects;
import com.google.common.base.Predicate;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;

/* loaded from: classes.dex */
public class AccountsLoader extends ListenableFutureLoader<List<AccountInfo>> {
    private final AccountTypeManager mAccountTypeManager;
    private final Predicate<AccountInfo> mFilter;

    public interface AccountsListener {
        void onAccountsLoaded(List<AccountInfo> list);
    }

    public AccountsLoader(Context context, Predicate<AccountInfo> predicate) {
        super(context, new IntentFilter(AccountTypeManager.BROADCAST_ACCOUNTS_CHANGED));
        this.mAccountTypeManager = AccountTypeManager.getInstance(context);
        this.mFilter = predicate;
    }

    @Override // com.android.contacts.util.concurrent.ListenableFutureLoader
    protected ListenableFuture<List<AccountInfo>> loadData() {
        return this.mAccountTypeManager.filterAccountsAsync(this.mFilter);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.util.concurrent.ListenableFutureLoader
    public boolean isSameData(List<AccountInfo> list, List<AccountInfo> list2) {
        return Objects.equal(AccountInfo.extractAccounts(list), AccountInfo.extractAccounts(list2));
    }

    public static <FragmentType extends Fragment & AccountsListener> void loadAccounts(FragmentType fragmenttype, int i, Predicate<AccountInfo> predicate) {
        loadAccounts(fragmenttype.getActivity(), fragmenttype.getLoaderManager(), i, predicate, fragmenttype);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <ActivityType extends Activity & AccountsListener> void loadAccounts(ActivityType activitytype, int i, Predicate<AccountInfo> predicate) {
        loadAccounts(activitytype, activitytype.getLoaderManager(), i, predicate, activitytype);
    }

    private static void loadAccounts(final Context context, LoaderManager loaderManager, int i, final Predicate<AccountInfo> predicate, final AccountsListener accountsListener) {
        loaderManager.initLoader(i, null, new LoaderManager.LoaderCallbacks<List<AccountInfo>>() { // from class: com.android.contacts.model.account.AccountsLoader.1
            @Override // android.app.LoaderManager.LoaderCallbacks
            public void onLoaderReset(Loader<List<AccountInfo>> loader) {
            }

            @Override // android.app.LoaderManager.LoaderCallbacks
            public Loader<List<AccountInfo>> onCreateLoader(int i2, Bundle bundle) {
                return new AccountsLoader(context, predicate);
            }

            @Override // android.app.LoaderManager.LoaderCallbacks
            public void onLoadFinished(Loader<List<AccountInfo>> loader, List<AccountInfo> list) {
                accountsListener.onAccountsLoaded(list);
            }
        });
    }
}
