package com.fsck.k9.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.appcompat.widget.ListPopupWindow;
import androidx.appcompat.widget.SearchView;
import androidx.datastore.preferences.PreferencesProto$Value;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.Preferences;
import com.fsck.k9.R;
import com.fsck.k9.ui.identity.IdentityFormatter;
import com.google.android.material.textfield.MaterialAutoCompleteTextView;
import com.takisoft.datetimepicker.widget.DatePickerCalendarDelegate;
import com.takisoft.datetimepicker.widget.YearPickerView;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import kotlin.io.CloseableKt;
import net.thunderbird.core.android.account.Identity;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class ChooseIdentity extends BaseListActivity {
    public ArrayAdapter adapter;
    public LegacyAccountDto mAccount;
    public final IdentityFormatter identityFormatter = (IdentityFormatter) CloseableKt.get$default(IdentityFormatter.class);
    public List identities = null;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.activity.ChooseIdentity$1, reason: invalid class name */
    public final class AnonymousClass1 implements AdapterView.OnItemClickListener {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass1(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
            CharSequence convertSelectionToString;
            int i2;
            int i3 = this.$r8$classId;
            Object obj = this.this$0;
            switch (i3) {
                case 0:
                    ChooseIdentity chooseIdentity = (ChooseIdentity) obj;
                    String str = chooseIdentity.mAccount.getIdentity(i).email;
                    if (str != null && !str.trim().equals("")) {
                        Intent intent = new Intent();
                        intent.putExtra("com.fsck.k9.ChooseIdentity_identity", chooseIdentity.mAccount.getIdentity(i));
                        chooseIdentity.setResult(-1, intent);
                        chooseIdentity.finish();
                        break;
                    } else {
                        Toast.makeText(chooseIdentity, chooseIdentity.getString(R.string.identity_has_no_email), 1).show();
                        break;
                    }
                case 1:
                    AppCompatSpinner.DropdownPopup dropdownPopup = (AppCompatSpinner.DropdownPopup) obj;
                    AppCompatSpinner appCompatSpinner = dropdownPopup.this$0;
                    appCompatSpinner.setSelection(i);
                    if (appCompatSpinner.getOnItemClickListener() != null) {
                        appCompatSpinner.performItemClick(view, i, dropdownPopup.mAdapter.getItemId(i));
                    }
                    dropdownPopup.dismiss();
                    break;
                case 2:
                    ((SearchView) obj).onItemClicked(i);
                    break;
                case 3:
                    int i4 = ManageIdentities.$r8$clinit;
                    ((ManageIdentities) obj).editItem(i);
                    break;
                case 4:
                    MaterialAutoCompleteTextView materialAutoCompleteTextView = (MaterialAutoCompleteTextView) obj;
                    ListPopupWindow listPopupWindow = materialAutoCompleteTextView.modalListPopup;
                    convertSelectionToString = materialAutoCompleteTextView.convertSelectionToString(i < 0 ? !listPopupWindow.mPopup.isShowing() ? null : listPopupWindow.mDropDownList.getSelectedItem() : materialAutoCompleteTextView.getAdapter().getItem(i));
                    materialAutoCompleteTextView.setText(convertSelectionToString, false);
                    AdapterView.OnItemClickListener onItemClickListener = materialAutoCompleteTextView.getOnItemClickListener();
                    if (onItemClickListener != null) {
                        if (view == null || i < 0) {
                            view = !listPopupWindow.mPopup.isShowing() ? null : listPopupWindow.mDropDownList.getSelectedView();
                            i = !listPopupWindow.mPopup.isShowing() ? -1 : listPopupWindow.mDropDownList.getSelectedItemPosition();
                            j = !listPopupWindow.mPopup.isShowing() ? Long.MIN_VALUE : listPopupWindow.mDropDownList.getSelectedItemId();
                        }
                        onItemClickListener.onItemClick(listPopupWindow.mDropDownList, view, i, j);
                    }
                    listPopupWindow.dismiss();
                    break;
                default:
                    YearPickerView yearPickerView = (YearPickerView) obj;
                    YearPickerView.YearAdapter yearAdapter = yearPickerView.mAdapter;
                    int i5 = yearAdapter.mMinYear + i;
                    if (yearAdapter.mActivatedYear != i5) {
                        yearAdapter.mActivatedYear = i5;
                        yearAdapter.notifyDataSetChanged();
                    }
                    DatePickerCalendarDelegate.AnonymousClass1 anonymousClass1 = yearPickerView.mOnYearSelectedListener;
                    if (anonymousClass1 != null) {
                        DatePickerCalendarDelegate datePickerCalendarDelegate = DatePickerCalendarDelegate.this;
                        Calendar calendar = datePickerCalendarDelegate.mCurrentDate;
                        int i6 = calendar.get(5);
                        switch (calendar.get(2)) {
                            case 0:
                            case 2:
                            case 4:
                            case 6:
                            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                            case 9:
                            case 11:
                                i2 = 31;
                                break;
                            case 1:
                                if (i5 % 4 != 0) {
                                    i2 = 28;
                                    break;
                                } else {
                                    i2 = 29;
                                    break;
                                }
                            case 3:
                            case 5:
                            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                            case 10:
                                i2 = 30;
                                break;
                            default:
                                UriKt$$ExternalSyntheticBUOutline0.m("Invalid Month");
                                break;
                        }
                        if (i6 > i2) {
                            calendar.set(5, i2);
                        }
                        calendar.set(1, i5);
                        datePickerCalendarDelegate.onDateChanged(true, true);
                        datePickerCalendarDelegate.setCurrentView(0);
                        datePickerCalendarDelegate.mHeaderYear.requestFocus();
                        break;
                    }
                    break;
            }
        }
    }

    @Override // com.fsck.k9.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setLayout(R.layout.list_content_simple);
        setTitle(R.string.choose_identity_title);
        getListView().setTextFilterEnabled(true);
        getListView().setItemsCanFocus(false);
        getListView().setChoiceMode(0);
        this.mAccount = ((Preferences) CloseableKt.get$default(Preferences.class)).getAccount(getIntent().getStringExtra("com.fsck.k9.ChooseIdentity_account"));
        ArrayAdapter arrayAdapter = new ArrayAdapter(this, android.R.layout.simple_list_item_1);
        this.adapter = arrayAdapter;
        if (this.list == null) {
            this.list = (ListView) findViewById(android.R.id.list);
        }
        this.list.setAdapter((ListAdapter) arrayAdapter);
        setupClickListeners();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        refreshView();
    }

    public final void refreshView() {
        this.adapter.setNotifyOnChange(false);
        this.adapter.clear();
        List identities = this.mAccount.getIdentities();
        this.identities = identities;
        Iterator it = ((ArrayList) identities).iterator();
        while (it.hasNext()) {
            Identity identity = (Identity) it.next();
            this.identityFormatter.getClass();
            identity.getClass();
            String str = identity.description;
            if (str == null) {
                str = IdentityFormatter.getEmailDisplayName(identity);
            }
            this.adapter.add(str);
        }
        this.adapter.notifyDataSetChanged();
    }

    public void setupClickListeners() {
        getListView().setOnItemClickListener(new AnonymousClass1(0, this));
    }
}
