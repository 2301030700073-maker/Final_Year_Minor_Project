package com.android.contacts.model;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.model.account.GoogleAccountType;
import com.android.contactsbind.ObjectFactory;
import com.android.contactsbind.experiments.Flags;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class DeviceLocalAccountLocator {
    public static final DeviceLocalAccountLocator NULL_ONLY = new DeviceLocalAccountLocator() { // from class: com.android.contacts.model.DeviceLocalAccountLocator.1
        @Override // com.android.contacts.model.DeviceLocalAccountLocator
        public List<AccountWithDataSet> getDeviceLocalAccounts() {
            return Collections.singletonList(AccountWithDataSet.getNullAccount());
        }
    };

    public abstract List<AccountWithDataSet> getDeviceLocalAccounts();

    public static DeviceLocalAccountLocator create(Context context, Set<String> set) {
        if (Flags.getInstance().getBoolean("Account__cp2_device_account_detection_enabled")) {
            return new Cp2DeviceLocalAccountLocator(context.getContentResolver(), ObjectFactory.getDeviceLocalAccountTypeFactory(context), set);
        }
        return NULL_ONLY;
    }

    public static DeviceLocalAccountLocator create(Context context) {
        AccountManager accountManager = (AccountManager) context.getSystemService("account");
        HashSet hashSet = new HashSet();
        for (Account account : accountManager.getAccounts()) {
            hashSet.add(account.type);
        }
        if (Flags.getInstance().getBoolean("Account__cp2_device_account_detection_enabled")) {
            return new Cp2DeviceLocalAccountLocator(context.getContentResolver(), ObjectFactory.getDeviceLocalAccountTypeFactory(context), hashSet);
        }
        return new NexusDeviceAccountLocator(context, accountManager);
    }

    public static class NexusDeviceAccountLocator extends DeviceLocalAccountLocator {
        private final AccountManager mAccountManager;
        private final Context mContext;

        public NexusDeviceAccountLocator(Context context, AccountManager accountManager) {
            this.mContext = context;
            this.mAccountManager = accountManager;
        }

        @Override // com.android.contacts.model.DeviceLocalAccountLocator
        public List<AccountWithDataSet> getDeviceLocalAccounts() {
            if (this.mAccountManager.getAccountsByType(GoogleAccountType.ACCOUNT_TYPE).length > 0 && !AccountWithDataSet.getNullAccount().hasData(this.mContext)) {
                return Collections.emptyList();
            }
            return Collections.singletonList(AccountWithDataSet.getNullAccount());
        }
    }
}
