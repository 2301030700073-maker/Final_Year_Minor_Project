package com.android.contacts.list;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.android.contacts.R;
import com.android.contacts.group.GroupUtil;
import java.util.TreeSet;

/* loaded from: classes.dex */
public class MultiSelectEmailAddressesListFragment extends MultiSelectContactsListFragment<MultiSelectEmailAddressesListAdapter> {
    @Override // com.android.contacts.list.MultiSelectContactsListFragment, com.android.contacts.list.ContactEntryListFragment
    protected boolean onItemLongClick(int i, long j) {
        return true;
    }

    public MultiSelectEmailAddressesListFragment() {
        setPhotoLoaderEnabled(true);
        setSectionHeaderDisplayEnabled(false);
        setSearchMode(false);
        setHasOptionsMenu(true);
        setListType(13);
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    public MultiSelectEmailAddressesListAdapter createListAdapter() {
        MultiSelectEmailAddressesListAdapter multiSelectEmailAddressesListAdapter = new MultiSelectEmailAddressesListAdapter(getActivity());
        multiSelectEmailAddressesListAdapter.setArguments(getArguments());
        return multiSelectEmailAddressesListAdapter;
    }

    @Override // android.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(R.menu.items_multi_select, menu);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        final MenuItem findItem = menu.findItem(R.id.menu_send);
        findItem.setVisible(((MultiSelectEmailAddressesListAdapter) getAdapter()).hasSelectedItems());
        findItem.getActionView().setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.list.MultiSelectEmailAddressesListFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MultiSelectEmailAddressesListFragment.this.onOptionsItemSelected(findItem);
            }
        });
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        getActivity().finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.menu_send) {
            String stringExtra = getActivity().getIntent().getStringExtra("com.android.contacts.extra.SELECTION_SEND_SCHEME");
            GroupUtil.startSendToSelectionActivity(this, TextUtils.join(",", GroupUtil.getSendToDataForIds(getActivity(), ((MultiSelectEmailAddressesListAdapter) getAdapter()).getSelectedContactIdsArray(), stringExtra)), stringExtra, getActivity().getIntent().getStringExtra("com.android.contacts.extra.SELECTION_SEND_TITLE"));
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.android.contacts.list.MultiSelectContactsListFragment, com.android.contacts.list.ContactEntryListFragment, android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        long[] longArrayExtra = getActivity().getIntent().getLongArrayExtra("com.android.contacts.extra.SELECTION_DEFAULT_SELECTION");
        if (longArrayExtra != null && longArrayExtra.length != 0) {
            TreeSet<Long> treeSet = new TreeSet<>();
            for (long j : longArrayExtra) {
                treeSet.add(Long.valueOf(j));
            }
            ((MultiSelectEmailAddressesListAdapter) getAdapter()).setSelectedContactIds(treeSet);
            onSelectedContactsChanged();
        }
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.android.contacts.list.MultiSelectContactsListFragment, com.android.contacts.list.ContactEntryListFragment, android.app.Fragment
    public void onStart() {
        super.onStart();
        displayCheckBoxes(true);
        long[] longArrayExtra = getActivity().getIntent().getLongArrayExtra("com.android.contacts.extra.SELECTION_ITEM_LIST");
        boolean[] booleanArrayExtra = getActivity().getIntent().getBooleanArrayExtra("com.android.contacts.extra.SELECTION_DEFAULT_SELECTION");
        if (longArrayExtra == null || booleanArrayExtra == null || longArrayExtra.length != booleanArrayExtra.length) {
            return;
        }
        TreeSet<Long> treeSet = new TreeSet<>();
        for (int i = 0; i < longArrayExtra.length; i++) {
            if (booleanArrayExtra[i]) {
                treeSet.add(Long.valueOf(longArrayExtra[i]));
            }
        }
        ((MultiSelectEmailAddressesListAdapter) getAdapter()).setSelectedContactIds(treeSet);
        onSelectedContactsChanged();
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    protected View inflateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.contact_list_content, (ViewGroup) null);
    }
}
