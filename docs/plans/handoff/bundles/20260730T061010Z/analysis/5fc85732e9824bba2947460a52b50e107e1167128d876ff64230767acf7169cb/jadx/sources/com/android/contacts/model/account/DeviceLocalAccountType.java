package com.android.contacts.model.account;

import android.content.Context;

/* loaded from: classes.dex */
public class DeviceLocalAccountType extends FallbackAccountType {
    private final boolean mGroupsEditable;

    public DeviceLocalAccountType(Context context, boolean z) {
        super(context);
        this.mGroupsEditable = z;
    }

    public DeviceLocalAccountType(Context context) {
        this(context, false);
    }

    @Override // com.android.contacts.model.account.BaseAccountType, com.android.contacts.model.account.AccountType
    public boolean isGroupMembershipEditable() {
        return this.mGroupsEditable;
    }

    @Override // com.android.contacts.model.account.FallbackAccountType, com.android.contacts.model.account.AccountType
    public AccountInfo wrapAccount(Context context, AccountWithDataSet accountWithDataSet) {
        return new AccountInfo(new AccountDisplayInfo(accountWithDataSet, getDisplayLabel(context), getDisplayLabel(context), getDisplayIcon(context), true), this);
    }
}
