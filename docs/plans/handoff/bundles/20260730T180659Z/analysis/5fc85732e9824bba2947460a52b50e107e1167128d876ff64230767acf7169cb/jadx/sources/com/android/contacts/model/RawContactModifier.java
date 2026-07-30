package com.android.contacts.model;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.provider.Contacts;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import com.android.contacts.ContactsUtils;
import com.android.contacts.model.account.AccountType;
import com.android.contacts.model.account.GoogleAccountType;
import com.android.contacts.model.dataitem.DataKind;
import com.android.contacts.model.dataitem.PhoneDataItem;
import com.android.contacts.model.dataitem.StructuredNameDataItem;
import com.android.contacts.util.CommonDateUtils;
import com.android.contacts.util.DateUtils;
import com.android.contacts.util.NameConverter;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* loaded from: classes.dex */
public class RawContactModifier {
    private static final String COLUMN_FOR_LABEL = "data3";
    private static final String COLUMN_FOR_TYPE = "data2";
    private static final boolean DEBUG = false;
    private static final int FREQUENCY_TOTAL = Integer.MIN_VALUE;
    private static final String TAG = "RawContactModifier";
    private static final int TYPE_CUSTOM = 0;
    private static final Set<String> sGenericMimeTypesWithTypeSupport = new HashSet(Arrays.asList("vnd.android.cursor.item/phone_v2", "vnd.android.cursor.item/email_v2", "vnd.android.cursor.item/im", "vnd.android.cursor.item/nickname", "vnd.android.cursor.item/website", "vnd.android.cursor.item/relation", "vnd.android.cursor.item/sip_address"));
    private static final Set<String> sGenericMimeTypesWithoutTypeSupport = new HashSet(Arrays.asList("vnd.android.cursor.item/organization", "vnd.android.cursor.item/note", "vnd.android.cursor.item/photo", "vnd.android.cursor.item/group_membership"));

    public static boolean canInsert(RawContactDelta rawContactDelta, DataKind dataKind) {
        int mimeEntriesCount = rawContactDelta.getMimeEntriesCount(dataKind.mimeType, true);
        boolean hasValidTypes = hasValidTypes(rawContactDelta, dataKind);
        int i = dataKind.typeOverallMax;
        return hasValidTypes && (i == -1 || mimeEntriesCount < i);
    }

    public static boolean hasValidTypes(RawContactDelta rawContactDelta, DataKind dataKind) {
        return !hasEditTypes(dataKind) || getValidTypes(rawContactDelta, dataKind, null, true, null, true).size() > 0;
    }

    public static ValuesDelta ensureKindExists(RawContactDelta rawContactDelta, AccountType accountType, String str) {
        DataKind kindForMimetype = accountType.getKindForMimetype(str);
        boolean z = rawContactDelta.getMimeEntriesCount(str, true) > 0;
        if (kindForMimetype == null) {
            return null;
        }
        if (z) {
            return rawContactDelta.getMimeEntries(str).get(0);
        }
        ValuesDelta insertChild = insertChild(rawContactDelta, kindForMimetype);
        if (kindForMimetype.mimeType.equals("vnd.android.cursor.item/photo")) {
            insertChild.setFromTemplate(true);
        }
        return insertChild;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList<com.android.contacts.model.account.AccountType.EditType> getValidTypes(com.android.contacts.model.RawContactDelta r7, com.android.contacts.model.dataitem.DataKind r8, com.android.contacts.model.account.AccountType.EditType r9, boolean r10, android.util.SparseIntArray r11, boolean r12) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            boolean r1 = hasEditTypes(r8)
            if (r1 != 0) goto Lc
            return r0
        Lc:
            if (r11 != 0) goto L12
            android.util.SparseIntArray r11 = getTypeFrequencies(r7, r8)
        L12:
            r7 = -1
            r1 = 0
            r2 = 1
            if (r12 == 0) goto L27
            r12 = -2147483648(0xffffffff80000000, float:-0.0)
            int r12 = r11.get(r12)
            int r3 = r8.typeOverallMax
            if (r3 != r7) goto L22
            goto L27
        L22:
            if (r12 >= r3) goto L25
            goto L27
        L25:
            r12 = 0
            goto L28
        L27:
            r12 = 1
        L28:
            java.util.List<com.android.contacts.model.account.AccountType$EditType> r8 = r8.typeList
            java.util.Iterator r8 = r8.iterator()
        L2e:
            boolean r3 = r8.hasNext()
            if (r3 == 0) goto L66
            java.lang.Object r3 = r8.next()
            com.android.contacts.model.account.AccountType$EditType r3 = (com.android.contacts.model.account.AccountType.EditType) r3
            int r4 = r3.specificMax
            if (r4 != r7) goto L40
        L3e:
            r4 = 1
            goto L4c
        L40:
            int r4 = r3.rawValue
            int r4 = r11.get(r4)
            int r5 = r3.specificMax
            if (r4 >= r5) goto L4b
            goto L3e
        L4b:
            r4 = 0
        L4c:
            if (r10 == 0) goto L50
        L4e:
            r5 = 1
            goto L56
        L50:
            boolean r5 = r3.secondary
            if (r5 != 0) goto L55
            goto L4e
        L55:
            r5 = 0
        L56:
            boolean r6 = r3.equals(r9)
            if (r6 != 0) goto L62
            if (r12 == 0) goto L2e
            if (r4 == 0) goto L2e
            if (r5 == 0) goto L2e
        L62:
            r0.add(r3)
            goto L2e
        L66:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.model.RawContactModifier.getValidTypes(com.android.contacts.model.RawContactDelta, com.android.contacts.model.dataitem.DataKind, com.android.contacts.model.account.AccountType$EditType, boolean, android.util.SparseIntArray, boolean):java.util.ArrayList");
    }

