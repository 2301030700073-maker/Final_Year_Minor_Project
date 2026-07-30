package com.android.contacts.util;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.contacts.R;
import com.android.contacts.model.account.AccountInfo;
import com.android.contacts.model.account.AccountWithDataSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class AccountsListAdapter extends BaseAdapter {
    private List<AccountInfo> mAccounts;
    private int mCustomLayout;
    private final LayoutInflater mInflater;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public AccountsListAdapter(Context context) {
        this(context, Collections.emptyList(), null);
    }

    public AccountsListAdapter(Context context, List<AccountInfo> list) {
        this(context, list, null);
    }

    public AccountsListAdapter(Context context, List<AccountInfo> list, AccountWithDataSet accountWithDataSet) {
        this.mCustomLayout = -1;
        this.mInflater = LayoutInflater.from(context);
        this.mAccounts = new ArrayList(list.size());
        setAccounts(list, accountWithDataSet);
    }

    public void setAccounts(List<AccountInfo> list, AccountWithDataSet accountWithDataSet) {
        AccountInfo account;
        if (this.mAccounts.isEmpty()) {
            account = AccountInfo.getAccount(list, accountWithDataSet);
        } else {
            account = AccountInfo.getAccount(list, this.mAccounts.get(0).getAccount());
        }
        this.mAccounts.clear();
        this.mAccounts.addAll(list);
        if (account != null && !this.mAccounts.isEmpty() && !this.mAccounts.get(0).sameAccount(accountWithDataSet) && this.mAccounts.remove(account)) {
            this.mAccounts.add(0, account);
        }
        notifyDataSetChanged();
    }

    public void setCustomLayout(int i) {
        this.mCustomLayout = i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            LayoutInflater layoutInflater = this.mInflater;
            int i2 = this.mCustomLayout;
            if (i2 <= 0) {
                i2 = R.layout.account_selector_list_item_condensed;
            }
            view = layoutInflater.inflate(i2, viewGroup, false);
        }
        TextView textView = (TextView) view.findViewById(android.R.id.text1);
        TextView textView2 = (TextView) view.findViewById(android.R.id.text2);
        ImageView imageView = (ImageView) view.findViewById(android.R.id.icon);
        textView.setText(this.mAccounts.get(i).getTypeLabel());
        textView2.setText(this.mAccounts.get(i).getNameLabel());
        imageView.setImageDrawable(this.mAccounts.get(i).getIcon());
        return view;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mAccounts.size();
    }

    @Override // android.widget.Adapter
    public AccountWithDataSet getItem(int i) {
        return this.mAccounts.get(i).getAccount();
    }
}
