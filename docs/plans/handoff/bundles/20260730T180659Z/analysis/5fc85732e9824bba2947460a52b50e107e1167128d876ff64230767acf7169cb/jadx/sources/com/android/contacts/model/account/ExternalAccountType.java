package com.android.contacts.model.account;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import com.android.contacts.R$styleable;
import com.android.contacts.model.account.AccountType;
import com.android.contacts.model.account.BaseAccountType;
import com.android.contacts.model.dataitem.DataKind;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class ExternalAccountType extends BaseAccountType {
    private static final String ATTR_ACCOUNT_ICON = "accountTypeIcon";
    private static final String ATTR_ACCOUNT_LABEL = "accountTypeLabel";
    private static final String ATTR_ACCOUNT_TYPE = "accountType";
    private static final String ATTR_DATA_SET = "dataSet";
    private static final String ATTR_EXTENSION_PACKAGE_NAMES = "extensionPackageNames";
    private static final String ATTR_INVITE_CONTACT_ACTION_LABEL = "inviteContactActionLabel";
    private static final String ATTR_INVITE_CONTACT_ACTIVITY = "inviteContactActivity";
    private static final String ATTR_VIEW_CONTACT_NOTIFY_SERVICE = "viewContactNotifyService";
    private static final String ATTR_VIEW_GROUP_ACTION_LABEL = "viewGroupActionLabel";
    private static final String ATTR_VIEW_GROUP_ACTIVITY = "viewGroupActivity";
    private static final String[] METADATA_CONTACTS_NAMES = {"android.provider.ALTERNATE_CONTACTS_STRUCTURE", "android.provider.CONTACTS_STRUCTURE"};
    private static final String SYNC_META_DATA = "android.content.SyncAdapter";
    private static final String TAG = "ExternalAccountType";
    private static final String TAG_CONTACTS_ACCOUNT_TYPE = "ContactsAccountType";
    private static final String TAG_CONTACTS_DATA_KIND = "ContactsDataKind";
    private static final String TAG_CONTACTS_SOURCE_LEGACY = "ContactsSource";
    private static final String TAG_EDIT_SCHEMA = "EditSchema";
    private String mAccountTypeIconAttribute;
    private String mAccountTypeLabelAttribute;
    private List<String> mExtensionPackageNames;
    private boolean mGroupMembershipEditable;
    private boolean mHasContactsMetadata;
    private boolean mHasEditSchema;
    private String mInviteActionLabelAttribute;
    private int mInviteActionLabelResId;
    private String mInviteContactActivity;
    private final boolean mIsExtension;
    private String mViewContactNotifyService;
    private String mViewGroupActivity;
    private String mViewGroupLabelAttribute;
    private int mViewGroupLabelResId;

    @Override // com.android.contacts.model.account.AccountType
    public boolean isEmbedded() {
        return false;
    }

    public ExternalAccountType(Context context, String str, boolean z) {
        this(context, str, z, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00b8 A[Catch: all -> 0x008f, TRY_LEAVE, TryCatch #2 {all -> 0x008f, blocks: (B:7:0x0015, B:27:0x001c, B:29:0x0020, B:39:0x0035, B:10:0x0094, B:13:0x00a2, B:14:0x00ae, B:16:0x00b8), top: B:6:0x0015 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00c1 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    ExternalAccountType(android.content.Context r5, java.lang.String r6, boolean r7, android.content.res.XmlResourceParser r8) {
        /*
            r4 = this;
            r4.<init>()
            r4.mIsExtension = r7
            r4.resourcePackageName = r6
            r4.syncAdapterPackageName = r6
            if (r8 != 0) goto L10
            android.content.res.XmlResourceParser r7 = loadContactsXml(r5, r6)
            goto L11
        L10:
            r7 = r8
        L11:
            r0 = 0
            r1 = 1
            if (r7 == 0) goto L1c
            r4.inflate(r5, r7)     // Catch: com.android.contacts.model.account.AccountType.DefinitionException -> L19 java.lang.Throwable -> L8f
            goto L1c
        L19:
            r0 = move-exception
            goto L94
        L1c:
            boolean r2 = r4.mHasEditSchema     // Catch: java.lang.Throwable -> L8f com.android.contacts.model.account.AccountType.DefinitionException -> L91
            if (r2 == 0) goto L35
            java.lang.String r2 = "vnd.android.cursor.item/name"
            r4.checkKindExists(r2)     // Catch: java.lang.Throwable -> L8f com.android.contacts.model.account.AccountType.DefinitionException -> L91
            java.lang.String r2 = "#name"
            r4.checkKindExists(r2)     // Catch: java.lang.Throwable -> L8f com.android.contacts.model.account.AccountType.DefinitionException -> L91
            java.lang.String r2 = "#phoneticName"
            r4.checkKindExists(r2)     // Catch: java.lang.Throwable -> L8f com.android.contacts.model.account.AccountType.DefinitionException -> L91
            java.lang.String r2 = "vnd.android.cursor.item/photo"
            r4.checkKindExists(r2)     // Catch: java.lang.Throwable -> L8f com.android.contacts.model.account.AccountType.DefinitionException -> L91
            goto L41
        L35:
            r4.addDataKindStructuredName(r5)     // Catch: java.lang.Throwable -> L8f com.android.contacts.model.account.AccountType.DefinitionException -> L91
            r4.addDataKindName(r5)     // Catch: java.lang.Throwable -> L8f com.android.contacts.model.account.AccountType.DefinitionException -> L91
            r4.addDataKindPhoneticName(r5)     // Catch: java.lang.Throwable -> L8f com.android.contacts.model.account.AccountType.DefinitionException -> L91
            r4.addDataKindPhoto(r5)     // Catch: java.lang.Throwable -> L8f com.android.contacts.model.account.AccountType.DefinitionException -> L91
        L41:
            if (r7 == 0) goto L46
            r7.close()
        L46:
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
            r4.mExtensionPackageNames = r6
            java.lang.String r6 = r4.mInviteActionLabelAttribute
            java.lang.String r7 = r4.syncAdapterPackageName
            java.lang.String r8 = "inviteContactActionLabel"
            int r6 = resolveExternalResId(r5, r6, r7, r8)
            r4.mInviteActionLabelResId = r6
            java.lang.String r6 = r4.mViewGroupLabelAttribute
            java.lang.String r7 = r4.syncAdapterPackageName
            java.lang.String r8 = "viewGroupActionLabel"
            int r6 = resolveExternalResId(r5, r6, r7, r8)
            r4.mViewGroupLabelResId = r6
            java.lang.String r6 = r4.mAccountTypeLabelAttribute
            java.lang.String r7 = r4.syncAdapterPackageName
            java.lang.String r8 = "accountTypeLabel"
            int r6 = resolveExternalResId(r5, r6, r7, r8)
            r4.titleRes = r6
            java.lang.String r6 = r4.mAccountTypeIconAttribute
            java.lang.String r7 = r4.syncAdapterPackageName
            java.lang.String r8 = "accountTypeIcon"
            int r5 = resolveExternalResId(r5, r6, r7, r8)
            r4.iconRes = r5
            java.lang.String r5 = "vnd.android.cursor.item/group_membership"
            com.android.contacts.model.dataitem.DataKind r5 = r4.getKindForMimetype(r5)
            if (r5 == 0) goto L8a
            boolean r5 = r5.editable
            if (r5 == 0) goto L8a
            r0 = 1
        L8a:
            r4.mGroupMembershipEditable = r0
            r4.mIsInitialized = r1
            return
        L8f:
            r5 = move-exception
            goto Lc5
        L91:
            r1 = move-exception
            r0 = r1
            r1 = 0
        L94:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8f
            r2.<init>()     // Catch: java.lang.Throwable -> L8f
            java.lang.String r3 = "Problem reading XML"
            r2.append(r3)     // Catch: java.lang.Throwable -> L8f
            if (r1 == 0) goto Lae
            if (r7 == 0) goto Lae
            java.lang.String r1 = " in line "
            r2.append(r1)     // Catch: java.lang.Throwable -> L8f
            int r1 = r7.getLineNumber()     // Catch: java.lang.Throwable -> L8f
            r2.append(r1)     // Catch: java.lang.Throwable -> L8f
        Lae:
            java.lang.String r1 = " for external package "
            r2.append(r1)     // Catch: java.lang.Throwable -> L8f
            r2.append(r6)     // Catch: java.lang.Throwable -> L8f
            if (r8 != 0) goto Lbf
            java.lang.String r6 = "ExternalAccountType"
            java.lang.String r8 = "Failed to build external account type"
            com.android.contactsbind.FeedbackHelper.sendFeedback(r5, r6, r8, r0)     // Catch: java.lang.Throwable -> L8f
        Lbf:
            if (r7 == 0) goto Lc4
            r7.close()
        Lc4:
            return
        Lc5:
            if (r7 == 0) goto Lca
            r7.close()
        Lca:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.model.account.ExternalAccountType.<init>(android.content.Context, java.lang.String, boolean, android.content.res.XmlResourceParser):void");
    }

    public static XmlResourceParser loadContactsXml(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(new Intent(SYNC_META_DATA).setPackage(str), 132);
        if (queryIntentServices == null) {
            return null;
        }
        Iterator<ResolveInfo> it = queryIntentServices.iterator();
        while (it.hasNext()) {
            ServiceInfo serviceInfo = it.next().serviceInfo;
            if (serviceInfo != null) {
                for (String str2 : METADATA_CONTACTS_NAMES) {
                    XmlResourceParser loadXmlMetaData = serviceInfo.loadXmlMetaData(packageManager, str2);
                    if (loadXmlMetaData != null) {
                        if (Log.isLoggable(TAG, 3)) {
                            Log.d(TAG, String.format("Metadata loaded from: %s, %s, %s", serviceInfo.packageName, serviceInfo.name, str2));
                        }
                        return loadXmlMetaData;
                    }
                }
            }
        }
        return null;
    }

    public static boolean hasContactsXml(Context context, String str) {
        return loadContactsXml(context, str) != null;
    }

    private void checkKindExists(String str) throws AccountType.DefinitionException {
        if (getKindForMimetype(str) != null) {
            return;
        }
        throw new AccountType.DefinitionException(str + " must be supported");
    }

    @Override // com.android.contacts.model.account.AccountType
    public boolean isExtension() {
        return this.mIsExtension;
    }

    @Override // com.android.contacts.model.account.AccountType
    public boolean areContactsWritable() {
        return this.mHasEditSchema;
    }

    public boolean hasContactsMetadata() {
        return this.mHasContactsMetadata;
    }

    @Override // com.android.contacts.model.account.AccountType
    public String getInviteContactActivityClassName() {
        return this.mInviteContactActivity;
    }

    @Override // com.android.contacts.model.account.AccountType
    protected int getInviteContactActionResId() {
        return this.mInviteActionLabelResId;
    }

    @Override // com.android.contacts.model.account.AccountType
    public String getViewContactNotifyServiceClassName() {
        return this.mViewContactNotifyService;
    }

    @Override // com.android.contacts.model.account.AccountType
    public String getViewGroupActivity() {
        return this.mViewGroupActivity;
    }

    @Override // com.android.contacts.model.account.AccountType
    protected int getViewGroupLabelResId() {
        return this.mViewGroupLabelResId;
    }

    @Override // com.android.contacts.model.account.AccountType
    public List<String> getExtensionPackageNames() {
        return this.mExtensionPackageNames;
    }

    @Override // com.android.contacts.model.account.BaseAccountType, com.android.contacts.model.account.AccountType
    public boolean isGroupMembershipEditable() {
        return this.mGroupMembershipEditable;
    }

    protected void inflate(Context context, XmlPullParser xmlPullParser) throws AccountType.DefinitionException {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            try {
                next = xmlPullParser.next();
                if (next == 2) {
                    break;
                }
            } catch (IOException e) {
                throw new AccountType.DefinitionException("Problem reading XML", e);
            } catch (XmlPullParserException e2) {
                throw new AccountType.DefinitionException("Problem reading XML", e2);
            }
        } while (next != 1);
        if (next != 2) {
            throw new IllegalStateException("No start tag found");
        }
        String name = xmlPullParser.getName();
        if (!TAG_CONTACTS_ACCOUNT_TYPE.equals(name) && !TAG_CONTACTS_SOURCE_LEGACY.equals(name)) {
            throw new IllegalStateException("Top level element must be ContactsAccountType, not " + name);
        }
        this.mHasContactsMetadata = true;
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            String attributeName = xmlPullParser.getAttributeName(i);
            String attributeValue = xmlPullParser.getAttributeValue(i);
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, attributeName + "=" + attributeValue);
            }
            if (ATTR_INVITE_CONTACT_ACTIVITY.equals(attributeName)) {
                this.mInviteContactActivity = attributeValue;
            } else if (ATTR_INVITE_CONTACT_ACTION_LABEL.equals(attributeName)) {
                this.mInviteActionLabelAttribute = attributeValue;
            } else if (ATTR_VIEW_CONTACT_NOTIFY_SERVICE.equals(attributeName)) {
                this.mViewContactNotifyService = attributeValue;
            } else if (ATTR_VIEW_GROUP_ACTIVITY.equals(attributeName)) {
                this.mViewGroupActivity = attributeValue;
            } else if (ATTR_VIEW_GROUP_ACTION_LABEL.equals(attributeName)) {
                this.mViewGroupLabelAttribute = attributeValue;
            } else if ("dataSet".equals(attributeName)) {
                this.dataSet = attributeValue;
            } else if (ATTR_EXTENSION_PACKAGE_NAMES.equals(attributeName)) {
                this.mExtensionPackageNames.add(attributeValue);
            } else if ("accountType".equals(attributeName)) {
                this.accountType = attributeValue;
            } else if (ATTR_ACCOUNT_LABEL.equals(attributeName)) {
                this.mAccountTypeLabelAttribute = attributeValue;
            } else if (ATTR_ACCOUNT_ICON.equals(attributeName)) {
                this.mAccountTypeIconAttribute = attributeValue;
            } else if (Log.isLoggable(TAG, 5)) {
                Log.w(TAG, "Unsupported attribute " + attributeName);
            }
        }
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next2 = xmlPullParser.next();
            if ((next2 == 3 && xmlPullParser.getDepth() <= depth) || next2 == 1) {
                return;
            }
            if (next2 == 2 && xmlPullParser.getDepth() == depth + 1) {
                String name2 = xmlPullParser.getName();
                if (TAG_EDIT_SCHEMA.equals(name2)) {
                    this.mHasEditSchema = true;
                    parseEditSchema(context, xmlPullParser, asAttributeSet);
                } else if (TAG_CONTACTS_DATA_KIND.equals(name2)) {
                    TypedArray obtainStyledAttributes = context.obtainStyledAttributes(asAttributeSet, R$styleable.ContactsDataKind);
                    DataKind dataKind = new DataKind();
                    dataKind.mimeType = obtainStyledAttributes.getString(1);
                    String string = obtainStyledAttributes.getString(2);
                    if (string != null) {
                        dataKind.actionHeader = new BaseAccountType.SimpleInflater(string);
                    }
                    String string2 = obtainStyledAttributes.getString(3);
                    if (string2 != null) {
                        dataKind.actionBody = new BaseAccountType.SimpleInflater(string2);
                    }
                    obtainStyledAttributes.recycle();
                    addKind(dataKind);
                }
            }
        }
    }

    static int resolveExternalResId(Context context, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (str.charAt(0) != '@') {
            if (Log.isLoggable(TAG, 5) && !isFromTestApp(str2)) {
                Log.w(TAG, str3 + " must be a resource name beginnig with '@'");
            }
            return -1;
        }
        try {
            int identifier = context.getPackageManager().getResourcesForApplication(str2).getIdentifier(str.substring(1), null, str2);
            if (identifier != 0) {
                return identifier;
            }
            if (Log.isLoggable(TAG, 5) && !isFromTestApp(str2)) {
                Log.w(TAG, "Unable to load " + str + " from package " + str2);
            }
            return -1;
        } catch (PackageManager.NameNotFoundException unused) {
            if (Log.isLoggable(TAG, 5) && !isFromTestApp(str2)) {
                Log.w(TAG, "Unable to load package " + str2);
            }
            return -1;
        }
    }

    static boolean isFromTestApp(String str) {
        return TextUtils.equals(str, "com.google.android.contacts.tests");
    }
}
