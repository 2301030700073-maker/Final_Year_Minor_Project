package com.android.contacts.model.account;

import android.accounts.AuthenticatorDescription;
import android.content.Context;
import com.android.contacts.R;
import com.android.contacts.model.account.AccountType;
import com.android.contacts.model.account.BaseAccountType;
import com.android.contacts.model.dataitem.DataKind;
import com.google.common.collect.Lists;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public class SimAccountType extends BaseAccountType {
    @Override // com.android.contacts.model.account.AccountType
    public boolean areContactsWritable() {
        return true;
    }

    @Override // com.android.contacts.model.account.AccountType
    public void initializeFieldsFromAuthenticator(AuthenticatorDescription authenticatorDescription) {
    }

    @Override // com.android.contacts.model.account.BaseAccountType, com.android.contacts.model.account.AccountType
    public boolean isGroupMembershipEditable() {
        return false;
    }

    public SimAccountType(Context context) {
        this.titleRes = R.string.account_sim;
        this.iconRes = R.drawable.quantum_ic_sim_card_vd_theme_24;
        try {
            addDataKindStructuredName(context);
            addDataKindName(context);
            DataKind addDataKindPhone = addDataKindPhone(context);
            addDataKindPhone.typeOverallMax = 1;
            addDataKindPhone.typeList = Collections.emptyList();
            this.mIsInitialized = true;
        } catch (AccountType.DefinitionException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // com.android.contacts.model.account.BaseAccountType
    protected DataKind addDataKindStructuredName(Context context) throws AccountType.DefinitionException {
        DataKind addKind = addKind(new DataKind("vnd.android.cursor.item/name", R.string.nameLabelsGroup, -1, true));
        addKind.actionHeader = new BaseAccountType.SimpleInflater(R.string.nameLabelsGroup);
        addKind.actionBody = new BaseAccountType.SimpleInflater("data1");
        addKind.typeOverallMax = 1;
        ArrayList newArrayList = Lists.newArrayList();
        addKind.fieldList = newArrayList;
        newArrayList.add(new AccountType.EditField("data2", R.string.name_given, 8289));
        addKind.fieldList.add(new AccountType.EditField("data3", R.string.name_family, 8289));
        return addKind;
    }

    @Override // com.android.contacts.model.account.BaseAccountType
    protected DataKind addDataKindName(Context context) throws AccountType.DefinitionException {
        DataKind addKind = addKind(new DataKind(DataKind.PSEUDO_MIME_TYPE_NAME, R.string.nameLabelsGroup, -1, true));
        addKind.actionHeader = new BaseAccountType.SimpleInflater(R.string.nameLabelsGroup);
        addKind.actionBody = new BaseAccountType.SimpleInflater("data1");
        addKind.typeOverallMax = 1;
        boolean z = context.getResources().getBoolean(R.bool.config_editor_field_order_primary);
        ArrayList newArrayList = Lists.newArrayList();
        addKind.fieldList = newArrayList;
        if (!z) {
            newArrayList.add(new AccountType.EditField("data3", R.string.name_family, 8289));
            addKind.fieldList.add(new AccountType.EditField("data2", R.string.name_given, 8289));
        } else {
            newArrayList.add(new AccountType.EditField("data2", R.string.name_given, 8289));
            addKind.fieldList.add(new AccountType.EditField("data3", R.string.name_family, 8289));
        }
        return addKind;
    }

    @Override // com.android.contacts.model.account.AccountType
    public AccountInfo wrapAccount(Context context, AccountWithDataSet accountWithDataSet) {
        return new AccountInfo(new AccountDisplayInfo(accountWithDataSet, getDisplayLabel(context), getDisplayLabel(context), getDisplayIcon(context), true), this);
    }
}
