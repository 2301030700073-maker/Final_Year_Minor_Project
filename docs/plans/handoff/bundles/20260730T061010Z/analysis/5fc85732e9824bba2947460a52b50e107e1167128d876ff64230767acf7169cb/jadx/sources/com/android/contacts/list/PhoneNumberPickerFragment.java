package com.android.contacts.list;

import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.android.contacts.R;
import com.android.contacts.ShortcutIntentBuilder;
import com.android.contacts.list.ContactListItemView;
import com.android.contacts.list.PhoneNumberListAdapter;

/* loaded from: classes.dex */
public class PhoneNumberPickerFragment extends ContactEntryListFragment<ContactEntryListAdapter> implements ShortcutIntentBuilder.OnShortcutIntentCreatedListener, PhoneNumberListAdapter.Listener {
    private ContactListFilter mFilter;
    private OnPhoneNumberPickerActionListener mListener;
    private ContactListItemView.PhotoPosition mPhotoPosition = ContactListItemView.getDefaultPhotoPosition(false);
    private String mShortcutAction;
    private boolean mUseCallableUri;

    protected void cacheContactInfo(int i) {
    }

    protected int getCallInitiationType(boolean z) {
        return 0;
    }

    protected boolean getVisibleScrollbarEnabled() {
        return true;
    }

    @Override // com.android.contacts.list.ContactEntryListFragment, android.app.LoaderManager.LoaderCallbacks
    public /* bridge */ /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        onLoadFinished((Loader<Cursor>) loader, (Cursor) obj);
    }

    @Override // com.android.contacts.list.PhoneNumberListAdapter.Listener
    public void onVideoCallIconClicked(int i) {
        callNumber(i, true);
    }

    public PhoneNumberPickerFragment() {
        setQuickContactEnabled(false);
        setPhotoLoaderEnabled(true);
        setSectionHeaderDisplayEnabled(true);
        setDirectorySearchMode(0);
        setHasOptionsMenu(true);
    }

    public void setOnPhoneNumberPickerActionListener(OnPhoneNumberPickerActionListener onPhoneNumberPickerActionListener) {
        this.mListener = onPhoneNumberPickerActionListener;
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    protected void onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        super.onCreateView(layoutInflater, viewGroup);
        setVisibleScrollbarEnabled(getVisibleScrollbarEnabled());
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    public void restoreSavedState(Bundle bundle) {
        super.restoreSavedState(bundle);
        if (bundle == null) {
            return;
        }
        this.mFilter = (ContactListFilter) bundle.getParcelable("filter");
        this.mShortcutAction = bundle.getString("shortcutAction");
    }

    @Override // com.android.contacts.list.ContactEntryListFragment, android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("filter", this.mFilter);
        bundle.putString("shortcutAction", this.mShortcutAction);
    }

    @Override // android.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            OnPhoneNumberPickerActionListener onPhoneNumberPickerActionListener = this.mListener;
            if (onPhoneNumberPickerActionListener == null) {
                return true;
            }
            onPhoneNumberPickerActionListener.onHomeInActionBarSelected();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    public void setShortcutAction(String str) {
        this.mShortcutAction = str;
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    protected void onItemClick(int i, long j) {
        callNumber(i, false);
    }

    private void callNumber(int i, boolean z) {
        Uri phoneUri = getPhoneUri(i);
        if (phoneUri != null) {
            pickPhoneNumber(phoneUri, z);
            return;
        }
        String phoneNumber = getPhoneNumber(i);
        if (!TextUtils.isEmpty(phoneNumber)) {
            cacheContactInfo(i);
            this.mListener.onPickPhoneNumber(phoneNumber, z, getCallInitiationType(true));
            return;
        }
        Log.w("PhoneNumberPicker", "Item at " + i + " was clicked before adapter is ready. Ignoring");
    }

    protected String getPhoneNumber(int i) {
        return ((PhoneNumberListAdapter) getAdapter()).getPhoneNumber(i);
    }

    protected Uri getPhoneUri(int i) {
        return ((PhoneNumberListAdapter) getAdapter()).getDataUri(i);
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    protected void startLoading() {
        super.startLoading();
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    public void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
        super.onLoadFinished(loader, cursor);
        setVisibleScrollbarEnabled((cursor == null || cursor.isClosed() || cursor.getCount() <= 0) ? false : true);
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    protected ContactEntryListAdapter createListAdapter() {
        PhoneNumberListAdapter phoneNumberListAdapter = new PhoneNumberListAdapter(getActivity());
        phoneNumberListAdapter.setDisplayPhotos(true);
        phoneNumberListAdapter.setUseCallableUri(this.mUseCallableUri);
        return phoneNumberListAdapter;
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    protected void configureAdapter() {
        ContactListFilter contactListFilter;
        super.configureAdapter();
        ContactEntryListAdapter adapter = getAdapter();
        if (adapter == null) {
            return;
        }
        if (!isSearchMode() && (contactListFilter = this.mFilter) != null) {
            adapter.setFilter(contactListFilter);
        }
        setPhotoPosition(adapter);
    }

    protected void setPhotoPosition(ContactEntryListAdapter contactEntryListAdapter) {
        ((PhoneNumberListAdapter) contactEntryListAdapter).setPhotoPosition(this.mPhotoPosition);
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    protected View inflateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.contact_list_content, (ViewGroup) null);
    }

    public void pickPhoneNumber(Uri uri, boolean z) {
        if (this.mShortcutAction == null) {
            this.mListener.onPickDataUri(uri, z, getCallInitiationType(false));
        } else {
            startPhoneNumberShortcutIntent(uri, z);
        }
    }

    protected void startPhoneNumberShortcutIntent(Uri uri, boolean z) {
        new ShortcutIntentBuilder(getActivity(), this).createPhoneNumberShortcutIntent(uri, this.mShortcutAction);
    }

    @Override // com.android.contacts.ShortcutIntentBuilder.OnShortcutIntentCreatedListener
    public void onShortcutIntentCreated(Uri uri, Intent intent) {
        this.mListener.onShortcutIntentCreated(intent);
    }

    @Override // com.android.contacts.list.ContactEntryListFragment
    public void onPickerResult(Intent intent) {
        this.mListener.onPickDataUri(intent.getData(), false, getCallInitiationType(false));
    }
}
