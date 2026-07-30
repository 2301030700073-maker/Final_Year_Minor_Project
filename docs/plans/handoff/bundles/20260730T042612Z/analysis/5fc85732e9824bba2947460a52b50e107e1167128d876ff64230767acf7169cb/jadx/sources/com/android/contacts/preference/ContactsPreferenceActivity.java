package com.android.contacts.preference;

import android.R;
import android.content.res.Configuration;
import android.database.Cursor;
import android.os.Bundle;
import android.preference.PreferenceActivity;
import android.text.TextUtils;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatCallback;
import androidx.appcompat.app.AppCompatDelegate;
import com.android.contacts.editor.SelectAccountDialogFragment;
import com.android.contacts.list.ProviderStatusWatcher;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.preference.DisplayOptionsPreferenceFragment;
import com.android.contacts.util.AccountSelectionUtil;

/* loaded from: classes.dex */
public final class ContactsPreferenceActivity extends PreferenceActivity implements DisplayOptionsPreferenceFragment.ProfileListener, SelectAccountDialogFragment.Listener {
    private boolean mAreContactsAvailable;
    private AppCompatDelegate mCompatDelegate;
    private String mNewLocalProfileExtra;
    private ProviderStatusWatcher mProviderStatusWatcher;

    @Override // com.android.contacts.editor.SelectAccountDialogFragment.Listener
    public void onAccountSelectorCancelled() {
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.mCompatDelegate = AppCompatDelegate.create(this, (AppCompatCallback) null);
        super.onCreate(bundle);
        this.mCompatDelegate.onCreate(bundle);
        ActionBar supportActionBar = this.mCompatDelegate.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayOptions(4, 4);
        }
        this.mProviderStatusWatcher = ProviderStatusWatcher.getInstance(this);
        this.mNewLocalProfileExtra = getIntent().getStringExtra("newLocalProfile");
        boolean z = this.mProviderStatusWatcher.getProviderStatus() == 0;
        this.mAreContactsAvailable = z;
        if (bundle == null) {
            getFragmentManager().beginTransaction().replace(R.id.content, DisplayOptionsPreferenceFragment.newInstance(this.mNewLocalProfileExtra, z), "display_options").commit();
            setActivityTitle(com.android.contacts.R.string.activity_title_settings);
        } else if (((AboutPreferenceFragment) getFragmentManager().findFragmentByTag("about_contacts")) != null) {
            setActivityTitle(com.android.contacts.R.string.setting_about);
        } else {
            setActivityTitle(com.android.contacts.R.string.activity_title_settings);
        }
    }

    @Override // android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        this.mCompatDelegate.onPostCreate(bundle);
    }

    @Override // android.app.Activity
    public MenuInflater getMenuInflater() {
        return this.mCompatDelegate.getMenuInflater();
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        this.mCompatDelegate.setContentView(i);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        this.mCompatDelegate.setContentView(view);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        this.mCompatDelegate.setContentView(view, layoutParams);
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        this.mCompatDelegate.addContentView(view, layoutParams);
    }

    @Override // android.app.Activity
    protected void onPostResume() {
        super.onPostResume();
        this.mCompatDelegate.onPostResume();
    }

    @Override // android.app.Activity
    protected void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        this.mCompatDelegate.setTitle(charSequence);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mCompatDelegate.onConfigurationChanged(configuration);
    }

    @Override // android.preference.PreferenceActivity, android.app.ListActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.mCompatDelegate.onDestroy();
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        this.mCompatDelegate.invalidateOptionsMenu();
    }

    protected void showAboutFragment() {
        getFragmentManager().beginTransaction().replace(R.id.content, AboutPreferenceFragment.newInstance(), "about_contacts").addToBackStack(null).commit();
        setActivityTitle(com.android.contacts.R.string.setting_about);
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return false;
        }
        onBackPressed();
        return true;
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public void onBackPressed() {
        if (getFragmentManager().getBackStackEntryCount() > 0) {
            setActivityTitle(com.android.contacts.R.string.activity_title_settings);
            getFragmentManager().popBackStack();
        } else {
            super.onBackPressed();
        }
    }

    private void setActivityTitle(int i) {
        ActionBar supportActionBar = this.mCompatDelegate.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setTitle(i);
        }
    }

    @Override // com.android.contacts.preference.DisplayOptionsPreferenceFragment.ProfileListener
    public void onProfileLoaded(Cursor cursor) {
        String str;
        long j;
        boolean z;
        int i;
        if (cursor == null || !cursor.moveToFirst()) {
            str = null;
            j = -1;
            z = false;
            i = 0;
        } else {
            boolean z2 = cursor.getInt(2) == 1;
            str = cursor.getString(1);
            long j2 = cursor.getLong(0);
            i = cursor.getInt(3);
            z = z2;
            j = j2;
        }
        ((DisplayOptionsPreferenceFragment) getFragmentManager().findFragmentByTag("display_options")).updateMyInfoPreference(z, (z && TextUtils.isEmpty(str)) ? getString(com.android.contacts.R.string.missing_name) : str, j, i);
    }

    @Override // com.android.contacts.editor.SelectAccountDialogFragment.Listener
    public void onAccountChosen(AccountWithDataSet accountWithDataSet, Bundle bundle) {
        AccountSelectionUtil.doImport(this, bundle.getInt("resourceId"), accountWithDataSet, bundle.getInt("subscriptionId"));
    }
}
