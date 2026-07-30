package com.android.contacts.list;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.android.contacts.list.ContactListFilterController;
import com.android.contacts.model.AccountTypeManager;
import com.android.contacts.model.account.AccountWithDataSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: ContactListFilterController.java */
/* loaded from: classes.dex */
class ContactListFilterControllerImpl extends ContactListFilterController {
    private final Context mContext;
    private final List<ContactListFilterController.ContactListFilterListener> mListeners = new ArrayList();
    private ContactListFilter mFilter = ContactListFilter.restoreDefaultPreferences(getSharedPreferences());

    public ContactListFilterControllerImpl(Context context) {
        this.mContext = context.getApplicationContext();
        checkFilterValidity(true);
    }

    @Override // com.android.contacts.list.ContactListFilterController
    public void addListener(ContactListFilterController.ContactListFilterListener contactListFilterListener) {
        this.mListeners.add(contactListFilterListener);
    }

    @Override // com.android.contacts.list.ContactListFilterController
    public void removeListener(ContactListFilterController.ContactListFilterListener contactListFilterListener) {
        this.mListeners.remove(contactListFilterListener);
    }

    @Override // com.android.contacts.list.ContactListFilterController
    public ContactListFilter getFilter() {
        return this.mFilter;
    }

    @Override // com.android.contacts.list.ContactListFilterController
    public int getFilterListType() {
        ContactListFilter contactListFilter = this.mFilter;
        if (contactListFilter == null) {
            return 0;
        }
        return contactListFilter.toListType();
    }

    @Override // com.android.contacts.list.ContactListFilterController
    public boolean isCustomFilterPersisted() {
        ContactListFilter persistedFilter = getPersistedFilter();
        return persistedFilter != null && persistedFilter.filterType == -3;
    }

    @Override // com.android.contacts.list.ContactListFilterController
    public ContactListFilter getPersistedFilter() {
        return ContactListFilter.restoreDefaultPreferences(getSharedPreferences());
    }

    private SharedPreferences getSharedPreferences() {
        return PreferenceManager.getDefaultSharedPreferences(this.mContext);
    }

    @Override // com.android.contacts.list.ContactListFilterController
    public void setContactListFilter(ContactListFilter contactListFilter, boolean z) {
        setContactListFilter(contactListFilter, z, true);
    }

    private void setContactListFilter(ContactListFilter contactListFilter, boolean z, boolean z2) {
        if (contactListFilter.equals(this.mFilter)) {
            return;
        }
        this.mFilter = contactListFilter;
        if (z) {
            ContactListFilter.storeToPreferences(getSharedPreferences(), this.mFilter);
        }
        if (!z2 || this.mListeners.isEmpty()) {
            return;
        }
        notifyContactListFilterChanged();
    }

    @Override // com.android.contacts.list.ContactListFilterController
    public void selectCustomFilter() {
        setContactListFilter(ContactListFilter.createFilterWithType(-3), true);
    }

    private void notifyContactListFilterChanged() {
        Iterator<ContactListFilterController.ContactListFilterListener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onContactListFilterChanged();
        }
    }

    @Override // com.android.contacts.list.ContactListFilterController
    public void checkFilterValidity(boolean z) {
        ContactListFilter contactListFilter = this.mFilter;
        if (contactListFilter == null) {
            return;
        }
        int i = contactListFilter.filterType;
        if (i == -6) {
            setContactListFilter(ContactListFilter.restoreDefaultPreferences(getSharedPreferences()), false, z);
        } else if (i == 0 && !filterAccountExists()) {
            setContactListFilter(ContactListFilter.createFilterWithType(-2), true, z);
        }
    }

    private boolean filterAccountExists() {
        AccountTypeManager accountTypeManager = AccountTypeManager.getInstance(this.mContext);
        ContactListFilter contactListFilter = this.mFilter;
        return accountTypeManager.exists(new AccountWithDataSet(contactListFilter.accountName, contactListFilter.accountType, contactListFilter.dataSet));
    }
}
