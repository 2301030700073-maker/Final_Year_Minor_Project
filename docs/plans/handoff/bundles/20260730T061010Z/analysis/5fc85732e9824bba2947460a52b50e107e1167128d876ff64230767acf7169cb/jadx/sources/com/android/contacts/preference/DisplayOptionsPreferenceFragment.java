package com.android.contacts.preference;

import android.app.Activity;
import android.app.LoaderManager;
import android.content.BroadcastReceiver;
import android.content.ContentUris;
import android.content.Context;
import android.content.CursorLoader;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.Loader;
import android.content.res.Resources;
import android.database.Cursor;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.provider.BlockedNumberContract;
import android.provider.ContactsContract;
import android.telecom.TelecomManager;
import android.telephony.TelephonyManager;
import android.text.BidiFormatter;
import android.text.TextDirectionHeuristics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.android.contacts.ContactsUtils;
import com.android.contacts.R;
import com.android.contacts.SimImportService;
import com.android.contacts.compat.TelecomManagerUtil;
import com.android.contacts.compat.TelephonyManagerCompat;
import com.android.contacts.interactions.ExportDialogFragment;
import com.android.contacts.interactions.ImportDialogFragment;
import com.android.contacts.list.ContactListFilter;
import com.android.contacts.list.ContactListFilterController;
import com.android.contacts.model.AccountTypeManager;
import com.android.contacts.model.account.AccountInfo;
import com.android.contacts.model.account.AccountsLoader;
import com.android.contacts.util.AccountFilterUtil;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contactsbind.HelpUtils;
import com.google.android.material.snackbar.Snackbar;
import java.util.List;

