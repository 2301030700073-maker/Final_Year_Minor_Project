package com.android.contacts.model;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.OnAccountsUpdateListener;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SyncStatusObserver;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.ContactsContract;
import android.util.Log;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.android.contacts.R;
import com.android.contacts.list.ContactListFilterController;
import com.android.contacts.model.account.AccountInfo;
import com.android.contacts.model.account.AccountType;
import com.android.contacts.model.account.AccountTypeProvider;
import com.android.contacts.model.account.AccountTypeWithDataSet;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.model.account.FallbackAccountType;
import com.android.contacts.model.account.GoogleAccountType;
import com.android.contacts.model.dataitem.DataKind;
import com.android.contacts.util.concurrent.ContactsExecutors;
import com.google.common.base.Function;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.collect.Collections2;
import com.google.common.util.concurrent.FutureCallback;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.ListeningExecutorService;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* compiled from: AccountTypeManager.java */
/* loaded from: classes.dex */
class AccountTypeManagerImpl extends AccountTypeManager implements OnAccountsUpdateListener, SyncStatusObserver {
    private final AccountManager mAccountManager;
    private ListenableFuture<AccountTypeProvider> mAccountTypesFuture;
    private final Context mContext;
    private final AccountType mFallbackAccountType;
    private final DeviceLocalAccountLocator mLocalAccountLocator;
    private ListenableFuture<List<AccountWithDataSet>> mLocalAccountsFuture;
    private AccountTypeProvider mTypeProvider;
    private List<AccountWithDataSet> mLocalAccounts = new ArrayList();
    private List<AccountWithDataSet> mAccountManagerAccounts = new ArrayList();
    private final Handler mMainThreadHandler = new Handler(Looper.getMainLooper());
    private final Function<AccountTypeProvider, List<AccountWithDataSet>> mAccountsExtractor = new Function<AccountTypeProvider, List<AccountWithDataSet>>() { // from class: com.android.contacts.model.AccountTypeManagerImpl.1
        @Override // com.google.common.base.Function
        public List<AccountWithDataSet> apply(AccountTypeProvider accountTypeProvider) {
            AccountTypeManagerImpl accountTypeManagerImpl = AccountTypeManagerImpl.this;
            return accountTypeManagerImpl.getAccountsWithDataSets(accountTypeManagerImpl.mAccountManager.getAccounts(), accountTypeProvider);
        }
    };
    private BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() { // from class: com.android.contacts.model.AccountTypeManagerImpl.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            AccountTypeManagerImpl.this.reloadAccountTypes();
        }
    };
    private final ListeningExecutorService mExecutor = ContactsExecutors.getDefaultThreadPoolExecutor();
    private final Executor mMainThreadExecutor = ContactsExecutors.newHandlerExecutor(this.mMainThreadHandler);

    public AccountTypeManagerImpl(Context context) {
        this.mContext = context;
        this.mLocalAccountLocator = DeviceLocalAccountLocator.create(context);
        this.mTypeProvider = new AccountTypeProvider(context);
        this.mFallbackAccountType = new FallbackAccountType(context);
        this.mAccountManager = AccountManager.get(this.mContext);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
        intentFilter.addDataScheme("package");
        this.mContext.registerReceiver(this.mBroadcastReceiver, intentFilter);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE");
        intentFilter2.addAction("android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE");
        this.mContext.registerReceiver(this.mBroadcastReceiver, intentFilter2);
        this.mContext.registerReceiver(this.mBroadcastReceiver, new IntentFilter("android.intent.action.LOCALE_CHANGED"));
        this.mAccountManager.addOnAccountsUpdatedListener(this, this.mMainThreadHandler, false);
        ContentResolver.addStatusChangeListener(1, this);
        this.mContext.getContentResolver().registerContentObserver(ContactsContract.RawContacts.CONTENT_URI, true, new ContentObserver(this.mMainThreadHandler) { // from class: com.android.contacts.model.AccountTypeManagerImpl.3
            @Override // android.database.ContentObserver
            public boolean deliverSelfNotifications() {
                return true;
            }

            @Override // android.database.ContentObserver
            public void onChange(boolean z) {
                AccountTypeManagerImpl.this.reloadLocalAccounts();
            }

            @Override // android.database.ContentObserver
            public void onChange(boolean z, Uri uri) {
                AccountTypeManagerImpl.this.reloadLocalAccounts();
            }
        });
        loadAccountTypes();
    }

    @Override // android.content.SyncStatusObserver
    public void onStatusChanged(int i) {
        reloadAccountTypesIfNeeded();
    }

    @Override // android.accounts.OnAccountsUpdateListener
    public void onAccountsUpdated(Account[] accountArr) {
        reloadLocalAccounts();
        maybeNotifyAccountsUpdated(this.mAccountManagerAccounts, getAccountsWithDataSets(accountArr, this.mTypeProvider));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeNotifyAccountsUpdated(List<AccountWithDataSet> list, List<AccountWithDataSet> list2) {
        if (Objects.equal(list, list2)) {
            return;
        }
        list.clear();
        list.addAll(list2);
        notifyAccountsChanged();
    }

    private void notifyAccountsChanged() {
        ContactListFilterController.getInstance(this.mContext).checkFilterValidity(true);
        LocalBroadcastManager.getInstance(this.mContext).sendBroadcast(new Intent(AccountTypeManager.BROADCAST_ACCOUNTS_CHANGED));
    }

    private synchronized void startLoadingIfNeeded() {
        if (this.mTypeProvider == null && this.mAccountTypesFuture == null) {
            reloadAccountTypesIfNeeded();
        }
        if (this.mLocalAccountsFuture == null) {
            reloadLocalAccounts();
        }
    }

    private synchronized void loadAccountTypes() {
        this.mTypeProvider = new AccountTypeProvider(this.mContext);
        this.mAccountTypesFuture = this.mExecutor.submit((Callable) new Callable<AccountTypeProvider>() { // from class: com.android.contacts.model.AccountTypeManagerImpl.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public AccountTypeProvider call() throws Exception {
                AccountTypeManagerImpl accountTypeManagerImpl = AccountTypeManagerImpl.this;
                accountTypeManagerImpl.getAccountsWithDataSets(accountTypeManagerImpl.mAccountManager.getAccounts(), AccountTypeManagerImpl.this.mTypeProvider);
                return AccountTypeManagerImpl.this.mTypeProvider;
            }
        });
    }

    private FutureCallback<List<AccountWithDataSet>> newAccountsUpdatedCallback(final List<AccountWithDataSet> list) {
        return new FutureCallback<List<AccountWithDataSet>>() { // from class: com.android.contacts.model.AccountTypeManagerImpl.5
            @Override // com.google.common.util.concurrent.FutureCallback
            public void onFailure(Throwable th) {
            }

            @Override // com.google.common.util.concurrent.FutureCallback
            public void onSuccess(List<AccountWithDataSet> list2) {
                AccountTypeManagerImpl.this.maybeNotifyAccountsUpdated(list, list2);
            }
        };
    }

    private synchronized void reloadAccountTypesIfNeeded() {
        if (this.mTypeProvider == null || this.mTypeProvider.shouldUpdate(this.mAccountManager.getAuthenticatorTypes(), ContentResolver.getSyncAdapterTypes())) {
            reloadAccountTypes();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void reloadAccountTypes() {
        loadAccountTypes();
        Futures.addCallback(Futures.transform(this.mAccountTypesFuture, this.mAccountsExtractor, MoreExecutors.directExecutor()), newAccountsUpdatedCallback(this.mAccountManagerAccounts), this.mMainThreadExecutor);
    }

    private synchronized void loadLocalAccounts() {
        this.mLocalAccountsFuture = this.mExecutor.submit((Callable) new Callable<List<AccountWithDataSet>>() { // from class: com.android.contacts.model.AccountTypeManagerImpl.6
            @Override // java.util.concurrent.Callable
            public List<AccountWithDataSet> call() throws Exception {
                return AccountTypeManagerImpl.this.mLocalAccountLocator.getDeviceLocalAccounts();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void reloadLocalAccounts() {
        loadLocalAccounts();
        Futures.addCallback(this.mLocalAccountsFuture, newAccountsUpdatedCallback(this.mLocalAccounts), this.mMainThreadExecutor);
    }

    @Override // com.android.contacts.model.AccountTypeManager
    public ListenableFuture<List<AccountInfo>> getAccountsAsync() {
        return getAllAccountsAsyncInternal();
    }

    private synchronized ListenableFuture<List<AccountInfo>> getAllAccountsAsyncInternal() {
        final AccountTypeProvider accountTypeProvider;
        startLoadingIfNeeded();
        accountTypeProvider = this.mTypeProvider;
        return Futures.transform(Futures.nonCancellationPropagating(Futures.successfulAsList(Futures.transform(this.mAccountTypesFuture, this.mAccountsExtractor, MoreExecutors.directExecutor()), this.mLocalAccountsFuture)), new Function<List<List<AccountWithDataSet>>, List<AccountInfo>>() { // from class: com.android.contacts.model.AccountTypeManagerImpl.7
            @Override // com.google.common.base.Function
            public List<AccountInfo> apply(List<List<AccountWithDataSet>> list) {
                Preconditions.checkArgument(list.size() == 2, "List should have exactly 2 elements");
                ArrayList arrayList = new ArrayList();
                for (AccountWithDataSet accountWithDataSet : list.get(0)) {
                    arrayList.add(accountTypeProvider.getTypeForAccount(accountWithDataSet).wrapAccount(AccountTypeManagerImpl.this.mContext, accountWithDataSet));
                }
                for (AccountWithDataSet accountWithDataSet2 : list.get(1)) {
                    arrayList.add(accountTypeProvider.getTypeForAccount(accountWithDataSet2).wrapAccount(AccountTypeManagerImpl.this.mContext, accountWithDataSet2));
                }
                AccountInfo.sortAccounts(null, arrayList);
                return arrayList;
            }
        }, MoreExecutors.directExecutor());
    }

    @Override // com.android.contacts.model.AccountTypeManager
    public ListenableFuture<List<AccountInfo>> filterAccountsAsync(final Predicate<AccountInfo> predicate) {
        return Futures.transform(getAllAccountsAsyncInternal(), new Function<List<AccountInfo>, List<AccountInfo>>(this) { // from class: com.android.contacts.model.AccountTypeManagerImpl.8
            @Override // com.google.common.base.Function
            public List<AccountInfo> apply(List<AccountInfo> list) {
                return new ArrayList(Collections2.filter(list, predicate));
            }
        }, this.mExecutor);
    }

    @Override // com.android.contacts.model.AccountTypeManager
    public AccountInfo getAccountInfoForAccount(AccountWithDataSet accountWithDataSet) {
        if (accountWithDataSet == null) {
            return null;
        }
        AccountType typeForAccount = this.mTypeProvider.getTypeForAccount(accountWithDataSet);
        if (typeForAccount == null) {
            typeForAccount = this.mFallbackAccountType;
        }
        return typeForAccount.wrapAccount(this.mContext, accountWithDataSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<AccountWithDataSet> getAccountsWithDataSets(Account[] accountArr, AccountTypeProvider accountTypeProvider) {
        ArrayList arrayList = new ArrayList();
        for (Account account : accountArr) {
            Iterator<AccountType> it = accountTypeProvider.getAccountTypes(account.type).iterator();
            while (it.hasNext()) {
                arrayList.add(new AccountWithDataSet(account.name, account.type, it.next().dataSet));
            }
        }
        return arrayList;
    }

    @Override // com.android.contacts.model.AccountTypeManager
    public Account getDefaultGoogleAccount() {
        Context context = this.mContext;
        return AccountTypeManager.getDefaultGoogleAccount(this.mAccountManager, context.getSharedPreferences(context.getPackageName(), 0), this.mContext.getResources().getString(R.string.contact_editor_default_account_key));
    }

    @Override // com.android.contacts.model.AccountTypeManager
    public List<AccountInfo> getWritableGoogleAccounts() {
        Account[] accountsByType = this.mAccountManager.getAccountsByType(GoogleAccountType.ACCOUNT_TYPE);
        ArrayList arrayList = new ArrayList();
        for (Account account : accountsByType) {
            AccountWithDataSet accountWithDataSet = new AccountWithDataSet(account.name, account.type, null);
            AccountType typeForAccount = this.mTypeProvider.getTypeForAccount(accountWithDataSet);
            if (typeForAccount != null) {
                arrayList.add(typeForAccount.wrapAccount(this.mContext, accountWithDataSet));
            }
        }
        return arrayList;
    }

    @Override // com.android.contacts.model.AccountTypeManager
    public boolean hasNonLocalAccount() {
        Account[] accounts = this.mAccountManager.getAccounts();
        if (accounts == null) {
            return false;
        }
        for (Account account : accounts) {
            if (this.mTypeProvider.supportsContactsSyncing(account.type)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.android.contacts.model.AccountTypeManager
    public DataKind getKindOrFallback(AccountType accountType, String str) {
        DataKind kindForMimetype = accountType != null ? accountType.getKindForMimetype(str) : null;
        if (kindForMimetype == null) {
            kindForMimetype = this.mFallbackAccountType.getKindForMimetype(str);
        }
        if (kindForMimetype == null && Log.isLoggable("AccountTypeManager", 3)) {
            Log.d("AccountTypeManager", "Unknown type=" + accountType + ", mime=" + str);
        }
        return kindForMimetype;
    }

    @Override // com.android.contacts.model.AccountTypeManager
    public boolean exists(AccountWithDataSet accountWithDataSet) {
        for (Account account : this.mAccountManager.getAccountsByType(accountWithDataSet.type)) {
            if (account.name.equals(accountWithDataSet.name)) {
                return this.mTypeProvider.getTypeForAccount(accountWithDataSet) != null;
            }
        }
        return false;
    }

    @Override // com.android.contacts.model.AccountTypeManager
    public AccountType getAccountType(AccountTypeWithDataSet accountTypeWithDataSet) {
        AccountType type = this.mTypeProvider.getType(accountTypeWithDataSet.accountType, accountTypeWithDataSet.dataSet);
        return type != null ? type : this.mFallbackAccountType;
    }
}
