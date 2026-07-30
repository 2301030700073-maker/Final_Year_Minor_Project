package com.android.contacts.activities;

import android.accounts.Account;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SyncStatusObserver;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.provider.ContactsContract;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.ImageButton;
import android.widget.Toast;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.content.ContextCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.android.contacts.AppCompatContactsActivity;
import com.android.contacts.ContactSaveService;
import com.android.contacts.R;
import com.android.contacts.compat.CompatUtils;
import com.android.contacts.drawer.DrawerFragment;
import com.android.contacts.editor.SelectAccountDialogFragment;
import com.android.contacts.group.GroupListItem;
import com.android.contacts.group.GroupMembersFragment;
import com.android.contacts.group.GroupNameEditDialogFragment;
import com.android.contacts.group.GroupUtil;
import com.android.contacts.list.ContactListFilter;
import com.android.contacts.list.ContactListFilterController;
import com.android.contacts.list.ContactsIntentResolver;
import com.android.contacts.list.ContactsRequest;
import com.android.contacts.list.ContactsUnavailableFragment;
import com.android.contacts.list.DefaultContactBrowseListFragment;
import com.android.contacts.list.MultiSelectContactsListFragment;
import com.android.contacts.list.ProviderStatusWatcher;
import com.android.contacts.logging.Logger;
import com.android.contacts.model.AccountTypeManager;
import com.android.contacts.model.account.AccountInfo;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.preference.ContactsPreferenceActivity;
import com.android.contacts.util.AccountFilterUtil;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.MaterialColorMapUtils;
import com.android.contacts.util.SharedPreferenceUtil;
import com.android.contacts.util.SyncUtil;
import com.android.contacts.util.ViewUtil;
import com.android.contacts.widget.FloatingActionButtonController;
import com.android.contactsbind.FeatureHighlightHelper;
import com.android.contactsbind.HelpUtils;
import com.android.contactsbind.ObjectFactory;
import com.google.android.material.snackbar.Snackbar;
import com.google.common.util.concurrent.Futures;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class PeopleActivity extends AppCompatContactsActivity implements DrawerFragment.DrawerFragmentListener, SelectAccountDialogFragment.Listener {
    private static final AtomicInteger sNextInstanceId = new AtomicInteger();
    private AccountTypeManager mAccountTypeManager;
    private ContactListFilterController mContactListFilterController;
    private DefaultContactBrowseListFragment mContactsListFragment;
    private ContactsView mCurrentView;
    private DrawerFragment mDrawerFragment;
    private DrawerLayout mDrawerLayout;
    private View mFloatingActionButtonContainer;
    private FloatingActionButtonController mFloatingActionButtonController;
    private Uri mGroupUri;
    private boolean mIsRecreatedInstance;
    private CoordinatorLayout mLayoutRoot;
    private GroupMembersFragment mMembersFragment;
    private AccountWithDataSet mNewGroupAccount;
    private Integer mProviderStatus;
    private ContactsRequest mRequest;
    private BroadcastReceiver mSaveServiceListener;
    private boolean mShouldSwitchToAllContacts;
    private boolean mShouldSwitchToGroupView;
    private Object mStatusChangeListenerHandle;
    private ContactsActionBarDrawerToggle mToggle;
    private Toolbar mToolbar;
    private boolean wasLastFabAnimationScaleIn = false;
    private final Handler mHandler = new Handler();
    private SyncStatusObserver mSyncStatusObserver = new SyncStatusObserver() { // from class: com.android.contacts.activities.PeopleActivity.1
        @Override // android.content.SyncStatusObserver
        public void onStatusChanged(int i) {
            PeopleActivity.this.mHandler.post(new Runnable() { // from class: com.android.contacts.activities.PeopleActivity.1.1
                @Override // java.lang.Runnable
                public void run() {
                    PeopleActivity.this.onSyncStateUpdated();
                }
            });
        }
    };
    private final ContactListFilterController.ContactListFilterListener mFilterListener = new ContactListFilterController.ContactListFilterListener() { // from class: com.android.contacts.activities.PeopleActivity.2
        @Override // com.android.contacts.list.ContactListFilterController.ContactListFilterListener
        public void onContactListFilterChanged() {
            ContactListFilter filter = PeopleActivity.this.mContactListFilterController.getFilter();
            PeopleActivity.this.handleFilterChangeForFragment(filter);
            PeopleActivity.this.handleFilterChangeForActivity(filter);
        }
    };
    private final ProviderStatusWatcher.ProviderStatusListener mProviderStatusListener = new ProviderStatusWatcher.ProviderStatusListener() { // from class: com.android.contacts.activities.PeopleActivity.3
        @Override // com.android.contacts.list.ProviderStatusWatcher.ProviderStatusListener
        public void onProviderStatusChange() {
            PeopleActivity.this.updateViewConfiguration(false);
        }
    };
    private final int mInstanceId = sNextInstanceId.getAndIncrement();
    private ContactsIntentResolver mIntentResolver = new ContactsIntentResolver(this);
    private ProviderStatusWatcher mProviderStatusWatcher = ProviderStatusWatcher.getInstance(this);

    public enum ContactsView {
        NONE,
        ALL_CONTACTS,
        ASSISTANT,
        GROUP_VIEW,
        ACCOUNT_VIEW
    }

    @Override // com.android.contacts.editor.SelectAccountDialogFragment.Listener
    public void onAccountSelectorCancelled() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSyncStateUpdated() {
        ContactListFilter filter;
        List<AccountWithDataSet> emptyList;
        if (isListFragmentInSearchMode() || isListFragmentInSelectionMode() || (filter = this.mContactListFilterController.getFilter()) == null) {
            return;
        }
        SwipeRefreshLayout swipeRefreshLayout = this.mContactsListFragment.getSwipeRefreshLayout();
        if (swipeRefreshLayout == null) {
            if (Log.isLoggable("PeopleActivity", 3)) {
                Log.d("PeopleActivity", "Can not load swipeRefreshLayout, swipeRefreshLayout is null");
                return;
            }
            return;
        }
        if (filter.filterType == 0 && filter.isGoogleAccountType()) {
            emptyList = Collections.singletonList(new AccountWithDataSet(filter.accountName, filter.accountType, null));
        } else if (filter.shouldShowSyncState()) {
            emptyList = AccountInfo.extractAccounts(this.mAccountTypeManager.getWritableGoogleAccounts());
        } else {
            emptyList = Collections.emptyList();
        }
        if (SyncUtil.isAnySyncing(emptyList)) {
            return;
        }
        swipeRefreshLayout.setRefreshing(false);
    }

    public void showConnectionErrorMsg() {
        Snackbar.make(this.mLayoutRoot, R.string.connection_error_message, 0).show();
    }

    private class ContactsActionBarDrawerToggle extends ActionBarDrawerToggle {
        private boolean mMenuClickedBefore;

        public ContactsActionBarDrawerToggle(AppCompatActivity appCompatActivity, DrawerLayout drawerLayout, Toolbar toolbar, int i, int i2) {
            super(appCompatActivity, drawerLayout, toolbar, i, i2);
            this.mMenuClickedBefore = SharedPreferenceUtil.getHamburgerMenuClickedBefore(PeopleActivity.this);
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerOpened(View view) {
            super.onDrawerOpened(view);
            if (!this.mMenuClickedBefore) {
                SharedPreferenceUtil.setHamburgerMenuClickedBefore(PeopleActivity.this);
                this.mMenuClickedBefore = true;
            }
            view.requestFocus();
            PeopleActivity.this.invalidateOptionsMenu();
            stopSearchAndSelection();
            PeopleActivity.this.updateStatusBarBackground();
        }

        private void stopSearchAndSelection() {
            MultiSelectContactsListFragment listFragment;
            ActionBarAdapter actionBarAdapter;
            if (PeopleActivity.this.isAllContactsView() || PeopleActivity.this.isAccountView()) {
                listFragment = PeopleActivity.this.getListFragment();
            } else {
                listFragment = PeopleActivity.this.isGroupView() ? PeopleActivity.this.getGroupFragment() : null;
            }
            if (listFragment == null || (actionBarAdapter = listFragment.getActionBarAdapter()) == null) {
                return;
            }
            if (actionBarAdapter.isSearchMode()) {
                actionBarAdapter.setSearchMode(false);
            } else if (actionBarAdapter.isSelectionMode()) {
                actionBarAdapter.setSelectionMode(false);
            }
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerClosed(View view) {
            super.onDrawerClosed(view);
            PeopleActivity.this.invalidateOptionsMenu();
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerStateChanged(int i) {
            super.onDrawerStateChanged(i);
            if (i != 0) {
                PeopleActivity.this.updateStatusBarBackground();
            }
        }
    }

    public String toString() {
        return String.format("%s@%d", PeopleActivity.class.getSimpleName(), Integer.valueOf(this.mInstanceId));
    }

    private boolean areContactsAvailable() {
        Integer num = this.mProviderStatus;
        return num != null && num.equals(0);
    }

    @Override // com.android.contacts.AppCompatContactsActivity, com.android.contacts.activities.AppCompatTransactionSafeActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        if (Log.isLoggable("ContactsPerf", 3)) {
            Log.d("ContactsPerf", "PeopleActivity.onCreate start");
        }
        setTheme(R.style.PeopleActivityTheme);
        super.onCreate(bundle);
        this.mAccountTypeManager = AccountTypeManager.getInstance(this);
        this.mContactListFilterController = ContactListFilterController.getInstance(this);
        RequestPermissionsActivity.startPermissionActivityIfNeeded(this);
        if (!processIntent(false)) {
            finish();
            return;
        }
        this.mContactListFilterController.checkFilterValidity(false);
        super.setContentView(R.layout.contacts_drawer_activity);
        Toolbar toolbar = (Toolbar) getView(R.id.toolbar);
        this.mToolbar = toolbar;
        setSupportActionBar(toolbar);
        ViewUtil.addRectangularOutlineProvider(findViewById(R.id.toolbar_parent), getResources());
        this.mDrawerLayout = (DrawerLayout) findViewById(R.id.drawer_layout);
        this.mDrawerFragment = (DrawerFragment) getFragmentManager().findFragmentById(R.id.drawer);
        ContactsActionBarDrawerToggle contactsActionBarDrawerToggle = new ContactsActionBarDrawerToggle(this, this.mDrawerLayout, this.mToolbar, R.string.navigation_drawer_open, R.string.navigation_drawer_close);
        this.mToggle = contactsActionBarDrawerToggle;
        this.mDrawerLayout.setDrawerListener(contactsActionBarDrawerToggle);
        this.mToggle.setToolbarNavigationClickListener(new View.OnClickListener() { // from class: com.android.contacts.activities.PeopleActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PeopleActivity.this.onBackPressed();
            }
        });
        if (bundle != null) {
            this.mCurrentView = ContactsView.values()[bundle.getInt("contactsView")];
        } else {
            this.mCurrentView = ContactsView.ALL_CONTACTS;
        }
        if (bundle != null && bundle.containsKey("newGroupAccount")) {
            this.mNewGroupAccount = AccountWithDataSet.unstringify(bundle.getString("newGroupAccount"));
        }
        this.mContactListFilterController.addListener(this.mFilterListener);
        this.mProviderStatusWatcher.addListener(this.mProviderStatusListener);
        boolean z = bundle != null;
        this.mIsRecreatedInstance = z;
        if (z) {
            this.mGroupUri = (Uri) bundle.getParcelable("groupUri");
        }
        createViewsAndFragments();
        if (Log.isLoggable("ContactsPerf", 3)) {
            Log.d("ContactsPerf", "PeopleActivity.onCreate finish");
        }
        getWindow().setBackgroundDrawable(null);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        String action = intent.getAction();
        if ("createGroup".equals(action)) {
            Uri data = intent.getData();
            this.mGroupUri = data;
            if (data == null) {
                toast(R.string.groupSavedErrorToast);
                return;
            }
            if (Log.isLoggable("PeopleActivity", 2)) {
                Log.v("PeopleActivity", "Received group URI " + this.mGroupUri);
            }
            switchView(ContactsView.GROUP_VIEW);
            this.mMembersFragment.toastForSaveAction(action);
            return;
        }
        if (isGroupSaveAction(action)) {
            Uri data2 = intent.getData();
            this.mGroupUri = data2;
            if (data2 == null) {
                popSecondLevel();
                toast(R.string.groupSavedErrorToast);
                return;
            }
            if (Log.isLoggable("PeopleActivity", 2)) {
                Log.v("PeopleActivity", "Received group URI " + this.mGroupUri);
            }
            if (GroupUtil.ACTION_REMOVE_FROM_GROUP.equals(action)) {
                switchToOrUpdateGroupView(action);
            } else {
                switchView(ContactsView.GROUP_VIEW);
            }
            this.mMembersFragment.toastForSaveAction(action);
        }
        setIntent(intent);
        if (!processIntent(true)) {
            finish();
            return;
        }
        this.mContactListFilterController.checkFilterValidity(false);
        if (!isInSecondLevel()) {
            this.mContactsListFragment.setParameters(this.mRequest, true);
            this.mContactsListFragment.initializeActionBarAdapter(null);
        }
        initializeFabVisibility();
        invalidateOptionsMenuIfNeeded();
    }

    private static boolean isGroupSaveAction(String str) {
        return "updateGroup".equals(str) || GroupUtil.ACTION_ADD_TO_GROUP.equals(str) || GroupUtil.ACTION_REMOVE_FROM_GROUP.equals(str);
    }

    private void toast(int i) {
        if (i >= 0) {
            Toast.makeText(this, i, 0).show();
        }
    }

    private boolean processIntent(boolean z) {
        this.mRequest = this.mIntentResolver.resolveIntent(getIntent());
        if (Log.isLoggable("PeopleActivity", 3)) {
            Log.d("PeopleActivity", this + " processIntent: forNewIntent=" + z + " intent=" + getIntent() + " request=" + this.mRequest);
        }
        if (!this.mRequest.isValid()) {
            setResult(0);
            return false;
        }
        int actionCode = this.mRequest.getActionCode();
        if (actionCode == 140) {
            ImplicitIntentsUtil.startQuickContact(this, this.mRequest.getContactUri(), 0);
            return false;
        }
        switch (actionCode) {
            case 22:
                onCreateGroupMenuItemClicked();
                return true;
            case 23:
            case 24:
                this.mShouldSwitchToGroupView = true;
                return true;
            default:
                return true;
        }
    }

    private void createViewsAndFragments() {
        setContentView(R.layout.people_activity);
        FragmentManager fragmentManager = getFragmentManager();
        setUpListFragment(fragmentManager);
        this.mMembersFragment = (GroupMembersFragment) fragmentManager.findFragmentByTag("contacts-groups");
        this.mFloatingActionButtonContainer = findViewById(R.id.floating_action_button_container);
        ImageButton imageButton = (ImageButton) findViewById(R.id.floating_action_button);
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.activities.PeopleActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PeopleActivity peopleActivity = PeopleActivity.this;
                AccountFilterUtil.startEditorIntent(peopleActivity, peopleActivity.getIntent(), PeopleActivity.this.mContactListFilterController.getFilter());
            }
        });
        this.mFloatingActionButtonController = new FloatingActionButtonController(this, this.mFloatingActionButtonContainer, imageButton);
        invalidateOptionsMenuIfNeeded();
        this.mLayoutRoot = (CoordinatorLayout) findViewById(R.id.root);
        if (!this.mShouldSwitchToGroupView || this.mIsRecreatedInstance) {
            return;
        }
        this.mGroupUri = this.mRequest.getContactUri();
        switchToOrUpdateGroupView(GroupUtil.ACTION_SWITCH_GROUP);
        this.mShouldSwitchToGroupView = false;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i) {
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.content_frame);
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        LayoutInflater.from(this).inflate(i, viewGroup);
    }

    private void setUpListFragment(FragmentManager fragmentManager) {
        DefaultContactBrowseListFragment defaultContactBrowseListFragment = (DefaultContactBrowseListFragment) fragmentManager.findFragmentByTag("contacts-all");
        this.mContactsListFragment = defaultContactBrowseListFragment;
        if (defaultContactBrowseListFragment == null) {
            DefaultContactBrowseListFragment defaultContactBrowseListFragment2 = new DefaultContactBrowseListFragment();
            this.mContactsListFragment = defaultContactBrowseListFragment2;
            defaultContactBrowseListFragment2.setAnimateOnLoad(true);
            fragmentManager.beginTransaction().add(R.id.contacts_list_container, this.mContactsListFragment, "contacts-all").commit();
            fragmentManager.executePendingTransactions();
        }
        this.mContactsListFragment.setContactsAvailable(areContactsAvailable());
        this.mContactsListFragment.setListType(this.mContactListFilterController.getFilterListType());
        this.mContactsListFragment.setParameters(this.mRequest, false);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        this.mProviderStatusWatcher.stop();
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.mSaveServiceListener);
        super.onPause();
        ContentResolver.removeStatusChangeListener(this.mStatusChangeListenerHandle);
        onSyncStateUpdated();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        initializeHomeVisibility();
    }

    @Override // com.android.contacts.activities.AppCompatTransactionSafeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.mDrawerLayout.isDrawerOpen(8388611)) {
            updateStatusBarBackground();
        }
        if (this.mShouldSwitchToAllContacts) {
            switchToAllContacts();
        }
        this.mProviderStatusWatcher.start();
        updateViewConfiguration(true);
        this.mStatusChangeListenerHandle = ContentResolver.addStatusChangeListener(7, this.mSyncStatusObserver);
        onSyncStateUpdated();
        initializeFabVisibility();
        initializeHomeVisibility();
        this.mSaveServiceListener = new SaveServiceListener();
        LocalBroadcastManager.getInstance(this).registerReceiver(this.mSaveServiceListener, new IntentFilter(ContactSaveService.BROADCAST_GROUP_DELETED));
    }

    public void updateStatusBarBackground() {
        updateStatusBarBackground(-1);
    }

    public void updateStatusBarBackground(int i) {
        if (CompatUtils.isLollipopCompatible()) {
            if (i == -1) {
                this.mDrawerLayout.setStatusBarBackgroundColor(MaterialColorMapUtils.getStatusBarColor(this));
            } else {
                this.mDrawerLayout.setStatusBarBackgroundColor(i);
            }
            this.mDrawerLayout.invalidate();
            getWindow().setStatusBarColor(0);
        }
    }

    @Override // com.android.contacts.AppCompatContactsActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        this.mProviderStatusWatcher.removeListener(this.mProviderStatusListener);
        this.mContactListFilterController.removeListener(this.mFilterListener);
        super.onDestroy();
    }

    private void initializeFabVisibility() {
        this.mFloatingActionButtonContainer.setVisibility(shouldHideFab() ? 8 : 0);
        this.mFloatingActionButtonController.resetIn();
        this.wasLastFabAnimationScaleIn = !shouldHideFab();
    }

    private void initializeHomeVisibility() {
        if (getToolbar() != null) {
            if (isListFragmentInSelectionMode() || isListFragmentInSearchMode() || isGroupsFragmentInSelectionMode() || isGroupsFragmentInSearchMode()) {
                getToolbar().setNavigationIcon((Drawable) null);
            }
        }
    }

    private boolean shouldHideFab() {
        DefaultContactBrowseListFragment defaultContactBrowseListFragment = this.mContactsListFragment;
        return (defaultContactBrowseListFragment != null && defaultContactBrowseListFragment.getActionBarAdapter() == null) || isInSecondLevel() || isListFragmentInSearchMode() || isListFragmentInSelectionMode();
    }

    public void showFabWithAnimation(boolean z) {
        View view = this.mFloatingActionButtonContainer;
        if (view == null) {
            return;
        }
        if (z) {
            if (!this.wasLastFabAnimationScaleIn) {
                view.setVisibility(0);
                this.mFloatingActionButtonController.scaleIn(0);
            }
            this.wasLastFabAnimationScaleIn = true;
            return;
        }
        if (this.wasLastFabAnimationScaleIn) {
            view.setVisibility(0);
            this.mFloatingActionButtonController.scaleOut();
        }
        this.wasLastFabAnimationScaleIn = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateViewConfiguration(boolean z) {
        Integer num;
        int providerStatus = this.mProviderStatusWatcher.getProviderStatus();
        if (z || (num = this.mProviderStatus) == null || !num.equals(Integer.valueOf(providerStatus))) {
            this.mProviderStatus = Integer.valueOf(providerStatus);
            FragmentManager fragmentManager = getFragmentManager();
            FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
            if (shouldShowList()) {
                if (this.mContactsListFragment != null) {
                    Fragment findFragmentByTag = fragmentManager.findFragmentByTag("contacts-unavailable");
                    if (findFragmentByTag != null) {
                        beginTransaction.remove(findFragmentByTag);
                    }
                    if (this.mContactsListFragment.isHidden()) {
                        beginTransaction.show(this.mContactsListFragment);
                    }
                    this.mContactsListFragment.setContactsAvailable(areContactsAvailable());
                    this.mContactsListFragment.setEnabled(true);
                }
            } else {
                DefaultContactBrowseListFragment defaultContactBrowseListFragment = this.mContactsListFragment;
                if (defaultContactBrowseListFragment != null) {
                    defaultContactBrowseListFragment.setEnabled(false);
                }
                ContactsUnavailableFragment contactsUnavailableFragment = new ContactsUnavailableFragment();
                beginTransaction.hide(this.mContactsListFragment);
                beginTransaction.replace(R.id.contacts_unavailable_container, contactsUnavailableFragment, "contacts-unavailable");
                contactsUnavailableFragment.updateStatus(this.mProviderStatus.intValue());
            }
            if (!beginTransaction.isEmpty()) {
                beginTransaction.commit();
                fragmentManager.executePendingTransactions();
            }
            invalidateOptionsMenuIfNeeded();
        }
    }

    private boolean shouldShowList() {
        Integer num = this.mProviderStatus;
        if (num != null) {
            return (num.equals(2) && this.mAccountTypeManager.hasNonLocalAccount()) || this.mProviderStatus.equals(0);
        }
        return false;
    }

    private void invalidateOptionsMenuIfNeeded() {
        DefaultContactBrowseListFragment defaultContactBrowseListFragment = this.mContactsListFragment;
        if (defaultContactBrowseListFragment == null || defaultContactBrowseListFragment.getOptionsMenuContactsAvailable() == areContactsAvailable()) {
            return;
        }
        invalidateOptionsMenu();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.mDrawerLayout.isDrawerOpen(8388611)) {
            if (i == 4) {
                return super.onKeyDown(i, keyEvent);
            }
            return false;
        }
        int unicodeChar = keyEvent.getUnicodeChar();
        if (unicodeChar == 0 || (Integer.MIN_VALUE & unicodeChar) != 0 || Character.isWhitespace(unicodeChar) || !this.mContactsListFragment.onKeyDown(unicodeChar)) {
            return super.onKeyDown(i, keyEvent);
        }
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (isSafeToCommitTransactions()) {
            if (this.mDrawerLayout.isDrawerOpen(8388611)) {
                closeDrawer();
                return;
            }
            if (isGroupView()) {
                onBackPressedGroupView();
                return;
            }
            if (isAssistantView()) {
                onBackPressedAssistantView();
            } else {
                if (FeatureHighlightHelper.tryRemoveHighlight(this) || maybeHandleInListFragment()) {
                    return;
                }
                super.onBackPressed();
            }
        }
    }

    private void onBackPressedGroupView() {
        if (this.mMembersFragment.isEditMode()) {
            this.mMembersFragment.exitEditMode();
            return;
        }
        if (this.mMembersFragment.getActionBarAdapter().isSelectionMode()) {
            this.mMembersFragment.getActionBarAdapter().setSelectionMode(false);
            this.mMembersFragment.displayCheckBoxes(false);
        } else if (this.mMembersFragment.getActionBarAdapter().isSearchMode()) {
            this.mMembersFragment.getActionBarAdapter().setSearchMode(false);
        } else {
            switchToAllContacts();
        }
    }

    private void onBackPressedAssistantView() {
        if (!isInThirdLevel()) {
            switchToAllContacts();
        } else {
            setDrawerLockMode(true);
            super.onBackPressed();
        }
    }

    private boolean maybeHandleInListFragment() {
        if (isListFragmentInSelectionMode()) {
            this.mContactsListFragment.getActionBarAdapter().setSelectionMode(false);
            return true;
        }
        if (isListFragmentInSearchMode()) {
            this.mContactsListFragment.getActionBarAdapter().setSearchMode(false);
            if (this.mContactsListFragment.wasSearchResultClicked()) {
                this.mContactsListFragment.resetSearchResultClicked();
            } else {
                Logger.logScreenView(this, 2);
                Logger.logSearchEvent(this.mContactsListFragment.createSearchState());
            }
            return true;
        }
        if (AccountFilterUtil.isAllContactsFilter(this.mContactListFilterController.getFilter()) || this.mContactsListFragment.isHidden()) {
            return false;
        }
        switchToAllContacts();
        return true;
    }

    private boolean isListFragmentInSelectionMode() {
        DefaultContactBrowseListFragment defaultContactBrowseListFragment = this.mContactsListFragment;
        return (defaultContactBrowseListFragment == null || defaultContactBrowseListFragment.getActionBarAdapter() == null || !this.mContactsListFragment.getActionBarAdapter().isSelectionMode()) ? false : true;
    }

    private boolean isListFragmentInSearchMode() {
        DefaultContactBrowseListFragment defaultContactBrowseListFragment = this.mContactsListFragment;
        return (defaultContactBrowseListFragment == null || defaultContactBrowseListFragment.getActionBarAdapter() == null || !this.mContactsListFragment.getActionBarAdapter().isSearchMode()) ? false : true;
    }

    private boolean isGroupsFragmentInSelectionMode() {
        GroupMembersFragment groupMembersFragment = this.mMembersFragment;
        return (groupMembersFragment == null || groupMembersFragment.getActionBarAdapter() == null || !this.mMembersFragment.getActionBarAdapter().isSelectionMode()) ? false : true;
    }

    private boolean isGroupsFragmentInSearchMode() {
        GroupMembersFragment groupMembersFragment = this.mMembersFragment;
        return (groupMembersFragment == null || groupMembersFragment.getActionBarAdapter() == null || !this.mMembersFragment.getActionBarAdapter().isSearchMode()) ? false : true;
    }

    @Override // com.android.contacts.activities.AppCompatTransactionSafeActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        AccountWithDataSet accountWithDataSet = this.mNewGroupAccount;
        if (accountWithDataSet != null) {
            bundle.putString("newGroupAccount", accountWithDataSet.stringify());
        }
        bundle.putInt("contactsView", this.mCurrentView.ordinal());
        bundle.putParcelable("groupUri", this.mGroupUri);
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.mGroupUri = (Uri) bundle.getParcelable("groupUri");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onGroupDeleted(final Intent intent) {
        if (ContactSaveService.canUndo(intent)) {
            int i = ((AccessibilityManager) getSystemService("accessibility")).isEnabled() ? 15000 : 0;
            String string = getString(R.string.groupDeletedToast);
            Snackbar make = Snackbar.make(this.mLayoutRoot, string, i);
            make.setAction(R.string.undo, new View.OnClickListener() { // from class: com.android.contacts.activities.PeopleActivity.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    PeopleActivity peopleActivity = PeopleActivity.this;
                    ContactSaveService.startService(peopleActivity, ContactSaveService.createUndoIntent(peopleActivity, intent));
                }
            });
            make.setActionTextColor(ContextCompat.getColor(this, R.color.snackbar_action_text));
            this.mLayoutRoot.announceForAccessibility(string);
            this.mLayoutRoot.announceForAccessibility(getString(R.string.undo));
            make.show();
        }
    }

    private class SaveServiceListener extends BroadcastReceiver {
        private SaveServiceListener() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (((action.hashCode() == 1201034394 && action.equals(ContactSaveService.BROADCAST_GROUP_DELETED)) ? (char) 0 : (char) 65535) != 0) {
                return;
            }
            PeopleActivity.this.onGroupDeleted(intent);
        }
    }

    private void onGroupMenuItemClicked(long j) {
        GroupMembersFragment groupMembersFragment;
        if (isGroupView() && (groupMembersFragment = this.mMembersFragment) != null && groupMembersFragment.isCurrentGroup(j)) {
            return;
        }
        this.mGroupUri = ContentUris.withAppendedId(ContactsContract.Groups.CONTENT_URI, j);
        switchToOrUpdateGroupView(GroupUtil.ACTION_SWITCH_GROUP);
    }

    private void onFilterMenuItemClicked(Intent intent) {
        if (isInSecondLevel()) {
            popSecondLevel();
            showFabWithAnimation(true);
            ContactListFilter filter = this.mContactListFilterController.getFilter();
            this.mContactListFilterController.setContactListFilter(AccountFilterUtil.createContactsFilter(this), false);
            this.mContactListFilterController.setContactListFilter(filter, false);
        }
        this.mCurrentView = ContactsView.ACCOUNT_VIEW;
        AccountFilterUtil.handleAccountFilterResult(this.mContactListFilterController, -1, intent);
    }

    private void switchToOrUpdateGroupView(String str) {
        GroupMembersFragment groupMembersFragment = this.mMembersFragment;
        if (groupMembersFragment != null && !groupMembersFragment.isInactive()) {
            this.mMembersFragment.updateExistingGroupFragment(this.mGroupUri, str);
        } else {
            switchView(ContactsView.GROUP_VIEW);
        }
    }

    protected void launchAssistant() {
        switchView(ContactsView.ASSISTANT);
    }

    private void switchView(ContactsView contactsView) {
        this.mCurrentView = contactsView;
        FragmentManager fragmentManager = getFragmentManager();
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        popSecondLevel();
        if (isGroupView()) {
            GroupMembersFragment newInstance = GroupMembersFragment.newInstance(this.mGroupUri);
            this.mMembersFragment = newInstance;
            beginTransaction.replace(R.id.contacts_list_container, newInstance, "contacts-groups");
        } else if (isAssistantView()) {
            Fragment findFragmentByTag = fragmentManager.findFragmentByTag("contacts-assistant");
            Fragment findFragmentByTag2 = fragmentManager.findFragmentByTag("contacts-unavailable");
            if (findFragmentByTag == null) {
                findFragmentByTag = ObjectFactory.getAssistantFragment();
            }
            if (findFragmentByTag2 != null) {
                beginTransaction.remove(findFragmentByTag2);
            }
            beginTransaction.replace(R.id.contacts_list_container, findFragmentByTag, "contacts-assistant");
            resetToolBarStatusBarColor();
        }
        beginTransaction.addToBackStack("second-level");
        beginTransaction.commit();
        fragmentManager.executePendingTransactions();
        showFabWithAnimation(false);
    }

    public void switchToAllContacts() {
        popSecondLevel();
        this.mShouldSwitchToAllContacts = false;
        ContactsView contactsView = ContactsView.ALL_CONTACTS;
        this.mCurrentView = contactsView;
        this.mDrawerFragment.setNavigationItemChecked(contactsView);
        showFabWithAnimation(true);
        this.mContactsListFragment.scrollToTop();
        resetFilter();
        setTitle(getString(R.string.contactsList));
    }

    private void resetFilter() {
        Intent intent = new Intent();
        intent.putExtra("contactListFilter", AccountFilterUtil.createContactsFilter(this));
        AccountFilterUtil.handleAccountFilterResult(this.mContactListFilterController, -1, intent);
    }

    private void resetToolBarStatusBarColor() {
        findViewById(R.id.toolbar_frame).setBackgroundColor(ContextCompat.getColor(this, R.color.primary_color));
        updateStatusBarBackground(ContextCompat.getColor(this, R.color.primary_color_dark));
    }

    protected DefaultContactBrowseListFragment getListFragment() {
        return this.mContactsListFragment;
    }

    protected GroupMembersFragment getGroupFragment() {
        return this.mMembersFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleFilterChangeForFragment(ContactListFilter contactListFilter) {
        if (this.mContactsListFragment.canSetActionBar()) {
            this.mContactsListFragment.setFilterAndUpdateTitle(contactListFilter);
            this.mContactsListFragment.scrollToTop();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleFilterChangeForActivity(ContactListFilter contactListFilter) {
        if (isAssistantView() && contactListFilter.isContactsFilterType()) {
            this.mShouldSwitchToAllContacts = true;
        }
        if (CompatUtils.isNCompatible()) {
            getWindow().getDecorView().sendAccessibilityEvent(32);
        }
        invalidateOptionsMenu();
    }

    public void updateDrawerGroupMenu(long j) {
        DrawerFragment drawerFragment = this.mDrawerFragment;
        if (drawerFragment != null) {
            drawerFragment.updateGroupMenu(j);
        }
    }

    public void setDrawerLockMode(boolean z) {
        this.mDrawerLayout.setDrawerLockMode(!z ? 1 : 0);
        if (z) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(false);
            this.mToggle.setDrawerIndicatorEnabled(true);
        } else {
            this.mToggle.setDrawerIndicatorEnabled(false);
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }
    }

    public Toolbar getToolbar() {
        return this.mToolbar;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        this.mToggle.syncState();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mToggle.onConfigurationChanged(configuration);
    }

    protected void onCreateGroupMenuItemClicked() {
        Bundle extras = getIntent().getExtras();
        Account account = extras == null ? null : (Account) extras.getParcelable("android.provider.extra.ACCOUNT");
        if (account == null) {
            selectAccountForNewGroup();
        } else {
            onAccountChosen(new AccountWithDataSet(account.name, account.type, extras == null ? null : extras.getString("android.provider.extra.DATA_SET")), null);
        }
    }

    private void selectAccountForNewGroup() {
        List list = (List) Futures.getUnchecked(AccountTypeManager.getInstance(this).filterAccountsAsync(AccountTypeManager.AccountFilter.GROUPS_WRITABLE));
        if (list.isEmpty()) {
            Toast.makeText(this, R.string.groupCreateFailedToast, 0).show();
        } else if (list.size() == 1) {
            onAccountChosen(((AccountInfo) list.get(0)).getAccount(), null);
        } else {
            SelectAccountDialogFragment.show(getFragmentManager(), R.string.dialog_new_group_account, AccountTypeManager.AccountFilter.GROUPS_WRITABLE, null, "selectAccountDialog");
        }
    }

    @Override // com.android.contacts.editor.SelectAccountDialogFragment.Listener
    public void onAccountChosen(AccountWithDataSet accountWithDataSet, Bundle bundle) {
        this.mNewGroupAccount = accountWithDataSet;
        GroupNameEditDialogFragment.newInstanceForCreation(accountWithDataSet, "createGroup").show(getFragmentManager(), "groupNameEditDialog");
    }

    @Override // com.android.contacts.drawer.DrawerFragment.DrawerFragmentListener
    public void onDrawerItemClicked() {
        closeDrawer();
    }

    @Override // com.android.contacts.drawer.DrawerFragment.DrawerFragmentListener
    public void onContactsViewSelected(ContactsView contactsView) {
        if (contactsView == ContactsView.ALL_CONTACTS) {
            switchToAllContacts();
        } else {
            if (contactsView == ContactsView.ASSISTANT) {
                launchAssistant();
                return;
            }
            throw new IllegalStateException("Unknown view " + contactsView);
        }
    }

    @Override // com.android.contacts.drawer.DrawerFragment.DrawerFragmentListener
    public void onCreateLabelButtonClicked() {
        onCreateGroupMenuItemClicked();
    }

    @Override // com.android.contacts.drawer.DrawerFragment.DrawerFragmentListener
    public void onOpenSettings() {
        new Handler().postDelayed(new Runnable() { // from class: com.android.contacts.activities.PeopleActivity.7
            @Override // java.lang.Runnable
            public void run() {
                PeopleActivity peopleActivity = PeopleActivity.this;
                peopleActivity.startActivity(peopleActivity.createPreferenceIntent());
            }
        }, 300L);
    }

    @Override // com.android.contacts.drawer.DrawerFragment.DrawerFragmentListener
    public void onLaunchHelpFeedback() {
        HelpUtils.launchHelpAndFeedbackForMainScreen(this);
    }

    @Override // com.android.contacts.drawer.DrawerFragment.DrawerFragmentListener
    public void onGroupViewSelected(GroupListItem groupListItem) {
        onGroupMenuItemClicked(groupListItem.getGroupId());
    }

    @Override // com.android.contacts.drawer.DrawerFragment.DrawerFragmentListener
    public void onAccountViewSelected(ContactListFilter contactListFilter) {
        Intent intent = new Intent();
        intent.putExtra("contactListFilter", contactListFilter);
        onFilterMenuItemClicked(intent);
    }

    public boolean isGroupView() {
        return this.mCurrentView == ContactsView.GROUP_VIEW;
    }

    protected boolean isAssistantView() {
        return this.mCurrentView == ContactsView.ASSISTANT;
    }

    protected boolean isAllContactsView() {
        return this.mCurrentView == ContactsView.ALL_CONTACTS;
    }

    protected boolean isAccountView() {
        return this.mCurrentView == ContactsView.ACCOUNT_VIEW;
    }

    public boolean isInSecondLevel() {
        return isGroupView() || isAssistantView();
    }

    private boolean isInThirdLevel() {
        return isLastBackStackTag("third-level");
    }

    private boolean isLastBackStackTag(String str) {
        int backStackEntryCount = getFragmentManager().getBackStackEntryCount();
        if (backStackEntryCount <= 0) {
            return false;
        }
        FragmentManager.BackStackEntry backStackEntryAt = getFragmentManager().getBackStackEntryAt(backStackEntryCount - 1);
        if (str == null) {
            return backStackEntryAt.getName() == null;
        }
        return str.equals(backStackEntryAt.getName());
    }

    private void popSecondLevel() {
        getFragmentManager().popBackStackImmediate("assistant-helper", 1);
        getFragmentManager().popBackStackImmediate("second-level", 1);
        this.mMembersFragment = null;
        resetToolBarStatusBarColor();
    }

    public void closeDrawer() {
        this.mDrawerLayout.closeDrawer(8388611);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Intent createPreferenceIntent() {
        Intent intent = new Intent(this, (Class<?>) ContactsPreferenceActivity.class);
        intent.putExtra("newLocalProfile", "newLocalProfile");
        return intent;
    }
}
