package com.android.contacts;

import android.app.Activity;
import android.app.IntentService;
import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.os.RemoteException;
import android.provider.ContactsContract;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.android.contacts.compat.CompatUtils;
import com.android.contacts.compat.PinnedPositionsCompat;
import com.android.contacts.database.ContactUpdateUtils;
import com.android.contacts.database.SimContactDao;
import com.android.contacts.model.CPOWrapper;
import com.android.contacts.model.RawContactDeltaList;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.model.account.BaseAccountType;
import com.android.contacts.preference.ContactsPreferences;
import com.android.contacts.util.ContactDisplayUtils;
import com.android.contacts.util.ContactPhotoUtils;
import com.android.contacts.util.PermissionsUtil;
import com.android.contactsbind.FeedbackHelper;
import com.google.common.collect.Lists;
import com.google.common.collect.Sets;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class ContactSaveService extends IntentService {
    public static final String ACTION_CLEAR_PRIMARY = "clearPrimary";
    public static final String ACTION_CREATE_GROUP = "createGroup";
    public static final String ACTION_DELETE_CONTACT = "delete";
    public static final String ACTION_DELETE_GROUP = "deleteGroup";
    public static final String ACTION_DELETE_MULTIPLE_CONTACTS = "deleteMultipleContacts";
    public static final String ACTION_JOIN_CONTACTS = "joinContacts";
    public static final String ACTION_JOIN_SEVERAL_CONTACTS = "joinSeveralContacts";
    public static final String ACTION_NEW_RAW_CONTACT = "newRawContact";
    public static final String ACTION_RENAME_GROUP = "renameGroup";
    public static final String ACTION_SAVE_CONTACT = "saveContact";
    public static final String ACTION_SET_RINGTONE = "setRingtone";
    public static final String ACTION_SET_SEND_TO_VOICEMAIL = "sendToVoicemail";
    public static final String ACTION_SET_STARRED = "setStarred";
    public static final String ACTION_SET_SUPER_PRIMARY = "setSuperPrimary";
    public static final String ACTION_SLEEP = "sleep";
    public static final String ACTION_SPLIT_CONTACT = "splitContact";
    public static final String ACTION_UNDO = "undo";
    public static final String ACTION_UPDATE_GROUP = "updateGroup";
    public static final int BAD_ARGUMENTS = 3;
    public static final String BROADCAST_GROUP_DELETED = "groupDeleted";
    public static final String BROADCAST_LINK_COMPLETE = "linkComplete";
    public static final String BROADCAST_SERVICE_STATE_CHANGED = "serviceStateChanged";
    public static final String BROADCAST_UNLINK_COMPLETE = "unlinkComplete";
    public static final int CONTACTS_LINKED = 1;
    public static final int CONTACTS_SPLIT = 2;
    public static final int CP2_ERROR = 0;
    private static final boolean DEBUG = false;
    public static final String EXTRA_ACCOUNT = "account";
    public static final String EXTRA_ACCOUNT_NAME = "accountName";
    public static final String EXTRA_ACCOUNT_TYPE = "accountType";
    public static final String EXTRA_CALLBACK_INTENT = "callbackIntent";
    public static final String EXTRA_CONTACT_ID1 = "contactId1";
    public static final String EXTRA_CONTACT_ID2 = "contactId2";
    public static final String EXTRA_CONTACT_IDS = "contactIds";
    public static final String EXTRA_CONTACT_STATE = "state";
    public static final String EXTRA_CONTACT_URI = "contactUri";
    public static final String EXTRA_CONTENT_VALUES = "contentValues";
    public static final String EXTRA_CUSTOM_RINGTONE = "customRingtone";
    public static final String EXTRA_DATA_ID = "dataId";
    public static final String EXTRA_DATA_SET = "dataSet";
    public static final String EXTRA_DISPLAY_NAME = "extraDisplayName";
    public static final String EXTRA_DISPLAY_NAME_ARRAY = "extraDisplayNameArray";
    public static final String EXTRA_GROUP_ID = "groupId";
    public static final String EXTRA_GROUP_LABEL = "groupLabel";
    public static final String EXTRA_HARD_SPLIT = "extraHardSplit";
    public static final String EXTRA_RAW_CONTACTS_TO_ADD = "rawContactsToAdd";
    public static final String EXTRA_RAW_CONTACTS_TO_REMOVE = "rawContactsToRemove";
    public static final String EXTRA_RAW_CONTACT_IDS = "rawContactIds";
    public static final String EXTRA_RESULT_CODE = "resultCode";
    public static final String EXTRA_RESULT_COUNT = "count";
    public static final String EXTRA_RESULT_RECEIVER = "resultReceiver";
    public static final String EXTRA_SAVE_IS_PROFILE = "saveIsProfile";
    public static final String EXTRA_SAVE_MODE = "saveMode";
    public static final String EXTRA_SAVE_SUCCEEDED = "saveSucceeded";
    public static final String EXTRA_SEND_TO_VOICEMAIL_FLAG = "sendToVoicemailFlag";
    public static final String EXTRA_SLEEP_DURATION = "sleepDuration";
    public static final String EXTRA_STARRED_FLAG = "starred";
    public static final String EXTRA_UNDO_ACTION = "undoAction";
    public static final String EXTRA_UNDO_DATA = "undoData";
    public static final String EXTRA_UPDATED_PHOTOS = "updatedPhotos";
    private static final int MAX_CONTACTS_PROVIDER_BATCH_SIZE = 499;
    private static final int PERSIST_TRIES = 3;
    public static final int RESULT_FAILURE = 2;
    public static final int RESULT_SUCCESS = 1;
    public static final int RESULT_UNKNOWN = 0;
    private static final String TAG = "ContactSaveService";
    private GroupsDao mGroupsDao;
    private Handler mMainHandler;
    private SimContactDao mSimContactDao;
    private static final HashSet<String> ALLOWED_DATA_COLUMNS = Sets.newHashSet("mimetype", "is_primary", "data1", "data2", "data3", "data4", "data5", "data6", "data7", "data8", "data9", "data10", "data11", "data12", "data13", "data14", "data15");
    private static final CopyOnWriteArrayList<Listener> sListeners = new CopyOnWriteArrayList<>();
    private static final State sState = new State();

    private interface ContactEntityQuery {
        public static final int CONTACT_ID = 1;
        public static final int DATA_ID = 0;
        public static final int IS_SUPER_PRIMARY = 2;
        public static final String[] PROJECTION = {"data_id", "contact_id", "is_super_primary"};
        public static final String SELECTION = "mimetype = 'vnd.android.cursor.item/name' AND data1=display_name AND data1 IS NOT NULL  AND data1 != '' ";
    }

    public interface GroupsDao {
        Bundle captureDeletionUndoData(Uri uri);

        Uri create(String str, AccountWithDataSet accountWithDataSet);

        int delete(Uri uri);

        Uri undoDeletion(Bundle bundle);
    }

    private interface JoinContactQuery {
        public static final int CONTACT_ID = 1;
        public static final int DISPLAY_NAME_SOURCE = 2;
        public static final String[] PROJECTION = {"_id", "contact_id", "display_name_source"};
        public static final int _ID = 0;
    }

    public interface Listener {
        void onServiceCompleted(Intent intent);
    }

    public ContactSaveService() {
        super(TAG);
        setIntentRedelivery(true);
        this.mMainHandler = new Handler(Looper.getMainLooper());
    }

    @Override // android.app.IntentService, android.app.Service
    public void onCreate() {
        super.onCreate();
        this.mGroupsDao = new GroupsDaoImpl(this);
        this.mSimContactDao = SimContactDao.create(this);
    }

    public static void registerListener(Listener listener) {
        if (!(listener instanceof Activity)) {
            throw new ClassCastException("Only activities can be registered to receive callback from " + ContactSaveService.class.getName());
        }
        sListeners.add(0, listener);
    }

    public static boolean canUndo(Intent intent) {
        return intent.hasExtra(EXTRA_UNDO_DATA);
    }

    public static void unregisterListener(Listener listener) {
        sListeners.remove(listener);
    }

    public static State getState() {
        return sState;
    }

    private void notifyStateChanged() {
        LocalBroadcastManager.getInstance(this).sendBroadcast(new Intent(BROADCAST_SERVICE_STATE_CHANGED));
    }

    public static boolean startService(Context context, Intent intent, int i) {
        try {
            context.startService(intent);
            return true;
        } catch (Exception unused) {
            Toast.makeText(context, i != 0 ? i != 1 ? i != 2 ? R.string.contactGenericErrorToast : R.string.contactUnlinkErrorToast : R.string.contactJoinErrorToast : R.string.contactSavedErrorToast, 0).show();
            return false;
        }
    }

    public static void startService(Context context, Intent intent) {
        try {
            context.startService(intent);
        } catch (Exception unused) {
            Toast.makeText(context, R.string.contactGenericErrorToast, 0).show();
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        Object systemService = super.getSystemService(str);
        return systemService != null ? systemService : getApplicationContext().getSystemService(str);
    }

    @Override // android.app.IntentService, android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        sState.onStart(intent);
        notifyStateChanged();
        return super.onStartCommand(intent, i, i2);
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        if (intent == null) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "onHandleIntent: could not handle null intent");
                return;
            }
            return;
        }
        if (!PermissionsUtil.hasPermission(this, "android.permission.WRITE_CONTACTS")) {
            Log.w(TAG, "No WRITE_CONTACTS permission, unable to write to CP2");
            showToast(R.string.contactSavedErrorToast);
            return;
        }
        String action = intent.getAction();
        if (ACTION_NEW_RAW_CONTACT.equals(action)) {
            createRawContact(intent);
        } else if (ACTION_SAVE_CONTACT.equals(action)) {
            saveContact(intent);
        } else if ("createGroup".equals(action)) {
            createGroup(intent);
        } else if (ACTION_RENAME_GROUP.equals(action)) {
            renameGroup(intent);
        } else if ("deleteGroup".equals(action)) {
            deleteGroup(intent);
        } else if ("updateGroup".equals(action)) {
            updateGroup(intent);
        } else if (ACTION_SET_STARRED.equals(action)) {
            setStarred(intent);
        } else if (ACTION_SET_SUPER_PRIMARY.equals(action)) {
            setSuperPrimary(intent);
        } else if (ACTION_CLEAR_PRIMARY.equals(action)) {
            clearPrimary(intent);
        } else if (ACTION_DELETE_MULTIPLE_CONTACTS.equals(action)) {
            deleteMultipleContacts(intent);
        } else if (ACTION_DELETE_CONTACT.equals(action)) {
            deleteContact(intent);
        } else if (ACTION_SPLIT_CONTACT.equals(action)) {
            splitContact(intent);
        } else if (ACTION_JOIN_CONTACTS.equals(action)) {
            joinContacts(intent);
        } else if (ACTION_JOIN_SEVERAL_CONTACTS.equals(action)) {
            joinSeveralContacts(intent);
        } else if (ACTION_SET_SEND_TO_VOICEMAIL.equals(action)) {
            setSendToVoicemail(intent);
        } else if (ACTION_SET_RINGTONE.equals(action)) {
            setRingtone(intent);
        } else if (ACTION_UNDO.equals(action)) {
            undo(intent);
        } else if (ACTION_SLEEP.equals(action)) {
            sleepForDebugging(intent);
        }
        sState.onFinish(intent);
        notifyStateChanged();
    }

    public static Intent createNewRawContactIntent(Context context, ArrayList<ContentValues> arrayList, AccountWithDataSet accountWithDataSet, Class<? extends Activity> cls, String str) {
        Intent intent = new Intent(context, (Class<?>) ContactSaveService.class);
        intent.setAction(ACTION_NEW_RAW_CONTACT);
        if (accountWithDataSet != null) {
            intent.putExtra(EXTRA_ACCOUNT_NAME, accountWithDataSet.name);
            intent.putExtra(EXTRA_ACCOUNT_TYPE, accountWithDataSet.type);
            intent.putExtra(EXTRA_DATA_SET, accountWithDataSet.dataSet);
        }
        intent.putParcelableArrayListExtra(EXTRA_CONTENT_VALUES, arrayList);
        Intent intent2 = new Intent(context, cls);
        intent2.setAction(str);
        intent.putExtra(EXTRA_CALLBACK_INTENT, intent2);
        return intent;
    }

    private void createRawContact(Intent intent) {
        String stringExtra = intent.getStringExtra(EXTRA_ACCOUNT_NAME);
        String stringExtra2 = intent.getStringExtra(EXTRA_ACCOUNT_TYPE);
        String stringExtra3 = intent.getStringExtra(EXTRA_DATA_SET);
        ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra(EXTRA_CONTENT_VALUES);
        Intent intent2 = (Intent) intent.getParcelableExtra(EXTRA_CALLBACK_INTENT);
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        arrayList.add(ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI).withValue("account_name", stringExtra).withValue("account_type", stringExtra2).withValue("data_set", stringExtra3).build());
        int size = parcelableArrayListExtra.size();
        for (int i = 0; i < size; i++) {
            ContentValues contentValues = (ContentValues) parcelableArrayListExtra.get(i);
            contentValues.keySet().retainAll(ALLOWED_DATA_COLUMNS);
            arrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValues(contentValues).build());
        }
        ContentResolver contentResolver = getContentResolver();
        try {
            intent2.setData(ContactsContract.RawContacts.getContactLookupUri(contentResolver, contentResolver.applyBatch("com.android.contacts", arrayList)[0].uri));
            deliverCallback(intent2);
        } catch (Exception e) {
            throw new RuntimeException("Failed to store new contact", e);
        }
    }

    public static Intent createSaveContactIntent(Context context, RawContactDeltaList rawContactDeltaList, String str, int i, boolean z, Class<? extends Activity> cls, String str2, long j, Uri uri) {
        Bundle bundle = new Bundle();
        bundle.putParcelable(String.valueOf(j), uri);
        return createSaveContactIntent(context, rawContactDeltaList, str, i, z, cls, str2, bundle, null, null);
    }

    public static Intent createSaveContactIntent(Context context, RawContactDeltaList rawContactDeltaList, String str, int i, boolean z, Class<? extends Activity> cls, String str2, Bundle bundle, String str3, Long l) {
        Intent intent = new Intent(context, (Class<?>) ContactSaveService.class);
        intent.setAction(ACTION_SAVE_CONTACT);
        intent.putExtra(EXTRA_CONTACT_STATE, (Parcelable) rawContactDeltaList);
        intent.putExtra(EXTRA_SAVE_IS_PROFILE, z);
        intent.putExtra(EXTRA_SAVE_MODE, i);
        if (bundle != null) {
            intent.putExtra(EXTRA_UPDATED_PHOTOS, (Parcelable) bundle);
        }
        if (cls != null) {
            Intent intent2 = new Intent(context, cls);
            intent2.putExtra(str, i);
            if (str3 != null && l != null) {
                intent2.putExtra(str3, l);
            }
            intent2.setAction(str2);
            intent.putExtra(EXTRA_CALLBACK_INTENT, intent2);
        }
        return intent;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x01d6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:72:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void saveContact(android.content.Intent r25) {
        /*
            Method dump skipped, instructions count: 576
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.ContactSaveService.saveContact(android.content.Intent):void");
    }

    private int applyDiffSubset(ArrayList<ContentProviderOperation> arrayList, int i, ContentProviderResult[] contentProviderResultArr, ContentResolver contentResolver) throws RemoteException, OperationApplicationException {
        int min = Math.min(arrayList.size() - i, MAX_CONTACTS_PROVIDER_BATCH_SIZE);
        ArrayList<ContentProviderOperation> arrayList2 = new ArrayList<>();
        arrayList2.addAll(arrayList.subList(i, min + i));
        ContentProviderResult[] applyBatch = contentResolver.applyBatch("com.android.contacts", arrayList2);
        if (applyBatch == null || applyBatch.length + i > contentProviderResultArr.length) {
            return -1;
        }
        int length = applyBatch.length;
        int i2 = 0;
        while (i2 < length) {
            contentProviderResultArr[i] = applyBatch[i2];
            i2++;
            i++;
        }
        return applyBatch.length;
    }

    private boolean saveUpdatedPhoto(long j, Uri uri, int i) {
        return ContactPhotoUtils.savePhotoFromUriToUri(this, uri, Uri.withAppendedPath(ContentUris.withAppendedId(ContactsContract.RawContacts.CONTENT_URI, j), "display_photo"), i == 0);
    }

    private long getRawContactId(RawContactDeltaList rawContactDeltaList, ArrayList<CPOWrapper> arrayList, ContentProviderResult[] contentProviderResultArr) {
        long findRawContactId = rawContactDeltaList.findRawContactId();
        return findRawContactId != -1 ? findRawContactId : getInsertedRawContactId(arrayList, contentProviderResultArr);
    }

    private long getInsertedRawContactId(ArrayList<CPOWrapper> arrayList, ContentProviderResult[] contentProviderResultArr) {
        if (contentProviderResultArr == null) {
            return -1L;
        }
        int size = arrayList.size();
        int length = contentProviderResultArr.length;
        for (int i = 0; i < size && i < length; i++) {
            CPOWrapper cPOWrapper = arrayList.get(i);
            if (CompatUtils.isInsertCompat(cPOWrapper) && cPOWrapper.getOperation().getUri().getEncodedPath().contains(ContactsContract.RawContacts.CONTENT_URI.getEncodedPath())) {
                return ContentUris.parseId(contentProviderResultArr[i].uri);
            }
        }
        return -1L;
    }

    public static Intent createNewGroupIntent(Context context, AccountWithDataSet accountWithDataSet, String str, long[] jArr, Class<? extends Activity> cls, String str2) {
        Intent intent = new Intent(context, (Class<?>) ContactSaveService.class);
        intent.setAction("createGroup");
        intent.putExtra(EXTRA_ACCOUNT_TYPE, accountWithDataSet.type);
        intent.putExtra(EXTRA_ACCOUNT_NAME, accountWithDataSet.name);
        intent.putExtra(EXTRA_DATA_SET, accountWithDataSet.dataSet);
        intent.putExtra(EXTRA_GROUP_LABEL, str);
        intent.putExtra(EXTRA_RAW_CONTACTS_TO_ADD, jArr);
        Intent intent2 = new Intent(context, cls);
        intent2.setAction(str2);
        intent.putExtra(EXTRA_CALLBACK_INTENT, intent2);
        return intent;
    }

    private void createGroup(Intent intent) {
        String stringExtra = intent.getStringExtra(EXTRA_ACCOUNT_TYPE);
        String stringExtra2 = intent.getStringExtra(EXTRA_ACCOUNT_NAME);
        String stringExtra3 = intent.getStringExtra(EXTRA_DATA_SET);
        String stringExtra4 = intent.getStringExtra(EXTRA_GROUP_LABEL);
        long[] longArrayExtra = intent.getLongArrayExtra(EXTRA_RAW_CONTACTS_TO_ADD);
        Uri create = this.mGroupsDao.create(stringExtra4, new AccountWithDataSet(stringExtra2, stringExtra, stringExtra3));
        ContentResolver contentResolver = getContentResolver();
        if (create == null) {
            Log.e(TAG, "Couldn't create group with label " + stringExtra4);
            return;
        }
        addMembersToGroup(contentResolver, longArrayExtra, ContentUris.parseId(create));
        ContentValues contentValues = new ContentValues();
        contentValues.clear();
        contentValues.put("mimetype", "vnd.android.cursor.item/group_membership");
        contentValues.put("data1", Long.valueOf(ContentUris.parseId(create)));
        Intent intent2 = (Intent) intent.getParcelableExtra(EXTRA_CALLBACK_INTENT);
        intent2.setData(create);
        intent2.putExtra("data", Lists.newArrayList(contentValues));
        deliverCallback(intent2);
    }

    public static Intent createGroupRenameIntent(Context context, long j, String str, Class<? extends Activity> cls, String str2) {
        Intent intent = new Intent(context, (Class<?>) ContactSaveService.class);
        intent.setAction(ACTION_RENAME_GROUP);
        intent.putExtra(EXTRA_GROUP_ID, j);
        intent.putExtra(EXTRA_GROUP_LABEL, str);
        Intent intent2 = new Intent(context, cls);
        intent2.setAction(str2);
        intent.putExtra(EXTRA_CALLBACK_INTENT, intent2);
        return intent;
    }

    private void renameGroup(Intent intent) {
        long longExtra = intent.getLongExtra(EXTRA_GROUP_ID, -1L);
        String stringExtra = intent.getStringExtra(EXTRA_GROUP_LABEL);
        if (longExtra == -1) {
            Log.e(TAG, "Invalid arguments for renameGroup request");
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("title", stringExtra);
        Uri withAppendedId = ContentUris.withAppendedId(ContactsContract.Groups.CONTENT_URI, longExtra);
        getContentResolver().update(withAppendedId, contentValues, null, null);
        Intent intent2 = (Intent) intent.getParcelableExtra(EXTRA_CALLBACK_INTENT);
        intent2.setData(withAppendedId);
        deliverCallback(intent2);
    }

    public static Intent createGroupDeletionIntent(Context context, long j) {
        Intent intent = new Intent(context, (Class<?>) ContactSaveService.class);
        intent.setAction("deleteGroup");
        intent.putExtra(EXTRA_GROUP_ID, j);
        return intent;
    }

    private void deleteGroup(Intent intent) {
        long longExtra = intent.getLongExtra(EXTRA_GROUP_ID, -1L);
        if (longExtra == -1) {
            Log.e(TAG, "Invalid arguments for deleteGroup request");
            return;
        }
        Uri withAppendedId = ContentUris.withAppendedId(ContactsContract.Groups.CONTENT_URI, longExtra);
        Intent intent2 = new Intent(BROADCAST_GROUP_DELETED);
        Bundle captureDeletionUndoData = this.mGroupsDao.captureDeletionUndoData(withAppendedId);
        intent2.putExtra(EXTRA_UNDO_ACTION, "deleteGroup");
        intent2.putExtra(EXTRA_UNDO_DATA, captureDeletionUndoData);
        this.mGroupsDao.delete(withAppendedId);
        LocalBroadcastManager.getInstance(this).sendBroadcast(intent2);
    }

    public static Intent createUndoIntent(Context context, Intent intent) {
        Intent intent2 = new Intent(context, (Class<?>) ContactSaveService.class);
        intent2.setAction(ACTION_UNDO);
        intent2.putExtras(intent);
        return intent2;
    }

    private void undo(Intent intent) {
        if ("deleteGroup".equals(intent.getStringExtra(EXTRA_UNDO_ACTION))) {
            this.mGroupsDao.undoDeletion(intent.getBundleExtra(EXTRA_UNDO_DATA));
        }
    }

    public static Intent createGroupUpdateIntent(Context context, long j, String str, long[] jArr, long[] jArr2, Class<? extends Activity> cls, String str2) {
        Intent intent = new Intent(context, (Class<?>) ContactSaveService.class);
        intent.setAction("updateGroup");
        intent.putExtra(EXTRA_GROUP_ID, j);
        intent.putExtra(EXTRA_GROUP_LABEL, str);
        intent.putExtra(EXTRA_RAW_CONTACTS_TO_ADD, jArr);
        intent.putExtra(EXTRA_RAW_CONTACTS_TO_REMOVE, jArr2);
        Intent intent2 = new Intent(context, cls);
        intent2.setAction(str2);
        intent.putExtra(EXTRA_CALLBACK_INTENT, intent2);
        return intent;
    }

    private void updateGroup(Intent intent) {
        long longExtra = intent.getLongExtra(EXTRA_GROUP_ID, -1L);
        String stringExtra = intent.getStringExtra(EXTRA_GROUP_LABEL);
        long[] longArrayExtra = intent.getLongArrayExtra(EXTRA_RAW_CONTACTS_TO_ADD);
        long[] longArrayExtra2 = intent.getLongArrayExtra(EXTRA_RAW_CONTACTS_TO_REMOVE);
        if (longExtra == -1) {
            Log.e(TAG, "Invalid arguments for updateGroup request");
            return;
        }
        ContentResolver contentResolver = getContentResolver();
        Uri withAppendedId = ContentUris.withAppendedId(ContactsContract.Groups.CONTENT_URI, longExtra);
        if (stringExtra != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("title", stringExtra);
            contentResolver.update(withAppendedId, contentValues, null, null);
        }
        addMembersToGroup(contentResolver, longArrayExtra, longExtra);
        removeMembersFromGroup(contentResolver, longArrayExtra2, longExtra);
        Intent intent2 = (Intent) intent.getParcelableExtra(EXTRA_CALLBACK_INTENT);
        intent2.setData(withAppendedId);
        deliverCallback(intent2);
    }

    private void addMembersToGroup(ContentResolver contentResolver, long[] jArr, long j) {
        if (jArr == null) {
            return;
        }
        for (long j2 : jArr) {
            try {
                ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
                ContentProviderOperation.Builder newAssertQuery = ContentProviderOperation.newAssertQuery(ContactsContract.Data.CONTENT_URI);
                newAssertQuery.withSelection("raw_contact_id=? AND mimetype=? AND data1=?", new String[]{String.valueOf(j2), "vnd.android.cursor.item/group_membership", String.valueOf(j)});
                newAssertQuery.withExpectedCount(0);
                arrayList.add(newAssertQuery.build());
                ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
                newInsert.withValue("raw_contact_id", Long.valueOf(j2));
                newInsert.withValue("mimetype", "vnd.android.cursor.item/group_membership");
                newInsert.withValue("data1", Long.valueOf(j));
                arrayList.add(newInsert.build());
                if (!arrayList.isEmpty()) {
                    try {
                        contentResolver.applyBatch("com.android.contacts", arrayList);
                    } catch (OperationApplicationException e) {
                        e = e;
                        FeedbackHelper.sendFeedback(this, TAG, "Assert failed in adding raw contact ID " + String.valueOf(j2) + ". Already exists in group " + String.valueOf(j), e);
                    } catch (RemoteException e2) {
                        e = e2;
                        FeedbackHelper.sendFeedback(this, TAG, "Problem persisting user edits for raw contact ID " + String.valueOf(j2), e);
                    }
                }
            } catch (OperationApplicationException e3) {
                e = e3;
            } catch (RemoteException e4) {
                e = e4;
            }
        }
    }

    private static void removeMembersFromGroup(ContentResolver contentResolver, long[] jArr, long j) {
        if (jArr == null) {
            return;
        }
        for (long j2 : jArr) {
            contentResolver.delete(ContactsContract.Data.CONTENT_URI, "raw_contact_id=? AND mimetype=? AND data1=?", new String[]{String.valueOf(j2), "vnd.android.cursor.item/group_membership", String.valueOf(j)});
        }
    }

    public static Intent createSetStarredIntent(Context context, Uri uri, boolean z) {
        Intent intent = new Intent(context, (Class<?>) ContactSaveService.class);
        intent.setAction(ACTION_SET_STARRED);
        intent.putExtra("contactUri", uri);
        intent.putExtra(EXTRA_STARRED_FLAG, z);
        return intent;
    }

    private void setStarred(Intent intent) {
        Uri uri = (Uri) intent.getParcelableExtra("contactUri");
        boolean booleanExtra = intent.getBooleanExtra(EXTRA_STARRED_FLAG, false);
        if (uri == null) {
            Log.e(TAG, "Invalid arguments for setStarred request");
            return;
        }
        ContentValues contentValues = new ContentValues(1);
        contentValues.put(EXTRA_STARRED_FLAG, Boolean.valueOf(booleanExtra));
        getContentResolver().update(uri, contentValues, null, null);
        Cursor query = getContentResolver().query(uri, new String[]{"_id"}, null, null, null);
        if (query == null) {
            return;
        }
        try {
            if (query.moveToFirst()) {
                long j = query.getLong(0);
                if (j < 9223372034707292160L) {
                    PinnedPositionsCompat.undemote(getContentResolver(), j);
                }
            }
        } finally {
            query.close();
        }
    }

    public static Intent createSetSendToVoicemail(Context context, Uri uri, boolean z) {
        Intent intent = new Intent(context, (Class<?>) ContactSaveService.class);
        intent.setAction(ACTION_SET_SEND_TO_VOICEMAIL);
        intent.putExtra("contactUri", uri);
        intent.putExtra(EXTRA_SEND_TO_VOICEMAIL_FLAG, z);
        return intent;
    }

    private void setSendToVoicemail(Intent intent) {
        Uri uri = (Uri) intent.getParcelableExtra("contactUri");
        boolean booleanExtra = intent.getBooleanExtra(EXTRA_SEND_TO_VOICEMAIL_FLAG, false);
        if (uri == null) {
            Log.e(TAG, "Invalid arguments for setRedirectToVoicemail");
            return;
        }
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("send_to_voicemail", Boolean.valueOf(booleanExtra));
        getContentResolver().update(uri, contentValues, null, null);
    }

    public static Intent createSetRingtone(Context context, Uri uri, String str) {
        Intent intent = new Intent(context, (Class<?>) ContactSaveService.class);
        intent.setAction(ACTION_SET_RINGTONE);
        intent.putExtra("contactUri", uri);
        intent.putExtra(EXTRA_CUSTOM_RINGTONE, str);
        return intent;
    }

    private void setRingtone(Intent intent) {
        Uri uri = (Uri) intent.getParcelableExtra("contactUri");
        String stringExtra = intent.getStringExtra(EXTRA_CUSTOM_RINGTONE);
        if (uri == null) {
            Log.e(TAG, "Invalid arguments for setRingtone");
            return;
        }
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("custom_ringtone", stringExtra);
        getContentResolver().update(uri, contentValues, null, null);
    }

    public static Intent createSetSuperPrimaryIntent(Context context, long j) {
        Intent intent = new Intent(context, (Class<?>) ContactSaveService.class);
        intent.setAction(ACTION_SET_SUPER_PRIMARY);
        intent.putExtra(EXTRA_DATA_ID, j);
        return intent;
    }

    private void setSuperPrimary(Intent intent) {
        long longExtra = intent.getLongExtra(EXTRA_DATA_ID, -1L);
        if (longExtra == -1) {
            Log.e(TAG, "Invalid arguments for setSuperPrimary request");
        } else {
            ContactUpdateUtils.setSuperPrimary(this, longExtra);
        }
    }

    public static Intent createClearPrimaryIntent(Context context, long j) {
        Intent intent = new Intent(context, (Class<?>) ContactSaveService.class);
        intent.setAction(ACTION_CLEAR_PRIMARY);
        intent.putExtra(EXTRA_DATA_ID, j);
        return intent;
    }

    private void clearPrimary(Intent intent) {
        long longExtra = intent.getLongExtra(EXTRA_DATA_ID, -1L);
        if (longExtra == -1) {
            Log.e(TAG, "Invalid arguments for clearPrimary request");
            return;
        }
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("is_super_primary", (Integer) 0);
        contentValues.put("is_primary", (Integer) 0);
        getContentResolver().update(ContentUris.withAppendedId(ContactsContract.Data.CONTENT_URI, longExtra), contentValues, null, null);
    }

    public static Intent createDeleteContactIntent(Context context, Uri uri) {
        Intent intent = new Intent(context, (Class<?>) ContactSaveService.class);
        intent.setAction(ACTION_DELETE_CONTACT);
        intent.putExtra("contactUri", uri);
        return intent;
    }

    public static Intent createDeleteMultipleContactsIntent(Context context, long[] jArr, String[] strArr) {
        Intent intent = new Intent(context, (Class<?>) ContactSaveService.class);
        intent.setAction(ACTION_DELETE_MULTIPLE_CONTACTS);
        intent.putExtra(EXTRA_CONTACT_IDS, jArr);
        intent.putExtra(EXTRA_DISPLAY_NAME_ARRAY, strArr);
        return intent;
    }

    private void deleteContact(Intent intent) {
        Uri uri = (Uri) intent.getParcelableExtra("contactUri");
        if (uri == null) {
            Log.e(TAG, "Invalid arguments for deleteContact request");
        } else {
            getContentResolver().delete(uri, null, null);
        }
    }

    private void deleteMultipleContacts(Intent intent) {
        final String quantityString;
        long[] longArrayExtra = intent.getLongArrayExtra(EXTRA_CONTACT_IDS);
        if (longArrayExtra == null) {
            Log.e(TAG, "Invalid arguments for deleteMultipleContacts request");
            return;
        }
        for (long j : longArrayExtra) {
            getContentResolver().delete(ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, j), null, null);
        }
        String[] stringArrayExtra = intent.getStringArrayExtra(EXTRA_DISPLAY_NAME_ARRAY);
        if (longArrayExtra.length != stringArrayExtra.length || stringArrayExtra.length == 0) {
            quantityString = getResources().getQuantityString(R.plurals.contacts_deleted_toast, longArrayExtra.length);
        } else if (stringArrayExtra.length == 1) {
            quantityString = getResources().getString(R.string.contacts_deleted_one_named_toast, stringArrayExtra);
        } else if (stringArrayExtra.length == 2) {
            quantityString = getResources().getString(R.string.contacts_deleted_two_named_toast, stringArrayExtra);
        } else {
            quantityString = getResources().getString(R.string.contacts_deleted_many_named_toast, stringArrayExtra);
        }
        this.mMainHandler.post(new Runnable() { // from class: com.android.contacts.ContactSaveService.1
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(ContactSaveService.this, quantityString, 1).show();
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Intent createSplitContactIntent(Context context, long[][] jArr, ResultReceiver resultReceiver) {
        Intent intent = new Intent(context, (Class<?>) ContactSaveService.class);
        intent.setAction(ACTION_SPLIT_CONTACT);
        intent.putExtra(EXTRA_RAW_CONTACT_IDS, (Serializable) jArr);
        intent.putExtra(EXTRA_RESULT_RECEIVER, resultReceiver);
        return intent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Intent createHardSplitContactIntent(Context context, long[][] jArr) {
        Intent intent = new Intent(context, (Class<?>) ContactSaveService.class);
        intent.setAction(ACTION_SPLIT_CONTACT);
        intent.putExtra(EXTRA_RAW_CONTACT_IDS, (Serializable) jArr);
        intent.putExtra(EXTRA_HARD_SPLIT, true);
        return intent;
    }

    private void splitContact(Intent intent) {
        long[][] jArr = (long[][]) intent.getSerializableExtra(EXTRA_RAW_CONTACT_IDS);
        ResultReceiver resultReceiver = (ResultReceiver) intent.getParcelableExtra(EXTRA_RESULT_RECEIVER);
        boolean booleanExtra = intent.getBooleanExtra(EXTRA_HARD_SPLIT, false);
        if (jArr == null) {
            Log.e(TAG, "Invalid argument for splitContact request");
            if (resultReceiver != null) {
                resultReceiver.send(3, new Bundle());
                return;
            }
            return;
        }
        ContentResolver contentResolver = getContentResolver();
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>(MAX_CONTACTS_PROVIDER_BATCH_SIZE);
        for (int i = 0; i < jArr.length; i++) {
            for (int i2 = 0; i2 < jArr.length; i2++) {
                if (i != i2 && !buildSplitTwoContacts(arrayList, jArr[i], jArr[i2], booleanExtra) && resultReceiver != null) {
                    resultReceiver.send(0, new Bundle());
                    return;
                }
            }
        }
        if (arrayList.size() > 0 && !applyOperations(contentResolver, arrayList)) {
            if (resultReceiver != null) {
                resultReceiver.send(0, new Bundle());
            }
        } else {
            LocalBroadcastManager.getInstance(this).sendBroadcast(new Intent(BROADCAST_UNLINK_COMPLETE));
            if (resultReceiver != null) {
                resultReceiver.send(2, new Bundle());
            } else {
                showToast(R.string.contactUnlinkedToast);
            }
        }
    }

    private boolean buildSplitTwoContacts(ArrayList<ContentProviderOperation> arrayList, long[] jArr, long[] jArr2, boolean z) {
        if (jArr == null || jArr2 == null) {
            Log.e(TAG, "Invalid arguments for splitContact request");
            return false;
        }
        ContentResolver contentResolver = getContentResolver();
        for (long j : jArr) {
            for (long j2 : jArr2) {
                buildSplitContactDiff(arrayList, j, j2, z);
                if (arrayList.size() > 0 && arrayList.size() % MAX_CONTACTS_PROVIDER_BATCH_SIZE == 0) {
                    if (!applyOperations(contentResolver, arrayList)) {
                        return false;
                    }
                    arrayList.clear();
                }
            }
        }
        return true;
    }

    public static Intent createJoinContactsIntent(Context context, long j, long j2, Class<? extends Activity> cls, String str) {
        Intent intent = new Intent(context, (Class<?>) ContactSaveService.class);
        intent.setAction(ACTION_JOIN_CONTACTS);
        intent.putExtra(EXTRA_CONTACT_ID1, j);
        intent.putExtra(EXTRA_CONTACT_ID2, j2);
        Intent intent2 = new Intent(context, cls);
        intent2.setAction(str);
        intent.putExtra(EXTRA_CALLBACK_INTENT, intent2);
        return intent;
    }

    public static Intent createJoinSeveralContactsIntent(Context context, long[] jArr, ResultReceiver resultReceiver) {
        Intent intent = new Intent(context, (Class<?>) ContactSaveService.class);
        intent.setAction(ACTION_JOIN_SEVERAL_CONTACTS);
        intent.putExtra(EXTRA_CONTACT_IDS, jArr);
        intent.putExtra(EXTRA_RESULT_RECEIVER, resultReceiver);
        return intent;
    }

    public static Intent createJoinSeveralContactsIntent(Context context, long[] jArr) {
        return createJoinSeveralContactsIntent(context, jArr, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [java.io.Serializable, long[][]] */
    private void joinSeveralContacts(Intent intent) {
        int i;
        long[] longArrayExtra = intent.getLongArrayExtra(EXTRA_CONTACT_IDS);
        ResultReceiver resultReceiver = (ResultReceiver) intent.getParcelableExtra(EXTRA_RESULT_RECEIVER);
        long[] rawContactIdsForAggregation = getRawContactIdsForAggregation(longArrayExtra);
        ?? separatedRawContactIds = getSeparatedRawContactIds(longArrayExtra);
        if (rawContactIdsForAggregation == null) {
            Log.e(TAG, "Invalid arguments for joinSeveralContacts request");
            if (resultReceiver != null) {
                resultReceiver.send(3, new Bundle());
                return;
            }
            return;
        }
        ContentResolver contentResolver = getContentResolver();
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>(MAX_CONTACTS_PROVIDER_BATCH_SIZE);
        for (int i2 = 0; i2 < rawContactIdsForAggregation.length; i2++) {
            for (int i3 = 0; i3 < rawContactIdsForAggregation.length; i3 = i + 1) {
                if (i2 != i3) {
                    i = i3;
                    buildJoinContactDiff(arrayList, rawContactIdsForAggregation[i2], rawContactIdsForAggregation[i3]);
                } else {
                    i = i3;
                }
                if (arrayList.size() > 0 && arrayList.size() % MAX_CONTACTS_PROVIDER_BATCH_SIZE == 0) {
                    if (!applyOperations(contentResolver, arrayList)) {
                        if (resultReceiver != null) {
                            resultReceiver.send(0, new Bundle());
                            return;
                        }
                        return;
                    }
                    arrayList.clear();
                }
            }
        }
        if (arrayList.size() > 0 && !applyOperations(contentResolver, arrayList)) {
            if (resultReceiver != null) {
                resultReceiver.send(0, new Bundle());
                return;
            }
            return;
        }
        String queryNameOfLinkedContacts = queryNameOfLinkedContacts(longArrayExtra);
        if (queryNameOfLinkedContacts != null) {
            if (resultReceiver != null) {
                Bundle bundle = new Bundle();
                bundle.putSerializable(EXTRA_RAW_CONTACT_IDS, separatedRawContactIds);
                bundle.putString(EXTRA_DISPLAY_NAME, queryNameOfLinkedContacts);
                resultReceiver.send(1, bundle);
            } else if (TextUtils.isEmpty(queryNameOfLinkedContacts)) {
                showToast(R.string.contactsJoinedMessage);
            } else {
                showToast(R.string.contactsJoinedNamedMessage, queryNameOfLinkedContacts);
            }
            LocalBroadcastManager.getInstance(this).sendBroadcast(new Intent(BROADCAST_LINK_COMPLETE));
            return;
        }
        if (resultReceiver != null) {
            resultReceiver.send(0, new Bundle());
        }
        showToast(R.string.contactJoinErrorToast);
    }

    private String queryNameOfLinkedContacts(long[] jArr) {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder("_id");
        sb.append(" IN (");
        String[] strArr = new String[jArr.length];
        for (int i = 0; i < jArr.length; i++) {
            strArr[i] = String.valueOf(jArr[i]);
            sb.append("?,");
        }
        sb.deleteCharAt(sb.length() - 1).append(')');
        Cursor query = getContentResolver().query(ContactsContract.Contacts.CONTENT_URI, new String[]{"_id", "display_name", "display_name_alt"}, sb.toString(), strArr, null);
        long j = 0;
        try {
            if (query.moveToFirst()) {
                j = query.getLong(0);
                str = query.getString(1);
                str2 = query.getString(2);
            } else {
                str = null;
                str2 = null;
            }
            while (query.moveToNext()) {
                if (query.getLong(0) != j) {
                    return null;
                }
            }
            String preferredDisplayName = ContactDisplayUtils.getPreferredDisplayName(str, str2, new ContactsPreferences(getApplicationContext()));
            if (preferredDisplayName == null) {
                preferredDisplayName = "";
            }
            if (query != null) {
                query.close();
            }
            return preferredDisplayName;
        } finally {
            if (query != null) {
                query.close();
            }
        }
    }

    private boolean applyOperations(ContentResolver contentResolver, ArrayList<ContentProviderOperation> arrayList) {
        try {
            ContentProviderResult[] applyBatch = contentResolver.applyBatch("com.android.contacts", arrayList);
            for (ContentProviderResult contentProviderResult : applyBatch) {
                if (contentProviderResult.count.intValue() < 0) {
                    throw new OperationApplicationException();
                }
            }
            return true;
        } catch (OperationApplicationException | RemoteException e) {
            FeedbackHelper.sendFeedback(this, TAG, "Failed to apply aggregation exception batch", e);
            showToast(R.string.contactSavedErrorToast);
            return false;
        }
    }

    private void joinContacts(Intent intent) {
        ArrayList<ContentProviderOperation> arrayList;
        int i;
        int i2;
        ArrayList<ContentProviderOperation> arrayList2;
        long longExtra = intent.getLongExtra(EXTRA_CONTACT_ID1, -1L);
        long longExtra2 = intent.getLongExtra(EXTRA_CONTACT_ID2, -1L);
        long[] rawContactIdsForAggregation = getRawContactIdsForAggregation(longExtra, longExtra2);
        if (rawContactIdsForAggregation == null) {
            Log.e(TAG, "Invalid arguments for joinContacts request");
            return;
        }
        ArrayList<ContentProviderOperation> arrayList3 = new ArrayList<>();
        int i3 = 0;
        while (i3 < rawContactIdsForAggregation.length) {
            int i4 = 0;
            while (i4 < rawContactIdsForAggregation.length) {
                if (i3 != i4) {
                    i = i3;
                    i2 = i4;
                    arrayList2 = arrayList3;
                    buildJoinContactDiff(arrayList3, rawContactIdsForAggregation[i3], rawContactIdsForAggregation[i4]);
                } else {
                    i = i3;
                    i2 = i4;
                    arrayList2 = arrayList3;
                }
                i4 = i2 + 1;
                i3 = i;
                arrayList3 = arrayList2;
            }
            i3++;
        }
        ArrayList<ContentProviderOperation> arrayList4 = arrayList3;
        ContentResolver contentResolver = getContentResolver();
        Cursor query = contentResolver.query(Uri.withAppendedPath(ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, longExtra), "entities"), ContactEntityQuery.PROJECTION, ContactEntityQuery.SELECTION, null, null);
        if (query == null) {
            Log.e(TAG, "Unable to open Contacts DB cursor");
            showToast(R.string.contactSavedErrorToast);
            return;
        }
        try {
            long j = query.moveToFirst() ? query.getLong(0) : -1L;
            query.close();
            if (j != -1) {
                ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(ContentUris.withAppendedId(ContactsContract.Data.CONTENT_URI, j));
                newUpdate.withValue("is_super_primary", 1);
                newUpdate.withValue("is_primary", 1);
                arrayList = arrayList4;
                arrayList.add(newUpdate.build());
            } else {
                arrayList = arrayList4;
            }
            boolean applyOperations = applyOperations(contentResolver, arrayList);
            String queryNameOfLinkedContacts = queryNameOfLinkedContacts(new long[]{longExtra, longExtra2});
            Intent intent2 = (Intent) intent.getParcelableExtra(EXTRA_CALLBACK_INTENT);
            if (applyOperations && queryNameOfLinkedContacts != null) {
                if (TextUtils.isEmpty(queryNameOfLinkedContacts)) {
                    showToast(R.string.contactsJoinedMessage);
                } else {
                    showToast(R.string.contactsJoinedNamedMessage, queryNameOfLinkedContacts);
                }
                intent2.setData(ContactsContract.RawContacts.getContactLookupUri(contentResolver, ContentUris.withAppendedId(ContactsContract.RawContacts.CONTENT_URI, rawContactIdsForAggregation[0])));
                LocalBroadcastManager.getInstance(this).sendBroadcast(new Intent(BROADCAST_LINK_COMPLETE));
            }
            deliverCallback(intent2);
        } catch (Throwable th) {
            query.close();
            throw th;
        }
    }

    private long[][] getSeparatedRawContactIds(long[] jArr) {
        long[][] jArr2 = new long[jArr.length][];
        for (int i = 0; i < jArr.length; i++) {
            jArr2[i] = getRawContactIds(jArr[i]);
        }
        return jArr2;
    }

    private long[] getRawContactIds(long j) {
        Cursor query = getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, JoinContactQuery.PROJECTION, "contact_id=" + String.valueOf(j), null, null);
        if (query == null) {
            Log.e(TAG, "Unable to open Contacts DB cursor");
            return null;
        }
        try {
            int count = query.getCount();
            long[] jArr = new long[count];
            for (int i = 0; i < count; i++) {
                query.moveToPosition(i);
                jArr[i] = query.getLong(0);
            }
            return jArr;
        } finally {
            query.close();
        }
    }

    private long[] getRawContactIdsForAggregation(long[] jArr) {
        if (jArr == null) {
            return null;
        }
        ContentResolver contentResolver = getContentResolver();
        StringBuilder sb = new StringBuilder();
        String[] strArr = new String[jArr.length];
        for (int i = 0; i < jArr.length; i++) {
            sb.append("contact_id=?");
            strArr[i] = String.valueOf(jArr[i]);
            if (jArr[i] == -1) {
                return null;
            }
            if (i == jArr.length - 1) {
                break;
            }
            sb.append(" OR ");
        }
        Cursor query = contentResolver.query(ContactsContract.RawContacts.CONTENT_URI, JoinContactQuery.PROJECTION, sb.toString(), strArr, null);
        if (query == null) {
            Log.e(TAG, "Unable to open Contacts DB cursor");
            showToast(R.string.contactSavedErrorToast);
            return null;
        }
        try {
            if (query.getCount() < 2) {
                Log.e(TAG, "Not enough raw contacts to aggregate together.");
                return null;
            }
            int count = query.getCount();
            long[] jArr2 = new long[count];
            for (int i2 = 0; i2 < count; i2++) {
                query.moveToPosition(i2);
                jArr2[i2] = query.getLong(0);
            }
            return jArr2;
        } finally {
            query.close();
        }
    }

    private long[] getRawContactIdsForAggregation(long j, long j2) {
        return getRawContactIdsForAggregation(new long[]{j, j2});
    }

    private void buildJoinContactDiff(ArrayList<ContentProviderOperation> arrayList, long j, long j2) {
        ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(ContactsContract.AggregationExceptions.CONTENT_URI);
        newUpdate.withValue(BaseAccountType.Attr.TYPE, 1);
        newUpdate.withValue("raw_contact_id1", Long.valueOf(j));
        newUpdate.withValue("raw_contact_id2", Long.valueOf(j2));
        arrayList.add(newUpdate.build());
    }

    private void buildSplitContactDiff(ArrayList<ContentProviderOperation> arrayList, long j, long j2, boolean z) {
        ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(ContactsContract.AggregationExceptions.CONTENT_URI);
        newUpdate.withValue(BaseAccountType.Attr.TYPE, Integer.valueOf(z ? 2 : 0));
        newUpdate.withValue("raw_contact_id1", Long.valueOf(j));
        newUpdate.withValue("raw_contact_id2", Long.valueOf(j2));
        arrayList.add(newUpdate.build());
    }

    public static Intent createSleepIntent(Context context, long j) {
        return new Intent(context, (Class<?>) ContactSaveService.class).setAction(ACTION_SLEEP).putExtra(EXTRA_SLEEP_DURATION, j);
    }

    private void sleepForDebugging(Intent intent) {
        long longExtra = intent.getLongExtra(EXTRA_SLEEP_DURATION, 1000L);
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "sleeping for " + longExtra + "ms");
        }
        try {
            Thread.sleep(longExtra);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "finished sleeping");
        }
    }

    private void showToast(int i, Object... objArr) {
        final String string = getResources().getString(i, objArr);
        this.mMainHandler.post(new Runnable() { // from class: com.android.contacts.ContactSaveService.2
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(ContactSaveService.this, string, 1).show();
            }
        });
    }

    private void showToast(final int i) {
        this.mMainHandler.post(new Runnable() { // from class: com.android.contacts.ContactSaveService.3
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(ContactSaveService.this, i, 1).show();
            }
        });
    }

    private void deliverCallback(final Intent intent) {
        this.mMainHandler.post(new Runnable() { // from class: com.android.contacts.ContactSaveService.4
            @Override // java.lang.Runnable
            public void run() {
                ContactSaveService.this.deliverCallbackOnUiThread(intent);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    void deliverCallbackOnUiThread(Intent intent) {
        Iterator<Listener> it = sListeners.iterator();
        while (it.hasNext()) {
            Listener next = it.next();
            if (intent.getComponent().equals(((Activity) next).getIntent().getComponent())) {
                next.onServiceCompleted(intent);
                return;
            }
        }
    }

    public static class GroupsDaoImpl implements GroupsDao {
        public static final String KEY_GROUP_DATA = "groupData";
        public static final String KEY_GROUP_MEMBERS = "groupMemberIds";
        private static final String TAG = "GroupsDao";
        private final ContentResolver contentResolver;
        private final Context context;

        public GroupsDaoImpl(Context context) {
            this(context, context.getContentResolver());
        }

        public GroupsDaoImpl(Context context, ContentResolver contentResolver) {
            this.context = context;
            this.contentResolver = contentResolver;
        }

        @Override // com.android.contacts.ContactSaveService.GroupsDao
        public Bundle captureDeletionUndoData(Uri uri) {
            long parseId = ContentUris.parseId(uri);
            Bundle bundle = new Bundle();
            Cursor query = this.contentResolver.query(uri, new String[]{"title", "notes", "group_visible", "account_type", "account_name", "data_set", "should_sync"}, "deleted=?", new String[]{"0"}, null);
            try {
                if (!query.moveToFirst()) {
                    return bundle;
                }
                ContentValues contentValues = new ContentValues();
                DatabaseUtils.cursorRowToContentValues(query, contentValues);
                bundle.putParcelable(KEY_GROUP_DATA, contentValues);
                query.close();
                Cursor query2 = this.contentResolver.query(ContactsContract.Data.CONTENT_URI, new String[]{"raw_contact_id"}, "mimetype=? AND data1=?", new String[]{"vnd.android.cursor.item/group_membership", String.valueOf(parseId)}, null);
                long[] jArr = new long[query2.getCount()];
                int i = 0;
                while (query2.moveToNext()) {
                    jArr[i] = query2.getLong(0);
                    i++;
                }
                bundle.putLongArray(KEY_GROUP_MEMBERS, jArr);
                return bundle;
            } finally {
                query.close();
            }
        }

        @Override // com.android.contacts.ContactSaveService.GroupsDao
        public Uri undoDeletion(Bundle bundle) {
            ContentValues contentValues = (ContentValues) bundle.getParcelable(KEY_GROUP_DATA);
            if (contentValues == null) {
                return null;
            }
            Uri insert = this.contentResolver.insert(ContactsContract.Groups.CONTENT_URI, contentValues);
            long parseId = ContentUris.parseId(insert);
            long[] longArray = bundle.getLongArray(KEY_GROUP_MEMBERS);
            if (longArray == null) {
                return insert;
            }
            ContentValues[] contentValuesArr = new ContentValues[longArray.length];
            for (int i = 0; i < longArray.length; i++) {
                contentValuesArr[i] = new ContentValues();
                contentValuesArr[i].put("raw_contact_id", Long.valueOf(longArray[i]));
                contentValuesArr[i].put("mimetype", "vnd.android.cursor.item/group_membership");
                contentValuesArr[i].put("data1", Long.valueOf(parseId));
            }
            if (this.contentResolver.bulkInsert(ContactsContract.Data.CONTENT_URI, contentValuesArr) != longArray.length) {
                Log.e(TAG, "Could not recover some members for group deletion undo");
            }
            return insert;
        }

        @Override // com.android.contacts.ContactSaveService.GroupsDao
        public Uri create(String str, AccountWithDataSet accountWithDataSet) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("title", str);
            contentValues.put("account_name", accountWithDataSet.name);
            contentValues.put("account_type", accountWithDataSet.type);
            contentValues.put("data_set", accountWithDataSet.dataSet);
            return this.contentResolver.insert(ContactsContract.Groups.CONTENT_URI, contentValues);
        }

        @Override // com.android.contacts.ContactSaveService.GroupsDao
        public int delete(Uri uri) {
            return this.contentResolver.delete(uri, null, null);
        }
    }

    public static class State {
        private final CopyOnWriteArrayList<Intent> mPending;

        public State() {
            this.mPending = new CopyOnWriteArrayList<>();
        }

        public State(Collection<Intent> collection) {
            this.mPending = new CopyOnWriteArrayList<>(collection);
        }

        public boolean isIdle() {
            return this.mPending.isEmpty();
        }

        public Intent getCurrentIntent() {
            if (this.mPending.isEmpty()) {
                return null;
            }
            return this.mPending.get(0);
        }

        public Intent getNextIntentWithAction(String str) {
            Iterator<Intent> it = this.mPending.iterator();
            while (it.hasNext()) {
                Intent next = it.next();
                if (str.equals(next.getAction())) {
                    return next;
                }
            }
            return null;
        }

        public boolean isActionPending(String str) {
            return getNextIntentWithAction(str) != null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onFinish(Intent intent) {
            if (!this.mPending.isEmpty() && this.mPending.get(0).getAction().equals(intent.getAction())) {
                this.mPending.remove(0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onStart(Intent intent) {
            if (intent.getAction() == null) {
                return;
            }
            this.mPending.add(intent);
        }
    }
}
