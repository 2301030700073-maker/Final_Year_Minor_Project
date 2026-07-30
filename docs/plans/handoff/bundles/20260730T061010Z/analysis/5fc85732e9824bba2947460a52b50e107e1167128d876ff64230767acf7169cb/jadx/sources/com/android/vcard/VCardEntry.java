package com.android.vcard;

import android.accounts.Account;
import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.provider.ContactsContract;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.android.contacts.ContactSaveService;
import com.android.vcard.VCardUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class VCardEntry {
    private static final List<String> sEmptyList;
    private static final Map<String, Integer> sImMap;
    private final Account mAccount;
    private List<AndroidCustomData> mAndroidCustomDataList;
    private AnniversaryData mAnniversary;
    private BirthdayData mBirthday;
    private List<VCardEntry> mChildren;
    private List<EmailData> mEmailList;
    private List<ImData> mImList;
    private final NameData mNameData;
    private List<NicknameData> mNicknameList;
    private List<NoteData> mNoteList;
    private List<OrganizationData> mOrganizationList;
    private List<PhoneData> mPhoneList;
    private List<PhotoData> mPhotoList;
    private List<PostalData> mPostalList;
    private List<SipData> mSipList;
    private boolean mStarred;
    private List<Pair<String, String>> mUnknownXData;
    private final int mVCardType;
    private List<WebsiteData> mWebsiteList;

    public interface EntryElement {
        void constructInsertOperation(List<ContentProviderOperation> list, int i);

        EntryLabel getEntryLabel();

        boolean isEmpty();
    }

    public interface EntryElementIterator {
        boolean onElement(EntryElement entryElement);

        void onElementGroupEnded();

        void onElementGroupStarted(EntryLabel entryLabel);

        void onIterationEnded();

        void onIterationStarted();
    }

    public enum EntryLabel {
        NAME,
        PHONE,
        EMAIL,
        POSTAL_ADDRESS,
        ORGANIZATION,
        IM,
        PHOTO,
        WEBSITE,
        SIP,
        NICKNAME,
        NOTE,
        BIRTHDAY,
        ANNIVERSARY,
        ANDROID_CUSTOM
    }

    static {
        HashMap hashMap = new HashMap();
        sImMap = hashMap;
        hashMap.put("X-AIM", 0);
        sImMap.put("X-MSN", 1);
        sImMap.put("X-YAHOO", 2);
        sImMap.put("X-ICQ", 6);
        sImMap.put("X-JABBER", 7);
        sImMap.put("X-SKYPE-USERNAME", 3);
        sImMap.put("X-GOOGLE-TALK", 5);
        sImMap.put("X-GOOGLE TALK", 5);
        sEmptyList = Collections.unmodifiableList(new ArrayList(0));
    }

    public boolean getStarred() {
        return this.mStarred;
    }

    public static class NameData implements EntryElement {
        public String displayName;
        private String mFamily;
        private String mFormatted;
        private String mGiven;
        private String mMiddle;
        private String mPhoneticFamily;
        private String mPhoneticGiven;
        private String mPhoneticMiddle;
        private String mPrefix;
        private String mSortString;
        private String mSuffix;

        public boolean emptyStructuredName() {
            return TextUtils.isEmpty(this.mFamily) && TextUtils.isEmpty(this.mGiven) && TextUtils.isEmpty(this.mMiddle) && TextUtils.isEmpty(this.mPrefix) && TextUtils.isEmpty(this.mSuffix);
        }

        public boolean emptyPhoneticStructuredName() {
            return TextUtils.isEmpty(this.mPhoneticFamily) && TextUtils.isEmpty(this.mPhoneticGiven) && TextUtils.isEmpty(this.mPhoneticMiddle);
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public void constructInsertOperation(List<ContentProviderOperation> list, int i) {
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert.withValueBackReference("raw_contact_id", i);
            newInsert.withValue("mimetype", "vnd.android.cursor.item/name");
            if (!TextUtils.isEmpty(this.mGiven)) {
                newInsert.withValue("data2", this.mGiven);
            }
            if (!TextUtils.isEmpty(this.mFamily)) {
                newInsert.withValue("data3", this.mFamily);
            }
            if (!TextUtils.isEmpty(this.mMiddle)) {
                newInsert.withValue("data5", this.mMiddle);
            }
            if (!TextUtils.isEmpty(this.mPrefix)) {
                newInsert.withValue("data4", this.mPrefix);
            }
            if (!TextUtils.isEmpty(this.mSuffix)) {
                newInsert.withValue("data6", this.mSuffix);
            }
            boolean z = false;
            boolean z2 = true;
            if (!TextUtils.isEmpty(this.mPhoneticGiven)) {
                newInsert.withValue("data7", this.mPhoneticGiven);
                z = true;
            }
            if (!TextUtils.isEmpty(this.mPhoneticFamily)) {
                newInsert.withValue("data9", this.mPhoneticFamily);
                z = true;
            }
            if (TextUtils.isEmpty(this.mPhoneticMiddle)) {
                z2 = z;
            } else {
                newInsert.withValue("data8", this.mPhoneticMiddle);
            }
            if (!z2) {
                newInsert.withValue("data7", this.mSortString);
            }
            newInsert.withValue("data1", this.displayName);
            list.add(newInsert.build());
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public boolean isEmpty() {
            return TextUtils.isEmpty(this.mFamily) && TextUtils.isEmpty(this.mMiddle) && TextUtils.isEmpty(this.mGiven) && TextUtils.isEmpty(this.mPrefix) && TextUtils.isEmpty(this.mSuffix) && TextUtils.isEmpty(this.mFormatted) && TextUtils.isEmpty(this.mPhoneticFamily) && TextUtils.isEmpty(this.mPhoneticMiddle) && TextUtils.isEmpty(this.mPhoneticGiven) && TextUtils.isEmpty(this.mSortString);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof NameData)) {
                return false;
            }
            NameData nameData = (NameData) obj;
            return TextUtils.equals(this.mFamily, nameData.mFamily) && TextUtils.equals(this.mMiddle, nameData.mMiddle) && TextUtils.equals(this.mGiven, nameData.mGiven) && TextUtils.equals(this.mPrefix, nameData.mPrefix) && TextUtils.equals(this.mSuffix, nameData.mSuffix) && TextUtils.equals(this.mFormatted, nameData.mFormatted) && TextUtils.equals(this.mPhoneticFamily, nameData.mPhoneticFamily) && TextUtils.equals(this.mPhoneticMiddle, nameData.mPhoneticMiddle) && TextUtils.equals(this.mPhoneticGiven, nameData.mPhoneticGiven) && TextUtils.equals(this.mSortString, nameData.mSortString);
        }

        public int hashCode() {
            String[] strArr = {this.mFamily, this.mMiddle, this.mGiven, this.mPrefix, this.mSuffix, this.mFormatted, this.mPhoneticFamily, this.mPhoneticMiddle, this.mPhoneticGiven, this.mSortString};
            int i = 0;
            for (int i2 = 0; i2 < 10; i2++) {
                String str = strArr[i2];
                i = (i * 31) + (str != null ? str.hashCode() : 0);
            }
            return i;
        }

        public String toString() {
            return String.format("family: %s, given: %s, middle: %s, prefix: %s, suffix: %s", this.mFamily, this.mGiven, this.mMiddle, this.mPrefix, this.mSuffix);
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public final EntryLabel getEntryLabel() {
            return EntryLabel.NAME;
        }
    }

    public static class PhoneData implements EntryElement {
        private boolean mIsPrimary;
        private final String mLabel;
        private final String mNumber;
        private final int mType;

        public PhoneData(String str, int i, String str2, boolean z) {
            this.mNumber = str;
            this.mType = i;
            this.mLabel = str2;
            this.mIsPrimary = z;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public void constructInsertOperation(List<ContentProviderOperation> list, int i) {
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert.withValueBackReference("raw_contact_id", i);
            newInsert.withValue("mimetype", "vnd.android.cursor.item/phone_v2");
            newInsert.withValue("data2", Integer.valueOf(this.mType));
            if (this.mType == 0) {
                newInsert.withValue("data3", this.mLabel);
            }
            newInsert.withValue("data1", this.mNumber);
            if (this.mIsPrimary) {
                newInsert.withValue("is_primary", 1);
            }
            list.add(newInsert.build());
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public boolean isEmpty() {
            return TextUtils.isEmpty(this.mNumber);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PhoneData)) {
                return false;
            }
            PhoneData phoneData = (PhoneData) obj;
            return this.mType == phoneData.mType && TextUtils.equals(this.mNumber, phoneData.mNumber) && TextUtils.equals(this.mLabel, phoneData.mLabel) && this.mIsPrimary == phoneData.mIsPrimary;
        }

        public int hashCode() {
            int i = this.mType * 31;
            String str = this.mNumber;
            int hashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.mLabel;
            return ((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + (this.mIsPrimary ? 1231 : 1237);
        }

        public String toString() {
            return String.format("type: %d, data: %s, label: %s, isPrimary: %s", Integer.valueOf(this.mType), this.mNumber, this.mLabel, Boolean.valueOf(this.mIsPrimary));
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public final EntryLabel getEntryLabel() {
            return EntryLabel.PHONE;
        }
    }

    public static class EmailData implements EntryElement {
        private final String mAddress;
        private final boolean mIsPrimary;
        private final String mLabel;
        private final int mType;

        public EmailData(String str, int i, String str2, boolean z) {
            this.mType = i;
            this.mAddress = str;
            this.mLabel = str2;
            this.mIsPrimary = z;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public void constructInsertOperation(List<ContentProviderOperation> list, int i) {
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert.withValueBackReference("raw_contact_id", i);
            newInsert.withValue("mimetype", "vnd.android.cursor.item/email_v2");
            newInsert.withValue("data2", Integer.valueOf(this.mType));
            if (this.mType == 0) {
                newInsert.withValue("data3", this.mLabel);
            }
            newInsert.withValue("data1", this.mAddress);
            if (this.mIsPrimary) {
                newInsert.withValue("is_primary", 1);
            }
            list.add(newInsert.build());
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public boolean isEmpty() {
            return TextUtils.isEmpty(this.mAddress);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof EmailData)) {
                return false;
            }
            EmailData emailData = (EmailData) obj;
            return this.mType == emailData.mType && TextUtils.equals(this.mAddress, emailData.mAddress) && TextUtils.equals(this.mLabel, emailData.mLabel) && this.mIsPrimary == emailData.mIsPrimary;
        }

        public int hashCode() {
            int i = this.mType * 31;
            String str = this.mAddress;
            int hashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.mLabel;
            return ((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + (this.mIsPrimary ? 1231 : 1237);
        }

        public String toString() {
            return String.format("type: %d, data: %s, label: %s, isPrimary: %s", Integer.valueOf(this.mType), this.mAddress, this.mLabel, Boolean.valueOf(this.mIsPrimary));
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public final EntryLabel getEntryLabel() {
            return EntryLabel.EMAIL;
        }
    }

    public static class PostalData implements EntryElement {
        private final String mCountry;
        private final String mExtendedAddress;
        private boolean mIsPrimary;
        private final String mLabel;
        private final String mLocalty;
        private final String mPobox;
        private final String mPostalCode;
        private final String mRegion;
        private final String mStreet;
        private final int mType;
        private int mVCardType;

        public PostalData(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, String str8, boolean z, int i2) {
            this.mType = i;
            this.mPobox = str;
            this.mExtendedAddress = str2;
            this.mStreet = str3;
            this.mLocalty = str4;
            this.mRegion = str5;
            this.mPostalCode = str6;
            this.mCountry = str7;
            this.mLabel = str8;
            this.mIsPrimary = z;
            this.mVCardType = i2;
        }

        public static PostalData constructPostalData(List<String> list, int i, String str, boolean z, int i2) {
            String[] strArr = new String[7];
            int size = list.size();
            if (size > 7) {
                size = 7;
            }
            Iterator<String> it = list.iterator();
            int i3 = 0;
            while (it.hasNext()) {
                strArr[i3] = it.next();
                i3++;
                if (i3 >= size) {
                    break;
                }
            }
            while (i3 < 7) {
                strArr[i3] = null;
                i3++;
            }
            return new PostalData(strArr[0], strArr[1], strArr[2], strArr[3], strArr[4], strArr[5], strArr[6], i, str, z, i2);
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public void constructInsertOperation(List<ContentProviderOperation> list, int i) {
            String str;
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert.withValueBackReference("raw_contact_id", i);
            newInsert.withValue("mimetype", "vnd.android.cursor.item/postal-address_v2");
            newInsert.withValue("data2", Integer.valueOf(this.mType));
            if (this.mType == 0) {
                newInsert.withValue("data3", this.mLabel);
            }
            if (TextUtils.isEmpty(this.mStreet)) {
                str = TextUtils.isEmpty(this.mExtendedAddress) ? null : this.mExtendedAddress;
            } else if (TextUtils.isEmpty(this.mExtendedAddress)) {
                str = this.mStreet;
            } else {
                str = this.mStreet + " " + this.mExtendedAddress;
            }
            newInsert.withValue("data5", this.mPobox);
            newInsert.withValue("data4", str);
            newInsert.withValue("data7", this.mLocalty);
            newInsert.withValue("data8", this.mRegion);
            newInsert.withValue("data9", this.mPostalCode);
            newInsert.withValue("data10", this.mCountry);
            newInsert.withValue("data1", getFormattedAddress(this.mVCardType));
            if (this.mIsPrimary) {
                newInsert.withValue("is_primary", 1);
            }
            list.add(newInsert.build());
        }

        public String getFormattedAddress(int i) {
            StringBuilder sb = new StringBuilder();
            boolean z = true;
            String[] strArr = {this.mPobox, this.mExtendedAddress, this.mStreet, this.mLocalty, this.mRegion, this.mPostalCode, this.mCountry};
            if (VCardConfig.isJapaneseDevice(i)) {
                for (int i2 = 6; i2 >= 0; i2--) {
                    String str = strArr[i2];
                    if (!TextUtils.isEmpty(str)) {
                        if (z) {
                            z = false;
                        } else {
                            sb.append(' ');
                        }
                        sb.append(str);
                    }
                }
            } else {
                for (int i3 = 0; i3 < 7; i3++) {
                    String str2 = strArr[i3];
                    if (!TextUtils.isEmpty(str2)) {
                        if (z) {
                            z = false;
                        } else {
                            sb.append(' ');
                        }
                        sb.append(str2);
                    }
                }
            }
            return sb.toString().trim();
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public boolean isEmpty() {
            return TextUtils.isEmpty(this.mPobox) && TextUtils.isEmpty(this.mExtendedAddress) && TextUtils.isEmpty(this.mStreet) && TextUtils.isEmpty(this.mLocalty) && TextUtils.isEmpty(this.mRegion) && TextUtils.isEmpty(this.mPostalCode) && TextUtils.isEmpty(this.mCountry);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PostalData)) {
                return false;
            }
            PostalData postalData = (PostalData) obj;
            int i = this.mType;
            return i == postalData.mType && (i != 0 || TextUtils.equals(this.mLabel, postalData.mLabel)) && this.mIsPrimary == postalData.mIsPrimary && TextUtils.equals(this.mPobox, postalData.mPobox) && TextUtils.equals(this.mExtendedAddress, postalData.mExtendedAddress) && TextUtils.equals(this.mStreet, postalData.mStreet) && TextUtils.equals(this.mLocalty, postalData.mLocalty) && TextUtils.equals(this.mRegion, postalData.mRegion) && TextUtils.equals(this.mPostalCode, postalData.mPostalCode) && TextUtils.equals(this.mCountry, postalData.mCountry);
        }

        public int hashCode() {
            int i = this.mType * 31;
            String str = this.mLabel;
            int hashCode = ((i + (str != null ? str.hashCode() : 0)) * 31) + (this.mIsPrimary ? 1231 : 1237);
            String[] strArr = {this.mPobox, this.mExtendedAddress, this.mStreet, this.mLocalty, this.mRegion, this.mPostalCode, this.mCountry};
            for (int i2 = 0; i2 < 7; i2++) {
                String str2 = strArr[i2];
                hashCode = (hashCode * 31) + (str2 != null ? str2.hashCode() : 0);
            }
            return hashCode;
        }

        public String toString() {
            return String.format("type: %d, label: %s, isPrimary: %s, pobox: %s, extendedAddress: %s, street: %s, localty: %s, region: %s, postalCode %s, country: %s", Integer.valueOf(this.mType), this.mLabel, Boolean.valueOf(this.mIsPrimary), this.mPobox, this.mExtendedAddress, this.mStreet, this.mLocalty, this.mRegion, this.mPostalCode, this.mCountry);
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public final EntryLabel getEntryLabel() {
            return EntryLabel.POSTAL_ADDRESS;
        }
    }

    public static class OrganizationData implements EntryElement {
        private String mDepartmentName;
        private boolean mIsPrimary;
        private String mOrganizationName;
        private final String mPhoneticName;
        private String mTitle;
        private final int mType;

        public OrganizationData(String str, String str2, String str3, String str4, int i, boolean z) {
            this.mType = i;
            this.mOrganizationName = str;
            this.mDepartmentName = str2;
            this.mTitle = str3;
            this.mPhoneticName = str4;
            this.mIsPrimary = z;
        }

        public String getFormattedString() {
            StringBuilder sb = new StringBuilder();
            if (!TextUtils.isEmpty(this.mOrganizationName)) {
                sb.append(this.mOrganizationName);
            }
            if (!TextUtils.isEmpty(this.mDepartmentName)) {
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                sb.append(this.mDepartmentName);
            }
            if (!TextUtils.isEmpty(this.mTitle)) {
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                sb.append(this.mTitle);
            }
            return sb.toString();
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public void constructInsertOperation(List<ContentProviderOperation> list, int i) {
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert.withValueBackReference("raw_contact_id", i);
            newInsert.withValue("mimetype", "vnd.android.cursor.item/organization");
            newInsert.withValue("data2", Integer.valueOf(this.mType));
            String str = this.mOrganizationName;
            if (str != null) {
                newInsert.withValue("data1", str);
            }
            String str2 = this.mDepartmentName;
            if (str2 != null) {
                newInsert.withValue("data5", str2);
            }
            String str3 = this.mTitle;
            if (str3 != null) {
                newInsert.withValue("data4", str3);
            }
            String str4 = this.mPhoneticName;
            if (str4 != null) {
                newInsert.withValue("data8", str4);
            }
            if (this.mIsPrimary) {
                newInsert.withValue("is_primary", 1);
            }
            list.add(newInsert.build());
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public boolean isEmpty() {
            return TextUtils.isEmpty(this.mOrganizationName) && TextUtils.isEmpty(this.mDepartmentName) && TextUtils.isEmpty(this.mTitle) && TextUtils.isEmpty(this.mPhoneticName);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OrganizationData)) {
                return false;
            }
            OrganizationData organizationData = (OrganizationData) obj;
            return this.mType == organizationData.mType && TextUtils.equals(this.mOrganizationName, organizationData.mOrganizationName) && TextUtils.equals(this.mDepartmentName, organizationData.mDepartmentName) && TextUtils.equals(this.mTitle, organizationData.mTitle) && this.mIsPrimary == organizationData.mIsPrimary;
        }

        public int hashCode() {
            int i = this.mType * 31;
            String str = this.mOrganizationName;
            int hashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.mDepartmentName;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.mTitle;
            return ((hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + (this.mIsPrimary ? 1231 : 1237);
        }

        public String toString() {
            return String.format("type: %d, organization: %s, department: %s, title: %s, isPrimary: %s", Integer.valueOf(this.mType), this.mOrganizationName, this.mDepartmentName, this.mTitle, Boolean.valueOf(this.mIsPrimary));
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public final EntryLabel getEntryLabel() {
            return EntryLabel.ORGANIZATION;
        }
    }

    public static class ImData implements EntryElement {
        private final String mAddress;
        private final String mCustomProtocol;
        private final boolean mIsPrimary;
        private final int mProtocol;
        private final int mType;

        public ImData(int i, String str, String str2, int i2, boolean z) {
            this.mProtocol = i;
            this.mCustomProtocol = str;
            this.mType = i2;
            this.mAddress = str2;
            this.mIsPrimary = z;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public void constructInsertOperation(List<ContentProviderOperation> list, int i) {
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert.withValueBackReference("raw_contact_id", i);
            newInsert.withValue("mimetype", "vnd.android.cursor.item/im");
            newInsert.withValue("data2", Integer.valueOf(this.mType));
            newInsert.withValue("data5", Integer.valueOf(this.mProtocol));
            newInsert.withValue("data1", this.mAddress);
            if (this.mProtocol == -1) {
                newInsert.withValue("data6", this.mCustomProtocol);
            }
            if (this.mIsPrimary) {
                newInsert.withValue("is_primary", 1);
            }
            list.add(newInsert.build());
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public boolean isEmpty() {
            return TextUtils.isEmpty(this.mAddress);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ImData)) {
                return false;
            }
            ImData imData = (ImData) obj;
            return this.mType == imData.mType && this.mProtocol == imData.mProtocol && TextUtils.equals(this.mCustomProtocol, imData.mCustomProtocol) && TextUtils.equals(this.mAddress, imData.mAddress) && this.mIsPrimary == imData.mIsPrimary;
        }

        public int hashCode() {
            int i = ((this.mType * 31) + this.mProtocol) * 31;
            String str = this.mCustomProtocol;
            int hashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.mAddress;
            return ((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + (this.mIsPrimary ? 1231 : 1237);
        }

        public String toString() {
            return String.format("type: %d, protocol: %d, custom_protcol: %s, data: %s, isPrimary: %s", Integer.valueOf(this.mType), Integer.valueOf(this.mProtocol), this.mCustomProtocol, this.mAddress, Boolean.valueOf(this.mIsPrimary));
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public final EntryLabel getEntryLabel() {
            return EntryLabel.IM;
        }
    }

    public static class PhotoData implements EntryElement {
        private final byte[] mBytes;
        private final String mFormat;
        private Integer mHashCode = null;
        private final boolean mIsPrimary;

        public PhotoData(String str, byte[] bArr, boolean z) {
            this.mFormat = str;
            this.mBytes = bArr;
            this.mIsPrimary = z;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public void constructInsertOperation(List<ContentProviderOperation> list, int i) {
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert.withValueBackReference("raw_contact_id", i);
            newInsert.withValue("mimetype", "vnd.android.cursor.item/photo");
            newInsert.withValue("data15", this.mBytes);
            if (this.mIsPrimary) {
                newInsert.withValue("is_primary", 1);
            }
            list.add(newInsert.build());
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public boolean isEmpty() {
            byte[] bArr = this.mBytes;
            return bArr == null || bArr.length == 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PhotoData)) {
                return false;
            }
            PhotoData photoData = (PhotoData) obj;
            return TextUtils.equals(this.mFormat, photoData.mFormat) && Arrays.equals(this.mBytes, photoData.mBytes) && this.mIsPrimary == photoData.mIsPrimary;
        }

        public int hashCode() {
            Integer num = this.mHashCode;
            if (num != null) {
                return num.intValue();
            }
            String str = this.mFormat;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            byte[] bArr = this.mBytes;
            if (bArr != null) {
                for (byte b : bArr) {
                    hashCode += b;
                }
            }
            int i = (hashCode * 31) + (this.mIsPrimary ? 1231 : 1237);
            this.mHashCode = Integer.valueOf(i);
            return i;
        }

        public String toString() {
            return String.format("format: %s: size: %d, isPrimary: %s", this.mFormat, Integer.valueOf(this.mBytes.length), Boolean.valueOf(this.mIsPrimary));
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public final EntryLabel getEntryLabel() {
            return EntryLabel.PHOTO;
        }
    }

    public static class NicknameData implements EntryElement {
        private final String mNickname;

        public NicknameData(String str) {
            this.mNickname = str;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public void constructInsertOperation(List<ContentProviderOperation> list, int i) {
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert.withValueBackReference("raw_contact_id", i);
            newInsert.withValue("mimetype", "vnd.android.cursor.item/nickname");
            newInsert.withValue("data2", 1);
            newInsert.withValue("data1", this.mNickname);
            list.add(newInsert.build());
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public boolean isEmpty() {
            return TextUtils.isEmpty(this.mNickname);
        }

        public boolean equals(Object obj) {
            if (obj instanceof NicknameData) {
                return TextUtils.equals(this.mNickname, ((NicknameData) obj).mNickname);
            }
            return false;
        }

        public int hashCode() {
            String str = this.mNickname;
            if (str != null) {
                return str.hashCode();
            }
            return 0;
        }

        public String toString() {
            return "nickname: " + this.mNickname;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public EntryLabel getEntryLabel() {
            return EntryLabel.NICKNAME;
        }
    }

    public static class NoteData implements EntryElement {
        public final String mNote;

        public NoteData(String str) {
            this.mNote = str;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public void constructInsertOperation(List<ContentProviderOperation> list, int i) {
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert.withValueBackReference("raw_contact_id", i);
            newInsert.withValue("mimetype", "vnd.android.cursor.item/note");
            newInsert.withValue("data1", this.mNote);
            list.add(newInsert.build());
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public boolean isEmpty() {
            return TextUtils.isEmpty(this.mNote);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NoteData) {
                return TextUtils.equals(this.mNote, ((NoteData) obj).mNote);
            }
            return false;
        }

        public int hashCode() {
            String str = this.mNote;
            if (str != null) {
                return str.hashCode();
            }
            return 0;
        }

        public String toString() {
            return "note: " + this.mNote;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public EntryLabel getEntryLabel() {
            return EntryLabel.NOTE;
        }
    }

    public static class WebsiteData implements EntryElement {
        private final String mWebsite;

        public WebsiteData(String str) {
            this.mWebsite = str;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public void constructInsertOperation(List<ContentProviderOperation> list, int i) {
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert.withValueBackReference("raw_contact_id", i);
            newInsert.withValue("mimetype", "vnd.android.cursor.item/website");
            newInsert.withValue("data1", this.mWebsite);
            newInsert.withValue("data2", 1);
            list.add(newInsert.build());
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public boolean isEmpty() {
            return TextUtils.isEmpty(this.mWebsite);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof WebsiteData) {
                return TextUtils.equals(this.mWebsite, ((WebsiteData) obj).mWebsite);
            }
            return false;
        }

        public int hashCode() {
            String str = this.mWebsite;
            if (str != null) {
                return str.hashCode();
            }
            return 0;
        }

        public String toString() {
            return "website: " + this.mWebsite;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public EntryLabel getEntryLabel() {
            return EntryLabel.WEBSITE;
        }
    }

    public static class BirthdayData implements EntryElement {
        private final String mBirthday;

        public BirthdayData(String str) {
            this.mBirthday = str;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public void constructInsertOperation(List<ContentProviderOperation> list, int i) {
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert.withValueBackReference("raw_contact_id", i);
            newInsert.withValue("mimetype", "vnd.android.cursor.item/contact_event");
            newInsert.withValue("data1", this.mBirthday);
            newInsert.withValue("data2", 3);
            list.add(newInsert.build());
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public boolean isEmpty() {
            return TextUtils.isEmpty(this.mBirthday);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof BirthdayData) {
                return TextUtils.equals(this.mBirthday, ((BirthdayData) obj).mBirthday);
            }
            return false;
        }

        public int hashCode() {
            String str = this.mBirthday;
            if (str != null) {
                return str.hashCode();
            }
            return 0;
        }

        public String toString() {
            return "birthday: " + this.mBirthday;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public EntryLabel getEntryLabel() {
            return EntryLabel.BIRTHDAY;
        }
    }

    public static class AnniversaryData implements EntryElement {
        private final String mAnniversary;

        public AnniversaryData(String str) {
            this.mAnniversary = str;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public void constructInsertOperation(List<ContentProviderOperation> list, int i) {
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert.withValueBackReference("raw_contact_id", i);
            newInsert.withValue("mimetype", "vnd.android.cursor.item/contact_event");
            newInsert.withValue("data1", this.mAnniversary);
            newInsert.withValue("data2", 1);
            list.add(newInsert.build());
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public boolean isEmpty() {
            return TextUtils.isEmpty(this.mAnniversary);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof AnniversaryData) {
                return TextUtils.equals(this.mAnniversary, ((AnniversaryData) obj).mAnniversary);
            }
            return false;
        }

        public int hashCode() {
            String str = this.mAnniversary;
            if (str != null) {
                return str.hashCode();
            }
            return 0;
        }

        public String toString() {
            return "anniversary: " + this.mAnniversary;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public EntryLabel getEntryLabel() {
            return EntryLabel.ANNIVERSARY;
        }
    }

    public static class SipData implements EntryElement {
        private final String mAddress;
        private final boolean mIsPrimary;
        private final String mLabel;
        private final int mType;

        public SipData(String str, int i, String str2, boolean z) {
            if (str.startsWith("sip:")) {
                this.mAddress = str.substring(4);
            } else {
                this.mAddress = str;
            }
            this.mType = i;
            this.mLabel = str2;
            this.mIsPrimary = z;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public void constructInsertOperation(List<ContentProviderOperation> list, int i) {
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert.withValueBackReference("raw_contact_id", i);
            newInsert.withValue("mimetype", "vnd.android.cursor.item/sip_address");
            newInsert.withValue("data1", this.mAddress);
            newInsert.withValue("data2", Integer.valueOf(this.mType));
            if (this.mType == 0) {
                newInsert.withValue("data3", this.mLabel);
            }
            boolean z = this.mIsPrimary;
            if (z) {
                newInsert.withValue("is_primary", Boolean.valueOf(z));
            }
            list.add(newInsert.build());
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public boolean isEmpty() {
            return TextUtils.isEmpty(this.mAddress);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SipData)) {
                return false;
            }
            SipData sipData = (SipData) obj;
            return this.mType == sipData.mType && TextUtils.equals(this.mLabel, sipData.mLabel) && TextUtils.equals(this.mAddress, sipData.mAddress) && this.mIsPrimary == sipData.mIsPrimary;
        }

        public int hashCode() {
            int i = this.mType * 31;
            String str = this.mLabel;
            int hashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.mAddress;
            return ((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + (this.mIsPrimary ? 1231 : 1237);
        }

        public String toString() {
            return "sip: " + this.mAddress;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public EntryLabel getEntryLabel() {
            return EntryLabel.SIP;
        }
    }

    public static class AndroidCustomData implements EntryElement {
        private final List<String> mDataList;
        private final String mMimeType;

        public AndroidCustomData(String str, List<String> list) {
            this.mMimeType = str;
            this.mDataList = list;
        }

        public static AndroidCustomData constructAndroidCustomData(List<String> list) {
            List<String> subList;
            String str = null;
            if (list == null) {
                subList = null;
            } else if (list.size() < 2) {
                str = list.get(0);
                subList = null;
            } else {
                int size = list.size() < 16 ? list.size() : 16;
                str = list.get(0);
                subList = list.subList(1, size);
            }
            return new AndroidCustomData(str, subList);
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public void constructInsertOperation(List<ContentProviderOperation> list, int i) {
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert.withValueBackReference("raw_contact_id", i);
            newInsert.withValue("mimetype", this.mMimeType);
            for (int i2 = 0; i2 < this.mDataList.size(); i2++) {
                String str = this.mDataList.get(i2);
                if (!TextUtils.isEmpty(str)) {
                    newInsert.withValue("data" + (i2 + 1), str);
                }
            }
            list.add(newInsert.build());
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public boolean isEmpty() {
            List<String> list;
            return TextUtils.isEmpty(this.mMimeType) || (list = this.mDataList) == null || list.size() == 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AndroidCustomData)) {
                return false;
            }
            AndroidCustomData androidCustomData = (AndroidCustomData) obj;
            if (!TextUtils.equals(this.mMimeType, androidCustomData.mMimeType)) {
                return false;
            }
            List<String> list = this.mDataList;
            if (list == null) {
                return androidCustomData.mDataList == null;
            }
            int size = list.size();
            if (size != androidCustomData.mDataList.size()) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                if (!TextUtils.equals(this.mDataList.get(i), androidCustomData.mDataList.get(i))) {
                    return false;
                }
            }
            return true;
        }

        public int hashCode() {
            String str = this.mMimeType;
            int hashCode = str != null ? str.hashCode() : 0;
            List<String> list = this.mDataList;
            if (list != null) {
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    String next = it.next();
                    hashCode = (hashCode * 31) + (next != null ? next.hashCode() : 0);
                }
            }
            return hashCode;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("android-custom: " + this.mMimeType + ", data: ");
            List<String> list = this.mDataList;
            sb.append(list == null ? "null" : Arrays.toString(list.toArray()));
            return sb.toString();
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public EntryLabel getEntryLabel() {
            return EntryLabel.ANDROID_CUSTOM;
        }
    }

    public final void iterateAllData(EntryElementIterator entryElementIterator) {
        entryElementIterator.onIterationStarted();
        entryElementIterator.onElementGroupStarted(this.mNameData.getEntryLabel());
        entryElementIterator.onElement(this.mNameData);
        entryElementIterator.onElementGroupEnded();
        iterateOneList(this.mPhoneList, entryElementIterator);
        iterateOneList(this.mEmailList, entryElementIterator);
        iterateOneList(this.mPostalList, entryElementIterator);
        iterateOneList(this.mOrganizationList, entryElementIterator);
        iterateOneList(this.mImList, entryElementIterator);
        iterateOneList(this.mPhotoList, entryElementIterator);
        iterateOneList(this.mWebsiteList, entryElementIterator);
        iterateOneList(this.mSipList, entryElementIterator);
        iterateOneList(this.mNicknameList, entryElementIterator);
        iterateOneList(this.mNoteList, entryElementIterator);
        iterateOneList(this.mAndroidCustomDataList, entryElementIterator);
        BirthdayData birthdayData = this.mBirthday;
        if (birthdayData != null) {
            entryElementIterator.onElementGroupStarted(birthdayData.getEntryLabel());
            entryElementIterator.onElement(this.mBirthday);
            entryElementIterator.onElementGroupEnded();
        }
        AnniversaryData anniversaryData = this.mAnniversary;
        if (anniversaryData != null) {
            entryElementIterator.onElementGroupStarted(anniversaryData.getEntryLabel());
            entryElementIterator.onElement(this.mAnniversary);
            entryElementIterator.onElementGroupEnded();
        }
        entryElementIterator.onIterationEnded();
    }

    private void iterateOneList(List<? extends EntryElement> list, EntryElementIterator entryElementIterator) {
        if (list == null || list.size() <= 0) {
            return;
        }
        entryElementIterator.onElementGroupStarted(list.get(0).getEntryLabel());
        Iterator<? extends EntryElement> it = list.iterator();
        while (it.hasNext()) {
            entryElementIterator.onElement(it.next());
        }
        entryElementIterator.onElementGroupEnded();
    }

    private class IsIgnorableIterator implements EntryElementIterator {
        private boolean mEmpty;

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public void onElementGroupEnded() {
        }

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public void onElementGroupStarted(EntryLabel entryLabel) {
        }

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public void onIterationEnded() {
        }

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public void onIterationStarted() {
        }

        private IsIgnorableIterator(VCardEntry vCardEntry) {
            this.mEmpty = true;
        }

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public boolean onElement(EntryElement entryElement) {
            if (entryElement.isEmpty()) {
                return true;
            }
            this.mEmpty = false;
            return false;
        }

        public boolean getResult() {
            return this.mEmpty;
        }
    }

    private class ToStringIterator implements EntryElementIterator {
        private StringBuilder mBuilder;
        private boolean mFirstElement;

        private ToStringIterator() {
        }

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public void onIterationStarted() {
            StringBuilder sb = new StringBuilder();
            this.mBuilder = sb;
            sb.append("[[hash: " + VCardEntry.this.hashCode() + "\n");
        }

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public void onElementGroupStarted(EntryLabel entryLabel) {
            this.mBuilder.append(entryLabel.toString() + ": ");
            this.mFirstElement = true;
        }

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public boolean onElement(EntryElement entryElement) {
            if (!this.mFirstElement) {
                this.mBuilder.append(", ");
                this.mFirstElement = false;
            }
            StringBuilder sb = this.mBuilder;
            sb.append("[");
            sb.append(entryElement.toString());
            sb.append("]");
            return true;
        }

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public void onElementGroupEnded() {
            this.mBuilder.append("\n");
        }

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public void onIterationEnded() {
            this.mBuilder.append("]]\n");
        }

        public String toString() {
            return this.mBuilder.toString();
        }
    }

    private class InsertOperationConstrutor implements EntryElementIterator {
        private final int mBackReferenceIndex;
        private final List<ContentProviderOperation> mOperationList;

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public void onElementGroupEnded() {
        }

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public void onElementGroupStarted(EntryLabel entryLabel) {
        }

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public void onIterationEnded() {
        }

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public void onIterationStarted() {
        }

        public InsertOperationConstrutor(VCardEntry vCardEntry, List<ContentProviderOperation> list, int i) {
            this.mOperationList = list;
            this.mBackReferenceIndex = i;
        }

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public boolean onElement(EntryElement entryElement) {
            if (entryElement.isEmpty()) {
                return true;
            }
            entryElement.constructInsertOperation(this.mOperationList, this.mBackReferenceIndex);
            return true;
        }
    }

    public String toString() {
        ToStringIterator toStringIterator = new ToStringIterator();
        iterateAllData(toStringIterator);
        return toStringIterator.toString();
    }

    public VCardEntry() {
        this(-1073741824);
    }

    public VCardEntry(int i) {
        this(i, null);
    }

    public VCardEntry(int i, Account account) {
        this.mStarred = false;
        this.mNameData = new NameData();
        this.mVCardType = i;
        this.mAccount = account;
    }

    private void addPhone(int i, String str, String str2, boolean z) {
        if (this.mPhoneList == null) {
            this.mPhoneList = new ArrayList();
        }
        StringBuilder sb = new StringBuilder();
        String trim = str.trim();
        if (i != 6 && !VCardConfig.refrainPhoneNumberFormatting(this.mVCardType)) {
            int length = trim.length();
            boolean z2 = false;
            for (int i2 = 0; i2 < length; i2++) {
                char charAt = trim.charAt(i2);
                if (charAt == 'p' || charAt == 'P') {
                    sb.append(',');
                } else if (charAt == 'w' || charAt == 'W') {
                    sb.append(';');
                } else {
                    if (PhoneNumberUtils.is12Key(charAt) || (i2 == 0 && charAt == '+')) {
                        sb.append(charAt);
                    }
                }
                z2 = true;
            }
            trim = !z2 ? VCardUtils.PhoneNumberUtilsPort.formatNumber(sb.toString(), VCardUtils.getPhoneNumberFormat(this.mVCardType)) : sb.toString();
        }
        this.mPhoneList.add(new PhoneData(trim, i, str2, z));
    }

    private void addSip(String str, int i, String str2, boolean z) {
        if (this.mSipList == null) {
            this.mSipList = new ArrayList();
        }
        this.mSipList.add(new SipData(str, i, str2, z));
    }

    private void addNickName(String str) {
        if (this.mNicknameList == null) {
            this.mNicknameList = new ArrayList();
        }
        this.mNicknameList.add(new NicknameData(str));
    }

    private void addEmail(int i, String str, String str2, boolean z) {
        if (this.mEmailList == null) {
            this.mEmailList = new ArrayList();
        }
        this.mEmailList.add(new EmailData(str, i, str2, z));
    }

    private void addPostal(int i, List<String> list, String str, boolean z) {
        if (this.mPostalList == null) {
            this.mPostalList = new ArrayList(0);
        }
        this.mPostalList.add(PostalData.constructPostalData(list, i, str, z, this.mVCardType));
    }

    private void addNewOrganization(String str, String str2, String str3, String str4, int i, boolean z) {
        if (this.mOrganizationList == null) {
            this.mOrganizationList = new ArrayList();
        }
        this.mOrganizationList.add(new OrganizationData(str, str2, str3, str4, i, z));
    }

    private String buildSinglePhoneticNameFromSortAsParam(Map<String, Collection<String>> map) {
        Collection<String> collection = map.get("SORT-AS");
        if (collection == null || collection.size() == 0) {
            return null;
        }
        if (collection.size() > 1) {
            Log.w("vCard", "Incorrect multiple SORT_AS parameters detected: " + Arrays.toString(collection.toArray()));
        }
        List<String> constructListFromValue = VCardUtils.constructListFromValue(collection.iterator().next(), this.mVCardType);
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = constructListFromValue.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void handleOrgValue(int r8, java.util.List<java.lang.String> r9, java.util.Map<java.lang.String, java.util.Collection<java.lang.String>> r10, boolean r11) {
        /*
            r7 = this;
            java.lang.String r4 = r7.buildSinglePhoneticNameFromSortAsParam(r10)
            if (r9 != 0) goto L8
            java.util.List<java.lang.String> r9 = com.android.vcard.VCardEntry.sEmptyList
        L8:
            int r10 = r9.size()
            r0 = 0
            if (r10 == 0) goto L42
            r1 = 0
            r2 = 1
            if (r10 == r2) goto L3b
            java.lang.Object r0 = r9.get(r1)
            java.lang.String r0 = (java.lang.String) r0
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r3 = 1
        L1f:
            if (r3 >= r10) goto L34
            if (r3 <= r2) goto L28
            r5 = 32
            r1.append(r5)
        L28:
            java.lang.Object r5 = r9.get(r3)
            java.lang.String r5 = (java.lang.String) r5
            r1.append(r5)
            int r3 = r3 + 1
            goto L1f
        L34:
            java.lang.String r9 = r1.toString()
            r2 = r9
            r1 = r0
            goto L46
        L3b:
            java.lang.Object r9 = r9.get(r1)
            java.lang.String r9 = (java.lang.String) r9
            goto L44
        L42:
            java.lang.String r9 = ""
        L44:
            r1 = r9
            r2 = r0
        L46:
            java.util.List<com.android.vcard.VCardEntry$OrganizationData> r9 = r7.mOrganizationList
            if (r9 != 0) goto L52
            r3 = 0
            r0 = r7
            r5 = r8
            r6 = r11
            r0.addNewOrganization(r1, r2, r3, r4, r5, r6)
            return
        L52:
            java.util.Iterator r9 = r9.iterator()
        L56:
            boolean r10 = r9.hasNext()
            if (r10 == 0) goto L78
            java.lang.Object r10 = r9.next()
            com.android.vcard.VCardEntry$OrganizationData r10 = (com.android.vcard.VCardEntry.OrganizationData) r10
            java.lang.String r0 = com.android.vcard.VCardEntry.OrganizationData.access$100(r10)
            if (r0 != 0) goto L56
            java.lang.String r0 = com.android.vcard.VCardEntry.OrganizationData.access$200(r10)
            if (r0 != 0) goto L56
            com.android.vcard.VCardEntry.OrganizationData.access$102(r10, r1)
            com.android.vcard.VCardEntry.OrganizationData.access$202(r10, r2)
            com.android.vcard.VCardEntry.OrganizationData.access$302(r10, r11)
            return
        L78:
            r3 = 0
            r0 = r7
            r5 = r8
            r6 = r11
            r0.addNewOrganization(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.vcard.VCardEntry.handleOrgValue(int, java.util.List, java.util.Map, boolean):void");
    }

    private void handleTitleValue(String str) {
        List<OrganizationData> list = this.mOrganizationList;
        if (list == null) {
            addNewOrganization(null, null, str, null, 1, false);
            return;
        }
        for (OrganizationData organizationData : list) {
            if (organizationData.mTitle == null) {
                organizationData.mTitle = str;
                return;
            }
        }
        addNewOrganization(null, null, str, null, 1, false);
    }

    private void addIm(int i, String str, String str2, int i2, boolean z) {
        if (this.mImList == null) {
            this.mImList = new ArrayList();
        }
        this.mImList.add(new ImData(i, str, str2, i2, z));
    }

    private void addNote(String str) {
        if (this.mNoteList == null) {
            this.mNoteList = new ArrayList(1);
        }
        this.mNoteList.add(new NoteData(str));
    }

    private void addPhotoBytes(String str, byte[] bArr, boolean z) {
        if (this.mPhotoList == null) {
            this.mPhotoList = new ArrayList(1);
        }
        this.mPhotoList.add(new PhotoData(str, bArr, z));
    }

    private void tryHandleSortAsName(Map<String, Collection<String>> map) {
        Collection<String> collection;
        if ((VCardConfig.isVersion30(this.mVCardType) && (!TextUtils.isEmpty(this.mNameData.mPhoneticFamily) || !TextUtils.isEmpty(this.mNameData.mPhoneticMiddle) || !TextUtils.isEmpty(this.mNameData.mPhoneticGiven))) || (collection = map.get("SORT-AS")) == null || collection.size() == 0) {
            return;
        }
        if (collection.size() > 1) {
            Log.w("vCard", "Incorrect multiple SORT_AS parameters detected: " + Arrays.toString(collection.toArray()));
        }
        List<String> constructListFromValue = VCardUtils.constructListFromValue(collection.iterator().next(), this.mVCardType);
        int size = constructListFromValue.size();
        if (size > 3) {
            size = 3;
        }
        if (size != 2) {
            if (size == 3) {
                this.mNameData.mPhoneticMiddle = constructListFromValue.get(2);
            }
            this.mNameData.mPhoneticFamily = constructListFromValue.get(0);
        }
        this.mNameData.mPhoneticGiven = constructListFromValue.get(1);
        this.mNameData.mPhoneticFamily = constructListFromValue.get(0);
    }

    private void handleNProperty(List<String> list, Map<String, Collection<String>> map) {
        int size;
        tryHandleSortAsName(map);
        if (list == null || (size = list.size()) < 1) {
            return;
        }
        if (size > 5) {
            size = 5;
        }
        if (size != 2) {
            if (size != 3) {
                if (size != 4) {
                    if (size == 5) {
                        this.mNameData.mSuffix = list.get(4);
                    }
                    this.mNameData.mFamily = list.get(0);
                }
                this.mNameData.mPrefix = list.get(3);
            }
            this.mNameData.mMiddle = list.get(2);
        }
        this.mNameData.mGiven = list.get(1);
        this.mNameData.mFamily = list.get(0);
    }

    private void handlePhoneticNameFromSound(List<String> list) {
        int size;
        boolean z;
        if (TextUtils.isEmpty(this.mNameData.mPhoneticFamily) && TextUtils.isEmpty(this.mNameData.mPhoneticMiddle) && TextUtils.isEmpty(this.mNameData.mPhoneticGiven) && list != null && (size = list.size()) >= 1) {
            if (size > 3) {
                size = 3;
            }
            if (list.get(0).length() > 0) {
                int i = 1;
                while (true) {
                    if (i >= size) {
                        z = true;
                        break;
                    } else {
                        if (list.get(i).length() > 0) {
                            z = false;
                            break;
                        }
                        i++;
                    }
                }
                if (z) {
                    String[] split = list.get(0).split(" ");
                    int length = split.length;
                    if (length == 3) {
                        this.mNameData.mPhoneticFamily = split[0];
                        this.mNameData.mPhoneticMiddle = split[1];
                        this.mNameData.mPhoneticGiven = split[2];
                        return;
                    } else if (length == 2) {
                        this.mNameData.mPhoneticFamily = split[0];
                        this.mNameData.mPhoneticGiven = split[1];
                        return;
                    } else {
                        this.mNameData.mPhoneticGiven = list.get(0);
                        return;
                    }
                }
            }
            if (size != 2) {
                if (size == 3) {
                    this.mNameData.mPhoneticMiddle = list.get(2);
                }
                this.mNameData.mPhoneticFamily = list.get(0);
            }
            this.mNameData.mPhoneticGiven = list.get(1);
            this.mNameData.mPhoneticFamily = list.get(0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:197:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0250  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addProperty(com.android.vcard.VCardProperty r18) {
        /*
            Method dump skipped, instructions count: 1047
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.vcard.VCardEntry.addProperty(com.android.vcard.VCardProperty):void");
    }

    private void handleSipCase(String str, Collection<String> collection) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (str.startsWith("sip:")) {
            str = str.substring(4);
            if (str.length() == 0) {
                return;
            }
        }
        int i = -1;
        String str2 = null;
        boolean z = false;
        if (collection != null) {
            boolean z2 = false;
            for (String str3 : collection) {
                String upperCase = str3.toUpperCase();
                if (upperCase.equals("PREF")) {
                    z2 = true;
                } else if (upperCase.equals("HOME")) {
                    i = 1;
                } else if (upperCase.equals("WORK")) {
                    i = 2;
                } else if (i < 0) {
                    str2 = upperCase.startsWith("X-") ? str3.substring(2) : str3;
                    i = 0;
                }
            }
            z = z2;
        }
        if (i < 0) {
            i = 3;
        }
        addSip(str, i, str2, z);
    }

    public void addChild(VCardEntry vCardEntry) {
        if (this.mChildren == null) {
            this.mChildren = new ArrayList();
        }
        this.mChildren.add(vCardEntry);
    }

    private void handleAndroidCustomProperty(List<String> list) {
        if (this.mAndroidCustomDataList == null) {
            this.mAndroidCustomDataList = new ArrayList();
        }
        this.mAndroidCustomDataList.add(AndroidCustomData.constructAndroidCustomData(list));
    }

    private String constructDisplayName() {
        String formattedString;
        if (!TextUtils.isEmpty(this.mNameData.mFormatted)) {
            formattedString = this.mNameData.mFormatted;
        } else if (!this.mNameData.emptyStructuredName()) {
            formattedString = VCardUtils.constructNameFromElements(this.mVCardType, this.mNameData.mFamily, this.mNameData.mMiddle, this.mNameData.mGiven, this.mNameData.mPrefix, this.mNameData.mSuffix);
        } else if (!this.mNameData.emptyPhoneticStructuredName()) {
            formattedString = VCardUtils.constructNameFromElements(this.mVCardType, this.mNameData.mPhoneticFamily, this.mNameData.mPhoneticMiddle, this.mNameData.mPhoneticGiven);
        } else {
            List<EmailData> list = this.mEmailList;
            if (list != null && list.size() > 0) {
                formattedString = this.mEmailList.get(0).mAddress;
            } else {
                List<PhoneData> list2 = this.mPhoneList;
                if (list2 != null && list2.size() > 0) {
                    formattedString = this.mPhoneList.get(0).mNumber;
                } else {
                    List<PostalData> list3 = this.mPostalList;
                    if (list3 != null && list3.size() > 0) {
                        formattedString = this.mPostalList.get(0).getFormattedAddress(this.mVCardType);
                    } else {
                        List<OrganizationData> list4 = this.mOrganizationList;
                        formattedString = (list4 == null || list4.size() <= 0) ? null : this.mOrganizationList.get(0).getFormattedString();
                    }
                }
            }
        }
        return formattedString == null ? "" : formattedString;
    }

    public void consolidateFields() {
        this.mNameData.displayName = constructDisplayName();
    }

    public boolean isIgnorable() {
        IsIgnorableIterator isIgnorableIterator = new IsIgnorableIterator();
        iterateAllData(isIgnorableIterator);
        return isIgnorableIterator.getResult();
    }

    public ArrayList<ContentProviderOperation> constructInsertOperations(ContentResolver contentResolver, ArrayList<ContentProviderOperation> arrayList) {
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        if (isIgnorable()) {
            return arrayList;
        }
        int size = arrayList.size();
        ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI);
        Account account = this.mAccount;
        if (account != null) {
            newInsert.withValue("account_name", account.name);
            newInsert.withValue("account_type", this.mAccount.type);
        } else {
            newInsert.withValue("account_name", null);
            newInsert.withValue("account_type", null);
        }
        if (getStarred()) {
            newInsert.withValue(ContactSaveService.EXTRA_STARRED_FLAG, 1);
        }
        arrayList.add(newInsert.build());
        arrayList.size();
        iterateAllData(new InsertOperationConstrutor(this, arrayList, size));
        arrayList.size();
        return arrayList;
    }

    private String listToString(List<String> list) {
        int size = list.size();
        if (size <= 1) {
            return size == 1 ? list.get(0) : "";
        }
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (size - 1 > 0) {
                sb.append(";");
            }
        }
        return sb.toString();
    }

    public String getDisplayName() {
        NameData nameData = this.mNameData;
        if (nameData.displayName == null) {
            nameData.displayName = constructDisplayName();
        }
        return this.mNameData.displayName;
    }
}
