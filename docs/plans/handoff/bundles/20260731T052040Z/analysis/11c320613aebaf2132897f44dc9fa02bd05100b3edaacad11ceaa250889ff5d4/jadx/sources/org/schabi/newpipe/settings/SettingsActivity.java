package org.schabi.newpipe.settings;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.preference.PreferenceFragmentCompat;
import com.livefront.bridge.Bridge;
import okio.Options;
import org.jsoup.Jsoup;
import org.schabi.newpipe.R;
import org.schabi.newpipe.settings.preferencesearch.PreferenceSearchFragment;
import org.schabi.newpipe.settings.preferencesearch.PreferenceSearchResultListener;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public class SettingsActivity extends AppCompatActivity implements PreferenceFragmentCompat.OnPreferenceStartFragmentCallback, PreferenceSearchResultListener {
    public static final /* synthetic */ int $r8$clinit = 0;
    public MenuItem menuSearchItem;
    public View searchContainer;
    public EditText searchEditText;
    public PreferenceSearchFragment searchFragment;
    String searchText;
    boolean wasSearchActive;

    public final boolean isSearchActive() {
        return this.searchContainer.getVisibility() == 0;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        if (isSearchActive()) {
            setSearchActive(false);
        } else {
            super.onBackPressed();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0064, code lost:
    
        if (getSharedPreferences(androidx.preference.PreferenceManager.getDefaultSharedPreferencesName(r9), 0).getString(getString(org.schabi.newpipe.R.string.night_theme_key), getResources().getString(org.schabi.newpipe.R.string.default_night_theme_value)).equals(r2) != false) goto L7;
     */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCreate(android.os.Bundle r10) {
        /*
            Method dump skipped, instructions count: 454
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.settings.SettingsActivity.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        Options.Companion supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowTitleEnabled(true);
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        this.menuSearchItem = null;
        this.searchFragment = null;
        super.onDestroy();
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            if (isSearchActive()) {
                setSearchActive(false);
                return true;
            }
            if (getSupportFragmentManager().getBackStackEntryCount() == 0) {
                finish();
            } else {
                FragmentManagerImpl supportFragmentManager = getSupportFragmentManager();
                supportFragmentManager.getClass();
                supportFragmentManager.enqueueAction(new FragmentManager.PopBackStackState(null, -1, 0), false);
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Bridge.saveInstanceState(this, bundle);
    }

    public final void setSearchActive(boolean z) {
        if (isSearchActive() == z) {
            return;
        }
        this.wasSearchActive = z;
        this.searchContainer.setVisibility(z ? 0 : 8);
        MenuItem menuItem = this.menuSearchItem;
        if (menuItem != null) {
            menuItem.setVisible(!z);
        }
        if (z) {
            FragmentManagerImpl supportFragmentManager = getSupportFragmentManager();
            supportFragmentManager.getClass();
            BackStackRecord backStackRecord = new BackStackRecord(supportFragmentManager);
            backStackRecord.doAddOp(R.id.settings_fragment_holder, this.searchFragment, "PreferenceSearchFragment", 1);
            backStackRecord.addToBackStack("PreferenceSearchFragment");
            backStackRecord.commit();
            Jsoup.showKeyboard(this, this.searchEditText);
        } else if (this.searchFragment != null) {
            FragmentManagerImpl supportFragmentManager2 = getSupportFragmentManager();
            supportFragmentManager2.getClass();
            BackStackRecord backStackRecord2 = new BackStackRecord(supportFragmentManager2);
            backStackRecord2.remove(this.searchFragment);
            backStackRecord2.commit();
            FragmentManagerImpl supportFragmentManager3 = getSupportFragmentManager();
            supportFragmentManager3.getClass();
            supportFragmentManager3.enqueueAction(new FragmentManager.PopBackStackState("PreferenceSearchFragment", -1, 1), false);
            EditText editText = this.searchEditText;
            if (editText != null) {
                InputMethodManager inputMethodManager = (InputMethodManager) getSystemService(InputMethodManager.class);
                if (inputMethodManager != null) {
                    inputMethodManager.hideSoftInputFromWindow(editText.getWindowToken(), 0);
                }
                editText.clearFocus();
            }
        }
        this.searchEditText.setText("");
    }
}
