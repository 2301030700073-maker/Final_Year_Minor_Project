package com.android.contacts.model.account;

import android.content.ContentValues;
import android.content.Context;
import com.android.contacts.R;
import com.android.contacts.model.account.AccountType;
import com.android.contacts.model.account.BaseAccountType;
import com.android.contacts.model.dataitem.DataKind;
import com.android.contacts.util.CommonDateUtils;
import com.android.contactsbind.FeedbackHelper;
import com.google.common.collect.Lists;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class GoogleAccountType extends BaseAccountType {
    public static final String ACCOUNT_TYPE = "com.google";
    private static final String TAG = "GoogleAccountType";
    public static final String PLUS_EXTENSION_PACKAGE_NAME = "com.google.android.gms";
    private static final List<String> mExtensionPackages = Lists.newArrayList(PLUS_EXTENSION_PACKAGE_NAME);

    @Override // com.android.contacts.model.account.AccountType
    public boolean areContactsWritable() {
        return true;
    }

    @Override // com.android.contacts.model.account.AccountType
    public String getViewContactNotifyServiceClassName() {
        return "com.google.android.syncadapters.contacts.SyncHighResPhotoIntentService";
    }

    @Override // com.android.contacts.model.account.AccountType
    public String getViewContactNotifyServicePackageName() {
        return "com.google.android.syncadapters.contacts";
    }

    @Override // com.android.contacts.model.account.BaseAccountType, com.android.contacts.model.account.AccountType
    public boolean isGroupMembershipEditable() {
        return true;
    }

    public GoogleAccountType(Context context, String str) {
        this.accountType = ACCOUNT_TYPE;
        this.resourcePackageName = null;
        this.syncAdapterPackageName = str;
        try {
            addDataKindStructuredName(context);
            addDataKindName(context);
            addDataKindPhoneticName(context);
            addDataKindNickname(context);
            addDataKindPhone(context);
            addDataKindEmail(context);
            addDataKindStructuredPostal(context);
            addDataKindIm(context);
            addDataKindOrganization(context);
            addDataKindPhoto(context);
            addDataKindNote(context);
            addDataKindWebsite(context);
            addDataKindSipAddress(context);
            addDataKindGroupMembership(context);
            addDataKindRelation(context);
            addDataKindEvent(context);
            addDataKindCustomField(context);
            this.mIsInitialized = true;
        } catch (AccountType.DefinitionException e) {
            FeedbackHelper.sendFeedback(context, TAG, "Failed to build google account type", e);
        }
    }

    @Override // com.android.contacts.model.account.AccountType
    public List<String> getExtensionPackageNames() {
        return mExtensionPackages;
    }

    @Override // com.android.contacts.model.account.BaseAccountType
    protected DataKind addDataKindPhone(Context context) throws AccountType.DefinitionException {
        DataKind addDataKindPhone = super.addDataKindPhone(context);
        addDataKindPhone.typeColumn = "data2";
        ArrayList newArrayList = Lists.newArrayList();
        addDataKindPhone.typeList = newArrayList;
        newArrayList.add(BaseAccountType.buildPhoneType(2));
        addDataKindPhone.typeList.add(BaseAccountType.buildPhoneType(3));
        addDataKindPhone.typeList.add(BaseAccountType.buildPhoneType(1));
        addDataKindPhone.typeList.add(BaseAccountType.buildPhoneType(12));
        addDataKindPhone.typeList.add(BaseAccountType.buildPhoneType(4).setSecondary(true));
        addDataKindPhone.typeList.add(BaseAccountType.buildPhoneType(5).setSecondary(true));
        addDataKindPhone.typeList.add(BaseAccountType.buildPhoneType(6).setSecondary(true));
        addDataKindPhone.typeList.add(BaseAccountType.buildPhoneType(7));
        addDataKindPhone.typeList.add(BaseAccountType.buildPhoneType(0).setSecondary(true).setCustomColumn("data3"));
        ArrayList newArrayList2 = Lists.newArrayList();
        addDataKindPhone.fieldList = newArrayList2;
        newArrayList2.add(new AccountType.EditField("data1", R.string.phoneLabelsGroup, 3));
        return addDataKindPhone;
    }

    @Override // com.android.contacts.model.account.BaseAccountType
    protected DataKind addDataKindEmail(Context context) throws AccountType.DefinitionException {
        DataKind addDataKindEmail = super.addDataKindEmail(context);
        addDataKindEmail.typeColumn = "data2";
        ArrayList newArrayList = Lists.newArrayList();
        addDataKindEmail.typeList = newArrayList;
        newArrayList.add(BaseAccountType.buildEmailType(1));
        addDataKindEmail.typeList.add(BaseAccountType.buildEmailType(2));
        addDataKindEmail.typeList.add(BaseAccountType.buildEmailType(3));
        addDataKindEmail.typeList.add(BaseAccountType.buildEmailType(0).setSecondary(true).setCustomColumn("data3"));
        ArrayList newArrayList2 = Lists.newArrayList();
        addDataKindEmail.fieldList = newArrayList2;
        newArrayList2.add(new AccountType.EditField("data1", R.string.emailLabelsGroup, 33));
        return addDataKindEmail;
    }

    private DataKind addDataKindRelation(Context context) throws AccountType.DefinitionException {
        DataKind addKind = addKind(new DataKind("vnd.android.cursor.item/relation", R.string.relationLabelsGroup, BaseAccountType.Weight.RELATIONSHIP, true));
        addKind.actionHeader = new BaseAccountType.RelationActionInflater();
        addKind.actionBody = new BaseAccountType.SimpleInflater("data1");
        addKind.typeColumn = "data2";
        ArrayList newArrayList = Lists.newArrayList();
        addKind.typeList = newArrayList;
        newArrayList.add(BaseAccountType.buildRelationType(1));
        addKind.typeList.add(BaseAccountType.buildRelationType(2));
        addKind.typeList.add(BaseAccountType.buildRelationType(3));
        addKind.typeList.add(BaseAccountType.buildRelationType(4));
        addKind.typeList.add(BaseAccountType.buildRelationType(5));
        addKind.typeList.add(BaseAccountType.buildRelationType(6));
        addKind.typeList.add(BaseAccountType.buildRelationType(7));
        addKind.typeList.add(BaseAccountType.buildRelationType(8));
        addKind.typeList.add(BaseAccountType.buildRelationType(9));
        addKind.typeList.add(BaseAccountType.buildRelationType(10));
        addKind.typeList.add(BaseAccountType.buildRelationType(11));
        addKind.typeList.add(BaseAccountType.buildRelationType(12));
        addKind.typeList.add(BaseAccountType.buildRelationType(13));
        addKind.typeList.add(BaseAccountType.buildRelationType(14));
        addKind.typeList.add(BaseAccountType.buildRelationType(0).setSecondary(true).setCustomColumn("data3"));
        ContentValues contentValues = new ContentValues();
        addKind.defaultValues = contentValues;
        contentValues.put("data2", (Integer) 14);
        ArrayList newArrayList2 = Lists.newArrayList();
        addKind.fieldList = newArrayList2;
        newArrayList2.add(new AccountType.EditField("data1", R.string.relationLabelsGroup, 8289));
        return addKind;
    }

    private DataKind addDataKindEvent(Context context) throws AccountType.DefinitionException {
        DataKind addKind = addKind(new DataKind("vnd.android.cursor.item/contact_event", R.string.eventLabelsGroup, 120, true));
        addKind.actionHeader = new BaseAccountType.EventActionInflater();
        addKind.actionBody = new BaseAccountType.SimpleInflater("data1");
        addKind.typeColumn = "data2";
        ArrayList newArrayList = Lists.newArrayList();
        addKind.typeList = newArrayList;
        addKind.dateFormatWithoutYear = CommonDateUtils.NO_YEAR_DATE_FORMAT;
        addKind.dateFormatWithYear = CommonDateUtils.FULL_DATE_FORMAT;
        newArrayList.add(BaseAccountType.buildEventType(3, true).setSpecificMax(1));
        addKind.typeList.add(BaseAccountType.buildEventType(1, false));
        addKind.typeList.add(BaseAccountType.buildEventType(2, false));
        addKind.typeList.add(BaseAccountType.buildEventType(0, false).setSecondary(true).setCustomColumn("data3"));
        ContentValues contentValues = new ContentValues();
        addKind.defaultValues = contentValues;
        contentValues.put("data2", (Integer) 3);
        ArrayList newArrayList2 = Lists.newArrayList();
        addKind.fieldList = newArrayList2;
        newArrayList2.add(new AccountType.EditField("data1", R.string.eventLabelsGroup, 1));
        return addKind;
    }
}
