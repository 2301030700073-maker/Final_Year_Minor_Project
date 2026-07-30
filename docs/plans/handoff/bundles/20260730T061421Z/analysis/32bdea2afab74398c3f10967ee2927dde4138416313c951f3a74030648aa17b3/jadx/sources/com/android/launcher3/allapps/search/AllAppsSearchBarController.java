package com.android.launcher3.allapps.search;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.ExtendedEditText;
import com.android.launcher3.Utilities;
import com.android.launcher3.model.AppLaunchTracker;
import com.android.launcher3.util.PackageManagerHelper;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class AllAppsSearchBarController implements TextWatcher, TextView.OnEditorActionListener, ExtendedEditText.OnBackKeyListener, View.OnFocusChangeListener {
    public Callbacks mCb;
    public ExtendedEditText mInput;
    public BaseDraggingActivity mLauncher;
    public String mQuery;
    public SearchAlgorithm mSearchAlgorithm;

    public interface Callbacks {
        void clearSearchResult();

        void onSearchResult(String str, ArrayList arrayList);
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        String obj = editable.toString();
        this.mQuery = obj;
        if (obj.isEmpty()) {
            this.mSearchAlgorithm.cancel(true);
            this.mCb.clearSearchResult();
        } else {
            this.mSearchAlgorithm.cancel(false);
            this.mSearchAlgorithm.doSearch(this.mQuery, this.mCb);
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public final void initialize(SearchAlgorithm searchAlgorithm, ExtendedEditText extendedEditText, BaseDraggingActivity baseDraggingActivity, Callbacks callbacks) {
        this.mCb = callbacks;
        this.mLauncher = baseDraggingActivity;
        this.mInput = extendedEditText;
        extendedEditText.addTextChangedListener(this);
        this.mInput.setOnEditorActionListener(this);
        ExtendedEditText extendedEditText2 = this.mInput;
        extendedEditText2.mBackKeyListener = this;
        extendedEditText2.setOnFocusChangeListener(this);
        this.mSearchAlgorithm = searchAlgorithm;
    }

    @Override // com.android.launcher3.ExtendedEditText.OnBackKeyListener
    public boolean onBackKey() {
        if (!Utilities.trim(this.mInput.getEditableText().toString()).isEmpty()) {
            return false;
        }
        this.mCb.clearSearchResult();
        this.mInput.reset();
        this.mQuery = null;
        return true;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 3) {
            return false;
        }
        String charSequence = textView.getText().toString();
        if (charSequence.isEmpty()) {
            return false;
        }
        BaseDraggingActivity baseDraggingActivity = this.mLauncher;
        return baseDraggingActivity.startActivitySafely(textView, PackageManagerHelper.getMarketSearchIntent(baseDraggingActivity, charSequence), null, AppLaunchTracker.CONTAINER_SEARCH);
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        if (z) {
            return;
        }
        this.mInput.hideKeyboard();
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void refreshSearchResult() {
        if (TextUtils.isEmpty(this.mQuery)) {
            return;
        }
        this.mSearchAlgorithm.cancel(false);
        this.mSearchAlgorithm.doSearch(this.mQuery, this.mCb);
    }
}
