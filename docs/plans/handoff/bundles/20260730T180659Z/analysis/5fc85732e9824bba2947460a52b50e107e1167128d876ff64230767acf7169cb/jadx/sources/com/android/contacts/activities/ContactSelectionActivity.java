package com.android.contacts.activities;

import android.app.Fragment;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import com.android.contacts.AppCompatContactsActivity;
import com.android.contacts.R;
import com.android.contacts.activities.ActionBarAdapter;
import com.android.contacts.editor.EditorIntents;
import com.android.contacts.group.GroupUtil;
import com.android.contacts.list.ContactEntryListFragment;
import com.android.contacts.list.ContactPickerFragment;
import com.android.contacts.list.ContactsIntentResolver;
import com.android.contacts.list.ContactsRequest;
import com.android.contacts.list.EmailAddressPickerFragment;
import com.android.contacts.list.GroupMemberPickerFragment;
import com.android.contacts.list.JoinContactListFragment;
import com.android.contacts.list.LegacyPhoneNumberPickerFragment;
import com.android.contacts.list.MultiSelectContactsListFragment;
import com.android.contacts.list.MultiSelectEmailAddressesListFragment;
import com.android.contacts.list.MultiSelectPhoneNumbersListFragment;
import com.android.contacts.list.OnContactPickerActionListener;
import com.android.contacts.list.OnEmailAddressPickerActionListener;
import com.android.contacts.list.OnPhoneNumberPickerActionListener;
import com.android.contacts.list.OnPostalAddressPickerActionListener;
import com.android.contacts.list.PhoneNumberPickerFragment;
import com.android.contacts.list.PostalAddressPickerFragment;
import com.android.contacts.model.account.BaseAccountType;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.ViewUtil;

/* loaded from: classes.dex */
public class ContactSelectionActivity extends AppCompatContactsActivity implements View.OnCreateContextMenuListener, ActionBarAdapter.Listener, View.OnClickListener, View.OnFocusChangeListener, MultiSelectContactsListFragment.OnCheckBoxListActionListener {
    private ActionBarAdapter mActionBarAdapter;
    private int mActionCode = -1;
    private ContactsIntentResolver mIntentResolver = new ContactsIntentResolver(this);
    private boolean mIsSearchMode;
    private boolean mIsSearchSupported;
    protected ContactEntryListFragment<?> mListFragment;
    private ContactsRequest mRequest;
    private Toolbar mToolbar;

    @Override // android.app.Activity
    public void onAttachFragment(Fragment fragment) {
        if (fragment instanceof ContactEntryListFragment) {
            this.mListFragment = (ContactEntryListFragment) fragment;
            setupActionListener();
        }
    }

