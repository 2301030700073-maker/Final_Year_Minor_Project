package com.bytehamster.lib.preferencesearch;

import android.R;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.fragment.app.FragmentState;
import com.bytehamster.lib.preferencesearch.ui.RevealAnimationSetting;
import java.util.ArrayList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SearchConfiguration {
    public AppCompatActivity activity;
    public String textClearHistory;
    public String textClearInput;
    public String textHint;
    public String textMore;
    public String textNoResults;
    public ArrayList filesToIndex = new ArrayList();
    public ArrayList preferencesToIndex = new ArrayList();
    public final ArrayList bannedKeys = new ArrayList();
    public boolean historyEnabled = true;
    public String historyId = null;
    public boolean breadcrumbsEnabled = false;
    public boolean fuzzySearchEnabled = true;
    public boolean searchBarEnabled = true;
    public int containerResId = R.id.content;
    public RevealAnimationSetting revealAnimationSetting = null;

    public final SearchPreferenceFragment showSearchFragment() {
        if (this.activity == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("setActivity() not called");
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("items", this.filesToIndex);
        bundle.putParcelableArrayList("individual_prefs", this.preferencesToIndex);
        bundle.putBoolean("history_enabled", this.historyEnabled);
        bundle.putParcelable("reveal_anim_setting", this.revealAnimationSetting);
        bundle.putBoolean("fuzzy", this.fuzzySearchEnabled);
        bundle.putBoolean("breadcrumbs_enabled", this.breadcrumbsEnabled);
        bundle.putBoolean("search_bar_enabled", this.searchBarEnabled);
        bundle.putString("text_hint", this.textHint);
        bundle.putString("text_clear_history", this.textClearHistory);
        bundle.putString("text_no_results", this.textNoResults);
        bundle.putString("text_clear_input", this.textClearInput);
        bundle.putString("text_more", this.textMore);
        bundle.putString("history_id", this.historyId);
        SearchPreferenceFragment searchPreferenceFragment = new SearchPreferenceFragment();
        searchPreferenceFragment.setArguments(bundle);
        FragmentManagerImpl supportFragmentManager = this.activity.getSupportFragmentManager();
        supportFragmentManager.getClass();
        BackStackRecord backStackRecord = new BackStackRecord(supportFragmentManager);
        backStackRecord.doAddOp(this.containerResId, searchPreferenceFragment, "SearchPreferenceFragment", 1);
        backStackRecord.addToBackStack("SearchPreferenceFragment");
        backStackRecord.commit();
        return searchPreferenceFragment;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SearchIndexItem implements Parcelable {
        public static final Parcelable.Creator<SearchIndexItem> CREATOR = new FragmentState.AnonymousClass1(23);
        public final String breadcrumb;
        public final int resId;
        public final SearchConfiguration searchConfiguration;

        public SearchIndexItem(Parcel parcel) {
            this.breadcrumb = "";
            this.breadcrumb = parcel.readString();
            this.resId = parcel.readInt();
            this.searchConfiguration = null;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.breadcrumb);
            parcel.writeInt(this.resId);
        }

        public SearchIndexItem(SearchConfiguration searchConfiguration) {
            this.breadcrumb = "";
            this.resId = com.fsck.k9.R.xml.general_settings;
            this.searchConfiguration = searchConfiguration;
        }
    }
}
