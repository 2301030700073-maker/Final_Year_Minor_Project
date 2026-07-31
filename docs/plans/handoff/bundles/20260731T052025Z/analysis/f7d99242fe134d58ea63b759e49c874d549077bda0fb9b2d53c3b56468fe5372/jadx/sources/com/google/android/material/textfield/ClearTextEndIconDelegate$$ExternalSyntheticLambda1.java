package com.google.android.material.textfield;

import android.view.View;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import com.bytehamster.lib.preferencesearch.SearchPreferenceActionView;
import com.bytehamster.lib.preferencesearch.SearchPreferenceFragment;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ClearTextEndIconDelegate$$ExternalSyntheticLambda1 implements View.OnFocusChangeListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ ClearTextEndIconDelegate$$ExternalSyntheticLambda1(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                ClearTextEndIconDelegate clearTextEndIconDelegate = (ClearTextEndIconDelegate) obj;
                clearTextEndIconDelegate.animateIcon(clearTextEndIconDelegate.shouldBeVisible());
                break;
            case 1:
                SearchPreferenceActionView searchPreferenceActionView = (SearchPreferenceActionView) obj;
                if (!z) {
                    int i2 = SearchPreferenceActionView.$r8$clinit;
                    break;
                } else {
                    SearchPreferenceFragment searchPreferenceFragment = searchPreferenceActionView.searchFragment;
                    if (searchPreferenceFragment == null || !searchPreferenceFragment.isVisible()) {
                        SearchPreferenceFragment showSearchFragment = searchPreferenceActionView.searchConfiguration.showSearchFragment();
                        searchPreferenceActionView.searchFragment = showSearchFragment;
                        showSearchFragment.historyClickListener = new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(17, searchPreferenceActionView);
                        break;
                    }
                }
                break;
            default:
                DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = (DropdownMenuEndIconDelegate) obj;
                dropdownMenuEndIconDelegate.editTextHasFocus = z;
                dropdownMenuEndIconDelegate.refreshIconState();
                if (!z) {
                    dropdownMenuEndIconDelegate.setEndIconChecked(false);
                    dropdownMenuEndIconDelegate.dropdownPopupDirty = false;
                    break;
                }
                break;
        }
    }
}