    private static SparseIntArray getTypeFrequencies(RawContactDelta rawContactDelta, DataKind dataKind) {
        SparseIntArray sparseIntArray = new SparseIntArray();
        ArrayList<ValuesDelta> mimeEntries = rawContactDelta.getMimeEntries(dataKind.mimeType);
        if (mimeEntries == null) {
            return sparseIntArray;
        }
        int i = 0;
        for (ValuesDelta valuesDelta : mimeEntries) {
            if (valuesDelta.isVisible()) {
                i++;
                AccountType.EditType currentType = getCurrentType(valuesDelta, dataKind);
                if (currentType != null) {
                    sparseIntArray.put(currentType.rawValue, sparseIntArray.get(currentType.rawValue) + 1);
                }
            }
        }
        sparseIntArray.put(FREQUENCY_TOTAL, i);
        return sparseIntArray;
    }

    public static boolean hasEditTypes(DataKind dataKind) {
        List<AccountType.EditType> list;
        return (dataKind == null || (list = dataKind.typeList) == null || list.size() <= 0) ? false : true;
    }

    public static AccountType.EditType getCurrentType(ValuesDelta valuesDelta, DataKind dataKind) {
        Long asLong = valuesDelta.getAsLong(dataKind.typeColumn);
        if (asLong == null) {
            return null;
        }
        return getType(dataKind, asLong.intValue());
    }

    public static AccountType.EditType getCurrentType(ContentValues contentValues, DataKind dataKind) {
        Integer asInteger;
        String str = dataKind.typeColumn;
        if (str == null || (asInteger = contentValues.getAsInteger(str)) == null) {
            return null;
        }
        return getType(dataKind, asInteger.intValue());
    }

    public static AccountType.EditType getCurrentType(Cursor cursor, DataKind dataKind) {
        int columnIndex;
        String str = dataKind.typeColumn;
        if (str == null || (columnIndex = cursor.getColumnIndex(str)) == -1) {
            return null;
        }
        return getType(dataKind, cursor.getInt(columnIndex));
    }

    public static AccountType.EditType getType(DataKind dataKind, int i) {
        for (AccountType.EditType editType : dataKind.typeList) {
            if (editType.rawValue == i) {
                return editType;
            }
        }
        return null;
    }

    public static int getTypePrecedence(DataKind dataKind, int i) {
        for (int i2 = 0; i2 < dataKind.typeList.size(); i2++) {
            if (dataKind.typeList.get(i2).rawValue == i) {
                return i2;
            }
        }
        return Integer.MAX_VALUE;
    }

    public static AccountType.EditType getBestValidType(RawContactDelta rawContactDelta, DataKind dataKind, boolean z, int i) {
        if (dataKind == null || dataKind.typeColumn == null) {
            return null;
        }
        SparseIntArray typeFrequencies = getTypeFrequencies(rawContactDelta, dataKind);
        ArrayList<AccountType.EditType> validTypes = getValidTypes(rawContactDelta, dataKind, null, z, typeFrequencies, true);
        if (validTypes.size() == 0) {
            return null;
        }
        AccountType.EditType editType = validTypes.get(validTypes.size() - 1);
        Iterator<AccountType.EditType> it = validTypes.iterator();
        while (it.hasNext()) {
            AccountType.EditType next = it.next();
            int i2 = typeFrequencies.get(next.rawValue);
            if (i == next.rawValue) {
                return next;
            }
            if (i2 > 0) {
                it.remove();
            }
        }
        return validTypes.size() > 0 ? validTypes.get(0) : editType;
    }

    public static ValuesDelta insertChild(RawContactDelta rawContactDelta, DataKind dataKind) {
        if (dataKind == null) {
            return null;
        }
        AccountType.EditType bestValidType = getBestValidType(rawContactDelta, dataKind, false, FREQUENCY_TOTAL);
        if (bestValidType == null) {
            bestValidType = getBestValidType(rawContactDelta, dataKind, true, FREQUENCY_TOTAL);
        }
        return insertChild(rawContactDelta, dataKind, bestValidType);
    }

