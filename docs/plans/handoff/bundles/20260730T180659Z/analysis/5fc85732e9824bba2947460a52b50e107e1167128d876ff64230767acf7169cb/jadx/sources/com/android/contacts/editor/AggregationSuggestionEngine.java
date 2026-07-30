package com.android.contacts.editor;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.provider.ContactsContract;
import android.text.TextUtils;
import com.android.contacts.model.ValuesDelta;
import com.android.contacts.model.account.AccountWithDataSet;
import com.google.common.base.MoreObjects;
import com.google.common.collect.Lists;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class AggregationSuggestionEngine extends HandlerThread {
    private AccountWithDataSet mAccountFilter;
    private long mContactId;
    private ContentObserver mContentObserver;
    private final Context mContext;
    private Cursor mDataCursor;
    private Handler mHandler;
    private Listener mListener;
    private Handler mMainHandler;
    private long[] mSuggestedContactIds;
    private Uri mSuggestionsUri;

    private static final class DataQuery {
        public static final String[] COLUMNS = {"contact_id", "lookup", "raw_contact_id", "mimetype", "data1", "is_super_primary", "account_type", "account_name", "data_set", "_id"};
    }

    public interface Listener {
        void onAggregationSuggestionChange();
    }

    public static final class Suggestion {
        public long contactId;
        public String contactLookupKey;
        public String emailAddress;
        public String name;
        public String nickname;
        public String phoneNumber;
        public long photoId = -1;
        public long rawContactId;

        public String toString() {
            MoreObjects.ToStringHelper stringHelper = MoreObjects.toStringHelper((Class<?>) Suggestion.class);
            stringHelper.add("contactId", this.contactId);
            stringHelper.add("contactLookupKey", this.contactLookupKey);
            stringHelper.add("rawContactId", this.rawContactId);
            stringHelper.add("photoId", this.photoId);
            stringHelper.add("name", this.name);
            stringHelper.add("phoneNumber", this.phoneNumber);
            stringHelper.add("emailAddress", this.emailAddress);
            stringHelper.add("nickname", this.nickname);
            return stringHelper.toString();
        }
    }

    private final class SuggestionContentObserver extends ContentObserver {
        private SuggestionContentObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            AggregationSuggestionEngine.this.scheduleSuggestionLookup();
        }
    }

    public AggregationSuggestionEngine(Context context) {
        super("AggregationSuggestions", 10);
        this.mSuggestedContactIds = new long[0];
        this.mContext = context.getApplicationContext();
        this.mMainHandler = new Handler() { // from class: com.android.contacts.editor.AggregationSuggestionEngine.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                AggregationSuggestionEngine.this.deliverNotification((Cursor) message.obj);
            }
        };
    }

    protected Handler getHandler() {
        if (this.mHandler == null) {
            this.mHandler = new Handler(getLooper()) { // from class: com.android.contacts.editor.AggregationSuggestionEngine.2
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    AggregationSuggestionEngine.this.handleMessage(message);
                }
            };
        }
        return this.mHandler;
    }

    public void setContactId(long j) {
        if (j != this.mContactId) {
            this.mContactId = j;
            reset();
        }
    }

    public void setAccountFilter(AccountWithDataSet accountWithDataSet) {
        this.mAccountFilter = accountWithDataSet;
    }

    public void setListener(Listener listener) {
        this.mListener = listener;
    }

    @Override // android.os.HandlerThread
    public boolean quit() {
        Cursor cursor = this.mDataCursor;
        if (cursor != null) {
            cursor.close();
        }
        this.mDataCursor = null;
        if (this.mContentObserver != null) {
            this.mContext.getContentResolver().unregisterContentObserver(this.mContentObserver);
            this.mContentObserver = null;
        }
        return super.quit();
    }

    public void reset() {
        Handler handler = getHandler();
        handler.removeMessages(1);
        handler.sendEmptyMessage(0);
    }

    public void onNameChange(ValuesDelta valuesDelta) {
        Uri buildAggregationSuggestionUri = buildAggregationSuggestionUri(valuesDelta);
        this.mSuggestionsUri = buildAggregationSuggestionUri;
        if (buildAggregationSuggestionUri != null) {
            if (this.mContentObserver == null) {
                this.mContentObserver = new SuggestionContentObserver(getHandler());
                this.mContext.getContentResolver().registerContentObserver(ContactsContract.Contacts.CONTENT_URI, true, this.mContentObserver);
            }
        } else if (this.mContentObserver != null) {
            this.mContext.getContentResolver().unregisterContentObserver(this.mContentObserver);
            this.mContentObserver = null;
        }
        scheduleSuggestionLookup();
    }

    protected void scheduleSuggestionLookup() {
        Handler handler = getHandler();
        handler.removeMessages(1);
        Uri uri = this.mSuggestionsUri;
        if (uri == null) {
            return;
        }
        handler.sendMessageDelayed(handler.obtainMessage(1, uri), 300L);
    }

    /* JADX WARN: Type inference failed for: r5v3, types: [com.android.contacts.compat.AggregationSuggestionsCompat$Builder] */
    private Uri buildAggregationSuggestionUri(ValuesDelta valuesDelta) {
        StringBuilder sb = new StringBuilder();
        appendValue(sb, valuesDelta, "data4");
        appendValue(sb, valuesDelta, "data2");
        appendValue(sb, valuesDelta, "data5");
        appendValue(sb, valuesDelta, "data3");
        appendValue(sb, valuesDelta, "data6");
        StringBuilder sb2 = new StringBuilder();
        appendValue(sb2, valuesDelta, "data9");
        appendValue(sb2, valuesDelta, "data8");
        appendValue(sb2, valuesDelta, "data7");
        if (sb.length() == 0 && sb2.length() == 0) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            ContactsContract.Contacts.AggregationSuggestions.Builder contactId = new ContactsContract.Contacts.AggregationSuggestions.Builder().setLimit(3).setContactId(this.mContactId);
            if (sb.length() != 0) {
                contactId.addNameParameter(sb.toString());
            }
            if (sb2.length() != 0) {
                contactId.addNameParameter(sb2.toString());
            }
            return contactId.build();
        }
        ?? r5 = new Object() { // from class: com.android.contacts.compat.AggregationSuggestionsCompat$Builder
            private long mContactId;
            private int mLimit;
            private final ArrayList<String> mValues = new ArrayList<>();

            public AggregationSuggestionsCompat$Builder setContactId(long j) {
                this.mContactId = j;
                return this;
            }

            public AggregationSuggestionsCompat$Builder addNameParameter(String str) {
                this.mValues.add(str);
                return this;
            }

            public AggregationSuggestionsCompat$Builder setLimit(int i) {
                this.mLimit = i;
                return this;
            }

            public Uri build() {
                Uri.Builder buildUpon = ContactsContract.Contacts.CONTENT_URI.buildUpon();
                buildUpon.appendEncodedPath(String.valueOf(this.mContactId));
                buildUpon.appendPath("suggestions");
                int i = this.mLimit;
                if (i != 0) {
                    buildUpon.appendQueryParameter("limit", String.valueOf(i));
                }
                int size = this.mValues.size();
                for (int i2 = 0; i2 < size; i2++) {
                    buildUpon.appendQueryParameter("query", "name:" + this.mValues.get(i2));
                }
                return buildUpon.build();
            }
        };
        r5.setLimit(3);
        r5.setContactId(this.mContactId);
        if (sb.length() != 0) {
            r5.addNameParameter(sb.toString());
        }
        if (sb2.length() != 0) {
            r5.addNameParameter(sb2.toString());
        }
        return r5.build();
    }

    private void appendValue(StringBuilder sb, ValuesDelta valuesDelta, String str) {
        String asString = valuesDelta.getAsString(str);
        if (TextUtils.isEmpty(asString)) {
            return;
        }
        if (sb.length() > 0) {
            sb.append(' ');
        }
        sb.append(asString);
    }

    protected void handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            this.mSuggestedContactIds = new long[0];
        } else {
            if (i != 1) {
                return;
            }
            loadAggregationSuggestions((Uri) message.obj);
        }
    }

    private void loadAggregationSuggestions(Uri uri) {
        ContentResolver contentResolver = this.mContext.getContentResolver();
        Cursor query = contentResolver.query(uri, new String[]{"_id"}, null, null, null);
        if (query == null) {
            return;
        }
        try {
            if (getHandler().hasMessages(1)) {
                return;
            }
            if (updateSuggestedContactIds(query)) {
                StringBuilder sb = new StringBuilder("mimetype IN ('vnd.android.cursor.item/phone_v2','vnd.android.cursor.item/email_v2','vnd.android.cursor.item/name','vnd.android.cursor.item/nickname','vnd.android.cursor.item/photo') AND contact_id IN (");
                int length = this.mSuggestedContactIds.length;
                for (int i = 0; i < length; i++) {
                    if (i > 0) {
                        sb.append(',');
                    }
                    sb.append(this.mSuggestedContactIds[i]);
                }
                sb.append(')');
                Cursor query2 = contentResolver.query(ContactsContract.Data.CONTENT_URI, DataQuery.COLUMNS, sb.toString(), null, "contact_id");
                if (query2 != null) {
                    this.mMainHandler.sendMessage(this.mMainHandler.obtainMessage(2, query2));
                }
            }
        } finally {
            query.close();
        }
    }

    private boolean updateSuggestedContactIds(Cursor cursor) {
        int count = cursor.getCount();
        int i = 0;
        boolean z = count != this.mSuggestedContactIds.length;
        ArrayList arrayList = new ArrayList(count);
        while (cursor.moveToNext()) {
            long j = cursor.getLong(0);
            if (!z && Arrays.binarySearch(this.mSuggestedContactIds, j) < 0) {
                z = true;
            }
            arrayList.add(Long.valueOf(j));
        }
        if (z) {
            this.mSuggestedContactIds = new long[arrayList.size()];
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                this.mSuggestedContactIds[i] = ((Long) it.next()).longValue();
                i++;
            }
            Arrays.sort(this.mSuggestedContactIds);
        }
        return z;
    }

    protected void deliverNotification(Cursor cursor) {
        Cursor cursor2 = this.mDataCursor;
        if (cursor2 != null) {
            cursor2.close();
        }
        this.mDataCursor = cursor;
        Listener listener = this.mListener;
        if (listener != null) {
            listener.onAggregationSuggestionChange();
        }
    }

    public int getSuggestedContactCount() {
        Cursor cursor = this.mDataCursor;
        if (cursor != null) {
            return cursor.getCount();
        }
        return 0;
    }

    public List<Suggestion> getSuggestions() {
        ArrayList newArrayList = Lists.newArrayList();
        Cursor cursor = this.mDataCursor;
        if (cursor != null && this.mAccountFilter != null) {
            Suggestion suggestion = null;
            cursor.moveToPosition(-1);
            long j = -1;
            while (this.mDataCursor.moveToNext()) {
                long j2 = this.mDataCursor.getLong(2);
                if (j2 != j) {
                    Suggestion suggestion2 = new Suggestion();
                    suggestion2.rawContactId = j2;
                    suggestion2.contactId = this.mDataCursor.getLong(0);
                    suggestion2.contactLookupKey = this.mDataCursor.getString(1);
                    if (this.mAccountFilter.equals(new AccountWithDataSet(this.mDataCursor.getString(7), this.mDataCursor.getString(6), this.mDataCursor.getString(8)))) {
                        newArrayList.add(suggestion2);
                    }
                    suggestion = suggestion2;
                    j = j2;
                }
                String string = this.mDataCursor.getString(3);
                if ("vnd.android.cursor.item/phone_v2".equals(string)) {
                    String string2 = this.mDataCursor.getString(4);
                    int i = this.mDataCursor.getInt(5);
                    if (!TextUtils.isEmpty(string2) && (i != 0 || suggestion.phoneNumber == null)) {
                        suggestion.phoneNumber = string2;
                    }
                } else if ("vnd.android.cursor.item/email_v2".equals(string)) {
                    String string3 = this.mDataCursor.getString(4);
                    int i2 = this.mDataCursor.getInt(5);
                    if (!TextUtils.isEmpty(string3) && (i2 != 0 || suggestion.emailAddress == null)) {
                        suggestion.emailAddress = string3;
                    }
                } else if ("vnd.android.cursor.item/nickname".equals(string)) {
                    String string4 = this.mDataCursor.getString(4);
                    if (!TextUtils.isEmpty(string4)) {
                        suggestion.nickname = string4;
                    }
                } else if ("vnd.android.cursor.item/name".equals(string)) {
                    String string5 = this.mDataCursor.getString(4);
                    if (!TextUtils.isEmpty(string5) && suggestion.name == null) {
                        suggestion.name = string5;
                    }
                } else if ("vnd.android.cursor.item/photo".equals(string)) {
                    Long valueOf = Long.valueOf(this.mDataCursor.getLong(9));
                    if (suggestion.photoId == -1) {
                        suggestion.photoId = valueOf.longValue();
                    }
                }
            }
        }
        return newArrayList;
    }
}