/* loaded from: classes.dex */
public class DisplayOptionsPreferenceFragment extends PreferenceFragment implements Preference.OnPreferenceClickListener, AccountsLoader.AccountsListener {
    private boolean mAreContactsAvailable;
    private boolean mHasProfile;
    private ProfileListener mListener;
    private Preference mMyInfoPreference;
    private String mNewLocalProfileExtra;
    private long mProfileContactId;
    private final LoaderManager.LoaderCallbacks<Cursor> mProfileLoaderListener = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.preference.DisplayOptionsPreferenceFragment.1
        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<Cursor> loader) {
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        /* renamed from: onCreateLoader, reason: merged with bridge method [inline-methods] */
        public Loader<Cursor> onCreateLoader2(int i, Bundle bundle) {
            DisplayOptionsPreferenceFragment displayOptionsPreferenceFragment = DisplayOptionsPreferenceFragment.this;
            CursorLoader createCursorLoader = displayOptionsPreferenceFragment.createCursorLoader(displayOptionsPreferenceFragment.getContext());
            createCursorLoader.setUri(ContactsContract.Profile.CONTENT_URI);
            DisplayOptionsPreferenceFragment displayOptionsPreferenceFragment2 = DisplayOptionsPreferenceFragment.this;
            createCursorLoader.setProjection(displayOptionsPreferenceFragment2.getProjection(displayOptionsPreferenceFragment2.getContext()));
            return createCursorLoader;
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            if (DisplayOptionsPreferenceFragment.this.mListener != null) {
                DisplayOptionsPreferenceFragment.this.mListener.onProfileLoaded(cursor);
            }
        }
    };
    private ViewGroup mRootView;
    private SaveServiceResultListener mSaveServiceListener;

    public interface ProfileListener {
        void onProfileLoaded(Cursor cursor);
    }

    public static class ProfileQuery {
        private static final String[] PROFILE_PROJECTION_PRIMARY = {"_id", "display_name", "is_user_profile", "display_name_source"};
        private static final String[] PROFILE_PROJECTION_ALTERNATIVE = {"_id", "display_name_alt", "is_user_profile", "display_name_source"};
    }

    public static DisplayOptionsPreferenceFragment newInstance(String str, boolean z) {
        DisplayOptionsPreferenceFragment displayOptionsPreferenceFragment = new DisplayOptionsPreferenceFragment();
        Bundle bundle = new Bundle();
        bundle.putString("new_local_profile", str);
        bundle.putBoolean("are_contacts_available", z);
        displayOptionsPreferenceFragment.setArguments(bundle);
        return displayOptionsPreferenceFragment;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            this.mListener = (ProfileListener) activity;
        } catch (ClassCastException unused) {
            throw new ClassCastException(activity.toString() + " must implement ProfileListener");
        }
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FrameLayout frameLayout = new FrameLayout(getActivity());
        this.mRootView = frameLayout;
        this.mRootView.addView(super.onCreateView(layoutInflater, frameLayout, bundle));
        return this.mRootView;
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.mSaveServiceListener = new SaveServiceResultListener();
        LocalBroadcastManager.getInstance(getActivity()).registerReceiver(this.mSaveServiceListener, new IntentFilter(SimImportService.BROADCAST_SIM_IMPORT_COMPLETE));
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(R.xml.preference_display_options);
        Bundle arguments = getArguments();
        this.mNewLocalProfileExtra = arguments.getString("new_local_profile");
        this.mAreContactsAvailable = arguments.getBoolean("are_contacts_available");
        removeUnsupportedPreferences();
        this.mMyInfoPreference = findPreference("myInfo");
        findPreference("accounts").setOnPreferenceClickListener(this);
        findPreference("import").setOnPreferenceClickListener(this);
        Preference findPreference = findPreference("export");
        if (findPreference != null) {
            findPreference.setOnPreferenceClickListener(this);
        }
        Preference findPreference2 = findPreference("blockedNumbers");
        if (findPreference2 != null) {
            findPreference2.setOnPreferenceClickListener(this);
        }
        Preference findPreference3 = findPreference("about");
        if (findPreference3 != null) {
            findPreference3.setOnPreferenceClickListener(this);
        }
        Preference findPreference4 = findPreference("customContactsFilter");
        if (findPreference4 != null) {
            findPreference4.setOnPreferenceClickListener(this);
            setCustomContactsFilterSummary();
        }
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        getLoaderManager().initLoader(0, null, this.mProfileLoaderListener);
        AccountsLoader.loadAccounts(this, 1, AccountTypeManager.writableFilter());
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        LocalBroadcastManager.getInstance(getActivity()).unregisterReceiver(this.mSaveServiceListener);
        this.mRootView = null;
    }

    public void updateMyInfoPreference(boolean z, String str, long j, int i) {
        if (!z) {
            str = getString(R.string.set_up_profile);
        } else if (i == 20) {
            str = BidiFormatter.getInstance().unicodeWrap(str, TextDirectionHeuristics.LTR);
        }
        this.mMyInfoPreference.setSummary(str);
        this.mHasProfile = z;
        this.mProfileContactId = j;
        this.mMyInfoPreference.setOnPreferenceClickListener(this);
    }

    private void removeUnsupportedPreferences() {
        Resources resources = getResources();
        if (!resources.getBoolean(R.bool.config_sort_order_user_changeable)) {
            getPreferenceScreen().removePreference(findPreference("sortOrder"));
        }
        if (!resources.getBoolean(R.bool.config_phonetic_name_display_user_changeable)) {
            getPreferenceScreen().removePreference(findPreference("phoneticNameDisplay"));
        }
        if (HelpUtils.isHelpAndFeedbackAvailable()) {
            getPreferenceScreen().removePreference(findPreference("about"));
        }
        if (!resources.getBoolean(R.bool.config_display_order_user_changeable)) {
            getPreferenceScreen().removePreference(findPreference("displayOrder"));
        }
        if (!(TelephonyManagerCompat.isVoiceCapable((TelephonyManager) getContext().getSystemService("phone")) && ContactsUtils.FLAG_N_FEATURE && BlockedNumberContract.canCurrentUserBlockNumbers(getContext()))) {
            getPreferenceScreen().removePreference(findPreference("blockedNumbers"));
        }
        if (this.mAreContactsAvailable) {
            return;
        }
        getPreferenceScreen().removePreference(findPreference("export"));
    }

    @Override // com.android.contacts.model.account.AccountsLoader.AccountsListener
    public void onAccountsLoaded(List<AccountInfo> list) {
        ((DefaultAccountPreference) findPreference("defaultAccount")).setAccounts(list);
    }

    @Override // android.app.Fragment
    public Context getContext() {
        return getActivity();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CursorLoader createCursorLoader(Context context) {
        return new CursorLoader(this, context) { // from class: com.android.contacts.preference.DisplayOptionsPreferenceFragment.2
            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.content.AsyncTaskLoader
            public Cursor onLoadInBackground() {
                try {
                    return (Cursor) super.onLoadInBackground();
                } catch (RuntimeException unused) {
                    return null;
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String[] getProjection(Context context) {
        return new ContactsPreferences(context).getDisplayOrder() == 1 ? ProfileQuery.PROFILE_PROJECTION_PRIMARY : ProfileQuery.PROFILE_PROJECTION_ALTERNATIVE;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        String key = preference.getKey();
        if ("about".equals(key)) {
            ((ContactsPreferenceActivity) getActivity()).showAboutFragment();
            return true;
        }
        if ("import".equals(key)) {
            ImportDialogFragment.show(getFragmentManager());
            return true;
        }
        if ("export".equals(key)) {
            ExportDialogFragment.show(getFragmentManager(), ContactsPreferenceActivity.class, 1);
            return true;
        }
        if ("myInfo".equals(key)) {
            if (this.mHasProfile) {
                ImplicitIntentsUtil.startQuickContact(getActivity(), ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, this.mProfileContactId), 10);
            } else {
                Intent intent = new Intent("android.intent.action.INSERT", ContactsContract.Contacts.CONTENT_URI);
                intent.putExtra(this.mNewLocalProfileExtra, true);
                ImplicitIntentsUtil.startActivityInApp(getActivity(), intent);
            }
            return true;
        }
        if ("accounts".equals(key)) {
            ImplicitIntentsUtil.startActivityOutsideApp(getContext(), ImplicitIntentsUtil.getIntentForAddingAccount());
            return true;
        }
        if ("blockedNumbers".equals(key)) {
            startActivity(TelecomManagerUtil.createManageBlockedNumbersIntent((TelecomManager) getContext().getSystemService("telecom")));
            return true;
        }
        if ("customContactsFilter".equals(key)) {
            AccountFilterUtil.startAccountFilterActivityForResult(this, 0, ContactListFilterController.getInstance(getContext()).getFilter());
        }
        return false;
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 0 && i2 == -1) {
            AccountFilterUtil.handleAccountFilterResult(ContactListFilterController.getInstance(getContext()), i2, intent);
            setCustomContactsFilterSummary();
        } else {
            super.onActivityResult(i, i2, intent);
        }
    }

    private void setCustomContactsFilterSummary() {
        ContactListFilter persistedFilter;
        Preference findPreference = findPreference("customContactsFilter");
        if (findPreference == null || (persistedFilter = ContactListFilterController.getInstance(getContext()).getPersistedFilter()) == null) {
            return;
        }
        int i = persistedFilter.filterType;
        if (i == -1 || i == -2) {
            findPreference.setSummary(R.string.list_filter_all_accounts);
        } else if (i == -3) {
            findPreference.setSummary(R.string.listCustomView);
        } else {
            findPreference.setSummary((CharSequence) null);
        }
    }

    private class SaveServiceResultListener extends BroadcastReceiver {
        private SaveServiceResultListener() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - intent.getLongExtra(SimImportService.EXTRA_OPERATION_REQUESTED_AT_TIME, currentTimeMillis) > 30000) {
                return;
            }
            int intExtra = intent.getIntExtra("resultCode", 0);
            int intExtra2 = intent.getIntExtra("count", -1);
            if (intExtra == 1 && intExtra2 > 0) {
                Snackbar.make(DisplayOptionsPreferenceFragment.this.mRootView, DisplayOptionsPreferenceFragment.this.getResources().getQuantityString(R.plurals.sim_import_success_toast_fmt, intExtra2, Integer.valueOf(intExtra2)), 0).show();
            } else if (intExtra == 2) {
                Snackbar.make(DisplayOptionsPreferenceFragment.this.mRootView, R.string.sim_import_failed_toast, 0).show();
            }
        }
    }
}
