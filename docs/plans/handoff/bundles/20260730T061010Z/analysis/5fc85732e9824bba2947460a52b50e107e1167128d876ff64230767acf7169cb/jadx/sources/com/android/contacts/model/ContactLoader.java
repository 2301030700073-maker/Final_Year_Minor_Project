package com.android.contacts.model;

import android.content.AsyncTaskLoader;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.Loader;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.ContactSaveService;
import com.android.contacts.GeoUtil;
import com.android.contacts.GroupMetaDataLoader;
import com.android.contacts.compat.CompatUtils;
import com.android.contacts.group.GroupMetaData;
import com.android.contacts.model.account.AccountType;
import com.android.contacts.model.account.GoogleAccountType;
import com.android.contacts.model.dataitem.DataItem;
import com.android.contacts.model.dataitem.PhoneDataItem;
import com.android.contacts.model.dataitem.PhotoDataItem;
import com.android.contacts.util.ContactLoaderUtils;
import com.android.contacts.util.DataStatus;
import com.android.contacts.util.UriUtils;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Lists;
import com.google.common.collect.Sets;
import com.google.common.collect.UnmodifiableIterator;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ContactLoader extends AsyncTaskLoader<Contact> {
    private static final boolean DEBUG;
    private static final String TAG;
    private static Contact sCachedResult;
    private boolean mComputeFormattedPhoneNumber;
    private Contact mContact;
    private boolean mLoadGroupMetaData;
    private Uri mLookupUri;
    private final Set<Long> mNotifiedRawContactIds;
    private Loader<Contact>.ForceLoadContentObserver mObserver;
    private boolean mPostViewNotification;
    private final Uri mRequestedUri;

    private static class DirectoryQuery {
        static final String[] COLUMNS = {"displayName", "packageName", "typeResourceId", ContactSaveService.EXTRA_ACCOUNT_TYPE, ContactSaveService.EXTRA_ACCOUNT_NAME, "exportSupport"};
    }

    static {
        String simpleName = ContactLoader.class.getSimpleName();
        TAG = simpleName;
        DEBUG = Log.isLoggable(simpleName, 3);
        sCachedResult = null;
    }

    public ContactLoader(Context context, Uri uri, boolean z) {
        this(context, uri, false, z, false);
    }

    public ContactLoader(Context context, Uri uri, boolean z, boolean z2) {
        this(context, uri, z2, z, false);
    }

    public ContactLoader(Context context, Uri uri, boolean z, boolean z2, boolean z3) {
        super(context);
        this.mNotifiedRawContactIds = Sets.newHashSet();
        this.mLookupUri = uri;
        this.mRequestedUri = uri;
        this.mLoadGroupMetaData = z;
        this.mPostViewNotification = z2;
        this.mComputeFormattedPhoneNumber = z3;
    }

    private static class ContactQuery {
        static final String[] COLUMNS;
        static final String[] COLUMNS_INTERNAL;

        static {
            String[] strArr = {"name_raw_contact_id", "display_name_source", "lookup", "display_name", "display_name_alt", "phonetic_name", "photo_id", ContactSaveService.EXTRA_STARRED_FLAG, "contact_presence", "contact_status", "contact_status_ts", "contact_status_res_package", "contact_status_label", "contact_id", "raw_contact_id", "account_name", "account_type", "data_set", "dirty", "version", "sourceid", "sync1", "sync2", "sync3", "sync4", "deleted", "data_id", "data1", "data2", "data3", "data4", "data5", "data6", "data7", "data8", "data9", "data10", "data11", "data12", "data13", "data14", "data15", "data_sync1", "data_sync2", "data_sync3", "data_sync4", "data_version", "is_primary", "is_super_primary", "mimetype", "group_sourceid", "mode", "chat_capability", "status", "status_res_package", "status_icon", "status_label", "status_ts", "photo_uri", "send_to_voicemail", "custom_ringtone", "is_user_profile"};
            COLUMNS_INTERNAL = strArr;
            ArrayList newArrayList = Lists.newArrayList(strArr);
            if (CompatUtils.isMarshmallowCompatible()) {
                newArrayList.add("carrier_presence");
            }
            COLUMNS = (String[]) newArrayList.toArray(new String[newArrayList.size()]);
        }
    }

    public void setNewLookup(Uri uri) {
        this.mLookupUri = uri;
        this.mContact = null;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.content.AsyncTaskLoader
    public Contact loadInBackground() {
        Contact loadContactEntity;
        boolean z;
        try {
            ContentResolver contentResolver = getContext().getContentResolver();
            Uri ensureIsContactUri = ContactLoaderUtils.ensureIsContactUri(contentResolver, this.mLookupUri);
            Contact contact = sCachedResult;
            sCachedResult = null;
            if (contact != null && UriUtils.areEqual(contact.getLookupUri(), this.mLookupUri)) {
                loadContactEntity = new Contact(this.mRequestedUri, contact);
                z = true;
            } else {
                if (ensureIsContactUri.getLastPathSegment().equals("encoded")) {
                    loadContactEntity = loadEncodedContactEntity(ensureIsContactUri, this.mLookupUri);
                } else {
                    loadContactEntity = loadContactEntity(contentResolver, ensureIsContactUri);
                }
                z = false;
            }
            if (loadContactEntity.isLoaded()) {
                if (loadContactEntity.isDirectoryEntry()) {
                    if (!z) {
                        loadDirectoryMetaData(loadContactEntity);
                    }
                } else if (this.mLoadGroupMetaData && loadContactEntity.getGroupMetaData() == null) {
                    loadGroupMetaData(loadContactEntity);
                }
                if (this.mComputeFormattedPhoneNumber) {
                    computeFormattedPhoneNumbers(loadContactEntity);
                }
                if (!z) {
                    loadPhotoBinaryData(loadContactEntity);
                }
            }
            return loadContactEntity;
        } catch (Exception e) {
            Log.e(TAG, "Error loading the contact: " + this.mLookupUri, e);
            return Contact.forError(this.mRequestedUri, e);
        }
    }

    public static Contact parseEncodedContactEntity(Uri uri) {
        try {
            return loadEncodedContactEntity(uri, uri);
        } catch (JSONException unused) {
            return null;
        }
    }

    private static Contact loadEncodedContactEntity(Uri uri, Uri uri2) throws JSONException {
        JSONObject jSONObject = new JSONObject(uri.getEncodedFragment());
        long longValue = Long.valueOf(uri.getQueryParameter("directory")).longValue();
        String optString = jSONObject.optString("display_name");
        Contact contact = new Contact(uri, uri, uri2, longValue, null, -1L, -1L, jSONObject.getInt("display_name_source"), 0L, jSONObject.optString("photo_uri", null), optString, jSONObject.optString("display_name_alt", optString), null, false, null, false, null, false);
        contact.setStatuses(new ImmutableMap.Builder().build());
        String optString2 = jSONObject.optString("account_name", null);
        String queryParameter = uri.getQueryParameter("displayName");
        if (optString2 != null) {
            contact.setDirectoryMetaData(queryParameter, null, optString2, jSONObject.getString("account_type"), jSONObject.optInt("exportSupport", 1));
        } else {
            contact.setDirectoryMetaData(queryParameter, null, null, null, jSONObject.optInt("exportSupport", 2));
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", (Integer) (-1));
        contentValues.put("contact_id", (Integer) (-1));
        RawContact rawContact = new RawContact(contentValues);
        JSONObject jSONObject2 = jSONObject.getJSONObject("vnd.android.cursor.item/contact");
        Iterator<String> keys = jSONObject2.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            JSONObject optJSONObject = jSONObject2.optJSONObject(next);
            if (optJSONObject == null) {
                JSONArray jSONArray = jSONObject2.getJSONArray(next);
                for (int i = 0; i < jSONArray.length(); i++) {
                    processOneRecord(rawContact, jSONArray.getJSONObject(i), next);
                }
            } else {
                processOneRecord(rawContact, optJSONObject, next);
            }
        }
        contact.setRawContacts(new ImmutableList.Builder().add((ImmutableList.Builder) rawContact).build());
        return contact;
    }

    private static void processOneRecord(RawContact rawContact, JSONObject jSONObject, String str) throws JSONException {
        ContentValues contentValues = new ContentValues();
        contentValues.put("mimetype", str);
        contentValues.put("_id", (Integer) (-1));
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj instanceof String) {
                contentValues.put(next, (String) obj);
            } else if (obj instanceof Integer) {
                contentValues.put(next, (Integer) obj);
            }
        }
        rawContact.addDataItemValues(contentValues);
    }

    private Contact loadContactEntity(ContentResolver contentResolver, Uri uri) {
        Cursor query = contentResolver.query(Uri.withAppendedPath(uri, "entities"), ContactQuery.COLUMNS, null, null, "raw_contact_id");
        if (query == null) {
            Log.e(TAG, "No cursor returned in loadContactEntity");
            return Contact.forNotFound(this.mRequestedUri);
        }
        try {
            if (!query.moveToFirst()) {
                query.close();
                return Contact.forNotFound(this.mRequestedUri);
            }
            Contact loadContactHeaderData = loadContactHeaderData(query, uri);
            long j = -1;
            RawContact rawContact = null;
            ImmutableList.Builder builder = new ImmutableList.Builder();
            ImmutableMap.Builder builder2 = new ImmutableMap.Builder();
            do {
                long j2 = query.getLong(14);
                if (j2 != j) {
                    RawContact rawContact2 = new RawContact(loadRawContactValues(query));
                    builder.add((ImmutableList.Builder) rawContact2);
                    rawContact = rawContact2;
                    j = j2;
                }
                if (!query.isNull(26)) {
                    rawContact.addDataItemValues(loadDataValues(query));
                    if (!query.isNull(51) || !query.isNull(53)) {
                        builder2.put(Long.valueOf(query.getLong(26)), new DataStatus(query));
                    }
                }
            } while (query.moveToNext());
            loadContactHeaderData.setRawContacts(builder.build());
            loadContactHeaderData.setStatuses(builder2.build());
            return loadContactHeaderData;
        } finally {
            query.close();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004f A[Catch: all -> 0x0064, LOOP:0: B:14:0x0048->B:17:0x004f, LOOP_END, TryCatch #0 {all -> 0x0064, blocks: (B:15:0x0048, B:17:0x004f, B:19:0x0054), top: B:14:0x0048, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0054 A[EDGE_INSN: B:18:0x0054->B:19:0x0054 BREAK  A[LOOP:0: B:14:0x0048->B:17:0x004f], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0060 A[Catch: IOException -> 0x006e, DONT_GENERATE, TryCatch #1 {IOException -> 0x006e, blocks: (B:7:0x0009, B:9:0x0019, B:12:0x0022, B:13:0x003f, B:20:0x005b, B:22:0x0060, B:27:0x0065, B:29:0x006a, B:30:0x006d, B:31:0x0035, B:15:0x0048, B:17:0x004f, B:19:0x0054), top: B:6:0x0009, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void loadPhotoBinaryData(com.android.contacts.model.Contact r7) {
        /*
            r6 = this;
            r6.loadThumbnailBinaryData(r7)
            java.lang.String r0 = r7.getPhotoUri()
            if (r0 == 0) goto L6e
            android.net.Uri r1 = android.net.Uri.parse(r0)     // Catch: java.io.IOException -> L6e
            java.lang.String r2 = r1.getScheme()     // Catch: java.io.IOException -> L6e
            java.lang.String r3 = "http"
            boolean r3 = r3.equals(r2)     // Catch: java.io.IOException -> L6e
            if (r3 != 0) goto L35
            java.lang.String r3 = "https"
            boolean r2 = r3.equals(r2)     // Catch: java.io.IOException -> L6e
            if (r2 == 0) goto L22
            goto L35
        L22:
            android.content.Context r0 = r6.getContext()     // Catch: java.io.IOException -> L6e
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: java.io.IOException -> L6e
            java.lang.String r2 = "r"
            android.content.res.AssetFileDescriptor r0 = r0.openAssetFileDescriptor(r1, r2)     // Catch: java.io.IOException -> L6e
            java.io.FileInputStream r1 = r0.createInputStream()     // Catch: java.io.IOException -> L6e
            goto L3f
        L35:
            java.net.URL r1 = new java.net.URL     // Catch: java.io.IOException -> L6e
            r1.<init>(r0)     // Catch: java.io.IOException -> L6e
            java.io.InputStream r1 = r1.openStream()     // Catch: java.io.IOException -> L6e
            r0 = 0
        L3f:
            r2 = 16384(0x4000, float:2.2959E-41)
            byte[] r2 = new byte[r2]     // Catch: java.io.IOException -> L6e
            java.io.ByteArrayOutputStream r3 = new java.io.ByteArrayOutputStream     // Catch: java.io.IOException -> L6e
            r3.<init>()     // Catch: java.io.IOException -> L6e
        L48:
            int r4 = r1.read(r2)     // Catch: java.lang.Throwable -> L64
            r5 = -1
            if (r4 == r5) goto L54
            r5 = 0
            r3.write(r2, r5, r4)     // Catch: java.lang.Throwable -> L64
            goto L48
        L54:
            byte[] r2 = r3.toByteArray()     // Catch: java.lang.Throwable -> L64
            r7.setPhotoBinaryData(r2)     // Catch: java.lang.Throwable -> L64
            r1.close()     // Catch: java.io.IOException -> L6e
            if (r0 == 0) goto L63
            r0.close()     // Catch: java.io.IOException -> L6e
        L63:
            return
        L64:
            r2 = move-exception
            r1.close()     // Catch: java.io.IOException -> L6e
            if (r0 == 0) goto L6d
            r0.close()     // Catch: java.io.IOException -> L6e
        L6d:
            throw r2     // Catch: java.io.IOException -> L6e
        L6e:
            byte[] r0 = r7.getThumbnailPhotoBinaryData()
            r7.setPhotoBinaryData(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.model.ContactLoader.loadPhotoBinaryData(com.android.contacts.model.Contact):void");
    }

    private void loadThumbnailBinaryData(Contact contact) {
        long photoId = contact.getPhotoId();
        if (photoId <= 0) {
            return;
        }
        UnmodifiableIterator<RawContact> it = contact.getRawContacts().iterator();
        while (it.hasNext()) {
            Iterator<DataItem> it2 = it.next().getDataItems().iterator();
            while (true) {
                if (it2.hasNext()) {
                    DataItem next = it2.next();
                    if (next.getId() == photoId) {
                        if (next instanceof PhotoDataItem) {
                            contact.setThumbnailPhotoBinaryData(((PhotoDataItem) next).getPhoto());
                        }
                    }
                }
            }
        }
    }

    private Contact loadContactHeaderData(Cursor cursor, Uri uri) {
        String queryParameter = uri.getQueryParameter("directory");
        long parseLong = queryParameter == null ? 0L : Long.parseLong(queryParameter);
        long j = cursor.getLong(13);
        String string = cursor.getString(2);
        long j2 = cursor.getLong(0);
        int i = cursor.getInt(1);
        String string2 = cursor.getString(3);
        String string3 = cursor.getString(4);
        String string4 = cursor.getString(5);
        return new Contact(this.mRequestedUri, uri, (parseLong == 0 || parseLong == 1) ? ContentUris.withAppendedId(Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_LOOKUP_URI, string), j) : uri, parseLong, string, j, j2, i, cursor.getLong(6), cursor.getString(58), string2, string3, string4, cursor.getInt(7) != 0, cursor.isNull(8) ? null : Integer.valueOf(cursor.getInt(8)), cursor.getInt(59) == 1, cursor.getString(60), cursor.getInt(61) == 1);
    }

    private ContentValues loadRawContactValues(Cursor cursor) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", Long.valueOf(cursor.getLong(14)));
        cursorColumnToContentValues(cursor, contentValues, 15);
        cursorColumnToContentValues(cursor, contentValues, 16);
        cursorColumnToContentValues(cursor, contentValues, 17);
        cursorColumnToContentValues(cursor, contentValues, 18);
        cursorColumnToContentValues(cursor, contentValues, 19);
        cursorColumnToContentValues(cursor, contentValues, 20);
        cursorColumnToContentValues(cursor, contentValues, 21);
        cursorColumnToContentValues(cursor, contentValues, 22);
        cursorColumnToContentValues(cursor, contentValues, 23);
        cursorColumnToContentValues(cursor, contentValues, 24);
        cursorColumnToContentValues(cursor, contentValues, 25);
        cursorColumnToContentValues(cursor, contentValues, 13);
        cursorColumnToContentValues(cursor, contentValues, 7);
        return contentValues;
    }

    private ContentValues loadDataValues(Cursor cursor) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", Long.valueOf(cursor.getLong(26)));
        cursorColumnToContentValues(cursor, contentValues, 27);
        cursorColumnToContentValues(cursor, contentValues, 28);
        cursorColumnToContentValues(cursor, contentValues, 29);
        cursorColumnToContentValues(cursor, contentValues, 30);
        cursorColumnToContentValues(cursor, contentValues, 31);
        cursorColumnToContentValues(cursor, contentValues, 32);
        cursorColumnToContentValues(cursor, contentValues, 33);
        cursorColumnToContentValues(cursor, contentValues, 34);
        cursorColumnToContentValues(cursor, contentValues, 35);
        cursorColumnToContentValues(cursor, contentValues, 36);
        cursorColumnToContentValues(cursor, contentValues, 37);
        cursorColumnToContentValues(cursor, contentValues, 38);
        cursorColumnToContentValues(cursor, contentValues, 39);
        cursorColumnToContentValues(cursor, contentValues, 40);
        cursorColumnToContentValues(cursor, contentValues, 41);
        cursorColumnToContentValues(cursor, contentValues, 42);
        cursorColumnToContentValues(cursor, contentValues, 43);
        cursorColumnToContentValues(cursor, contentValues, 44);
        cursorColumnToContentValues(cursor, contentValues, 45);
        cursorColumnToContentValues(cursor, contentValues, 46);
        cursorColumnToContentValues(cursor, contentValues, 47);
        cursorColumnToContentValues(cursor, contentValues, 48);
        cursorColumnToContentValues(cursor, contentValues, 49);
        cursorColumnToContentValues(cursor, contentValues, 50);
        cursorColumnToContentValues(cursor, contentValues, 52);
        if (CompatUtils.isMarshmallowCompatible()) {
            cursorColumnToContentValues(cursor, contentValues, 62);
        }
        return contentValues;
    }

    private void cursorColumnToContentValues(Cursor cursor, ContentValues contentValues, int i) {
        int type = cursor.getType(i);
        if (type != 0) {
            if (type == 1) {
                contentValues.put(ContactQuery.COLUMNS[i], Long.valueOf(cursor.getLong(i)));
            } else if (type == 3) {
                contentValues.put(ContactQuery.COLUMNS[i], cursor.getString(i));
            } else {
                if (type == 4) {
                    contentValues.put(ContactQuery.COLUMNS[i], cursor.getBlob(i));
                    return;
                }
                throw new IllegalStateException("Invalid or unhandled data type");
            }
        }
    }

    private void loadDirectoryMetaData(Contact contact) {
        Cursor query = getContext().getContentResolver().query(ContentUris.withAppendedId(ContactsContract.Directory.CONTENT_URI, contact.getDirectoryId()), DirectoryQuery.COLUMNS, null, null, null);
        if (query == null) {
            return;
        }
        try {
            if (query.moveToFirst()) {
                String string = query.getString(0);
                String string2 = query.getString(1);
                int i = query.getInt(2);
                String string3 = query.getString(3);
                String string4 = query.getString(4);
                int i2 = query.getInt(5);
                String str = null;
                if (!TextUtils.isEmpty(string2)) {
                    try {
                        str = getContext().getPackageManager().getResourcesForApplication(string2).getString(i);
                    } catch (PackageManager.NameNotFoundException unused) {
                        Log.w(TAG, "Contact directory resource not found: " + string2 + "." + i);
                    }
                }
                contact.setDirectoryMetaData(string, str, string3, string4, i2);
            }
        } finally {
            query.close();
        }
    }

    private static class AccountKey {
        private final String mAccountName;
        private final String mAccountType;
        private final String mDataSet;

        public AccountKey(String str, String str2, String str3) {
            this.mAccountName = str;
            this.mAccountType = str2;
            this.mDataSet = str3;
        }

        public int hashCode() {
            return Objects.hash(this.mAccountName, this.mAccountType, this.mDataSet);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof AccountKey)) {
                return false;
            }
            AccountKey accountKey = (AccountKey) obj;
            return Objects.equals(this.mAccountName, accountKey.mAccountName) && Objects.equals(this.mAccountType, accountKey.mAccountType) && Objects.equals(this.mDataSet, accountKey.mDataSet);
        }
    }

    private void loadGroupMetaData(Contact contact) {
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        UnmodifiableIterator<RawContact> it = contact.getRawContacts().iterator();
        while (it.hasNext()) {
            RawContact next = it.next();
            String accountName = next.getAccountName();
            String accountTypeString = next.getAccountTypeString();
            String dataSet = next.getDataSet();
            AccountKey accountKey = new AccountKey(accountName, accountTypeString, dataSet);
            if (accountName != null && accountTypeString != null && !hashSet.contains(accountKey)) {
                hashSet.add(accountKey);
                if (sb.length() != 0) {
                    sb.append(" OR ");
                }
                sb.append("(account_name=? AND account_type=?");
                arrayList.add(accountName);
                arrayList.add(accountTypeString);
                sb.append(" AND deleted=0");
                if (dataSet != null) {
                    sb.append(" AND data_set=?");
                    arrayList.add(dataSet);
                } else {
                    sb.append(" AND data_set IS NULL");
                }
                sb.append(")");
            }
        }
        ImmutableList.Builder builder = new ImmutableList.Builder();
        Cursor query = getContext().getContentResolver().query(ContactsContract.Groups.CONTENT_URI, GroupMetaDataLoader.COLUMNS, sb.toString(), (String[]) arrayList.toArray(new String[0]), null);
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    builder.add((ImmutableList.Builder) new GroupMetaData(getContext(), query));
                } finally {
                    query.close();
                }
            }
        }
        contact.setGroupMetaData(builder.build());
    }

    private void computeFormattedPhoneNumbers(Contact contact) {
        String currentCountryIso = GeoUtil.getCurrentCountryIso(getContext());
        ImmutableList<RawContact> rawContacts = contact.getRawContacts();
        int size = rawContacts.size();
        for (int i = 0; i < size; i++) {
            List<DataItem> dataItems = rawContacts.get(i).getDataItems();
            int size2 = dataItems.size();
            for (int i2 = 0; i2 < size2; i2++) {
                DataItem dataItem = dataItems.get(i2);
                if (dataItem instanceof PhoneDataItem) {
                    ((PhoneDataItem) dataItem).computeFormattedPhoneNumber(currentCountryIso);
                }
            }
        }
    }

    @Override // android.content.Loader
    public void deliverResult(Contact contact) {
        unregisterObserver();
        if (isReset() || contact == null) {
            return;
        }
        this.mContact = contact;
        if (contact.isLoaded()) {
            this.mLookupUri = contact.getLookupUri();
            if (!contact.isDirectoryEntry()) {
                Log.i(TAG, "Registering content observer for " + this.mLookupUri);
                if (this.mObserver == null) {
                    this.mObserver = new Loader.ForceLoadContentObserver(this);
                }
                getContext().getContentResolver().registerContentObserver(this.mLookupUri, true, this.mObserver);
            }
            if (this.mPostViewNotification) {
                postViewNotificationToSyncAdapter();
            }
        }
        super.deliverResult((ContactLoader) this.mContact);
    }

    private void postViewNotificationToSyncAdapter() {
        Context context = getContext();
        UnmodifiableIterator<RawContact> it = this.mContact.getRawContacts().iterator();
        while (it.hasNext()) {
            RawContact next = it.next();
            long longValue = next.getId().longValue();
            if (!this.mNotifiedRawContactIds.contains(Long.valueOf(longValue))) {
                this.mNotifiedRawContactIds.add(Long.valueOf(longValue));
                AccountType accountType = next.getAccountType(context);
                String viewContactNotifyServiceClassName = accountType.getViewContactNotifyServiceClassName();
                String viewContactNotifyServicePackageName = accountType.getViewContactNotifyServicePackageName();
                if (!TextUtils.isEmpty(viewContactNotifyServiceClassName) && !TextUtils.isEmpty(viewContactNotifyServicePackageName)) {
                    Uri withAppendedId = ContentUris.withAppendedId(ContactsContract.RawContacts.CONTENT_URI, longValue);
                    Intent intent = new Intent();
                    intent.setDataAndType(withAppendedId, "vnd.android.cursor.item/raw_contact");
                    if (accountType instanceof GoogleAccountType) {
                        intent.setPackage(viewContactNotifyServicePackageName);
                        intent.setAction("com.google.android.syncadapters.contacts.SYNC_HIGH_RES_PHOTO");
                        List<ResolveInfo> queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 0);
                        if (!queryBroadcastReceivers.isEmpty()) {
                            if (Log.isLoggable(TAG, 3)) {
                                Iterator<ResolveInfo> it2 = queryBroadcastReceivers.iterator();
                                while (it2.hasNext()) {
                                    Log.d(TAG, it2.next().activityInfo.toString());
                                }
                            }
                            context.sendBroadcast(intent);
                        }
                    }
                    intent.setClassName(viewContactNotifyServicePackageName, viewContactNotifyServiceClassName);
                    intent.setAction("android.intent.action.VIEW");
                    try {
                        context.startService(intent);
                    } catch (Exception e) {
                        Log.e(TAG, "Error sending message to source-app", e);
                    }
                }
            }
        }
    }

    private void unregisterObserver() {
        if (this.mObserver != null) {
            getContext().getContentResolver().unregisterContentObserver(this.mObserver);
            this.mObserver = null;
        }
    }

    public Uri getLookupUri() {
        return this.mLookupUri;
    }

    @Override // android.content.Loader
    protected void onStartLoading() {
        Contact contact = this.mContact;
        if (contact != null) {
            deliverResult(contact);
        }
        if (takeContentChanged() || this.mContact == null) {
            forceLoad();
        }
    }

    @Override // android.content.Loader
    protected void onStopLoading() {
        cancelLoad();
    }

    @Override // android.content.Loader
    protected void onReset() {
        super.onReset();
        cancelLoad();
        unregisterObserver();
        this.mContact = null;
    }

    public void cacheResult() {
        Contact contact = this.mContact;
        if (contact == null || !contact.isLoaded()) {
            sCachedResult = null;
        } else {
            sCachedResult = this.mContact;
        }
    }
}
