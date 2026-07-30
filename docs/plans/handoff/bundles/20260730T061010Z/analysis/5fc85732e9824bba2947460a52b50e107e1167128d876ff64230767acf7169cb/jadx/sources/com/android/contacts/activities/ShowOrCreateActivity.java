package com.android.contacts.activities;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.ContactsActivity;
import com.android.contacts.ContactsUtils;
import com.android.contacts.R;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.NotifyingAsyncQueryHandler;

/* loaded from: classes.dex */
public final class ShowOrCreateActivity extends ContactsActivity implements NotifyingAsyncQueryHandler.AsyncQueryListener {
    private String mCreateDescrip;
    private Bundle mCreateExtras;
    private boolean mCreateForce;
    private NotifyingAsyncQueryHandler mQueryHandler;
    static final String[] PHONES_PROJECTION = {"_id", "lookup"};
    static final String[] CONTACTS_PROJECTION = {"contact_id", "lookup"};

    @Override // com.android.contacts.ContactsActivity, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        if (RequestPermissionsActivity.startPermissionActivityIfNeeded(this)) {
            return;
        }
        NotifyingAsyncQueryHandler notifyingAsyncQueryHandler = this.mQueryHandler;
        if (notifyingAsyncQueryHandler == null) {
            this.mQueryHandler = new NotifyingAsyncQueryHandler(this, this);
        } else {
            notifyingAsyncQueryHandler.cancelOperation(42);
        }
        Intent intent = getIntent();
        Uri data = intent.getData();
        String str2 = null;
        if (data != null) {
            String scheme = data.getScheme();
            str2 = data.getSchemeSpecificPart();
            str = scheme;
        } else {
            str = null;
        }
        this.mCreateExtras = new Bundle();
        Bundle extras = intent.getExtras();
        if (extras != null) {
            this.mCreateExtras.putAll(extras);
        }
        String stringExtra = intent.getStringExtra("com.android.contacts.action.CREATE_DESCRIPTION");
        this.mCreateDescrip = stringExtra;
        if (stringExtra == null) {
            this.mCreateDescrip = str2;
        }
        this.mCreateForce = intent.getBooleanExtra("com.android.contacts.action.FORCE_CREATE", false);
        if (ContactsUtils.SCHEME_MAILTO.equals(str)) {
            this.mCreateExtras.putString("email", str2);
            this.mQueryHandler.startQuery(42, null, Uri.withAppendedPath(ContactsContract.CommonDataKinds.Email.CONTENT_FILTER_URI, Uri.encode(str2)), CONTACTS_PROJECTION, null, null, null);
        } else if ("tel".equals(str)) {
            this.mCreateExtras.putString("phone", str2);
            this.mQueryHandler.startQuery(42, null, Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, str2), PHONES_PROJECTION, null, null, null);
        } else {
            Log.w("ShowOrCreateActivity", "Invalid intent:" + getIntent());
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        NotifyingAsyncQueryHandler notifyingAsyncQueryHandler = this.mQueryHandler;
        if (notifyingAsyncQueryHandler != null) {
            notifyingAsyncQueryHandler.cancelOperation(42);
        }
    }

    @Override // com.android.contacts.util.NotifyingAsyncQueryHandler.AsyncQueryListener
    public void onQueryComplete(int i, Object obj, Cursor cursor) {
        long j;
        if (cursor == null) {
            finish();
            return;
        }
        String str = null;
        try {
            int count = cursor.getCount();
            if (count == 1 && cursor.moveToFirst()) {
                j = cursor.getLong(0);
                str = cursor.getString(1);
            } else {
                j = -1;
            }
            if (count == 1 && j != -1 && !TextUtils.isEmpty(str)) {
                ImplicitIntentsUtil.startActivityInApp(this, new Intent("android.intent.action.VIEW", ContactsContract.Contacts.getLookupUri(j, str)));
                finish();
                return;
            }
            if (count > 1) {
                Intent intent = new Intent("android.intent.action.SEARCH");
                intent.setComponent(new ComponentName(this, (Class<?>) PeopleActivity.class));
                intent.putExtras(this.mCreateExtras);
                startActivity(intent);
                finish();
                return;
            }
            if (this.mCreateForce) {
                Intent intent2 = new Intent("android.intent.action.INSERT", ContactsContract.RawContacts.CONTENT_URI);
                intent2.putExtras(this.mCreateExtras);
                intent2.setType("vnd.android.cursor.dir/raw_contact");
                ImplicitIntentsUtil.startActivityInApp(this, intent2);
                finish();
                return;
            }
            showDialog(1);
        } finally {
            cursor.close();
        }
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i) {
        if (i == 1) {
            Intent intent = new Intent("android.intent.action.INSERT_OR_EDIT");
            intent.putExtras(this.mCreateExtras);
            intent.setType("vnd.android.cursor.item/raw_contact");
            return new AlertDialog.Builder(this).setMessage(getResources().getString(R.string.add_contact_dlg_message_fmt, this.mCreateDescrip)).setPositiveButton(android.R.string.ok, new IntentClickListener(this, intent)).setNegativeButton(android.R.string.cancel, new IntentClickListener(this, null)).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.android.contacts.activities.ShowOrCreateActivity.1
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    ShowOrCreateActivity.this.finish();
                }
            }).create();
        }
        return super.onCreateDialog(i);
    }

    private static class IntentClickListener implements DialogInterface.OnClickListener {
        private Intent mIntent;
        private Activity mParent;

        public IntentClickListener(Activity activity, Intent intent) {
            this.mParent = activity;
            this.mIntent = intent;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            Intent intent = this.mIntent;
            if (intent != null) {
                ImplicitIntentsUtil.startActivityInApp(this.mParent, intent);
            }
            this.mParent.finish();
        }
    }
}
