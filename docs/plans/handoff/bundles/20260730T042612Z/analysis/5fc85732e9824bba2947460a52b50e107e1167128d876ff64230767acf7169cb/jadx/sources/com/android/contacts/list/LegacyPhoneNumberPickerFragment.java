package com.android.contacts.list;

import android.net.Uri;

/* loaded from: classes.dex */
public class LegacyPhoneNumberPickerFragment extends PhoneNumberPickerFragment {
    @Override // com.android.contacts.list.PhoneNumberPickerFragment
    protected boolean getVisibleScrollbarEnabled() {
        return false;
    }

    @Override // com.android.contacts.list.PhoneNumberPickerFragment
    protected void setPhotoPosition(ContactEntryListAdapter contactEntryListAdapter) {
    }

    @Override // com.android.contacts.list.PhoneNumberPickerFragment
    protected Uri getPhoneUri(int i) {
        return ((LegacyPhoneNumberListAdapter) getAdapter()).getPhoneUri(i);
    }

    @Override // com.android.contacts.list.PhoneNumberPickerFragment, com.android.contacts.list.ContactEntryListFragment
    protected ContactEntryListAdapter createListAdapter() {
        LegacyPhoneNumberListAdapter legacyPhoneNumberListAdapter = new LegacyPhoneNumberListAdapter(getActivity());
        legacyPhoneNumberListAdapter.setDisplayPhotos(true);
        return legacyPhoneNumberListAdapter;
    }

    @Override // com.android.contacts.list.PhoneNumberPickerFragment
    protected void startPhoneNumberShortcutIntent(Uri uri, boolean z) {
        throw new UnsupportedOperationException();
    }
}
