package com.bytehamster.lib.preferencesearch;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EditText;
import androidx.preference.Preference;
import androidx.preference.PreferenceViewHolder;
import com.fsck.k9.R;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class SearchPreference extends Preference implements View.OnClickListener {
    public final String hint;
    public final SearchConfiguration searchConfiguration;

    public SearchPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        SearchConfiguration searchConfiguration = new SearchConfiguration();
        this.searchConfiguration = searchConfiguration;
        this.hint = null;
        this.mLayoutResId = R.layout.searchpreference_preference;
        Context context2 = this.mContext;
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, new int[]{R.attr.textHint});
        if (obtainStyledAttributes.getText(0) != null) {
            this.hint = obtainStyledAttributes.getText(0).toString();
            searchConfiguration.textHint = obtainStyledAttributes.getText(0).toString();
        }
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context2.obtainStyledAttributes(attributeSet, new int[]{R.attr.textClearHistory});
        if (obtainStyledAttributes2.getText(0) != null) {
            searchConfiguration.textClearHistory = obtainStyledAttributes2.getText(0).toString();
        }
        obtainStyledAttributes2.recycle();
        TypedArray obtainStyledAttributes3 = context2.obtainStyledAttributes(attributeSet, new int[]{R.attr.textNoResults});
        if (obtainStyledAttributes3.getText(0) != null) {
            searchConfiguration.textNoResults = obtainStyledAttributes3.getText(0).toString();
        }
        obtainStyledAttributes3.recycle();
        TypedArray obtainStyledAttributes4 = context2.obtainStyledAttributes(attributeSet, new int[]{R.attr.textClearInput});
        if (obtainStyledAttributes4.getText(0) != null) {
            searchConfiguration.textClearInput = obtainStyledAttributes4.getText(0).toString();
        }
        obtainStyledAttributes4.recycle();
        TypedArray obtainStyledAttributes5 = context2.obtainStyledAttributes(attributeSet, new int[]{R.attr.textMore});
        if (obtainStyledAttributes5.getText(0) != null) {
            searchConfiguration.textMore = obtainStyledAttributes5.getText(0).toString();
        }
        obtainStyledAttributes5.recycle();
    }

    @Override // androidx.preference.Preference
    public final void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        View findViewById = preferenceViewHolder.findViewById(R.id.search);
        View view = preferenceViewHolder.itemView;
        EditText editText = (EditText) findViewById;
        editText.setFocusable(false);
        editText.setInputType(0);
        editText.setOnClickListener(this);
        String str = this.hint;
        if (str != null) {
            editText.setHint(str);
        }
        preferenceViewHolder.findViewById(R.id.search_card).setOnClickListener(this);
        view.setOnClickListener(this);
        view.setBackgroundColor(0);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.searchConfiguration.showSearchFragment();
    }
}
