package com.android.contacts.model.account;

import android.content.ContentValues;
import android.content.Context;
import android.content.res.Resources;
import android.provider.ContactsContract;
import android.util.AttributeSet;
import android.util.Log;
import com.android.contacts.R;
import com.android.contacts.model.account.AccountType;
import com.android.contacts.model.dataitem.DataKind;
import com.android.contacts.util.CommonDateUtils;
import com.android.contacts.util.ContactDisplayUtils;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public abstract class BaseAccountType extends AccountType {
    protected static final int FLAGS_EMAIL = 33;
    protected static final int FLAGS_EVENT = 1;
    protected static final int FLAGS_GENERIC_NAME = 8193;
    protected static final int FLAGS_NOTE = 147457;
    protected static final int FLAGS_PERSON_NAME = 8289;
    protected static final int FLAGS_PHONE = 3;
    protected static final int FLAGS_PHONETIC = 193;
    protected static final int FLAGS_POSTAL = 139377;
    protected static final int FLAGS_RELATION = 8289;
    protected static final int FLAGS_SIP_ADDRESS = 33;
    protected static final int FLAGS_WEBSITE = 17;
    protected static final int MAX_LINES_FOR_GROUP = 10;
    protected static final int MAX_LINES_FOR_NOTE = 100;
    protected static final int MAX_LINES_FOR_POSTAL_ADDRESS = 10;
    public static final AccountType.StringInflater ORGANIZATION_BODY_INFLATER = new AccountType.StringInflater() { // from class: com.android.contacts.model.account.BaseAccountType.1
        @Override // com.android.contacts.model.account.AccountType.StringInflater
        public CharSequence inflateUsing(Context context, ContentValues contentValues) {
            String asString = contentValues.containsKey("data1") ? contentValues.getAsString("data1") : null;
            String asString2 = contentValues.containsKey("data4") ? contentValues.getAsString("data4") : null;
            if (asString == null || asString2 == null) {
                return asString == null ? asString2 : asString;
            }
            return ((Object) asString) + ": " + ((Object) asString2);
        }
    };
    private static final String TAG = "BaseAccountType";

    private interface Attr {
        public static final String DATE_WITH_TIME = "dateWithTime";
        public static final String KIND = "kind";
        public static final String MAX_OCCURRENCE = "maxOccurs";
        public static final String TYPE = "type";
        public static final String YEAR_OPTIONAL = "yearOptional";
    }

    private interface Tag {
        public static final String DATA_KIND = "DataKind";
        public static final String TYPE = "Type";
    }

    protected interface Weight {
        public static final int EMAIL = 15;
        public static final int EVENT = 120;
        public static final int GROUP_MEMBERSHIP = 150;
        public static final int IM = 140;
        public static final int NICKNAME = 111;
        public static final int NONE = -1;
        public static final int NOTE = 130;
        public static final int ORGANIZATION = 125;
        public static final int PHONE = 10;
        public static final int RELATIONSHIP = 999;
        public static final int SIP_ADDRESS = 145;
        public static final int STRUCTURED_POSTAL = 25;
        public static final int WEBSITE = 160;
    }

    @Override // com.android.contacts.model.account.AccountType
    public boolean isGroupMembershipEditable() {
        return false;
    }

    public BaseAccountType() {
        this.accountType = null;
        this.dataSet = null;
        this.titleRes = R.string.account_phone;
        this.iconRes = R.mipmap.ic_contacts_launcher;
    }

    protected static AccountType.EditType buildPhoneType(int i) {
        return new AccountType.EditType(i, ContactsContract.CommonDataKinds.Phone.getTypeLabelResource(i));
    }

    protected static AccountType.EditType buildEmailType(int i) {
        return new AccountType.EditType(i, ContactsContract.CommonDataKinds.Email.getTypeLabelResource(i));
    }

    protected static AccountType.EditType buildPostalType(int i) {
        return new AccountType.EditType(i, ContactsContract.CommonDataKinds.StructuredPostal.getTypeLabelResource(i));
    }

    protected static AccountType.EditType buildImType(int i) {
        return new AccountType.EditType(i, ContactsContract.CommonDataKinds.Im.getProtocolLabelResource(i));
    }

    protected static AccountType.EditType buildEventType(int i, boolean z) {
        return new AccountType.EventEditType(i, ContactsContract.CommonDataKinds.Event.getTypeResource(Integer.valueOf(i))).setYearOptional(z);
    }

    protected static AccountType.EditType buildRelationType(int i) {
        return new AccountType.EditType(i, ContactsContract.CommonDataKinds.Relation.getTypeLabelResource(i));
    }

    protected DataKind addDataKindStructuredName(Context context) throws AccountType.DefinitionException {
        DataKind addKind = addKind(new DataKind("vnd.android.cursor.item/name", R.string.nameLabelsGroup, -1, true));
        addKind.actionHeader = new SimpleInflater(R.string.nameLabelsGroup);
        addKind.actionBody = new SimpleInflater("data1");
        addKind.typeOverallMax = 1;
        ArrayList newArrayList = Lists.newArrayList();
        addKind.fieldList = newArrayList;
        newArrayList.add(new AccountType.EditField("data4", R.string.name_prefix, 8289).setLongForm(true));
        addKind.fieldList.add(new AccountType.EditField("data2", R.string.name_given, 8289));
        addKind.fieldList.add(new AccountType.EditField("data5", R.string.name_middle, 8289).setLongForm(true));
        addKind.fieldList.add(new AccountType.EditField("data3", R.string.name_family, 8289));
        addKind.fieldList.add(new AccountType.EditField("data6", R.string.name_suffix, 8289).setLongForm(true));
        addKind.fieldList.add(new AccountType.EditField("data9", R.string.name_phonetic_family, FLAGS_PHONETIC));
        addKind.fieldList.add(new AccountType.EditField("data8", R.string.name_phonetic_middle, FLAGS_PHONETIC));
        addKind.fieldList.add(new AccountType.EditField("data7", R.string.name_phonetic_given, FLAGS_PHONETIC));
        return addKind;
    }

    protected DataKind addDataKindName(Context context) throws AccountType.DefinitionException {
        DataKind addKind = addKind(new DataKind(DataKind.PSEUDO_MIME_TYPE_NAME, R.string.nameLabelsGroup, -1, true));
        addKind.actionHeader = new SimpleInflater(R.string.nameLabelsGroup);
        addKind.actionBody = new SimpleInflater("data1");
        addKind.typeOverallMax = 1;
        addKind.fieldList = Lists.newArrayList();
        boolean z = context.getResources().getBoolean(R.bool.config_editor_field_order_primary);
        addKind.fieldList.add(new AccountType.EditField("data4", R.string.name_prefix, 8289).setOptional(true));
        if (!z) {
            addKind.fieldList.add(new AccountType.EditField("data3", R.string.name_family, 8289).setPhoneticsColumn("data9"));
            addKind.fieldList.add(new AccountType.EditField("data5", R.string.name_middle, 8289).setOptional(true).setPhoneticsColumn("data8"));
            addKind.fieldList.add(new AccountType.EditField("data2", R.string.name_given, 8289).setPhoneticsColumn("data7"));
        } else {
            addKind.fieldList.add(new AccountType.EditField("data2", R.string.name_given, 8289).setPhoneticsColumn("data7"));
            addKind.fieldList.add(new AccountType.EditField("data5", R.string.name_middle, 8289).setOptional(true).setPhoneticsColumn("data8"));
            addKind.fieldList.add(new AccountType.EditField("data3", R.string.name_family, 8289).setPhoneticsColumn("data9"));
        }
        addKind.fieldList.add(new AccountType.EditField("data6", R.string.name_suffix, 8289).setOptional(true));
        return addKind;
    }

    protected DataKind addDataKindPhoneticName(Context context) throws AccountType.DefinitionException {
        DataKind addKind = addKind(new DataKind(DataKind.PSEUDO_MIME_TYPE_PHONETIC_NAME, R.string.name_phonetic, -1, true));
        addKind.actionHeader = new SimpleInflater(R.string.nameLabelsGroup);
        addKind.actionBody = new SimpleInflater("data1");
        addKind.typeOverallMax = 1;
        ArrayList newArrayList = Lists.newArrayList();
        addKind.fieldList = newArrayList;
        newArrayList.add(new AccountType.EditField("data9", R.string.name_phonetic_family, FLAGS_PHONETIC));
        addKind.fieldList.add(new AccountType.EditField("data8", R.string.name_phonetic_middle, FLAGS_PHONETIC));
        addKind.fieldList.add(new AccountType.EditField("data7", R.string.name_phonetic_given, FLAGS_PHONETIC));
        return addKind;
    }

    protected DataKind addDataKindNickname(Context context) throws AccountType.DefinitionException {
        DataKind addKind = addKind(new DataKind("vnd.android.cursor.item/nickname", R.string.nicknameLabelsGroup, Weight.NICKNAME, true));
        addKind.typeOverallMax = 1;
        addKind.actionHeader = new SimpleInflater(R.string.nicknameLabelsGroup);
        addKind.actionBody = new SimpleInflater("data1");
        ContentValues contentValues = new ContentValues();
        addKind.defaultValues = contentValues;
        contentValues.put("data2", (Integer) 1);
        ArrayList newArrayList = Lists.newArrayList();
        addKind.fieldList = newArrayList;
        newArrayList.add(new AccountType.EditField("data1", R.string.nicknameLabelsGroup, 8289));
        return addKind;
    }

    protected DataKind addDataKindPhone(Context context) throws AccountType.DefinitionException {
        DataKind addKind = addKind(new DataKind("vnd.android.cursor.item/phone_v2", R.string.phoneLabelsGroup, 10, true));
        addKind.iconAltRes = R.drawable.quantum_ic_message_vd_theme_24;
        addKind.iconAltDescriptionRes = R.string.sms;
        addKind.actionHeader = new PhoneActionInflater();
        addKind.actionAltHeader = new PhoneActionAltInflater();
        addKind.actionBody = new SimpleInflater("data1");
        addKind.typeColumn = "data2";
        ArrayList newArrayList = Lists.newArrayList();
        addKind.typeList = newArrayList;
        newArrayList.add(buildPhoneType(2));
        addKind.typeList.add(buildPhoneType(1));
        addKind.typeList.add(buildPhoneType(3));
        addKind.typeList.add(buildPhoneType(4).setSecondary(true));
        addKind.typeList.add(buildPhoneType(5).setSecondary(true));
        addKind.typeList.add(buildPhoneType(6).setSecondary(true));
        addKind.typeList.add(buildPhoneType(7));
        addKind.typeList.add(buildPhoneType(0).setSecondary(true).setCustomColumn("data3"));
        addKind.typeList.add(buildPhoneType(8).setSecondary(true));
        addKind.typeList.add(buildPhoneType(9).setSecondary(true));
        addKind.typeList.add(buildPhoneType(10).setSecondary(true));
        addKind.typeList.add(buildPhoneType(11).setSecondary(true));
        addKind.typeList.add(buildPhoneType(12).setSecondary(true));
        addKind.typeList.add(buildPhoneType(13).setSecondary(true));
        addKind.typeList.add(buildPhoneType(14).setSecondary(true));
        addKind.typeList.add(buildPhoneType(15).setSecondary(true));
        addKind.typeList.add(buildPhoneType(16).setSecondary(true));
        addKind.typeList.add(buildPhoneType(17).setSecondary(true));
        addKind.typeList.add(buildPhoneType(18).setSecondary(true));
        addKind.typeList.add(buildPhoneType(19).setSecondary(true));
        addKind.typeList.add(buildPhoneType(20).setSecondary(true));
        ArrayList newArrayList2 = Lists.newArrayList();
        addKind.fieldList = newArrayList2;
        newArrayList2.add(new AccountType.EditField("data1", R.string.phoneLabelsGroup, 3));
        return addKind;
    }

    protected DataKind addDataKindEmail(Context context) throws AccountType.DefinitionException {
        DataKind addKind = addKind(new DataKind("vnd.android.cursor.item/email_v2", R.string.emailLabelsGroup, 15, true));
        addKind.actionHeader = new EmailActionInflater();
        addKind.actionBody = new SimpleInflater("data1");
        addKind.typeColumn = "data2";
        ArrayList newArrayList = Lists.newArrayList();
        addKind.typeList = newArrayList;
        newArrayList.add(buildEmailType(1));
        addKind.typeList.add(buildEmailType(2));
        addKind.typeList.add(buildEmailType(3));
        addKind.typeList.add(buildEmailType(4));
        addKind.typeList.add(buildEmailType(0).setSecondary(true).setCustomColumn("data3"));
        ArrayList newArrayList2 = Lists.newArrayList();
        addKind.fieldList = newArrayList2;
        newArrayList2.add(new AccountType.EditField("data1", R.string.emailLabelsGroup, 33));
        return addKind;
    }

    protected DataKind addDataKindStructuredPostal(Context context) throws AccountType.DefinitionException {
        DataKind addKind = addKind(new DataKind("vnd.android.cursor.item/postal-address_v2", R.string.postalLabelsGroup, 25, true));
        addKind.actionHeader = new PostalActionInflater();
        addKind.actionBody = new SimpleInflater("data1");
        addKind.typeColumn = "data2";
        ArrayList newArrayList = Lists.newArrayList();
        addKind.typeList = newArrayList;
        newArrayList.add(buildPostalType(1));
        addKind.typeList.add(buildPostalType(2));
        addKind.typeList.add(buildPostalType(3));
        addKind.typeList.add(buildPostalType(0).setSecondary(true).setCustomColumn("data3"));
        ArrayList newArrayList2 = Lists.newArrayList();
        addKind.fieldList = newArrayList2;
        newArrayList2.add(new AccountType.EditField("data1", R.string.postal_address, FLAGS_POSTAL));
        addKind.maxLinesForDisplay = 10;
        return addKind;
    }

    protected DataKind addDataKindIm(Context context) throws AccountType.DefinitionException {
        DataKind addKind = addKind(new DataKind("vnd.android.cursor.item/im", R.string.imLabelsGroup, Weight.IM, true));
        addKind.actionHeader = new ImActionInflater();
        addKind.actionBody = new SimpleInflater("data1");
        ContentValues contentValues = new ContentValues();
        addKind.defaultValues = contentValues;
        contentValues.put("data2", (Integer) 3);
        addKind.typeColumn = "data5";
        ArrayList newArrayList = Lists.newArrayList();
        addKind.typeList = newArrayList;
        newArrayList.add(buildImType(0));
        addKind.typeList.add(buildImType(1));
        addKind.typeList.add(buildImType(2));
        addKind.typeList.add(buildImType(3));
        addKind.typeList.add(buildImType(4));
        addKind.typeList.add(buildImType(5));
        addKind.typeList.add(buildImType(6));
        addKind.typeList.add(buildImType(7));
        addKind.typeList.add(buildImType(-1).setSecondary(true).setCustomColumn("data6"));
        ArrayList newArrayList2 = Lists.newArrayList();
        addKind.fieldList = newArrayList2;
        newArrayList2.add(new AccountType.EditField("data1", R.string.imLabelsGroup, 33));
        return addKind;
    }

    protected DataKind addDataKindOrganization(Context context) throws AccountType.DefinitionException {
        DataKind addKind = addKind(new DataKind("vnd.android.cursor.item/organization", R.string.organizationLabelsGroup, 125, true));
        addKind.actionHeader = new SimpleInflater(R.string.organizationLabelsGroup);
        addKind.actionBody = ORGANIZATION_BODY_INFLATER;
        addKind.typeOverallMax = 1;
        ArrayList newArrayList = Lists.newArrayList();
        addKind.fieldList = newArrayList;
        newArrayList.add(new AccountType.EditField("data1", R.string.ghostData_company, FLAGS_GENERIC_NAME));
        addKind.fieldList.add(new AccountType.EditField("data4", R.string.ghostData_title, FLAGS_GENERIC_NAME));
        return addKind;
    }

    protected DataKind addDataKindPhoto(Context context) throws AccountType.DefinitionException {
        DataKind addKind = addKind(new DataKind("vnd.android.cursor.item/photo", -1, -1, true));
        addKind.typeOverallMax = 1;
        ArrayList newArrayList = Lists.newArrayList();
        addKind.fieldList = newArrayList;
        newArrayList.add(new AccountType.EditField("data15", -1, -1));
        return addKind;
    }

    protected DataKind addDataKindNote(Context context) throws AccountType.DefinitionException {
        DataKind addKind = addKind(new DataKind("vnd.android.cursor.item/note", R.string.label_notes, Weight.NOTE, true));
        addKind.typeOverallMax = 1;
        addKind.actionHeader = new SimpleInflater(R.string.label_notes);
        addKind.actionBody = new SimpleInflater("data1");
        ArrayList newArrayList = Lists.newArrayList();
        addKind.fieldList = newArrayList;
        newArrayList.add(new AccountType.EditField("data1", R.string.label_notes, FLAGS_NOTE));
        addKind.maxLinesForDisplay = 100;
        return addKind;
    }

    protected DataKind addDataKindWebsite(Context context) throws AccountType.DefinitionException {
        DataKind addKind = addKind(new DataKind("vnd.android.cursor.item/website", R.string.websiteLabelsGroup, Weight.WEBSITE, true));
        addKind.actionHeader = new SimpleInflater(R.string.websiteLabelsGroup);
        addKind.actionBody = new SimpleInflater("data1");
        ContentValues contentValues = new ContentValues();
        addKind.defaultValues = contentValues;
        contentValues.put("data2", (Integer) 7);
        ArrayList newArrayList = Lists.newArrayList();
        addKind.fieldList = newArrayList;
        newArrayList.add(new AccountType.EditField("data1", R.string.websiteLabelsGroup, 17));
        return addKind;
    }

    protected DataKind addDataKindSipAddress(Context context) throws AccountType.DefinitionException {
        DataKind addKind = addKind(new DataKind("vnd.android.cursor.item/sip_address", R.string.label_sip_address, Weight.SIP_ADDRESS, true));
        addKind.actionHeader = new SimpleInflater(R.string.label_sip_address);
        addKind.actionBody = new SimpleInflater("data1");
        ArrayList newArrayList = Lists.newArrayList();
        addKind.fieldList = newArrayList;
        newArrayList.add(new AccountType.EditField("data1", R.string.label_sip_address, 33));
        addKind.typeOverallMax = 1;
        return addKind;
    }

    protected DataKind addDataKindGroupMembership(Context context) throws AccountType.DefinitionException {
        DataKind addKind = addKind(new DataKind("vnd.android.cursor.item/group_membership", R.string.groupsLabel, Weight.GROUP_MEMBERSHIP, true));
        addKind.typeOverallMax = 1;
        ArrayList newArrayList = Lists.newArrayList();
        addKind.fieldList = newArrayList;
        newArrayList.add(new AccountType.EditField("data1", -1, -1));
        addKind.maxLinesForDisplay = 10;
        return addKind;
    }

    protected DataKind addDataKindCustomField(Context context) throws AccountType.DefinitionException {
        DataKind addKind = addKind(new DataKind("vnd.com.google.cursor.item/contact_user_defined_field", R.string.label_custom_field, -1, false));
        addKind.actionBody = new SimpleInflater("data2");
        return addKind;
    }

    public static class SimpleInflater implements AccountType.StringInflater {
        private final String mColumnName;
        private final int mStringRes;

        public SimpleInflater(int i) {
            this(i, null);
        }

        public SimpleInflater(String str) {
            this(-1, str);
        }

        public SimpleInflater(int i, String str) {
            this.mStringRes = i;
            this.mColumnName = str;
        }

        @Override // com.android.contacts.model.account.AccountType.StringInflater
        public CharSequence inflateUsing(Context context, ContentValues contentValues) {
            boolean containsKey = contentValues.containsKey(this.mColumnName);
            boolean z = this.mStringRes > 0;
            CharSequence text = z ? context.getText(this.mStringRes) : null;
            String asString = containsKey ? contentValues.getAsString(this.mColumnName) : null;
            if (z && containsKey) {
                return String.format(text.toString(), asString);
            }
            if (z) {
                return text;
            }
            if (containsKey) {
                return asString;
            }
            return null;
        }

        public String toString() {
            return SimpleInflater.class.getSimpleName() + " mStringRes=" + this.mStringRes + " mColumnName" + this.mColumnName;
        }

        public String getColumnNameForTest() {
            return this.mColumnName;
        }
    }

    public static abstract class CommonInflater implements AccountType.StringInflater {
        protected String getLabelColumn() {
            return "data3";
        }

        protected String getTypeColumn() {
            return "data2";
        }

        protected abstract int getTypeLabelResource(Integer num);

        protected boolean isCustom(Integer num) {
            return num.intValue() == 0;
        }

        protected CharSequence getTypeLabel(Resources resources, Integer num, CharSequence charSequence) {
            int typeLabelResource = getTypeLabelResource(num);
            if (num == null) {
                return resources.getText(typeLabelResource);
            }
            if (isCustom(num)) {
                Object[] objArr = new Object[1];
                if (charSequence == null) {
                    charSequence = "";
                }
                objArr[0] = charSequence;
                return resources.getString(typeLabelResource, objArr);
            }
            return resources.getText(typeLabelResource);
        }

        @Override // com.android.contacts.model.account.AccountType.StringInflater
        public CharSequence inflateUsing(Context context, ContentValues contentValues) {
            return getTypeLabel(context.getResources(), contentValues.getAsInteger(getTypeColumn()), contentValues.getAsString(getLabelColumn()));
        }

        public String toString() {
            return getClass().getSimpleName();
        }
    }

    public static class PhoneActionInflater extends CommonInflater {
        @Override // com.android.contacts.model.account.BaseAccountType.CommonInflater
        protected boolean isCustom(Integer num) {
            return ContactDisplayUtils.isCustomPhoneType(num);
        }

        @Override // com.android.contacts.model.account.BaseAccountType.CommonInflater
        protected int getTypeLabelResource(Integer num) {
            return ContactDisplayUtils.getPhoneLabelResourceId(num);
        }
    }

    public static class PhoneActionAltInflater extends CommonInflater {
        @Override // com.android.contacts.model.account.BaseAccountType.CommonInflater
        protected boolean isCustom(Integer num) {
            return ContactDisplayUtils.isCustomPhoneType(num);
        }

        @Override // com.android.contacts.model.account.BaseAccountType.CommonInflater
        protected int getTypeLabelResource(Integer num) {
            return ContactDisplayUtils.getSmsLabelResourceId(num);
        }
    }

    public static class EmailActionInflater extends CommonInflater {
        @Override // com.android.contacts.model.account.BaseAccountType.CommonInflater
        protected int getTypeLabelResource(Integer num) {
            if (num == null) {
                return R.string.email;
            }
            int intValue = num.intValue();
            return intValue != 1 ? intValue != 2 ? intValue != 3 ? intValue != 4 ? R.string.email_custom : R.string.email_mobile : R.string.email_other : R.string.email_work : R.string.email_home;
        }
    }

    public static class EventActionInflater extends CommonInflater {
        @Override // com.android.contacts.model.account.BaseAccountType.CommonInflater
        protected int getTypeLabelResource(Integer num) {
            return ContactsContract.CommonDataKinds.Event.getTypeResource(num);
        }
    }

    public static class RelationActionInflater extends CommonInflater {
        @Override // com.android.contacts.model.account.BaseAccountType.CommonInflater
        protected int getTypeLabelResource(Integer num) {
            return ContactsContract.CommonDataKinds.Relation.getTypeLabelResource(num == null ? 0 : num.intValue());
        }
    }

    public static class PostalActionInflater extends CommonInflater {
        @Override // com.android.contacts.model.account.BaseAccountType.CommonInflater
        protected int getTypeLabelResource(Integer num) {
            if (num == null) {
                return R.string.map_other;
            }
            int intValue = num.intValue();
            return intValue != 1 ? intValue != 2 ? intValue != 3 ? R.string.map_custom : R.string.map_other : R.string.map_work : R.string.map_home;
        }
    }

    public static class ImActionInflater extends CommonInflater {
        @Override // com.android.contacts.model.account.BaseAccountType.CommonInflater
        protected String getLabelColumn() {
            return "data6";
        }

        @Override // com.android.contacts.model.account.BaseAccountType.CommonInflater
        protected String getTypeColumn() {
            return "data5";
        }

        @Override // com.android.contacts.model.account.BaseAccountType.CommonInflater
        protected int getTypeLabelResource(Integer num) {
            if (num == null) {
                return R.string.chat;
            }
            switch (num.intValue()) {
            }
            return R.string.chat;
        }
    }

    protected final void parseEditSchema(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException, AccountType.DefinitionException {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            if (next == 3 && xmlPullParser.getDepth() <= depth) {
                return;
            }
            int depth2 = xmlPullParser.getDepth();
            if (next == 2 && depth2 == depth + 1) {
                String name = xmlPullParser.getName();
                if (Tag.DATA_KIND.equals(name)) {
                    Iterator<DataKind> it = KindParser.INSTANCE.parseDataKindTag(context, xmlPullParser, attributeSet).iterator();
                    while (it.hasNext()) {
                        addKind(it.next());
                    }
                } else {
                    Log.w(TAG, "Skipping unknown tag " + name);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean getAttr(AttributeSet attributeSet, String str, boolean z) {
        return attributeSet.getAttributeBooleanValue(null, str, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getAttr(AttributeSet attributeSet, String str, int i) {
        return attributeSet.getAttributeIntValue(null, str, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getAttr(AttributeSet attributeSet, String str) {
        return attributeSet.getAttributeValue(null, str);
    }

    private static class KindParser {
        public static final KindParser INSTANCE = new KindParser();
        private final Map<String, KindBuilder> mBuilders = Maps.newHashMap();

        private KindParser() {
            addBuilder(new NameKindBuilder());
            addBuilder(new NicknameKindBuilder());
            addBuilder(new PhoneKindBuilder());
            addBuilder(new EmailKindBuilder());
            addBuilder(new StructuredPostalKindBuilder());
            addBuilder(new ImKindBuilder());
            addBuilder(new OrganizationKindBuilder());
            addBuilder(new PhotoKindBuilder());
            addBuilder(new NoteKindBuilder());
            addBuilder(new WebsiteKindBuilder());
            addBuilder(new SipAddressKindBuilder());
            addBuilder(new GroupMembershipKindBuilder());
            addBuilder(new EventKindBuilder());
            addBuilder(new RelationshipKindBuilder());
        }

        private void addBuilder(KindBuilder kindBuilder) {
            this.mBuilders.put(kindBuilder.getTagName(), kindBuilder);
        }

        public List<DataKind> parseDataKindTag(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws AccountType.DefinitionException, XmlPullParserException, IOException {
            String attr = BaseAccountType.getAttr(attributeSet, Attr.KIND);
            KindBuilder kindBuilder = this.mBuilders.get(attr);
            if (kindBuilder != null) {
                return kindBuilder.parseDataKind(context, xmlPullParser, attributeSet);
            }
            throw new AccountType.DefinitionException("Undefined data kind '" + attr + "'");
        }
    }

    private static abstract class KindBuilder {
        protected AccountType.EditType buildEditTypeForTypeTag(AttributeSet attributeSet, String str) {
            return null;
        }

        public abstract String getTagName();

        public abstract List<DataKind> parseDataKind(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws AccountType.DefinitionException, XmlPullParserException, IOException;

        private KindBuilder() {
        }

        protected final DataKind newDataKind(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, boolean z, String str, String str2, int i, int i2, AccountType.StringInflater stringInflater, AccountType.StringInflater stringInflater2) throws AccountType.DefinitionException, XmlPullParserException, IOException {
            if (Log.isLoggable(BaseAccountType.TAG, 3)) {
                Log.d(BaseAccountType.TAG, "Adding DataKind: " + str);
            }
            DataKind dataKind = new DataKind(str, i, i2, true);
            dataKind.typeColumn = str2;
            dataKind.actionHeader = stringInflater;
            dataKind.actionBody = stringInflater2;
            dataKind.fieldList = Lists.newArrayList();
            if (!z) {
                dataKind.typeOverallMax = BaseAccountType.getAttr(attributeSet, Attr.MAX_OCCURRENCE, -1);
                if (dataKind.typeColumn != null) {
                    dataKind.typeList = Lists.newArrayList();
                    parseTypes(context, xmlPullParser, attributeSet, dataKind, true);
                    if (dataKind.typeList.size() == 0) {
                        throw new AccountType.DefinitionException("Kind " + dataKind.mimeType + " must have at least one type");
                    }
                } else {
                    parseTypes(context, xmlPullParser, attributeSet, dataKind, false);
                }
            }
            return dataKind;
        }

        private void parseTypes(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, DataKind dataKind, boolean z) throws AccountType.DefinitionException, XmlPullParserException, IOException {
            int depth = xmlPullParser.getDepth();
            while (true) {
                int next = xmlPullParser.next();
                if (next == 1) {
                    return;
                }
                if (next == 3 && xmlPullParser.getDepth() <= depth) {
                    return;
                }
                int depth2 = xmlPullParser.getDepth();
                if (next == 2 && depth2 == depth + 1) {
                    String name = xmlPullParser.getName();
                    if (!Tag.TYPE.equals(name)) {
                        throw new AccountType.DefinitionException("Unknown tag: " + name);
                    }
                    if (z) {
                        dataKind.typeList.add(parseTypeTag(xmlPullParser, attributeSet, dataKind));
                    } else {
                        throw new AccountType.DefinitionException("Kind " + dataKind.mimeType + " can't have types");
                    }
                }
            }
        }

        private AccountType.EditType parseTypeTag(XmlPullParser xmlPullParser, AttributeSet attributeSet, DataKind dataKind) throws AccountType.DefinitionException {
            String attr = BaseAccountType.getAttr(attributeSet, Attr.TYPE);
            AccountType.EditType buildEditTypeForTypeTag = buildEditTypeForTypeTag(attributeSet, attr);
            if (buildEditTypeForTypeTag != null) {
                buildEditTypeForTypeTag.specificMax = BaseAccountType.getAttr(attributeSet, Attr.MAX_OCCURRENCE, -1);
                return buildEditTypeForTypeTag;
            }
            throw new AccountType.DefinitionException("Undefined type '" + attr + "' for data kind '" + dataKind.mimeType + "'");
        }

        protected final void throwIfList(DataKind dataKind) throws AccountType.DefinitionException {
            if (dataKind.typeOverallMax == 1) {
                return;
            }
            throw new AccountType.DefinitionException("Kind " + dataKind.mimeType + " must have 'overallMax=\"1\"'");
        }
    }

    private static class NameKindBuilder extends KindBuilder {
        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        public String getTagName() {
            return "name";
        }

        private NameKindBuilder() {
            super();
        }

        private static void checkAttributeTrue(boolean z, String str) throws AccountType.DefinitionException {
            if (z) {
                return;
            }
            throw new AccountType.DefinitionException(str + " must be true");
        }

        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        public List<DataKind> parseDataKind(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws AccountType.DefinitionException, XmlPullParserException, IOException {
            boolean z = context.getResources().getBoolean(R.bool.config_editor_field_order_primary);
            boolean attr = BaseAccountType.getAttr(attributeSet, "supportsPrefix", false);
            boolean attr2 = BaseAccountType.getAttr(attributeSet, "supportsMiddleName", false);
            boolean attr3 = BaseAccountType.getAttr(attributeSet, "supportsSuffix", false);
            boolean attr4 = BaseAccountType.getAttr(attributeSet, "supportsPhoneticFamilyName", false);
            boolean attr5 = BaseAccountType.getAttr(attributeSet, "supportsPhoneticMiddleName", false);
            boolean attr6 = BaseAccountType.getAttr(attributeSet, "supportsPhoneticGivenName", false);
            checkAttributeTrue(attr, "supportsPrefix");
            checkAttributeTrue(attr2, "supportsMiddleName");
            checkAttributeTrue(attr3, "supportsSuffix");
            checkAttributeTrue(attr4, "supportsPhoneticFamilyName");
            checkAttributeTrue(attr5, "supportsPhoneticMiddleName");
            checkAttributeTrue(attr6, "supportsPhoneticGivenName");
            ArrayList newArrayList = Lists.newArrayList();
            DataKind newDataKind = newDataKind(context, xmlPullParser, attributeSet, false, "vnd.android.cursor.item/name", null, R.string.nameLabelsGroup, -1, new SimpleInflater(R.string.nameLabelsGroup), new SimpleInflater("data1"));
            newDataKind.fieldList.add(new AccountType.EditField("data4", R.string.name_prefix, 8289).setLongForm(true));
            newDataKind.fieldList.add(new AccountType.EditField("data2", R.string.name_given, 8289));
            newDataKind.fieldList.add(new AccountType.EditField("data5", R.string.name_middle, 8289).setLongForm(true));
            newDataKind.fieldList.add(new AccountType.EditField("data3", R.string.name_family, 8289));
            newDataKind.fieldList.add(new AccountType.EditField("data6", R.string.name_suffix, 8289).setLongForm(true));
            newDataKind.fieldList.add(new AccountType.EditField("data9", R.string.name_phonetic_family, BaseAccountType.FLAGS_PHONETIC));
            newDataKind.fieldList.add(new AccountType.EditField("data8", R.string.name_phonetic_middle, BaseAccountType.FLAGS_PHONETIC));
            newDataKind.fieldList.add(new AccountType.EditField("data7", R.string.name_phonetic_given, BaseAccountType.FLAGS_PHONETIC));
            throwIfList(newDataKind);
            newArrayList.add(newDataKind);
            DataKind newDataKind2 = newDataKind(context, xmlPullParser, attributeSet, true, DataKind.PSEUDO_MIME_TYPE_NAME, null, R.string.nameLabelsGroup, -1, new SimpleInflater(R.string.nameLabelsGroup), new SimpleInflater("data1"));
            newDataKind2.typeOverallMax = 1;
            throwIfList(newDataKind2);
            newArrayList.add(newDataKind2);
            newDataKind2.fieldList.add(new AccountType.EditField("data4", R.string.name_prefix, 8289).setOptional(true));
            if (!z) {
                newDataKind2.fieldList.add(new AccountType.EditField("data3", R.string.name_family, 8289));
                newDataKind2.fieldList.add(new AccountType.EditField("data5", R.string.name_middle, 8289).setOptional(true));
                newDataKind2.fieldList.add(new AccountType.EditField("data2", R.string.name_given, 8289));
            } else {
                newDataKind2.fieldList.add(new AccountType.EditField("data2", R.string.name_given, 8289));
                newDataKind2.fieldList.add(new AccountType.EditField("data5", R.string.name_middle, 8289).setOptional(true));
                newDataKind2.fieldList.add(new AccountType.EditField("data3", R.string.name_family, 8289));
            }
            newDataKind2.fieldList.add(new AccountType.EditField("data6", R.string.name_suffix, 8289).setOptional(true));
            DataKind newDataKind3 = newDataKind(context, xmlPullParser, attributeSet, true, DataKind.PSEUDO_MIME_TYPE_PHONETIC_NAME, null, R.string.name_phonetic, -1, new SimpleInflater(R.string.nameLabelsGroup), new SimpleInflater("data1"));
            newDataKind3.typeOverallMax = 1;
            newArrayList.add(newDataKind3);
            newDataKind3.fieldList.add(new AccountType.EditField("data9", R.string.name_phonetic_family, BaseAccountType.FLAGS_PHONETIC));
            newDataKind3.fieldList.add(new AccountType.EditField("data8", R.string.name_phonetic_middle, BaseAccountType.FLAGS_PHONETIC));
            newDataKind3.fieldList.add(new AccountType.EditField("data7", R.string.name_phonetic_given, BaseAccountType.FLAGS_PHONETIC));
            return newArrayList;
        }
    }

    private static class NicknameKindBuilder extends KindBuilder {
        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        public String getTagName() {
            return "nickname";
        }

        private NicknameKindBuilder() {
            super();
        }

        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        public List<DataKind> parseDataKind(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws AccountType.DefinitionException, XmlPullParserException, IOException {
            DataKind newDataKind = newDataKind(context, xmlPullParser, attributeSet, false, "vnd.android.cursor.item/nickname", null, R.string.nicknameLabelsGroup, Weight.NICKNAME, new SimpleInflater(R.string.nicknameLabelsGroup), new SimpleInflater("data1"));
            newDataKind.fieldList.add(new AccountType.EditField("data1", R.string.nicknameLabelsGroup, 8289));
            ContentValues contentValues = new ContentValues();
            newDataKind.defaultValues = contentValues;
            contentValues.put("data2", (Integer) 1);
            throwIfList(newDataKind);
            return Lists.newArrayList(newDataKind);
        }
    }

    private static class PhoneKindBuilder extends KindBuilder {
        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        public String getTagName() {
            return "phone";
        }

        private PhoneKindBuilder() {
            super();
        }

        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        public List<DataKind> parseDataKind(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws AccountType.DefinitionException, XmlPullParserException, IOException {
            DataKind newDataKind = newDataKind(context, xmlPullParser, attributeSet, false, "vnd.android.cursor.item/phone_v2", "data2", R.string.phoneLabelsGroup, 10, new PhoneActionInflater(), new SimpleInflater("data1"));
            newDataKind.iconAltRes = R.drawable.quantum_ic_message_vd_theme_24;
            newDataKind.iconAltDescriptionRes = R.string.sms;
            newDataKind.actionAltHeader = new PhoneActionAltInflater();
            newDataKind.fieldList.add(new AccountType.EditField("data1", R.string.phoneLabelsGroup, 3));
            return Lists.newArrayList(newDataKind);
        }

        protected static AccountType.EditType build(int i, boolean z) {
            return new AccountType.EditType(i, ContactsContract.CommonDataKinds.Phone.getTypeLabelResource(i)).setSecondary(z);
        }

        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        protected AccountType.EditType buildEditTypeForTypeTag(AttributeSet attributeSet, String str) {
            if ("home".equals(str)) {
                return build(1, false);
            }
            if ("mobile".equals(str)) {
                return build(2, false);
            }
            if ("work".equals(str)) {
                return build(3, false);
            }
            if ("fax_work".equals(str)) {
                return build(4, true);
            }
            if ("fax_home".equals(str)) {
                return build(5, true);
            }
            if ("pager".equals(str)) {
                return build(6, true);
            }
            if ("other".equals(str)) {
                return build(7, false);
            }
            if ("callback".equals(str)) {
                return build(8, true);
            }
            if ("car".equals(str)) {
                return build(9, true);
            }
            if ("company_main".equals(str)) {
                return build(10, true);
            }
            if ("isdn".equals(str)) {
                return build(11, true);
            }
            if ("main".equals(str)) {
                return build(12, true);
            }
            if ("other_fax".equals(str)) {
                return build(13, true);
            }
            if ("radio".equals(str)) {
                return build(14, true);
            }
            if ("telex".equals(str)) {
                return build(15, true);
            }
            if ("tty_tdd".equals(str)) {
                return build(16, true);
            }
            if ("work_mobile".equals(str)) {
                return build(17, true);
            }
            if ("work_pager".equals(str)) {
                return build(18, true);
            }
            if ("assistant".equals(str)) {
                return build(19, true);
            }
            if ("mms".equals(str)) {
                return build(20, true);
            }
            if ("custom".equals(str)) {
                return build(0, true).setCustomColumn("data3");
            }
            return null;
        }
    }

    private static class EmailKindBuilder extends KindBuilder {
        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        public String getTagName() {
            return "email";
        }

        private EmailKindBuilder() {
            super();
        }

        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        public List<DataKind> parseDataKind(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws AccountType.DefinitionException, XmlPullParserException, IOException {
            DataKind newDataKind = newDataKind(context, xmlPullParser, attributeSet, false, "vnd.android.cursor.item/email_v2", "data2", R.string.emailLabelsGroup, 15, new EmailActionInflater(), new SimpleInflater("data1"));
            newDataKind.fieldList.add(new AccountType.EditField("data1", R.string.emailLabelsGroup, 33));
            return Lists.newArrayList(newDataKind);
        }

        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        protected AccountType.EditType buildEditTypeForTypeTag(AttributeSet attributeSet, String str) {
            if ("home".equals(str)) {
                return BaseAccountType.buildEmailType(1);
            }
            if ("work".equals(str)) {
                return BaseAccountType.buildEmailType(2);
            }
            if ("other".equals(str)) {
                return BaseAccountType.buildEmailType(3);
            }
            if ("mobile".equals(str)) {
                return BaseAccountType.buildEmailType(4);
            }
            if ("custom".equals(str)) {
                return BaseAccountType.buildEmailType(0).setSecondary(true).setCustomColumn("data3");
            }
            return null;
        }
    }

    private static class StructuredPostalKindBuilder extends KindBuilder {
        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        public String getTagName() {
            return "postal";
        }

        private StructuredPostalKindBuilder() {
            super();
        }

        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        public List<DataKind> parseDataKind(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws AccountType.DefinitionException, XmlPullParserException, IOException {
            DataKind newDataKind = newDataKind(context, xmlPullParser, attributeSet, false, "vnd.android.cursor.item/postal-address_v2", "data2", R.string.postalLabelsGroup, 25, new PostalActionInflater(), new SimpleInflater("data1"));
            if (BaseAccountType.getAttr(attributeSet, "needsStructured", false)) {
                if (Locale.JAPANESE.getLanguage().equals(Locale.getDefault().getLanguage())) {
                    newDataKind.fieldList.add(new AccountType.EditField("data10", R.string.postal_country, BaseAccountType.FLAGS_POSTAL).setOptional(true));
                    newDataKind.fieldList.add(new AccountType.EditField("data9", R.string.postal_postcode, BaseAccountType.FLAGS_POSTAL));
                    newDataKind.fieldList.add(new AccountType.EditField("data8", R.string.postal_region, BaseAccountType.FLAGS_POSTAL));
                    newDataKind.fieldList.add(new AccountType.EditField("data7", R.string.postal_city, BaseAccountType.FLAGS_POSTAL));
                    newDataKind.fieldList.add(new AccountType.EditField("data4", R.string.postal_street, BaseAccountType.FLAGS_POSTAL));
                } else {
                    newDataKind.fieldList.add(new AccountType.EditField("data4", R.string.postal_street, BaseAccountType.FLAGS_POSTAL));
                    newDataKind.fieldList.add(new AccountType.EditField("data7", R.string.postal_city, BaseAccountType.FLAGS_POSTAL));
                    newDataKind.fieldList.add(new AccountType.EditField("data8", R.string.postal_region, BaseAccountType.FLAGS_POSTAL));
                    newDataKind.fieldList.add(new AccountType.EditField("data9", R.string.postal_postcode, BaseAccountType.FLAGS_POSTAL));
                    newDataKind.fieldList.add(new AccountType.EditField("data10", R.string.postal_country, BaseAccountType.FLAGS_POSTAL).setOptional(true));
                }
            } else {
                newDataKind.maxLinesForDisplay = 10;
                newDataKind.fieldList.add(new AccountType.EditField("data1", R.string.postal_address, BaseAccountType.FLAGS_POSTAL));
            }
            return Lists.newArrayList(newDataKind);
        }

        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        protected AccountType.EditType buildEditTypeForTypeTag(AttributeSet attributeSet, String str) {
            if ("home".equals(str)) {
                return BaseAccountType.buildPostalType(1);
            }
            if ("work".equals(str)) {
                return BaseAccountType.buildPostalType(2);
            }
            if ("other".equals(str)) {
                return BaseAccountType.buildPostalType(3);
            }
            if ("custom".equals(str)) {
                return BaseAccountType.buildPostalType(0).setSecondary(true).setCustomColumn("data3");
            }
            return null;
        }
    }

    private static class ImKindBuilder extends KindBuilder {
        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        public String getTagName() {
            return "im";
        }

        private ImKindBuilder() {
            super();
        }

        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        public List<DataKind> parseDataKind(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws AccountType.DefinitionException, XmlPullParserException, IOException {
            DataKind newDataKind = newDataKind(context, xmlPullParser, attributeSet, false, "vnd.android.cursor.item/im", "data5", R.string.imLabelsGroup, Weight.IM, new ImActionInflater(), new SimpleInflater("data1"));
            newDataKind.fieldList.add(new AccountType.EditField("data1", R.string.imLabelsGroup, 33));
            ContentValues contentValues = new ContentValues();
            newDataKind.defaultValues = contentValues;
            contentValues.put("data2", (Integer) 3);
            return Lists.newArrayList(newDataKind);
        }

        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        protected AccountType.EditType buildEditTypeForTypeTag(AttributeSet attributeSet, String str) {
            if ("aim".equals(str)) {
                return BaseAccountType.buildImType(0);
            }
            if ("msn".equals(str)) {
                return BaseAccountType.buildImType(1);
            }
            if ("yahoo".equals(str)) {
                return BaseAccountType.buildImType(2);
            }
            if ("skype".equals(str)) {
                return BaseAccountType.buildImType(3);
            }
            if ("qq".equals(str)) {
                return BaseAccountType.buildImType(4);
            }
            if ("google_talk".equals(str)) {
                return BaseAccountType.buildImType(5);
            }
            if ("icq".equals(str)) {
                return BaseAccountType.buildImType(6);
            }
            if ("jabber".equals(str)) {
                return BaseAccountType.buildImType(7);
            }
            if ("custom".equals(str)) {
                return BaseAccountType.buildImType(-1).setSecondary(true).setCustomColumn("data6");
            }
            return null;
        }
    }

    private static class OrganizationKindBuilder extends KindBuilder {
        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        public String getTagName() {
            return "organization";
        }

        private OrganizationKindBuilder() {
            super();
        }

        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        public List<DataKind> parseDataKind(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws AccountType.DefinitionException, XmlPullParserException, IOException {
            DataKind newDataKind = newDataKind(context, xmlPullParser, attributeSet, false, "vnd.android.cursor.item/organization", null, R.string.organizationLabelsGroup, 125, new SimpleInflater(R.string.organizationLabelsGroup), BaseAccountType.ORGANIZATION_BODY_INFLATER);
            newDataKind.fieldList.add(new AccountType.EditField("data1", R.string.ghostData_company, BaseAccountType.FLAGS_GENERIC_NAME));
            newDataKind.fieldList.add(new AccountType.EditField("data4", R.string.ghostData_title, BaseAccountType.FLAGS_GENERIC_NAME));
            throwIfList(newDataKind);
            return Lists.newArrayList(newDataKind);
        }
    }

    private static class PhotoKindBuilder extends KindBuilder {
        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        public String getTagName() {
            return "photo";
        }

        private PhotoKindBuilder() {
            super();
        }

        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        public List<DataKind> parseDataKind(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws AccountType.DefinitionException, XmlPullParserException, IOException {
            DataKind newDataKind = newDataKind(context, xmlPullParser, attributeSet, false, "vnd.android.cursor.item/photo", null, -1, -1, null, null);
            newDataKind.fieldList.add(new AccountType.EditField("data15", -1, -1));
            throwIfList(newDataKind);
            return Lists.newArrayList(newDataKind);
        }
    }

    private static class NoteKindBuilder extends KindBuilder {
        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        public String getTagName() {
            return "note";
        }

        private NoteKindBuilder() {
            super();
        }

        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        public List<DataKind> parseDataKind(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws AccountType.DefinitionException, XmlPullParserException, IOException {
            DataKind newDataKind = newDataKind(context, xmlPullParser, attributeSet, false, "vnd.android.cursor.item/note", null, R.string.label_notes, Weight.NOTE, new SimpleInflater(R.string.label_notes), new SimpleInflater("data1"));
            newDataKind.fieldList.add(new AccountType.EditField("data1", R.string.label_notes, BaseAccountType.FLAGS_NOTE));
            newDataKind.maxLinesForDisplay = 100;
            throwIfList(newDataKind);
            return Lists.newArrayList(newDataKind);
        }
    }

    private static class WebsiteKindBuilder extends KindBuilder {
        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        public String getTagName() {
            return "website";
        }

        private WebsiteKindBuilder() {
            super();
        }

        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        public List<DataKind> parseDataKind(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws AccountType.DefinitionException, XmlPullParserException, IOException {
            DataKind newDataKind = newDataKind(context, xmlPullParser, attributeSet, false, "vnd.android.cursor.item/website", null, R.string.websiteLabelsGroup, Weight.WEBSITE, new SimpleInflater(R.string.websiteLabelsGroup), new SimpleInflater("data1"));
            newDataKind.fieldList.add(new AccountType.EditField("data1", R.string.websiteLabelsGroup, 17));
            ContentValues contentValues = new ContentValues();
            newDataKind.defaultValues = contentValues;
            contentValues.put("data2", (Integer) 7);
            return Lists.newArrayList(newDataKind);
        }
    }

    private static class SipAddressKindBuilder extends KindBuilder {
        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        public String getTagName() {
            return "sip_address";
        }

        private SipAddressKindBuilder() {
            super();
        }

        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        public List<DataKind> parseDataKind(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws AccountType.DefinitionException, XmlPullParserException, IOException {
            DataKind newDataKind = newDataKind(context, xmlPullParser, attributeSet, false, "vnd.android.cursor.item/sip_address", null, R.string.label_sip_address, Weight.SIP_ADDRESS, new SimpleInflater(R.string.label_sip_address), new SimpleInflater("data1"));
            newDataKind.fieldList.add(new AccountType.EditField("data1", R.string.label_sip_address, 33));
            throwIfList(newDataKind);
            return Lists.newArrayList(newDataKind);
        }
    }

    private static class GroupMembershipKindBuilder extends KindBuilder {
        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        public String getTagName() {
            return "group_membership";
        }

        private GroupMembershipKindBuilder() {
            super();
        }

        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        public List<DataKind> parseDataKind(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws AccountType.DefinitionException, XmlPullParserException, IOException {
            DataKind newDataKind = newDataKind(context, xmlPullParser, attributeSet, false, "vnd.android.cursor.item/group_membership", null, R.string.groupsLabel, Weight.GROUP_MEMBERSHIP, null, null);
            newDataKind.fieldList.add(new AccountType.EditField("data1", -1, -1));
            newDataKind.maxLinesForDisplay = 10;
            throwIfList(newDataKind);
            return Lists.newArrayList(newDataKind);
        }
    }

    private static class EventKindBuilder extends KindBuilder {
        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        public String getTagName() {
            return "event";
        }

        private EventKindBuilder() {
            super();
        }

        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        public List<DataKind> parseDataKind(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws AccountType.DefinitionException, XmlPullParserException, IOException {
            DataKind newDataKind = newDataKind(context, xmlPullParser, attributeSet, false, "vnd.android.cursor.item/contact_event", "data2", R.string.eventLabelsGroup, 120, new EventActionInflater(), new SimpleInflater("data1"));
            newDataKind.fieldList.add(new AccountType.EditField("data1", R.string.eventLabelsGroup, 1));
            if (BaseAccountType.getAttr(attributeSet, Attr.DATE_WITH_TIME, false)) {
                newDataKind.dateFormatWithoutYear = CommonDateUtils.NO_YEAR_DATE_AND_TIME_FORMAT;
                newDataKind.dateFormatWithYear = CommonDateUtils.DATE_AND_TIME_FORMAT;
            } else {
                newDataKind.dateFormatWithoutYear = CommonDateUtils.NO_YEAR_DATE_FORMAT;
                newDataKind.dateFormatWithYear = CommonDateUtils.FULL_DATE_FORMAT;
            }
            return Lists.newArrayList(newDataKind);
        }

        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        protected AccountType.EditType buildEditTypeForTypeTag(AttributeSet attributeSet, String str) {
            boolean attr = BaseAccountType.getAttr(attributeSet, Attr.YEAR_OPTIONAL, false);
            if ("birthday".equals(str)) {
                return BaseAccountType.buildEventType(3, attr).setSpecificMax(1);
            }
            if ("anniversary".equals(str)) {
                return BaseAccountType.buildEventType(1, attr);
            }
            if ("other".equals(str)) {
                return BaseAccountType.buildEventType(2, attr);
            }
            if ("custom".equals(str)) {
                return BaseAccountType.buildEventType(0, attr).setSecondary(true).setCustomColumn("data3");
            }
            return null;
        }
    }

    private static class RelationshipKindBuilder extends KindBuilder {
        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        public String getTagName() {
            return "relationship";
        }

        private RelationshipKindBuilder() {
            super();
        }

        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        public List<DataKind> parseDataKind(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws AccountType.DefinitionException, XmlPullParserException, IOException {
            DataKind newDataKind = newDataKind(context, xmlPullParser, attributeSet, false, "vnd.android.cursor.item/relation", "data2", R.string.relationLabelsGroup, Weight.RELATIONSHIP, new RelationActionInflater(), new SimpleInflater("data1"));
            newDataKind.fieldList.add(new AccountType.EditField("data1", R.string.relationLabelsGroup, 8289));
            ContentValues contentValues = new ContentValues();
            newDataKind.defaultValues = contentValues;
            contentValues.put("data2", (Integer) 14);
            return Lists.newArrayList(newDataKind);
        }

        @Override // com.android.contacts.model.account.BaseAccountType.KindBuilder
        protected AccountType.EditType buildEditTypeForTypeTag(AttributeSet attributeSet, String str) {
            if ("assistant".equals(str)) {
                return BaseAccountType.buildRelationType(1);
            }
            if ("brother".equals(str)) {
                return BaseAccountType.buildRelationType(2);
            }
            if ("child".equals(str)) {
                return BaseAccountType.buildRelationType(3);
            }
            if ("domestic_partner".equals(str)) {
                return BaseAccountType.buildRelationType(4);
            }
            if ("father".equals(str)) {
                return BaseAccountType.buildRelationType(5);
            }
            if ("friend".equals(str)) {
                return BaseAccountType.buildRelationType(6);
            }
            if ("manager".equals(str)) {
                return BaseAccountType.buildRelationType(7);
            }
            if ("mother".equals(str)) {
                return BaseAccountType.buildRelationType(8);
            }
            if ("parent".equals(str)) {
                return BaseAccountType.buildRelationType(9);
            }
            if ("partner".equals(str)) {
                return BaseAccountType.buildRelationType(10);
            }
            if ("referred_by".equals(str)) {
                return BaseAccountType.buildRelationType(11);
            }
            if ("relative".equals(str)) {
                return BaseAccountType.buildRelationType(12);
            }
            if ("sister".equals(str)) {
                return BaseAccountType.buildRelationType(13);
            }
            if ("spouse".equals(str)) {
                return BaseAccountType.buildRelationType(14);
            }
            if ("custom".equals(str)) {
                return BaseAccountType.buildRelationType(0).setSecondary(true).setCustomColumn("data3");
            }
            return null;
        }
    }
}
