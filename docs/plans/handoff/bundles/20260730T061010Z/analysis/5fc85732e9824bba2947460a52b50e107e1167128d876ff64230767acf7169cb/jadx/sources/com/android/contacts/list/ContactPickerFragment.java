package com.android.contacts.list;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import com.android.contacts.R;
import com.android.contacts.ShortcutIntentBuilder;

/* loaded from: classes.dex */
public class ContactPickerFragment extends ContactEntryListFragment<ContactEntryListAdapter> implements ShortcutIntentBuilder.OnShortcutIntentCreatedListener {
    private boolean mCreateContactEnabled;
    private boolean mEditMode;
    private OnContactPickerActionListener mListener;
    private boolean mShortcutRequested;

    public ContactPickerFragment() {
        setPhotoLoaderEnabled(true);
        setSectionHeaderDisplayEnabled(true);
        setVisibleScrollbarEnabled(true);
        setQuickContactEnabled(false);
        setDirectorySearchMode(2);
    }

    public void setOnContactPickerActionListener(OnContactPickerActionListener onContactPickerActionListener) {
        this.mListener = onContactPickerActionListener;
    }

    public void setCreateContactEnabled(boolean z) {
        this.mCreateContactEnabled = z;
    }

    public void setEditMode(boolean z) {
        this.mEditMode = z;
    }

    public void setShortcutRequested(boolean z) {
        this.mShortcutRequested = z;
    }

    @Override // com.android.contacts.list.ContactEntryListFragment, android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("editMode", this.mEditMode);
        bundle.putBoolean("createContactEnabled", this.mCreateContactEnabled);
        bundle.putBoolean("shortcutRequested", this.mShortcutRequested);
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    public void restoreSavedState(Bundle bundle) {
        super.restoreSavedState(bundle);
        if (bundle == null) {
            return;
        }
        this.mEditMode = bundle.getBoolean("editMode");
        this.mCreateContactEnabled = bundle.getBoolean("createContactEnabled");
        this.mShortcutRequested = bundle.getBoolean("shortcutRequested");
    }

    @Override // com.android.contacts.list.ContactEntryListFragment, android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        OnContactPickerActionListener onContactPickerActionListener;
        if (i == 0 && this.mCreateContactEnabled && (onContactPickerActionListener = this.mListener) != null) {
            onContactPickerActionListener.onCreateNewContactAction();
        } else {
            super.onItemClick(adapterView, view, i, j);
        }
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    protected void onItemClick(int i, long j) {
        Uri contactUri;
        if (isLegacyCompatibilityMode()) {
            contactUri = ((LegacyContactListAdapter) getAdapter()).getPersonUri(i);
        } else {
            contactUri = ((ContactListAdapter) getAdapter()).getContactUri(i);
        }
        if (contactUri == null) {
            return;
        }
        if (this.mEditMode) {
            editContact(contactUri);
        } else if (this.mShortcutRequested) {
            new ShortcutIntentBuilder(getActivity(), this).createContactShortcutIntent(contactUri);
        } else {
            pickContact(contactUri);
        }
    }

    public void editContact(Uri uri) {
        OnContactPickerActionListener onContactPickerActionListener = this.mListener;
        if (onContactPickerActionListener != null) {
            onContactPickerActionListener.onEditContactAction(uri);
        }
    }

    public void pickContact(Uri uri) {
        OnContactPickerActionListener onContactPickerActionListener = this.mListener;
        if (onContactPickerActionListener != null) {
            onContactPickerActionListener.onPickContactAction(uri);
        }
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    protected ContactEntryListAdapter createListAdapter() {
        if (!isLegacyCompatibilityMode()) {
            HeaderEntryContactListAdapter headerEntryContactListAdapter = new HeaderEntryContactListAdapter(getActivity());
            headerEntryContactListAdapter.setFilter(ContactListFilter.createFilterWithType(-2));
            headerEntryContactListAdapter.setSectionHeaderDisplayEnabled(true);
            headerEntryContactListAdapter.setDisplayPhotos(true);
            headerEntryContactListAdapter.setQuickContactEnabled(false);
            headerEntryContactListAdapter.setShowCreateContact(this.mCreateContactEnabled);
            return headerEntryContactListAdapter;
        }
        LegacyContactListAdapter legacyContactListAdapter = new LegacyContactListAdapter(getActivity());
        legacyContactListAdapter.setSectionHeaderDisplayEnabled(false);
        legacyContactListAdapter.setDisplayPhotos(false);
        return legacyContactListAdapter;
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    protected View inflateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.contact_picker_content, (ViewGroup) null);
    }

    @Override // com.android.contacts.ShortcutIntentBuilder.OnShortcutIntentCreatedListener
    public void onShortcutIntentCreated(Uri uri, Intent intent) {
        OnContactPickerActionListener onContactPickerActionListener = this.mListener;
        if (onContactPickerActionListener != null) {
            onContactPickerActionListener.onShortcutIntentCreated(intent);
        }
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    public void onPickerResult(Intent intent) {
        OnContactPickerActionListener onContactPickerActionListener = this.mListener;
        if (onContactPickerActionListener != null) {
            onContactPickerActionListener.onPickContactAction(intent.getData());
        }
    }
}
