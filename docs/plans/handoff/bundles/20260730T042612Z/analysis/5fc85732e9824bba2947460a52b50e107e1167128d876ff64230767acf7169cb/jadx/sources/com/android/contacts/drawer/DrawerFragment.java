package com.android.contacts.drawer;

import android.app.Activity;
import android.app.Fragment;
import android.app.LoaderManager;
import android.content.Loader;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.android.contacts.GroupListLoader;
import com.android.contacts.R;
import com.android.contacts.activities.PeopleActivity;
import com.android.contacts.group.GroupListItem;
import com.android.contacts.group.GroupUtil;
import com.android.contacts.list.ContactListFilter;
import com.android.contacts.model.AccountTypeManager;
import com.android.contacts.model.account.AccountInfo;
import com.android.contacts.model.account.AccountsLoader;
import com.android.contacts.util.AccountFilterUtil;
import com.android.contactsbind.ObjectFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class DrawerFragment extends Fragment implements AccountsLoader.AccountsListener {
    private boolean mAccountsLoaded;
    private PeopleActivity.ContactsView mCurrentContactsView;
    private DrawerAdapter mDrawerAdapter;
    private ListView mDrawerListView;
    private boolean mGroupsLoaded;
    private boolean mHasGroupWritableAccounts;
    private DrawerFragmentListener mListener;
    private WelcomeContentObserver mObserver;
    private ScrimDrawable mScrimDrawable;
    private List<GroupListItem> mGroupListItems = new ArrayList();
    private final LoaderManager.LoaderCallbacks<List<ContactListFilter>> mFiltersLoaderListener = new LoaderManager.LoaderCallbacks<List<ContactListFilter>>() { // from class: com.android.contacts.drawer.DrawerFragment.1
        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<List<ContactListFilter>> loader) {
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public Loader<List<ContactListFilter>> onCreateLoader(int i, Bundle bundle) {
            return new AccountFilterUtil.FilterLoader(DrawerFragment.this.getActivity());
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoadFinished(Loader<List<ContactListFilter>> loader, List<ContactListFilter> list) {
            if (list != null) {
                if (list == null || list.size() < 2) {
                    DrawerFragment.this.mDrawerAdapter.setAccounts(new ArrayList());
                } else {
                    DrawerFragment.this.mDrawerAdapter.setAccounts(list);
                }
            }
        }
    };
    private final LoaderManager.LoaderCallbacks<Cursor> mGroupListLoaderListener = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.drawer.DrawerFragment.2
        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<Cursor> loader) {
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        /* renamed from: onCreateLoader, reason: merged with bridge method [inline-methods] */
        public Loader<Cursor> onCreateLoader2(int i, Bundle bundle) {
            return new GroupListLoader(DrawerFragment.this.getActivity());
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            if (cursor == null) {
                return;
            }
            DrawerFragment.this.mGroupListItems.clear();
            cursor.moveToPosition(-1);
            for (int i = 0; i < cursor.getCount(); i++) {
                if (cursor.moveToNext()) {
                    DrawerFragment.this.mGroupListItems.add(GroupUtil.getGroupListItem(cursor, i));
                }
            }
            DrawerFragment.this.mGroupsLoaded = true;
            DrawerFragment.this.notifyIfReady();
        }
    };
    private final AdapterView.OnItemClickListener mOnDrawerItemClickListener = new AdapterView.OnItemClickListener() { // from class: com.android.contacts.drawer.DrawerFragment.3
        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (DrawerFragment.this.mListener == null) {
                return;
            }
            int id = view.getId();
            if (id == R.id.nav_all_contacts) {
                DrawerFragment.this.mListener.onContactsViewSelected(PeopleActivity.ContactsView.ALL_CONTACTS);
                DrawerFragment.this.setNavigationItemChecked(PeopleActivity.ContactsView.ALL_CONTACTS);
            } else if (id == R.id.nav_assistant) {
                DrawerFragment.this.mListener.onContactsViewSelected(PeopleActivity.ContactsView.ASSISTANT);
                DrawerFragment.this.setNavigationItemChecked(PeopleActivity.ContactsView.ASSISTANT);
            } else if (id == R.id.nav_group) {
                GroupListItem groupListItem = (GroupListItem) view.getTag();
                DrawerFragment.this.mListener.onGroupViewSelected(groupListItem);
                DrawerFragment.this.mDrawerAdapter.setSelectedGroupId(groupListItem.getGroupId());
                DrawerFragment.this.setNavigationItemChecked(PeopleActivity.ContactsView.GROUP_VIEW);
            } else if (id == R.id.nav_filter) {
                ContactListFilter contactListFilter = (ContactListFilter) view.getTag();
                DrawerFragment.this.mListener.onAccountViewSelected(contactListFilter);
                DrawerFragment.this.mDrawerAdapter.setSelectedAccount(contactListFilter);
                DrawerFragment.this.setNavigationItemChecked(PeopleActivity.ContactsView.ACCOUNT_VIEW);
            } else if (id == R.id.nav_create_label) {
                DrawerFragment.this.mListener.onCreateLabelButtonClicked();
            } else if (id == R.id.nav_settings) {
                DrawerFragment.this.mListener.onOpenSettings();
            } else if (id != R.id.nav_help) {
                return;
            } else {
                DrawerFragment.this.mListener.onLaunchHelpFeedback();
            }
            DrawerFragment.this.mListener.onDrawerItemClicked();
        }
    };

    public interface DrawerFragmentListener {
        void onAccountViewSelected(ContactListFilter contactListFilter);

        void onContactsViewSelected(PeopleActivity.ContactsView contactsView);

        void onCreateLabelButtonClicked();

        void onDrawerItemClicked();

        void onGroupViewSelected(GroupListItem groupListItem);

        void onLaunchHelpFeedback();

        void onOpenSettings();
    }

    private final class WelcomeContentObserver extends ContentObserver {
        private WelcomeContentObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            DrawerFragment.this.mDrawerAdapter.notifyDataSetChanged();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        if (activity instanceof DrawerFragmentListener) {
            this.mListener = (DrawerFragmentListener) activity;
            return;
        }
        throw new IllegalArgumentException("Activity must implement " + DrawerFragmentListener.class.getName());
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.drawer_fragment, (ViewGroup) null);
        this.mDrawerListView = (ListView) inflate.findViewById(R.id.list);
        DrawerAdapter drawerAdapter = new DrawerAdapter(getActivity());
        this.mDrawerAdapter = drawerAdapter;
        drawerAdapter.setSelectedContactsView(this.mCurrentContactsView);
        loadGroupsAndFilters();
        this.mDrawerListView.setAdapter((ListAdapter) this.mDrawerAdapter);
        this.mDrawerListView.setOnItemClickListener(this.mOnDrawerItemClickListener);
        if (bundle != null) {
            setNavigationItemChecked(PeopleActivity.ContactsView.values()[bundle.getInt("contactsView")]);
            this.mDrawerAdapter.setSelectedGroupId(bundle.getLong("selectedGroup"));
            this.mDrawerAdapter.setSelectedAccount((ContactListFilter) bundle.getParcelable("selectedAccount"));
        } else {
            setNavigationItemChecked(PeopleActivity.ContactsView.ALL_CONTACTS);
        }
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R.id.drawer_fragment_root);
        frameLayout.setFitsSystemWindows(true);
        frameLayout.setOnApplyWindowInsetsListener(new WindowInsetsListener());
        frameLayout.setForegroundGravity(55);
        ScrimDrawable scrimDrawable = new ScrimDrawable();
        this.mScrimDrawable = scrimDrawable;
        frameLayout.setForeground(scrimDrawable);
        return inflate;
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        Uri welcomeUri = ObjectFactory.getWelcomeUri();
        if (welcomeUri != null) {
            this.mObserver = new WelcomeContentObserver(new Handler());
            getActivity().getContentResolver().registerContentObserver(welcomeUri, false, this.mObserver);
        }
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("contactsView", this.mCurrentContactsView.ordinal());
        bundle.putLong("selectedGroup", this.mDrawerAdapter.getSelectedGroupId());
        bundle.putParcelable("selectedAccount", this.mDrawerAdapter.getSelectedAccount());
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        if (this.mObserver != null) {
            getActivity().getContentResolver().unregisterContentObserver(this.mObserver);
        }
    }

    private void loadGroupsAndFilters() {
        getLoaderManager().initLoader(3, null, this.mFiltersLoaderListener);
        AccountsLoader.loadAccounts(this, 2, AccountTypeManager.AccountFilter.GROUPS_WRITABLE);
        getLoaderManager().initLoader(1, null, this.mGroupListLoaderListener);
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.mListener = null;
    }

    public void setNavigationItemChecked(PeopleActivity.ContactsView contactsView) {
        this.mCurrentContactsView = contactsView;
        DrawerAdapter drawerAdapter = this.mDrawerAdapter;
        if (drawerAdapter != null) {
            drawerAdapter.setSelectedContactsView(contactsView);
        }
    }

    public void updateGroupMenu(long j) {
        this.mDrawerAdapter.setSelectedGroupId(j);
        setNavigationItemChecked(PeopleActivity.ContactsView.GROUP_VIEW);
    }

    @Override // com.android.contacts.model.account.AccountsLoader.AccountsListener
    public void onAccountsLoaded(List<AccountInfo> list) {
        this.mHasGroupWritableAccounts = !list.isEmpty();
        this.mAccountsLoaded = true;
        notifyIfReady();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyIfReady() {
        if (this.mAccountsLoaded && this.mGroupsLoaded) {
            Iterator<GroupListItem> it = this.mGroupListItems.iterator();
            while (it.hasNext()) {
                if (GroupUtil.isEmptyFFCGroup(it.next())) {
                    it.remove();
                }
            }
            this.mDrawerAdapter.setGroups(this.mGroupListItems, this.mHasGroupWritableAccounts);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyTopInset(int i) {
        this.mScrimDrawable.setIntrinsicHeight(i);
        ListView listView = this.mDrawerListView;
        listView.setPadding(listView.getPaddingLeft(), i, this.mDrawerListView.getPaddingRight(), this.mDrawerListView.getPaddingBottom());
    }

    private class WindowInsetsListener implements View.OnApplyWindowInsetsListener {
        private WindowInsetsListener() {
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            DrawerFragment.this.applyTopInset(windowInsets.getSystemWindowInsetTop());
            return windowInsets;
        }
    }
}
