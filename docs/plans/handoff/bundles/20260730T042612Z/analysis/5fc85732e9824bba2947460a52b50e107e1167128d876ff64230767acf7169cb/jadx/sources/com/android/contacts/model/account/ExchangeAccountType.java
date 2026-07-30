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
import java.util.Locale;

/* loaded from: classes.dex */
public class ExchangeAccountType extends BaseAccountType {
    private static final String ACCOUNT_TYPE_AOSP = "com.android.exchange";
    private static final String ACCOUNT_TYPE_GOOGLE_1 = "com.google.android.exchange";
    private static final String ACCOUNT_TYPE_GOOGLE_2 = "com.google.android.gm.exchange";
    private static final String TAG = "ExchangeAccountType";

    @Override // com.android.contacts.model.account.AccountType
    public boolean areContactsWritable() {
        return true;
    }

    @Override // com.android.contacts.model.account.BaseAccountType, com.android.contacts.model.account.AccountType
    public boolean isGroupMembershipEditable() {
        return true;
    }

    public ExchangeAccountType(Context context, String str, String str2) {
        this.accountType = str2;
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
            addDataKindEvent(context);
            addDataKindWebsite(context);
            addDataKindGroupMembership(context);
            this.mIsInitialized = true;
        } catch (AccountType.DefinitionException e) {
            FeedbackHelper.sendFeedback(context, TAG, "Failed to build exchange account type", e);
        }
    }

    public static boolean isExchangeType(String str) {
        return ACCOUNT_TYPE_AOSP.equals(str) || ACCOUNT_TYPE_GOOGLE_1.equals(str) || ACCOUNT_TYPE_GOOGLE_2.equals(str);
    }

    @Override // com.android.contacts.model.account.BaseAccountType
    protected DataKind addDataKindStructuredName(Context context) throws AccountType.DefinitionException {
        DataKind addKind = addKind(new DataKind("vnd.android.cursor.item/name", R.string.nameLabelsGroup, -1, true));
        addKind.actionHeader = new BaseAccountType.SimpleInflater(R.string.nameLabelsGroup);
        addKind.actionBody = new BaseAccountType.SimpleInflater("data1");
        addKind.typeOverallMax = 1;
        ArrayList newArrayList = Lists.newArrayList();
        addKind.fieldList = newArrayList;
        newArrayList.add(new AccountType.EditField("data4", R.string.name_prefix, 8289).setOptional(true));
        addKind.fieldList.add(new AccountType.EditField("data3", R.string.name_family, 8289));
        addKind.fieldList.add(new AccountType.EditField("data5", R.string.name_middle, 8289));
        addKind.fieldList.add(new AccountType.EditField("data2", R.string.name_given, 8289));
        addKind.fieldList.add(new AccountType.EditField("data6", R.string.name_suffix, 8289));
        addKind.fieldList.add(new AccountType.EditField("data9", R.string.name_phonetic_family, 193));
        addKind.fieldList.add(new AccountType.EditField("data7", R.string.name_phonetic_given, 193));
        return addKind;
    }

    @Override // com.android.contacts.model.account.BaseAccountType
    protected DataKind addDataKindPhoneticName(Context context) throws AccountType.DefinitionException {
        DataKind addKind = addKind(new DataKind(DataKind.PSEUDO_MIME_TYPE_PHONETIC_NAME, R.string.name_phonetic, -1, true));
        addKind.actionHeader = new BaseAccountType.SimpleInflater(R.string.nameLabelsGroup);
        addKind.actionBody = new BaseAccountType.SimpleInflater("data1");
        addKind.typeOverallMax = 1;
        ArrayList newArrayList = Lists.newArrayList();
        addKind.fieldList = newArrayList;
        newArrayList.add(new AccountType.EditField("data9", R.string.name_phonetic_family, 193));
        addKind.fieldList.add(new AccountType.EditField("data7", R.string.name_phonetic_given, 193));
        return addKind;
    }

    @Override // com.android.contacts.model.account.BaseAccountType
    protected DataKind addDataKindNickname(Context context) throws AccountType.DefinitionException {
        DataKind addDataKindNickname = super.addDataKindNickname(context);
        addDataKindNickname.typeOverallMax = 1;
        ArrayList newArrayList = Lists.newArrayList();
        addDataKindNickname.fieldList = newArrayList;
        newArrayList.add(new AccountType.EditField("data1", R.string.nicknameLabelsGroup, 8289));
        return addDataKindNickname;
    }

    @Override // com.android.contacts.model.account.BaseAccountType
    protected DataKind addDataKindPhone(Context context) throws AccountType.DefinitionException {
        DataKind addDataKindPhone = super.addDataKindPhone(context);
        addDataKindPhone.typeColumn = "data2";
        ArrayList newArrayList = Lists.newArrayList();
        addDataKindPhone.typeList = newArrayList;
        newArrayList.add(BaseAccountType.buildPhoneType(2).setSpecificMax(1));
        addDataKindPhone.typeList.add(BaseAccountType.buildPhoneType(1).setSpecificMax(2));
        addDataKindPhone.typeList.add(BaseAccountType.buildPhoneType(3).setSpecificMax(2));
        addDataKindPhone.typeList.add(BaseAccountType.buildPhoneType(4).setSecondary(true).setSpecificMax(1));
        addDataKindPhone.typeList.add(BaseAccountType.buildPhoneType(5).setSecondary(true).setSpecificMax(1));
        addDataKindPhone.typeList.add(BaseAccountType.buildPhoneType(6).setSecondary(true).setSpecificMax(1));
        addDataKindPhone.typeList.add(BaseAccountType.buildPhoneType(9).setSecondary(true).setSpecificMax(1));
        addDataKindPhone.typeList.add(BaseAccountType.buildPhoneType(10).setSecondary(true).setSpecificMax(1));
        addDataKindPhone.typeList.add(BaseAccountType.buildPhoneType(20).setSecondary(true).setSpecificMax(1));
        addDataKindPhone.typeList.add(BaseAccountType.buildPhoneType(14).setSecondary(true).setSpecificMax(1));
        addDataKindPhone.typeList.add(BaseAccountType.buildPhoneType(19).setSecondary(true).setSpecificMax(1));
        ArrayList newArrayList2 = Lists.newArrayList();
        addDataKindPhone.fieldList = newArrayList2;
        newArrayList2.add(new AccountType.EditField("data1", R.string.phoneLabelsGroup, 3));
        return addDataKindPhone;
    }

    @Override // com.android.contacts.model.account.BaseAccountType
    protected DataKind addDataKindEmail(Context context) throws AccountType.DefinitionException {
        DataKind addDataKindEmail = super.addDataKindEmail(context);
        addDataKindEmail.typeOverallMax = 3;
        ArrayList newArrayList = Lists.newArrayList();
        addDataKindEmail.fieldList = newArrayList;
        newArrayList.add(new AccountType.EditField("data1", R.string.emailLabelsGroup, 33));
        return addDataKindEmail;
    }

    @Override // com.android.contacts.model.account.BaseAccountType
    protected DataKind addDataKindStructuredPostal(Context context) throws AccountType.DefinitionException {
        DataKind addDataKindStructuredPostal = super.addDataKindStructuredPostal(context);
        boolean equals = Locale.JAPANESE.getLanguage().equals(Locale.getDefault().getLanguage());
        addDataKindStructuredPostal.typeColumn = "data2";
        ArrayList newArrayList = Lists.newArrayList();
        addDataKindStructuredPostal.typeList = newArrayList;
        newArrayList.add(BaseAccountType.buildPostalType(2).setSpecificMax(1));
        addDataKindStructuredPostal.typeList.add(BaseAccountType.buildPostalType(1).setSpecificMax(1));
        addDataKindStructuredPostal.typeList.add(BaseAccountType.buildPostalType(3).setSpecificMax(1));
        ArrayList newArrayList2 = Lists.newArrayList();
        addDataKindStructuredPostal.fieldList = newArrayList2;
        if (equals) {
            newArrayList2.add(new AccountType.EditField("data10", R.string.postal_country, 139377).setOptional(true));
            addDataKindStructuredPostal.fieldList.add(new AccountType.EditField("data9", R.string.postal_postcode, 139377));
            addDataKindStructuredPostal.fieldList.add(new AccountType.EditField("data8", R.string.postal_region, 139377));
            addDataKindStructuredPostal.fieldList.add(new AccountType.EditField("data7", R.string.postal_city, 139377));
            addDataKindStructuredPostal.fieldList.add(new AccountType.EditField("data4", R.string.postal_street, 139377));
        } else {
            newArrayList2.add(new AccountType.EditField("data4", R.string.postal_street, 139377));
            addDataKindStructuredPostal.fieldList.add(new AccountType.EditField("data7", R.string.postal_city, 139377));
            addDataKindStructuredPostal.fieldList.add(new AccountType.EditField("data8", R.string.postal_region, 139377));
            addDataKindStructuredPostal.fieldList.add(new AccountType.EditField("data9", R.string.postal_postcode, 139377));
            addDataKindStructuredPostal.fieldList.add(new AccountType.EditField("data10", R.string.postal_country, 139377).setOptional(true));
        }
        return addDataKindStructuredPostal;
    }

    @Override // com.android.contacts.model.account.BaseAccountType
    protected DataKind addDataKindIm(Context context) throws AccountType.DefinitionException {
        DataKind addDataKindIm = super.addDataKindIm(context);
        addDataKindIm.typeOverallMax = 3;
        ContentValues contentValues = new ContentValues();
        addDataKindIm.defaultValues = contentValues;
        contentValues.put("data2", (Integer) 3);
        ArrayList newArrayList = Lists.newArrayList();
        addDataKindIm.fieldList = newArrayList;
        newArrayList.add(new AccountType.EditField("data1", R.string.imLabelsGroup, 33));
        return addDataKindIm;
    }

    @Override // com.android.contacts.model.account.BaseAccountType
    protected DataKind addDataKindOrganization(Context context) throws AccountType.DefinitionException {
        DataKind addDataKindOrganization = super.addDataKindOrganization(context);
        addDataKindOrganization.typeOverallMax = 1;
        ArrayList newArrayList = Lists.newArrayList();
        addDataKindOrganization.fieldList = newArrayList;
        newArrayList.add(new AccountType.EditField("data1", R.string.ghostData_company, 8193));
        addDataKindOrganization.fieldList.add(new AccountType.EditField("data4", R.string.ghostData_title, 8193));
        return addDataKindOrganization;
    }

    @Override // com.android.contacts.model.account.BaseAccountType
    protected DataKind addDataKindPhoto(Context context) throws AccountType.DefinitionException {
        DataKind addDataKindPhoto = super.addDataKindPhoto(context);
        addDataKindPhoto.typeOverallMax = 1;
        ArrayList newArrayList = Lists.newArrayList();
        addDataKindPhoto.fieldList = newArrayList;
        newArrayList.add(new AccountType.EditField("data15", -1, -1));
        return addDataKindPhoto;
    }

    @Override // com.android.contacts.model.account.BaseAccountType
    protected DataKind addDataKindNote(Context context) throws AccountType.DefinitionException {
        DataKind addDataKindNote = super.addDataKindNote(context);
        ArrayList newArrayList = Lists.newArrayList();
        addDataKindNote.fieldList = newArrayList;
        newArrayList.add(new AccountType.EditField("data1", R.string.label_notes, 147457));
        return addDataKindNote;
    }

    protected DataKind addDataKindEvent(Context context) throws AccountType.DefinitionException {
        DataKind addKind = addKind(new DataKind("vnd.android.cursor.item/contact_event", R.string.eventLabelsGroup, 120, true));
        addKind.actionHeader = new BaseAccountType.EventActionInflater();
        addKind.actionBody = new BaseAccountType.SimpleInflater("data1");
        addKind.typeOverallMax = 1;
        addKind.typeColumn = "data2";
        ArrayList newArrayList = Lists.newArrayList();
        addKind.typeList = newArrayList;
        newArrayList.add(BaseAccountType.buildEventType(3, false).setSpecificMax(1));
        addKind.dateFormatWithYear = CommonDateUtils.DATE_AND_TIME_FORMAT;
        ArrayList newArrayList2 = Lists.newArrayList();
        addKind.fieldList = newArrayList2;
        newArrayList2.add(new AccountType.EditField("data1", R.string.eventLabelsGroup, 1));
        return addKind;
    }

    @Override // com.android.contacts.model.account.BaseAccountType
    protected DataKind addDataKindWebsite(Context context) throws AccountType.DefinitionException {
        DataKind addDataKindWebsite = super.addDataKindWebsite(context);
        addDataKindWebsite.typeOverallMax = 1;
        ArrayList newArrayList = Lists.newArrayList();
        addDataKindWebsite.fieldList = newArrayList;
        newArrayList.add(new AccountType.EditField("data1", R.string.websiteLabelsGroup, 17));
        return addDataKindWebsite;
    }
}
