package com.bytehamster.lib.preferencesearch;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.SearchView;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.work.Configuration;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.ui.settings.general.GeneralSettingsActivity;
import com.google.android.material.textfield.ClearTextEndIconDelegate$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class SearchPreferenceActionView extends SearchView {
    public static final /* synthetic */ int $r8$clinit = 0;
    public GeneralSettingsActivity activity;
    public final SearchConfiguration searchConfiguration;
    public SearchPreferenceFragment searchFragment;

    public SearchPreferenceActionView(Context context) {
        super(context);
        this.searchConfiguration = new SearchConfiguration();
        initView();
    }

    public final void cancelSearch() {
        setQuery$1("");
        if (!this.mIconified) {
            setIconified(true);
        }
        SearchPreferenceFragment searchPreferenceFragment = this.searchFragment;
        if (searchPreferenceFragment != null && searchPreferenceFragment.isVisible() && this.searchFragment.isVisible()) {
            FragmentManagerImpl supportFragmentManager = this.activity.getSupportFragmentManager();
            supportFragmentManager.getClass();
            BackStackRecord backStackRecord = new BackStackRecord(supportFragmentManager);
            backStackRecord.remove(this.searchFragment);
            backStackRecord.commit();
            supportFragmentManager.enqueueAction(new FragmentManager.PopBackStackState("SearchPreferenceFragment", -1), false);
        }
    }

    public SearchConfiguration getSearchConfiguration() {
        return this.searchConfiguration;
    }

    public final void initView() {
        this.searchConfiguration.searchBarEnabled = false;
        setOnQueryTextListener(new Configuration.Builder(19, this));
        setOnQueryTextFocusChangeListener(new ClearTextEndIconDelegate$$ExternalSyntheticLambda1(1, this));
    }

    public void setActivity(AppCompatActivity appCompatActivity) {
        this.searchConfiguration.activity = appCompatActivity;
        if (appCompatActivity instanceof GeneralSettingsActivity) {
            this.activity = (GeneralSettingsActivity) appCompatActivity;
        } else {
            UriKt$$ExternalSyntheticBUOutline0.m("Activity must implement SearchPreferenceResultListener");
        }
    }

    public SearchPreferenceActionView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.searchConfiguration = new SearchConfiguration();
        initView();
    }

    public SearchPreferenceActionView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.searchConfiguration = new SearchConfiguration();
        initView();
    }
}