    @Override // com.android.contacts.AppCompatContactsActivity, com.android.contacts.activities.AppCompatTransactionSafeActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().addSystemFlags(524288);
        RequestPermissionsActivity.startPermissionActivityIfNeeded(this);
        if (bundle != null) {
            this.mActionCode = bundle.getInt("actionCode");
            this.mIsSearchMode = bundle.getBoolean("searchMode");
        }
        ContactsRequest resolveIntent = this.mIntentResolver.resolveIntent(getIntent());
        this.mRequest = resolveIntent;
        if (!resolveIntent.isValid()) {
            setResult(0);
            finish();
            return;
        }
        setContentView(R.layout.contact_picker);
        if (this.mActionCode != this.mRequest.getActionCode()) {
            this.mActionCode = this.mRequest.getActionCode();
            configureListFragment();
        }
        prepareSearchViewAndActionBar(bundle);
        configureActivityTitle();
    }

    public boolean isSelectionMode() {
        return this.mActionBarAdapter.isSelectionMode();
    }

    public boolean isSearchMode() {
        return this.mActionBarAdapter.isSearchMode();
    }

    private void prepareSearchViewAndActionBar(Bundle bundle) {
        Toolbar toolbar = (Toolbar) getView(R.id.toolbar);
        this.mToolbar = toolbar;
        setSupportActionBar(toolbar);
        ViewUtil.addRectangularOutlineProvider(findViewById(R.id.toolbar_parent), getResources());
        ActionBarAdapter actionBarAdapter = new ActionBarAdapter(this, this, getSupportActionBar(), this.mToolbar, R.string.enter_contact_name);
        this.mActionBarAdapter = actionBarAdapter;
        actionBarAdapter.setShowHomeIcon(true);
        this.mActionBarAdapter.setShowHomeAsUp(true);
        this.mActionBarAdapter.initialize(bundle, this.mRequest);
        this.mIsSearchSupported = (this.mRequest.getActionCode() == 100 || this.mRequest.getActionCode() == 106 || this.mRequest.getActionCode() == 107 || this.mRequest.isLegacyCompatibilityMode()) ? false : true;
        configureSearchMode();
    }

    private void configureSearchMode() {
        this.mActionBarAdapter.setSearchMode(this.mIsSearchMode);
        invalidateOptionsMenu();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            setResult(0);
            onBackPressed();
        } else if (itemId == R.id.menu_search) {
            this.mIsSearchMode = !this.mIsSearchMode;
            configureSearchMode();
        } else {
            return super.onOptionsItemSelected(menuItem);
        }
        return true;
    }

    @Override // com.android.contacts.activities.AppCompatTransactionSafeActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("actionCode", this.mActionCode);
        bundle.putBoolean("searchMode", this.mIsSearchMode);
        ActionBarAdapter actionBarAdapter = this.mActionBarAdapter;
        if (actionBarAdapter != null) {
            actionBarAdapter.onSaveInstanceState(bundle);
        }
    }

    private void configureActivityTitle() {
        if (!TextUtils.isEmpty(this.mRequest.getActivityTitle())) {
            getSupportActionBar().setTitle(this.mRequest.getActivityTitle());
            return;
        }
        int i = -1;
        int actionCode = this.mRequest.getActionCode();
        if (actionCode != 21) {
            if (actionCode != 60 && actionCode != 70) {
                if (actionCode == 80) {
                    i = R.string.contactInsertOrEditActivityTitle;
                } else if (actionCode != 90 && actionCode != 100) {
                    if (actionCode == 110 || actionCode == 120 || actionCode == 130) {
                        i = R.string.shortcutActivityTitle;
                    } else if (actionCode != 150) {
                        switch (actionCode) {
                            case 106:
                            case 107:
                                i = R.string.pickerSelectContactsActivityTitle;
                                break;
                        }
                    } else {
                        i = R.string.titleJoinContactDataWith;
                    }
                }
            }
            i = R.string.contactPickerActivityTitle;
        } else {
            i = R.string.groupMemberPickerActivityTitle;
        }
        if (i > 0) {
            getSupportActionBar().setTitle(i);
        }
    }

    public void configureListFragment() {
        switch (this.mActionCode) {
            case 10:
            case 60:
                ContactPickerFragment contactPickerFragment = new ContactPickerFragment();
                contactPickerFragment.setIncludeFavorites(this.mRequest.shouldIncludeFavorites());
                contactPickerFragment.setListType(10);
                this.mListFragment = contactPickerFragment;
                break;
            case 21:
                GroupMemberPickerFragment newInstance = GroupMemberPickerFragment.newInstance(getIntent().getStringExtra("com.android.contacts.extra.GROUP_ACCOUNT_NAME"), getIntent().getStringExtra("com.android.contacts.extra.GROUP_ACCOUNT_TYPE"), getIntent().getStringExtra("com.android.contacts.extra.GROUP_ACCOUNT_DATA_SET"), getIntent().getStringArrayListExtra("com.android.contacts.extra.GROUP_CONTACT_IDS"));
                this.mListFragment = newInstance;
                newInstance.setListType(16);
                break;
            case 70:
                ContactPickerFragment contactPickerFragment2 = new ContactPickerFragment();
                contactPickerFragment2.setCreateContactEnabled(!this.mRequest.isSearchMode());
                contactPickerFragment2.setListType(10);
                this.mListFragment = contactPickerFragment2;
                break;
            case 80:
                ContactPickerFragment contactPickerFragment3 = new ContactPickerFragment();
                contactPickerFragment3.setEditMode(true);
                contactPickerFragment3.setDirectorySearchMode(0);
                contactPickerFragment3.setCreateContactEnabled(!this.mRequest.isSearchMode());
                contactPickerFragment3.setListType(10);
                this.mListFragment = contactPickerFragment3;
                break;
            case 90:
                PhoneNumberPickerFragment phoneNumberPickerFragment = getPhoneNumberPickerFragment(this.mRequest);
                phoneNumberPickerFragment.setListType(12);
                this.mListFragment = phoneNumberPickerFragment;
                break;
            case GroupUtil.RESULT_SEND_TO_SELECTION /* 100 */:
                PostalAddressPickerFragment postalAddressPickerFragment = new PostalAddressPickerFragment();
                postalAddressPickerFragment.setListType(14);
                this.mListFragment = postalAddressPickerFragment;
                break;
            case 105:
                EmailAddressPickerFragment emailAddressPickerFragment = new EmailAddressPickerFragment();
                this.mListFragment = emailAddressPickerFragment;
                emailAddressPickerFragment.setListType(13);
                break;
            case 106:
                MultiSelectEmailAddressesListFragment multiSelectEmailAddressesListFragment = new MultiSelectEmailAddressesListFragment();
                this.mListFragment = multiSelectEmailAddressesListFragment;
                multiSelectEmailAddressesListFragment.setArguments(getIntent().getExtras());
                break;
            case 107:
                MultiSelectPhoneNumbersListFragment multiSelectPhoneNumbersListFragment = new MultiSelectPhoneNumbersListFragment();
                this.mListFragment = multiSelectPhoneNumbersListFragment;
                multiSelectPhoneNumbersListFragment.setArguments(getIntent().getExtras());
                break;
            case 110:
                ContactPickerFragment contactPickerFragment4 = new ContactPickerFragment();
                contactPickerFragment4.setShortcutRequested(true);
                contactPickerFragment4.setListType(11);
                this.mListFragment = contactPickerFragment4;
                break;
            case 120:
                PhoneNumberPickerFragment phoneNumberPickerFragment2 = getPhoneNumberPickerFragment(this.mRequest);
                phoneNumberPickerFragment2.setShortcutAction("android.intent.action.CALL");
                phoneNumberPickerFragment2.setListType(11);
                this.mListFragment = phoneNumberPickerFragment2;
                break;
            case BaseAccountType.Weight.NOTE /* 130 */:
                PhoneNumberPickerFragment phoneNumberPickerFragment3 = getPhoneNumberPickerFragment(this.mRequest);
                phoneNumberPickerFragment3.setShortcutAction("android.intent.action.SENDTO");
                phoneNumberPickerFragment3.setListType(11);
                this.mListFragment = phoneNumberPickerFragment3;
                break;
            case BaseAccountType.Weight.GROUP_MEMBERSHIP /* 150 */:
                JoinContactListFragment joinContactListFragment = new JoinContactListFragment();
                joinContactListFragment.setTargetContactId(getTargetContactId());
                joinContactListFragment.setListType(15);
                this.mListFragment = joinContactListFragment;
                break;
            default:
                throw new IllegalStateException("Invalid action code: " + this.mActionCode);
        }
        this.mListFragment.setLegacyCompatibilityMode(this.mRequest.isLegacyCompatibilityMode());
        this.mListFragment.setDirectoryResultLimit(20);
        getFragmentManager().beginTransaction().replace(R.id.list_container, this.mListFragment).commitAllowingStateLoss();
    }

    private PhoneNumberPickerFragment getPhoneNumberPickerFragment(ContactsRequest contactsRequest) {
        if (this.mRequest.isLegacyCompatibilityMode()) {
            return new LegacyPhoneNumberPickerFragment();
        }
        return new PhoneNumberPickerFragment();
    }

    public void setupActionListener() {
        ContactEntryListFragment<?> contactEntryListFragment = this.mListFragment;
        if (contactEntryListFragment instanceof ContactPickerFragment) {
            ((ContactPickerFragment) contactEntryListFragment).setOnContactPickerActionListener(new ContactPickerActionListener());
            return;
        }
        if (contactEntryListFragment instanceof PhoneNumberPickerFragment) {
            ((PhoneNumberPickerFragment) contactEntryListFragment).setOnPhoneNumberPickerActionListener(new PhoneNumberPickerActionListener());
            return;
        }
        if (contactEntryListFragment instanceof PostalAddressPickerFragment) {
            ((PostalAddressPickerFragment) contactEntryListFragment).setOnPostalAddressPickerActionListener(new PostalAddressPickerActionListener());
            return;
        }
        if (contactEntryListFragment instanceof EmailAddressPickerFragment) {
            ((EmailAddressPickerFragment) contactEntryListFragment).setOnEmailAddressPickerActionListener(new EmailAddressPickerActionListener());
            return;
        }
        if (contactEntryListFragment instanceof MultiSelectEmailAddressesListFragment) {
            ((MultiSelectEmailAddressesListFragment) contactEntryListFragment).setCheckBoxListListener(this);
            return;
        }
        if (contactEntryListFragment instanceof MultiSelectPhoneNumbersListFragment) {
            ((MultiSelectPhoneNumbersListFragment) contactEntryListFragment).setCheckBoxListListener(this);
            return;
        }
        if (contactEntryListFragment instanceof JoinContactListFragment) {
            ((JoinContactListFragment) contactEntryListFragment).setOnContactPickerActionListener(new JoinContactActionListener());
            return;
        }
        if (contactEntryListFragment instanceof GroupMemberPickerFragment) {
            ((GroupMemberPickerFragment) contactEntryListFragment).setListener(new GroupMemberPickerListener());
            getMultiSelectListFragment().setCheckBoxListListener(this);
        } else {
            throw new IllegalStateException("Unsupported list fragment type: " + this.mListFragment);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MultiSelectContactsListFragment getMultiSelectListFragment() {
        ContactEntryListFragment<?> contactEntryListFragment = this.mListFragment;
        if (contactEntryListFragment instanceof MultiSelectContactsListFragment) {
            return (MultiSelectContactsListFragment) contactEntryListFragment;
        }
        return null;
    }

    @Override // com.android.contacts.activities.ActionBarAdapter.Listener
    public void onAction(int i) {
        if (i == 0) {
            this.mListFragment.setQueryString(this.mActionBarAdapter.getQueryString(), false);
            return;
        }
        if (i == 1) {
            this.mIsSearchMode = true;
            configureSearchMode();
            return;
        }
        if (i == 2) {
            if (getMultiSelectListFragment() != null) {
                getMultiSelectListFragment().displayCheckBoxes(true);
            }
            invalidateOptionsMenu();
        } else {
            if (i != 3) {
                return;
            }
            this.mListFragment.setQueryString("", false);
            this.mActionBarAdapter.setSearchMode(false);
            if (getMultiSelectListFragment() != null) {
                getMultiSelectListFragment().displayCheckBoxes(false);
            }
            invalidateOptionsMenu();
        }
    }

    @Override // com.android.contacts.activities.ActionBarAdapter.Listener
    public void onUpButtonPressed() {
        onBackPressed();
    }

    @Override // com.android.contacts.list.MultiSelectContactsListFragment.OnCheckBoxListActionListener
    public void onStartDisplayingCheckBoxes() {
        this.mActionBarAdapter.setSelectionMode(true);
    }

    @Override // com.android.contacts.list.MultiSelectContactsListFragment.OnCheckBoxListActionListener
    public void onSelectedContactIdsChanged() {
        if (this.mListFragment instanceof MultiSelectContactsListFragment) {
            int size = getMultiSelectListFragment().getSelectedContactIds().size();
            this.mActionBarAdapter.setSelectionCount(size);
            updateAddContactsButton(size);
            invalidateOptionsMenu();
        }
    }

    private void updateAddContactsButton(int i) {
        TextView textView = (TextView) this.mActionBarAdapter.getSelectionContainer().findViewById(R.id.add_contacts);
        if (i > 0) {
            textView.setVisibility(0);
            textView.setAllCaps(true);
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.activities.ContactSelectionActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ContactSelectionActivity.this.returnSelectedContacts(ContactSelectionActivity.this.getMultiSelectListFragment().getSelectedContactIdsArray());
                }
            });
            return;
        }
        textView.setVisibility(8);
    }

    @Override // com.android.contacts.list.MultiSelectContactsListFragment.OnCheckBoxListActionListener
    public void onStopDisplayingCheckBoxes() {
        this.mActionBarAdapter.setSelectionMode(false);
    }

    private final class ContactPickerActionListener implements OnContactPickerActionListener {
        private ContactPickerActionListener() {
        }

        @Override // com.android.contacts.list.OnContactPickerActionListener
        public void onCreateNewContactAction() {
            ContactSelectionActivity.this.startCreateNewContactActivity();
        }

        @Override // com.android.contacts.list.OnContactPickerActionListener
        public void onEditContactAction(Uri uri) {
            ContactSelectionActivity contactSelectionActivity = ContactSelectionActivity.this;
            contactSelectionActivity.startActivityAndForwardResult(EditorIntents.createEditContactIntent(contactSelectionActivity, uri, null, -1L));
        }

        @Override // com.android.contacts.list.OnContactPickerActionListener
        public void onPickContactAction(Uri uri) {
            ContactSelectionActivity.this.returnPickerResult(uri);
        }

        @Override // com.android.contacts.list.OnContactPickerActionListener
        public void onShortcutIntentCreated(Intent intent) {
            ContactSelectionActivity.this.returnPickerResult(intent);
        }
    }

    private final class PhoneNumberPickerActionListener implements OnPhoneNumberPickerActionListener {
        private PhoneNumberPickerActionListener() {
        }

        @Override // com.android.contacts.list.OnPhoneNumberPickerActionListener
        public void onPickDataUri(Uri uri, boolean z, int i) {
            ContactSelectionActivity.this.returnPickerResult(uri);
        }

        @Override // com.android.contacts.list.OnPhoneNumberPickerActionListener
        public void onPickPhoneNumber(String str, boolean z, int i) {
            Log.w("ContactSelection", "Unsupported call.");
        }

        @Override // com.android.contacts.list.OnPhoneNumberPickerActionListener
        public void onShortcutIntentCreated(Intent intent) {
            ContactSelectionActivity.this.returnPickerResult(intent);
        }

        @Override // com.android.contacts.list.OnPhoneNumberPickerActionListener
        public void onHomeInActionBarSelected() {
            ContactSelectionActivity.this.onBackPressed();
        }
    }

    private final class JoinContactActionListener implements OnContactPickerActionListener {
        @Override // com.android.contacts.list.OnContactPickerActionListener
        public void onCreateNewContactAction() {
        }

        @Override // com.android.contacts.list.OnContactPickerActionListener
        public void onEditContactAction(Uri uri) {
        }

        @Override // com.android.contacts.list.OnContactPickerActionListener
        public void onShortcutIntentCreated(Intent intent) {
        }

        private JoinContactActionListener() {
        }

        @Override // com.android.contacts.list.OnContactPickerActionListener
        public void onPickContactAction(Uri uri) {
            ContactSelectionActivity.this.setResult(-1, new Intent((String) null, uri));
            ContactSelectionActivity.this.finish();
        }
    }

    private final class GroupMemberPickerListener implements GroupMemberPickerFragment.Listener {
        private GroupMemberPickerListener() {
        }

        @Override // com.android.contacts.list.GroupMemberPickerFragment.Listener
        public void onGroupMemberClicked(long j) {
            Intent intent = new Intent();
            intent.putExtra("com.android.contacts.action.CONTACT_ID", j);
            ContactSelectionActivity.this.returnPickerResult(intent);
        }

        @Override // com.android.contacts.list.GroupMemberPickerFragment.Listener
        public void onSelectGroupMembers() {
            ContactSelectionActivity.this.mActionBarAdapter.setSelectionMode(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void returnSelectedContacts(long[] jArr) {
        Intent intent = new Intent();
        intent.putExtra("com.android.contacts.action.CONTACT_IDS", jArr);
        returnPickerResult(intent);
    }

    private final class PostalAddressPickerActionListener implements OnPostalAddressPickerActionListener {
        private PostalAddressPickerActionListener() {
        }

        @Override // com.android.contacts.list.OnPostalAddressPickerActionListener
        public void onPickPostalAddressAction(Uri uri) {
            ContactSelectionActivity.this.returnPickerResult(uri);
        }
    }

    private final class EmailAddressPickerActionListener implements OnEmailAddressPickerActionListener {
        private EmailAddressPickerActionListener() {
        }

        @Override // com.android.contacts.list.OnEmailAddressPickerActionListener
        public void onPickEmailAddressAction(Uri uri) {
            ContactSelectionActivity.this.returnPickerResult(uri);
        }
    }

    public void startActivityAndForwardResult(Intent intent) {
        intent.setFlags(33554432);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            intent.putExtras(extras);
        }
        try {
            ImplicitIntentsUtil.startActivityInApp(this, intent);
        } catch (ActivityNotFoundException e) {
            Log.e("ContactSelection", "startActivity() failed: " + e);
            Toast.makeText(this, R.string.missing_app, 0).show();
        }
        finish();
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        if (view.getId() == R.id.search_view && z) {
            this.mActionBarAdapter.setFocusOnSearchView();
        }
    }

    public void returnPickerResult(Uri uri) {
        Intent intent = new Intent();
        intent.setData(uri);
        returnPickerResult(intent);
    }

    public void returnPickerResult(Intent intent) {
        intent.setFlags(1);
        setResult(-1, intent);
        finish();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.floating_action_button) {
            startCreateNewContactActivity();
        }
    }

    private long getTargetContactId() {
        Intent intent = getIntent();
        long longExtra = intent.getLongExtra("com.android.contacts.action.CONTACT_ID", -1L);
        if (longExtra != -1) {
            return longExtra;
        }
        Log.e("ContactSelection", "Intent " + intent.getAction() + " is missing required extra: com.android.contacts.action.CONTACT_ID");
        setResult(0);
        finish();
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startCreateNewContactActivity() {
        Intent intent = new Intent("android.intent.action.INSERT", ContactsContract.Contacts.CONTENT_URI);
        intent.putExtra("finishActivityOnSaveCompleted", true);
        startActivityAndForwardResult(intent);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        getMenuInflater().inflate(R.menu.search_menu, menu);
        MenuItem findItem = menu.findItem(R.id.menu_search);
        findItem.setVisible(!this.mIsSearchMode && this.mIsSearchSupported);
        Drawable icon = findItem.getIcon();
        if (icon != null) {
            icon.mutate().setColorFilter(ContextCompat.getColor(this, R.color.actionbar_icon_color), PorterDuff.Mode.SRC_ATOP);
        }
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (isSafeToCommitTransactions()) {
            if (isSelectionMode()) {
                this.mActionBarAdapter.setSelectionMode(false);
                if (getMultiSelectListFragment() != null) {
                    getMultiSelectListFragment().displayCheckBoxes(false);
                    return;
                }
                return;
            }
            if (this.mIsSearchMode) {
                this.mIsSearchMode = false;
                configureSearchMode();
            } else {
                super.onBackPressed();
            }
        }
    }
}
