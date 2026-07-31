package com.fsck.k9.ui.settings.account;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.SpinnerAdapter;
import androidx.appcompat.widget.AppCompatSpinner;
import com.fsck.k9.R;
import com.google.android.material.textview.MaterialTextView;
import java.util.List;
import net.thunderbird.core.android.account.LegacyAccountDto;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountSelectionSpinner extends AppCompatSpinner {
    public final Drawable cachedBackground;
    public LegacyAccountDto selectedAccount;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AccountsAdapter extends ArrayAdapter {
        public CharSequence title;

        public AccountsAdapter(Context context) {
            super(context, 0);
            this.title = "";
        }

        @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
        public final View getDropDownView(int i, View view, ViewGroup viewGroup) {
            viewGroup.getClass();
            LegacyAccountDto legacyAccountDto = (LegacyAccountDto) getItem(i);
            if (legacyAccountDto == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("No item at position ", i);
                return null;
            }
            if (view == null) {
                view = LayoutInflater.from(getContext()).inflate(R.layout.account_spinner_dropdown_item, viewGroup, false);
            }
            View findViewById = view.findViewById(R.id.name);
            findViewById.getClass();
            MaterialTextView materialTextView = (MaterialTextView) findViewById;
            View findViewById2 = view.findViewById(R.id.email);
            findViewById2.getClass();
            MaterialTextView materialTextView2 = (MaterialTextView) findViewById2;
            String name = legacyAccountDto.getName();
            if (name != null) {
                materialTextView.setText(name);
                materialTextView2.setText(legacyAccountDto.getEmail());
                materialTextView2.setVisibility(0);
            } else {
                materialTextView.setText(legacyAccountDto.getEmail());
                materialTextView2.setVisibility(8);
            }
            return view;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            viewGroup.getClass();
            LegacyAccountDto legacyAccountDto = (LegacyAccountDto) getItem(i);
            if (legacyAccountDto == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("No item at position ", i);
                return null;
            }
            if (view == null) {
                view = LayoutInflater.from(getContext()).inflate(R.layout.account_spinner_item, viewGroup, false);
            }
            View findViewById = view.findViewById(R.id.name);
            findViewById.getClass();
            View findViewById2 = view.findViewById(R.id.email);
            findViewById2.getClass();
            ((MaterialTextView) findViewById).setText(this.title);
            ((MaterialTextView) findViewById2).setText(legacyAccountDto.getDisplayName());
            return view;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountSelectionSpinner(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        attributeSet.getClass();
        Context context2 = getContext();
        context2.getClass();
        setAdapter((SpinnerAdapter) new AccountsAdapter(context2));
        Drawable background = getBackground();
        background.getClass();
        this.cachedBackground = background;
    }

    public final LegacyAccountDto getSelection() {
        Object selectedItem = getSelectedItem();
        selectedItem.getClass();
        return (LegacyAccountDto) selectedItem;
    }

    public final void setAccounts(List<? extends LegacyAccountDto> list) {
        list.getClass();
        SpinnerAdapter adapter = getAdapter();
        adapter.getClass();
        AccountsAdapter accountsAdapter = (AccountsAdapter) adapter;
        accountsAdapter.clear();
        accountsAdapter.addAll(list);
        LegacyAccountDto legacyAccountDto = this.selectedAccount;
        if (legacyAccountDto != null) {
            setSelection(legacyAccountDto);
        }
        boolean z = list.size() > 1;
        setEnabled(z);
        setBackground(z ? this.cachedBackground : null);
    }

    public final void setSelection(LegacyAccountDto legacyAccountDto) {
        legacyAccountDto.getClass();
        this.selectedAccount = legacyAccountDto;
        SpinnerAdapter adapter = getAdapter();
        adapter.getClass();
        setSelection(((AccountsAdapter) adapter).getPosition(legacyAccountDto), false);
    }

    public final void setTitle(CharSequence charSequence) {
        charSequence.getClass();
        SpinnerAdapter adapter = getAdapter();
        adapter.getClass();
        AccountsAdapter accountsAdapter = (AccountsAdapter) adapter;
        accountsAdapter.title = charSequence;
        accountsAdapter.notifyDataSetChanged();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountSelectionSpinner(Context context) {
        super(context, null);
        context.getClass();
        Context context2 = getContext();
        context2.getClass();
        setAdapter((SpinnerAdapter) new AccountsAdapter(context2));
        Drawable background = getBackground();
        background.getClass();
        this.cachedBackground = background;
    }
}
