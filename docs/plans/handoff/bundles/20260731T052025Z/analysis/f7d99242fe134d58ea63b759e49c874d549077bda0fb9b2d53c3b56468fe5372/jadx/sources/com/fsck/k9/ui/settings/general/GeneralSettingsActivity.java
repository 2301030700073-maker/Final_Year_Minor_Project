package com.fsck.k9.ui.settings.general;

import android.os.Bundle;
import android.os.Handler;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.app.ActionBar;
import androidx.compose.runtime.GapPending$keyMap$2;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.Fragment$$ExternalSyntheticLambda0;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceScreen;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import com.bytehamster.lib.preferencesearch.SearchConfiguration;
import com.bytehamster.lib.preferencesearch.SearchPreferenceActionView;
import com.fsck.k9.R;
import com.fsck.k9.ui.base.BaseActivity;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex$$ExternalSyntheticLambda1;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;
import org.jsoup.parser.ParseError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GeneralSettingsActivity extends BaseActivity implements PreferenceFragmentCompat.OnPreferenceStartScreenCallback {
    public final Lazy featureFlagProvider$delegate = ResultKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new GapPending$keyMap$2(14, this));
    public final List fontPreferenceKeys = IntOffsetKt.listOf((Object[]) new String[]{"font_size", "message_list_fonts", "message_list_subject_font", "message_list_sender_font", "message_list_date_font", "message_list_preview_font", "message_view_fonts", "message_view_account_name_font", "message_view_subject_font", "message_view_sender_font", "message_view_date_font", "message_view_recipients_font", "message_view_content_font_slider", "message_compose_fonts", "message_compose_input_font"});
    public boolean searchEnabled;
    public SearchPreferenceActionView searchPreferenceActionView;
    public MenuItem searchPreferenceMenuItem;
    public String searchQuery;

    @Override // com.fsck.k9.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setLayout(R.layout.general_settings);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar == null) {
            DBUtil$$ExternalSyntheticBUOutline0.m("getSupportActionBar() == null");
            return;
        }
        supportActionBar.setDisplayHomeAsUpEnabled(true);
        if (bundle != null) {
            String string = bundle.getString("search_query", "");
            string.getClass();
            this.searchQuery = string;
            this.searchEnabled = bundle.getBoolean("search_enabled", false);
            return;
        }
        FragmentManagerImpl supportFragmentManager = getSupportFragmentManager();
        supportFragmentManager.getClass();
        BackStackRecord backStackRecord = new BackStackRecord(supportFragmentManager);
        int i = GeneralSettingsFragment.$r8$clinit;
        backStackRecord.doAddOp(R.id.generalSettingsContainer, SchemaInfoUtilKt.create(null), null, 1);
        backStackRecord.commit();
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.general_settings_option, menu);
        MenuItem findItem = menu.findItem(R.id.search);
        findItem.getClass();
        this.searchPreferenceMenuItem = findItem;
        View actionView = findItem.getActionView();
        actionView.getClass();
        SearchPreferenceActionView searchPreferenceActionView = (SearchPreferenceActionView) actionView;
        this.searchPreferenceActionView = searchPreferenceActionView;
        searchPreferenceActionView.setActivity(this);
        SearchPreferenceActionView searchPreferenceActionView2 = this.searchPreferenceActionView;
        if (searchPreferenceActionView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchPreferenceActionView");
            throw null;
        }
        SearchConfiguration searchConfiguration = searchPreferenceActionView2.getSearchConfiguration();
        searchConfiguration.containerResId = R.id.generalSettingsContainer;
        searchConfiguration.breadcrumbsEnabled = true;
        searchConfiguration.fuzzySearchEnabled = true;
        searchConfiguration.textHint = getString(R.string.search_action);
        searchConfiguration.textNoResults = getString(R.string.preference_search_no_results);
        searchConfiguration.filesToIndex.add(new SearchConfiguration.SearchIndexItem(searchConfiguration));
        ((InMemoryFeatureFlagProvider) this.featureFlagProvider$delegate.getValue()).m1030providedj3aFNw("disable_font_size_config").onEnabled(new Regex$$ExternalSyntheticLambda1(29, this, searchConfiguration));
        MenuItem menuItem = this.searchPreferenceMenuItem;
        if (menuItem == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchPreferenceMenuItem");
            throw null;
        }
        menuItem.setOnActionExpandListener(new GeneralSettingsActivity$onCreateOptionsMenu$2(0, this));
        if (this.searchEnabled) {
            new Handler().post(new Fragment$$ExternalSyntheticLambda0(11, this));
            this.searchEnabled = false;
        }
        return true;
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        getOnBackPressedDispatcher().onBackPressed();
        return true;
    }

    @Override // androidx.preference.PreferenceFragmentCompat.OnPreferenceStartScreenCallback
    public final void onPreferenceStartScreen(PreferenceFragmentCompat preferenceFragmentCompat, PreferenceScreen preferenceScreen) {
        preferenceFragmentCompat.getClass();
        FragmentManagerImpl supportFragmentManager = getSupportFragmentManager();
        supportFragmentManager.getClass();
        BackStackRecord backStackRecord = new BackStackRecord(supportFragmentManager);
        int i = GeneralSettingsFragment.$r8$clinit;
        backStackRecord.replace(R.id.generalSettingsContainer, SchemaInfoUtilKt.create(preferenceScreen.mKey), null);
        backStackRecord.addToBackStack(null);
        backStackRecord.commit();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        SearchPreferenceActionView searchPreferenceActionView = this.searchPreferenceActionView;
        if (searchPreferenceActionView != null) {
            bundle.putString("search_query", searchPreferenceActionView.getQuery().toString());
            if (this.searchPreferenceActionView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("searchPreferenceActionView");
                throw null;
            }
            bundle.putBoolean("search_enabled", !r0.mIconified);
        }
        super.onSaveInstanceState(bundle);
    }

    public final void onSearchResultClicked(ParseError parseError) {
        SearchPreferenceActionView searchPreferenceActionView = this.searchPreferenceActionView;
        if (searchPreferenceActionView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchPreferenceActionView");
            throw null;
        }
        searchPreferenceActionView.cancelSearch();
        MenuItem menuItem = this.searchPreferenceMenuItem;
        if (menuItem == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchPreferenceMenuItem");
            throw null;
        }
        menuItem.collapseActionView();
        int i = GeneralSettingsFragment.$r8$clinit;
        GeneralSettingsFragment create = SchemaInfoUtilKt.create(parseError.errorMsg);
        FragmentManagerImpl supportFragmentManager = getSupportFragmentManager();
        supportFragmentManager.getClass();
        BackStackRecord backStackRecord = new BackStackRecord(supportFragmentManager);
        backStackRecord.addToBackStack("Search result");
        backStackRecord.replace(R.id.generalSettingsContainer, create, null);
        backStackRecord.commit();
        new Handler().post(new Processor$$ExternalSyntheticLambda2(9, parseError, create));
    }
}