    public static ValuesDelta insertChild(RawContactDelta rawContactDelta, DataKind dataKind, AccountType.EditType editType) {
        if (dataKind == null) {
            return null;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("mimetype", dataKind.mimeType);
        ContentValues contentValues2 = dataKind.defaultValues;
        if (contentValues2 != null) {
            contentValues.putAll(contentValues2);
        }
        String str = dataKind.typeColumn;
        if (str != null && editType != null) {
            contentValues.put(str, Integer.valueOf(editType.rawValue));
        }
        ValuesDelta fromAfter = ValuesDelta.fromAfter(contentValues);
        rawContactDelta.addEntry(fromAfter);
        return fromAfter;
    }

    public static void trimEmpty(RawContactDeltaList rawContactDeltaList, AccountTypeManager accountTypeManager) {
        Iterator<RawContactDelta> it = rawContactDeltaList.iterator();
        while (it.hasNext()) {
            RawContactDelta next = it.next();
            ValuesDelta values = next.getValues();
            trimEmpty(next, accountTypeManager.getAccountType(values.getAsString("account_type"), values.getAsString("data_set")));
        }
    }

    public static boolean hasChanges(RawContactDeltaList rawContactDeltaList, AccountTypeManager accountTypeManager) {
        return hasChanges(rawContactDeltaList, accountTypeManager, (Set<String>) null);
    }

    public static boolean hasChanges(RawContactDeltaList rawContactDeltaList, AccountTypeManager accountTypeManager, Set<String> set) {
        if (rawContactDeltaList.isMarkedForSplitting() || rawContactDeltaList.isMarkedForJoining()) {
            return true;
        }
        Iterator<RawContactDelta> it = rawContactDeltaList.iterator();
        while (it.hasNext()) {
            RawContactDelta next = it.next();
            ValuesDelta values = next.getValues();
            if (hasChanges(next, accountTypeManager.getAccountType(values.getAsString("account_type"), values.getAsString("data_set")), set)) {
                return true;
            }
        }
        return false;
    }

    public static void trimEmpty(RawContactDelta rawContactDelta, AccountType accountType) {
        Iterator<DataKind> it = accountType.getSortedDataKinds().iterator();
        boolean z = false;
        while (it.hasNext()) {
            DataKind next = it.next();
            ArrayList<ValuesDelta> mimeEntries = rawContactDelta.getMimeEntries(next.mimeType);
            if (mimeEntries != null) {
                Iterator<ValuesDelta> it2 = mimeEntries.iterator();
                while (it2.hasNext()) {
                    ValuesDelta next2 = it2.next();
                    if (next2.isInsert() || next2.isUpdate()) {
                        boolean z2 = TextUtils.equals("vnd.android.cursor.item/photo", next.mimeType) && TextUtils.equals(GoogleAccountType.ACCOUNT_TYPE, rawContactDelta.getValues().getAsString("account_type"));
                        if (isEmpty(next2, next) && !z2) {
                            next2.markDeleted();
                        } else if (!next2.isFromTemplate()) {
                        }
                    }
                    z = true;
                }
            }
        }
        if (z) {
            return;
        }
        rawContactDelta.markDeleted();
    }

    private static boolean hasChanges(RawContactDelta rawContactDelta, AccountType accountType, Set<String> set) {
        Iterator<DataKind> it = accountType.getSortedDataKinds().iterator();
        while (it.hasNext()) {
            DataKind next = it.next();
            String str = next.mimeType;
            if (set == null || !set.contains(str)) {
                ArrayList<ValuesDelta> mimeEntries = rawContactDelta.getMimeEntries(str);
                if (mimeEntries == null) {
                    continue;
                } else {
                    Iterator<ValuesDelta> it2 = mimeEntries.iterator();
                    while (it2.hasNext()) {
                        ValuesDelta next2 = it2.next();
                        if ((next2.isInsert() && !isEmpty(next2, next)) || next2.isUpdate() || next2.isDelete()) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static boolean isEmpty(ValuesDelta valuesDelta, DataKind dataKind) {
        if ("vnd.android.cursor.item/photo".equals(dataKind.mimeType)) {
            return valuesDelta.isInsert() && valuesDelta.getAsByteArray("data15") == null;
        }
        List<AccountType.EditField> list = dataKind.fieldList;
        if (list == null) {
            return true;
        }
        Iterator<AccountType.EditField> it = list.iterator();
        while (it.hasNext()) {
            if (ContactsUtils.isGraphic(valuesDelta.getAsString(it.next().column))) {
                return false;
            }
        }
        return true;
    }

    protected static boolean areEqual(ValuesDelta valuesDelta, ContentValues contentValues, DataKind dataKind) {
        List<AccountType.EditField> list = dataKind.fieldList;
        if (list == null) {
            return false;
        }
        for (AccountType.EditField editField : list) {
            if (!TextUtils.equals(valuesDelta.getAsString(editField.column), contentValues.getAsString(editField.column))) {
                return false;
            }
        }
        return true;
    }

    public static void parseExtras(Context context, AccountType accountType, RawContactDelta rawContactDelta, Bundle bundle) {
        if (bundle == null || bundle.size() == 0) {
            return;
        }
        parseStructuredNameExtra(context, accountType, rawContactDelta, bundle);
        parseStructuredPostalExtra(accountType, rawContactDelta, bundle);
        DataKind kindForMimetype = accountType.getKindForMimetype("vnd.android.cursor.item/phone_v2");
        parseExtras(rawContactDelta, kindForMimetype, bundle, "phone_type", "phone", "data1");
        parseExtras(rawContactDelta, kindForMimetype, bundle, "secondary_phone_type", "secondary_phone", "data1");
        parseExtras(rawContactDelta, kindForMimetype, bundle, "tertiary_phone_type", "tertiary_phone", "data1");
        DataKind kindForMimetype2 = accountType.getKindForMimetype("vnd.android.cursor.item/email_v2");
        parseExtras(rawContactDelta, kindForMimetype2, bundle, "email_type", "email", "data1");
        parseExtras(rawContactDelta, kindForMimetype2, bundle, "secondary_email_type", "secondary_email", "data1");
        parseExtras(rawContactDelta, kindForMimetype2, bundle, "tertiary_email_type", "tertiary_email", "data1");
        DataKind kindForMimetype3 = accountType.getKindForMimetype("vnd.android.cursor.item/im");
        fixupLegacyImType(bundle);
        parseExtras(rawContactDelta, kindForMimetype3, bundle, "im_protocol", "im_handle", "data1");
        boolean z = bundle.containsKey("company") || bundle.containsKey("job_title");
        DataKind kindForMimetype4 = accountType.getKindForMimetype("vnd.android.cursor.item/organization");
        if (z && canInsert(rawContactDelta, kindForMimetype4)) {
            ValuesDelta insertChild = insertChild(rawContactDelta, kindForMimetype4);
            String string = bundle.getString("company");
            if (ContactsUtils.isGraphic(string)) {
                insertChild.put("data1", string);
            }
            String string2 = bundle.getString("job_title");
            if (ContactsUtils.isGraphic(string2)) {
                insertChild.put("data4", string2);
            }
        }
        boolean containsKey = bundle.containsKey("notes");
        DataKind kindForMimetype5 = accountType.getKindForMimetype("vnd.android.cursor.item/note");
        if (containsKey && canInsert(rawContactDelta, kindForMimetype5)) {
            ValuesDelta insertChild2 = insertChild(rawContactDelta, kindForMimetype5);
            String string3 = bundle.getString("notes");
            if (ContactsUtils.isGraphic(string3)) {
                insertChild2.put("data1", string3);
            }
        }
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("data");
        if (parcelableArrayList != null) {
            parseValues(rawContactDelta, accountType, parcelableArrayList);
        }
    }

    private static void parseStructuredNameExtra(Context context, AccountType accountType, RawContactDelta rawContactDelta, Bundle bundle) {
        boolean z;
        ensureKindExists(rawContactDelta, accountType, "vnd.android.cursor.item/name");
        ValuesDelta primaryEntry = rawContactDelta.getPrimaryEntry("vnd.android.cursor.item/name");
        String string = bundle.getString("name");
        if (ContactsUtils.isGraphic(string)) {
            List<AccountType.EditField> list = accountType.getKindForMimetype("vnd.android.cursor.item/name").fieldList;
            if (list != null) {
                Iterator<AccountType.EditField> it = list.iterator();
                while (it.hasNext()) {
                    if ("data1".equals(it.next().column)) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            if (z) {
                primaryEntry.put("data1", string);
            } else {
                Cursor query = context.getContentResolver().query(ContactsContract.AUTHORITY_URI.buildUpon().appendPath("complete_name").appendQueryParameter("data1", string).build(), new String[]{"data4", COLUMN_FOR_TYPE, "data5", COLUMN_FOR_LABEL, "data6"}, null, null, null);
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            primaryEntry.put("data4", query.getString(0));
                            primaryEntry.put(COLUMN_FOR_TYPE, query.getString(1));
                            primaryEntry.put("data5", query.getString(2));
                            primaryEntry.put(COLUMN_FOR_LABEL, query.getString(3));
                            primaryEntry.put("data6", query.getString(4));
                        }
                    } finally {
                        query.close();
                    }
                }
            }
        }
        String string2 = bundle.getString("phonetic_name");
        if (ContactsUtils.isGraphic(string2)) {
            StructuredNameDataItem parsePhoneticName = NameConverter.parsePhoneticName(string2, null);
            primaryEntry.put("data9", parsePhoneticName.getPhoneticFamilyName());
            primaryEntry.put("data8", parsePhoneticName.getPhoneticMiddleName());
            primaryEntry.put("data7", parsePhoneticName.getPhoneticGivenName());
        }
    }

    private static void parseStructuredPostalExtra(AccountType accountType, RawContactDelta rawContactDelta, Bundle bundle) {
        DataKind kindForMimetype = accountType.getKindForMimetype("vnd.android.cursor.item/postal-address_v2");
        ValuesDelta parseExtras = parseExtras(rawContactDelta, kindForMimetype, bundle, "postal_type", "postal", "data1");
        String asString = parseExtras == null ? null : parseExtras.getAsString("data1");
        if (TextUtils.isEmpty(asString)) {
            return;
        }
        boolean z = false;
        List<AccountType.EditField> list = kindForMimetype.fieldList;
        if (list != null) {
            Iterator<AccountType.EditField> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if ("data1".equals(it.next().column)) {
                    z = true;
                    break;
                }
            }
        }
        if (z) {
            return;
        }
        parseExtras.put("data4", asString);
        parseExtras.putNull("data1");
    }

    private static void parseValues(RawContactDelta rawContactDelta, AccountType accountType, ArrayList<ContentValues> arrayList) {
        int i;
        Iterator<ContentValues> it = arrayList.iterator();
        while (it.hasNext()) {
            ContentValues next = it.next();
            String asString = next.getAsString("mimetype");
            if (TextUtils.isEmpty(asString)) {
                Log.e(TAG, "Mimetype is required. Ignoring: " + next);
            } else if (!"vnd.android.cursor.item/name".equals(asString)) {
                if ("vnd.android.cursor.item/phone_v2".equals(asString)) {
                    next.remove(PhoneDataItem.KEY_FORMATTED_PHONE_NUMBER);
                    Integer asInteger = next.getAsInteger(COLUMN_FOR_TYPE);
                    if (asInteger != null && asInteger.intValue() == 0 && TextUtils.isEmpty(next.getAsString(COLUMN_FOR_LABEL))) {
                        next.put(COLUMN_FOR_TYPE, (Integer) 2);
                    }
                }
                DataKind kindForMimetype = accountType.getKindForMimetype(asString);
                if (kindForMimetype == null) {
                    Log.e(TAG, "Mimetype not supported for account type " + accountType.getAccountTypeAndDataSet() + ". Ignoring: " + next);
                } else {
                    ValuesDelta fromAfter = ValuesDelta.fromAfter(next);
                    if (!isEmpty(fromAfter, kindForMimetype)) {
                        ArrayList<ValuesDelta> mimeEntries = rawContactDelta.getMimeEntries(asString);
                        boolean z = false;
                        boolean z2 = true;
                        if (kindForMimetype.typeOverallMax != 1 || "vnd.android.cursor.item/group_membership".equals(asString)) {
                            if (mimeEntries != null && mimeEntries.size() > 0) {
                                Iterator<ValuesDelta> it2 = mimeEntries.iterator();
                                i = 0;
                                while (true) {
                                    if (!it2.hasNext()) {
                                        break;
                                    }
                                    ValuesDelta next2 = it2.next();
                                    if (!next2.isDelete()) {
                                        if (areEqual(next2, next, kindForMimetype)) {
                                            z2 = false;
                                            break;
                                        }
                                        i++;
                                    }
                                }
                            } else {
                                i = 0;
                            }
                            int i2 = kindForMimetype.typeOverallMax;
                            if (i2 == -1 || i < i2) {
                                z = z2;
                            } else {
                                Log.e(TAG, "Mimetype allows at most " + kindForMimetype.typeOverallMax + " entries. Ignoring: " + next);
                            }
                            if (z) {
                                z = adjustType(fromAfter, mimeEntries, kindForMimetype);
                            }
                            if (z) {
                                rawContactDelta.addEntry(fromAfter);
                            }
                        } else {
                            if (mimeEntries != null && mimeEntries.size() > 0) {
                                Iterator<ValuesDelta> it3 = mimeEntries.iterator();
                                while (true) {
                                    if (!it3.hasNext()) {
                                        z = true;
                                        break;
                                    }
                                    ValuesDelta next3 = it3.next();
                                    if (!next3.isDelete() && !isEmpty(next3, kindForMimetype)) {
                                        break;
                                    }
                                }
                                if (z) {
                                    Iterator<ValuesDelta> it4 = mimeEntries.iterator();
                                    while (it4.hasNext()) {
                                        it4.next().markDeleted();
                                    }
                                }
                                z2 = z;
                            }
                            if (z2) {
                                z2 = adjustType(fromAfter, mimeEntries, kindForMimetype);
                            }
                            if (z2) {
                                rawContactDelta.addEntry(fromAfter);
                            } else if ("vnd.android.cursor.item/note".equals(asString)) {
                                Iterator<ValuesDelta> it5 = mimeEntries.iterator();
                                while (true) {
                                    if (it5.hasNext()) {
                                        ValuesDelta next4 = it5.next();
                                        if (!isEmpty(next4, kindForMimetype)) {
                                            next4.put("data1", next4.getAsString("data1") + "\n" + next.getAsString("data1"));
                                            break;
                                        }
                                    }
                                }
                            } else {
                                Log.e(TAG, "Will not override mimetype " + asString + ". Ignoring: " + next);
                            }
                        }
                    }
                }
            }
        }
    }

    private static boolean adjustType(ValuesDelta valuesDelta, ArrayList<ValuesDelta> arrayList, DataKind dataKind) {
        List<AccountType.EditType> list;
        if (dataKind.typeColumn == null || (list = dataKind.typeList) == null || list.size() == 0) {
            return true;
        }
        Integer asInteger = valuesDelta.getAsInteger(dataKind.typeColumn);
        int intValue = asInteger != null ? asInteger.intValue() : dataKind.typeList.get(0).rawValue;
        if (isTypeAllowed(intValue, arrayList, dataKind)) {
            valuesDelta.put(dataKind.typeColumn, intValue);
            return true;
        }
        int size = dataKind.typeList.size();
        for (int i = 0; i < size; i++) {
            AccountType.EditType editType = dataKind.typeList.get(i);
            if (isTypeAllowed(editType.rawValue, arrayList, dataKind)) {
                valuesDelta.put(dataKind.typeColumn, editType.rawValue);
                return true;
            }
        }
        return false;
    }

    private static boolean isTypeAllowed(int i, ArrayList<ValuesDelta> arrayList, DataKind dataKind) {
        int i2;
        int size = dataKind.typeList.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                i2 = 0;
                break;
            }
            AccountType.EditType editType = dataKind.typeList.get(i3);
            if (editType.rawValue == i) {
                i2 = editType.specificMax;
                break;
            }
            i3++;
        }
        if (i2 == 0) {
            return false;
        }
        return i2 == -1 || getEntryCountByType(arrayList, dataKind.typeColumn, i) < i2;
    }

    private static int getEntryCountByType(ArrayList<ValuesDelta> arrayList, String str, int i) {
        int i2 = 0;
        if (arrayList != null) {
            Iterator<ValuesDelta> it = arrayList.iterator();
            while (it.hasNext()) {
                Integer asInteger = it.next().getAsInteger(str);
                if (asInteger != null && asInteger.intValue() == i) {
                    i2++;
                }
            }
        }
        return i2;
    }

    private static void fixupLegacyImType(Bundle bundle) {
        String string = bundle.getString("im_protocol");
        if (string == null) {
            return;
        }
        try {
            Object decodeImProtocol = Contacts.ContactMethods.decodeImProtocol(string);
            if (decodeImProtocol instanceof Integer) {
                bundle.putInt("im_protocol", ((Integer) decodeImProtocol).intValue());
            } else {
                bundle.putString("im_protocol", (String) decodeImProtocol);
            }
        } catch (IllegalArgumentException unused) {
        }
    }

    public static ValuesDelta parseExtras(RawContactDelta rawContactDelta, DataKind dataKind, Bundle bundle, String str, String str2, String str3) {
        CharSequence charSequence = bundle.getCharSequence(str2);
        if (dataKind == null) {
            return null;
        }
        boolean canInsert = canInsert(rawContactDelta, dataKind);
        if (!(charSequence != null && TextUtils.isGraphic(charSequence)) || !canInsert) {
            return null;
        }
        AccountType.EditType bestValidType = getBestValidType(rawContactDelta, dataKind, true, bundle.getInt(str, bundle.containsKey(str) ? 0 : FREQUENCY_TOTAL));
        ValuesDelta insertChild = insertChild(rawContactDelta, dataKind, bestValidType);
        insertChild.put(str3, charSequence.toString());
        if (bestValidType != null && bestValidType.customColumn != null) {
            insertChild.put(bestValidType.customColumn, bundle.getString(str));
        }
        return insertChild;
    }

    public static void migrateStateForNewContact(Context context, RawContactDelta rawContactDelta, RawContactDelta rawContactDelta2, AccountType accountType, AccountType accountType2) {
        if (accountType2 == accountType) {
            Iterator<DataKind> it = accountType2.getSortedDataKinds().iterator();
            while (it.hasNext()) {
                DataKind next = it.next();
                String str = next.mimeType;
                if ("vnd.android.cursor.item/name".equals(str)) {
                    migrateStructuredName(context, rawContactDelta, rawContactDelta2, next);
                } else {
                    ArrayList<ValuesDelta> mimeEntries = rawContactDelta.getMimeEntries(str);
                    if (mimeEntries != null && !mimeEntries.isEmpty()) {
                        Iterator<ValuesDelta> it2 = mimeEntries.iterator();
                        while (it2.hasNext()) {
                            ContentValues after = it2.next().getAfter();
                            if (after != null) {
                                rawContactDelta2.addEntry(ValuesDelta.fromAfter(after));
                            }
                        }
                    }
                }
            }
            return;
        }
        Iterator<DataKind> it3 = accountType2.getSortedDataKinds().iterator();
        while (it3.hasNext()) {
            DataKind next2 = it3.next();
            if (next2.editable) {
                String str2 = next2.mimeType;
                if (!DataKind.PSEUDO_MIME_TYPE_PHONETIC_NAME.equals(str2) && !DataKind.PSEUDO_MIME_TYPE_NAME.equals(str2)) {
                    if ("vnd.android.cursor.item/name".equals(str2)) {
                        migrateStructuredName(context, rawContactDelta, rawContactDelta2, next2);
                    } else if ("vnd.android.cursor.item/postal-address_v2".equals(str2)) {
                        migratePostal(rawContactDelta, rawContactDelta2, next2);
                    } else if ("vnd.android.cursor.item/contact_event".equals(str2)) {
                        migrateEvent(rawContactDelta, rawContactDelta2, next2, null);
                    } else if (sGenericMimeTypesWithoutTypeSupport.contains(str2)) {
                        migrateGenericWithoutTypeColumn(rawContactDelta, rawContactDelta2, next2);
                    } else if (sGenericMimeTypesWithTypeSupport.contains(str2)) {
                        migrateGenericWithTypeColumn(rawContactDelta, rawContactDelta2, next2);
                    } else {
                        throw new IllegalStateException("Unexpected editable mime-type: " + str2);
                    }
                }
            }
        }
    }

    private static ArrayList<ValuesDelta> ensureEntryMaxSize(RawContactDelta rawContactDelta, DataKind dataKind, ArrayList<ValuesDelta> arrayList) {
        if (arrayList == null) {
            return null;
        }
        int i = dataKind.typeOverallMax;
        if (i < 0 || arrayList.size() <= i) {
            return arrayList;
        }
        ArrayList<ValuesDelta> arrayList2 = new ArrayList<>(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList2.add(arrayList.get(i2));
        }
        return arrayList2;
    }

    public static void migrateStructuredName(Context context, RawContactDelta rawContactDelta, RawContactDelta rawContactDelta2, DataKind dataKind) {
        ContentValues after = rawContactDelta.getPrimaryEntry("vnd.android.cursor.item/name").getAfter();
        if (after == null) {
            return;
        }
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        for (AccountType.EditField editField : dataKind.fieldList) {
            if ("data9".equals(editField.column)) {
                z = true;
            }
            if ("data8".equals(editField.column)) {
                z2 = true;
            }
            if ("data7".equals(editField.column)) {
                z3 = true;
            }
        }
        if (!z) {
            after.remove("data9");
        }
        if (!z2) {
            after.remove("data8");
        }
        if (!z3) {
            after.remove("data7");
        }
        rawContactDelta2.addEntry(ValuesDelta.fromAfter(after));
    }

    public static void migratePostal(RawContactDelta rawContactDelta, RawContactDelta rawContactDelta2, DataKind dataKind) {
        String[] strArr;
        Iterator<ValuesDelta> it;
        String str;
        HashSet hashSet;
        boolean z;
        boolean z2;
        int i;
        DataKind dataKind2 = dataKind;
        ArrayList<ValuesDelta> ensureEntryMaxSize = ensureEntryMaxSize(rawContactDelta2, dataKind2, rawContactDelta.getMimeEntries("vnd.android.cursor.item/postal-address_v2"));
        if (ensureEntryMaxSize == null || ensureEntryMaxSize.isEmpty()) {
            return;
        }
        int i2 = 0;
        String str2 = dataKind2.fieldList.get(0).column;
        boolean z3 = false;
        boolean z4 = false;
        for (AccountType.EditField editField : dataKind2.fieldList) {
            if ("data1".equals(editField.column)) {
                z3 = true;
            }
            if ("data4".equals(editField.column)) {
                z4 = true;
            }
        }
        HashSet hashSet2 = new HashSet();
        List<AccountType.EditType> list = dataKind2.typeList;
        if (list != null && !list.isEmpty()) {
            Iterator<AccountType.EditType> it2 = dataKind2.typeList.iterator();
            while (it2.hasNext()) {
                hashSet2.add(Integer.valueOf(it2.next().rawValue));
            }
        }
        Iterator<ValuesDelta> it3 = ensureEntryMaxSize.iterator();
        while (it3.hasNext()) {
            ContentValues after = it3.next().getAfter();
            if (after != null) {
                Integer asInteger = after.getAsInteger(COLUMN_FOR_TYPE);
                if (!hashSet2.contains(asInteger)) {
                    ContentValues contentValues = dataKind2.defaultValues;
                    if (contentValues != null) {
                        i = contentValues.getAsInteger(COLUMN_FOR_TYPE).intValue();
                    } else {
                        i = dataKind2.typeList.get(i2).rawValue;
                    }
                    after.put(COLUMN_FOR_TYPE, Integer.valueOf(i));
                    if (asInteger != null && asInteger.intValue() == 0) {
                        after.remove(COLUMN_FOR_LABEL);
                    }
                }
                String asString = after.getAsString("data1");
                if (TextUtils.isEmpty(asString)) {
                    if (z3) {
                        if (Locale.JAPANESE.getLanguage().equals(Locale.getDefault().getLanguage())) {
                            strArr = new String[]{after.getAsString("data10"), after.getAsString("data9"), after.getAsString("data8"), after.getAsString("data7"), after.getAsString("data6"), after.getAsString("data4"), after.getAsString("data5")};
                            it = it3;
                        } else {
                            strArr = new String[]{after.getAsString("data5"), after.getAsString("data4"), after.getAsString("data6"), after.getAsString("data7"), after.getAsString("data8"), after.getAsString("data9"), after.getAsString("data10")};
                            it = it3;
                        }
                        StringBuilder sb = new StringBuilder();
                        str = str2;
                        int length = strArr.length;
                        hashSet = hashSet2;
                        int i3 = 0;
                        while (i3 < length) {
                            int i4 = length;
                            String str3 = strArr[i3];
                            if (TextUtils.isEmpty(str3)) {
                                z2 = z3;
                            } else {
                                z2 = z3;
                                sb.append(str3 + "\n");
                            }
                            i3++;
                            length = i4;
                            z3 = z2;
                        }
                        z = z3;
                        after.put("data1", sb.toString());
                        after.remove("data5");
                        after.remove("data4");
                        after.remove("data6");
                        after.remove("data7");
                        after.remove("data8");
                        after.remove("data9");
                        after.remove("data10");
                        rawContactDelta2.addEntry(ValuesDelta.fromAfter(after));
                        it3 = it;
                        dataKind2 = dataKind;
                        str2 = str;
                        hashSet2 = hashSet;
                        z3 = z;
                        i2 = 0;
                    }
                } else if (!z3) {
                    after.remove("data1");
                    if (z4) {
                        after.put("data4", asString);
                    } else {
                        after.put(str2, asString);
                    }
                }
                it = it3;
                str = str2;
                hashSet = hashSet2;
                z = z3;
                rawContactDelta2.addEntry(ValuesDelta.fromAfter(after));
                it3 = it;
                dataKind2 = dataKind;
                str2 = str;
                hashSet2 = hashSet;
                z3 = z;
                i2 = 0;
            }
        }
    }

    public static void migrateEvent(RawContactDelta rawContactDelta, RawContactDelta rawContactDelta2, DataKind dataKind, Integer num) {
        ArrayList<ValuesDelta> ensureEntryMaxSize = ensureEntryMaxSize(rawContactDelta2, dataKind, rawContactDelta.getMimeEntries("vnd.android.cursor.item/contact_event"));
        if (ensureEntryMaxSize == null || ensureEntryMaxSize.isEmpty()) {
            return;
        }
        SparseArray sparseArray = new SparseArray();
        for (AccountType.EditType editType : dataKind.typeList) {
            sparseArray.put(editType.rawValue, (AccountType.EventEditType) editType);
        }
        Iterator<ValuesDelta> it = ensureEntryMaxSize.iterator();
        Integer num2 = num;
        while (it.hasNext()) {
            ContentValues after = it.next().getAfter();
            if (after != null) {
                String asString = after.getAsString("data1");
                Integer asInteger = after.getAsInteger(COLUMN_FOR_TYPE);
                if (asInteger != null && sparseArray.indexOfKey(asInteger.intValue()) >= 0 && !TextUtils.isEmpty(asString)) {
                    AccountType.EventEditType eventEditType = (AccountType.EventEditType) sparseArray.get(asInteger.intValue());
                    boolean z = false;
                    ParsePosition parsePosition = new ParsePosition(0);
                    Date parse = CommonDateUtils.DATE_AND_TIME_FORMAT.parse(asString, parsePosition);
                    if (parse == null) {
                        parse = CommonDateUtils.NO_YEAR_DATE_FORMAT.parse(asString, parsePosition);
                        z = true;
                    }
                    if (parse != null && z && !eventEditType.isYearOptional()) {
                        Calendar calendar = Calendar.getInstance(DateUtils.UTC_TIMEZONE, Locale.US);
                        if (num2 == null) {
                            num2 = Integer.valueOf(calendar.get(1));
                        }
                        calendar.setTime(parse);
                        calendar.set(num2.intValue(), calendar.get(2), calendar.get(5), 8, 0, 0);
                        after.put("data1", CommonDateUtils.FULL_DATE_FORMAT.format(calendar.getTime()));
                    }
                    rawContactDelta2.addEntry(ValuesDelta.fromAfter(after));
                }
            }
        }
    }

    public static void migrateGenericWithoutTypeColumn(RawContactDelta rawContactDelta, RawContactDelta rawContactDelta2, DataKind dataKind) {
        ArrayList<ValuesDelta> ensureEntryMaxSize = ensureEntryMaxSize(rawContactDelta2, dataKind, rawContactDelta.getMimeEntries(dataKind.mimeType));
        if (ensureEntryMaxSize == null || ensureEntryMaxSize.isEmpty()) {
            return;
        }
        Iterator<ValuesDelta> it = ensureEntryMaxSize.iterator();
        while (it.hasNext()) {
            ContentValues after = it.next().getAfter();
            if (after != null) {
                rawContactDelta2.addEntry(ValuesDelta.fromAfter(after));
            }
        }
    }

    public static void migrateGenericWithTypeColumn(RawContactDelta rawContactDelta, RawContactDelta rawContactDelta2, DataKind dataKind) {
        int i;
        List<AccountType.EditType> list;
        ArrayList<ValuesDelta> mimeEntries = rawContactDelta.getMimeEntries(dataKind.mimeType);
        if (mimeEntries == null || mimeEntries.isEmpty()) {
            return;
        }
        ContentValues contentValues = dataKind.defaultValues;
        Integer asInteger = contentValues != null ? contentValues.getAsInteger(COLUMN_FOR_TYPE) : null;
        HashSet hashSet = new HashSet();
        SparseIntArray sparseIntArray = new SparseIntArray();
        if (asInteger != null) {
            hashSet.add(asInteger);
            sparseIntArray.put(asInteger.intValue(), -1);
        }
        if (!"vnd.android.cursor.item/im".equals(dataKind.mimeType) && (list = dataKind.typeList) != null && !list.isEmpty()) {
            for (AccountType.EditType editType : dataKind.typeList) {
                hashSet.add(Integer.valueOf(editType.rawValue));
                sparseIntArray.put(editType.rawValue, editType.specificMax);
            }
            if (asInteger == null) {
                asInteger = Integer.valueOf(dataKind.typeList.get(0).rawValue);
            }
        }
        if (asInteger == null) {
            Log.w(TAG, "Default type isn't available for mimetype " + dataKind.mimeType);
        }
        int i2 = dataKind.typeOverallMax;
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        Iterator<ValuesDelta> it = mimeEntries.iterator();
        int i3 = 0;
        while (it.hasNext()) {
            ValuesDelta next = it.next();
            if (i2 != -1 && i3 >= i2) {
                return;
            }
            ContentValues after = next.getAfter();
            if (after != null) {
                Integer asInteger2 = next.getAsInteger(COLUMN_FOR_TYPE);
                if (!hashSet.contains(asInteger2)) {
                    if (asInteger != null) {
                        Integer valueOf = Integer.valueOf(asInteger.intValue());
                        after.put(COLUMN_FOR_TYPE, Integer.valueOf(asInteger.intValue()));
                        if (asInteger2 != null && asInteger2.intValue() == 0) {
                            after.remove(COLUMN_FOR_LABEL);
                        }
                        asInteger2 = valueOf;
                    } else {
                        after.remove(COLUMN_FOR_TYPE);
                        asInteger2 = null;
                    }
                }
                if (asInteger2 != null && (i = sparseIntArray.get(asInteger2.intValue(), 0)) >= 0) {
                    int i4 = sparseIntArray2.get(asInteger2.intValue(), 0);
                    if (i4 < i) {
                        sparseIntArray2.put(asInteger2.intValue(), i4 + 1);
                    }
                }
                rawContactDelta2.addEntry(ValuesDelta.fromAfter(after));
                i3++;
            }
        }
    }
}
