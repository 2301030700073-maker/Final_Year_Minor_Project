package com.android.contacts.vcard;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.NotificationManager;
import android.app.ProgressDialog;
import android.content.ClipData;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import com.android.contacts.R;
import com.android.contacts.activities.RequestImportVCardPermissionsActivity;
import com.android.contacts.model.AccountTypeManager;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.vcard.ImportVCardDialogFragment;
import com.android.contacts.vcard.VCardService;
import com.android.contactsbind.FeedbackHelper;
import com.android.vcard.VCardParser;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class ImportVCardActivity extends Activity implements ImportVCardDialogFragment.Listener {
    private AccountWithDataSet mAccount;
    private ImportRequestConnection mConnection;
    private String mErrorMessage;
    VCardImportExportListener mListener;
    private ProgressDialog mProgressDialogForCachingVCard;
    private VCardCacheThread mVCardCacheThread;
    private Handler mHandler = new Handler();
    private CancelListener mCancelListener = new CancelListener();

    private class DialogDisplayer implements Runnable {
        private final int mResId = R.id.dialog_error_with_message;

        public DialogDisplayer(String str) {
            ImportVCardActivity.this.mErrorMessage = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ImportVCardActivity.this.isFinishing()) {
                return;
            }
            ImportVCardActivity.this.showDialog(this.mResId);
        }
    }

    private class CancelListener implements DialogInterface.OnClickListener, DialogInterface.OnCancelListener {
        private CancelListener() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            ImportVCardActivity.this.finish();
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            ImportVCardActivity.this.finish();
        }
    }

    private class ImportRequestConnection implements ServiceConnection {
        private VCardService mService;

        private ImportRequestConnection() {
        }

        public void sendImportRequest(List<ImportRequest> list) {
            Log.i("VCardImport", "Send an import request");
            this.mService.handleImportRequest(list, ImportVCardActivity.this.mListener);
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            this.mService = ((VCardService.MyBinder) iBinder).getService();
            Log.i("VCardImport", String.format("Connected to VCardService. Kick a vCard cache thread (uri: %s)", Arrays.toString(ImportVCardActivity.this.mVCardCacheThread.getSourceUris())));
            ImportVCardActivity.this.mVCardCacheThread.start();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.i("VCardImport", "Disconnected from VCardService");
        }
    }

    private class VCardCacheThread extends Thread implements DialogInterface.OnCancelListener {
        private boolean mCanceled;
        private final String[] mSourceDisplayNames;
        private final Uri[] mSourceUris;
        private VCardParser mVCardParser;
        private PowerManager.WakeLock mWakeLock;
        private final byte[] mSource = null;
        private final String mDisplayName = null;

        public VCardCacheThread(Uri[] uriArr, String[] strArr) {
            this.mSourceUris = uriArr;
            this.mSourceDisplayNames = strArr;
            this.mWakeLock = ((PowerManager) ImportVCardActivity.this.getSystemService("power")).newWakeLock(536870918, "VCardImport");
        }

        public void finalize() {
            PowerManager.WakeLock wakeLock = this.mWakeLock;
            if (wakeLock == null || !wakeLock.isHeld()) {
                return;
            }
            Log.w("VCardImport", "WakeLock is being held.");
            this.mWakeLock.release();
        }

        /* JADX WARN: Code restructure failed: missing block: B:32:0x00b2, code lost:
        
            android.util.Log.i("VCardImport", "vCard cache operation is canceled.");
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x00b5, code lost:
        
            android.util.Log.i("VCardImport", "Finished caching vCard.");
            r17.mWakeLock.release();
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00bd, code lost:
        
            r17.this$0.unbindService(r17.this$0.mConnection);
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00ca, code lost:
        
            r0 = e;
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 513
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.vcard.ImportVCardActivity.VCardCacheThread.run():void");
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0092  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x00a8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private com.android.contacts.vcard.ImportRequest constructImportRequest(byte[] r12, android.net.Uri r13, java.lang.String r14) throws java.io.IOException, com.android.vcard.exception.VCardException {
            /*
                Method dump skipped, instructions count: 212
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.vcard.ImportVCardActivity.VCardCacheThread.constructImportRequest(byte[], android.net.Uri, java.lang.String):com.android.contacts.vcard.ImportRequest");
        }

        public Uri[] getSourceUris() {
            return this.mSourceUris;
        }

        public void cancel() {
            this.mCanceled = true;
            VCardParser vCardParser = this.mVCardParser;
            if (vCardParser != null) {
                vCardParser.cancel();
            }
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            Log.i("VCardImport", "Cancel request has come. Abort caching vCard.");
            cancel();
        }
    }

    private void importVCard(Uri uri, String str) {
        importVCard(new Uri[]{uri}, new String[]{str});
    }

    private void importVCard(final Uri[] uriArr, final String[] strArr) {
        runOnUiThread(new Runnable() { // from class: com.android.contacts.vcard.ImportVCardActivity.1
            @Override // java.lang.Runnable
            public void run() {
                if (ImportVCardActivity.this.isFinishing()) {
                    return;
                }
                ImportVCardActivity.this.mVCardCacheThread = ImportVCardActivity.this.new VCardCacheThread(uriArr, strArr);
                ImportVCardActivity importVCardActivity = ImportVCardActivity.this;
                importVCardActivity.mListener = new NotificationImportExportListener(importVCardActivity);
                ImportVCardActivity.this.showDialog(R.id.dialog_cache_vcard);
            }
        });
    }

    private String getDisplayName(Uri uri) {
        Cursor cursor = null;
        r1 = null;
        r1 = null;
        r1 = null;
        String string = null;
        if (uri == null) {
            return null;
        }
        try {
            Cursor query = getContentResolver().query(uri, new String[]{"_display_name"}, null, null, null);
            if (query != null) {
                try {
                    if (query.getCount() > 0 && query.moveToFirst()) {
                        if (query.getCount() > 1) {
                            Log.w("VCardImport", "Unexpected multiple rows: " + query.getCount());
                        }
                        int columnIndex = query.getColumnIndex("_display_name");
                        if (columnIndex >= 0) {
                            string = query.getString(columnIndex);
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
            return TextUtils.isEmpty(string) ? uri.getLastPathSegment() : string;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Uri copyTo(Uri uri, String str) throws IOException {
        FileChannel fileChannel;
        Log.i("VCardImport", String.format("Copy a Uri to app local storage (%s -> %s)", uri, str));
        FileChannel fileChannel2 = null;
        try {
            ReadableByteChannel newChannel = Channels.newChannel(getContentResolver().openInputStream(uri));
            try {
                Uri parse = Uri.parse(getFileStreamPath(str).toURI().toString());
                fileChannel2 = openFileOutput(str, 0).getChannel();
                ByteBuffer allocateDirect = ByteBuffer.allocateDirect(8192);
                while (newChannel.read(allocateDirect) != -1) {
                    allocateDirect.flip();
                    fileChannel2.write(allocateDirect);
                    allocateDirect.compact();
                }
                allocateDirect.flip();
                while (allocateDirect.hasRemaining()) {
                    fileChannel2.write(allocateDirect);
                }
                if (newChannel != 0) {
                    try {
                        newChannel.close();
                    } catch (IOException unused) {
                        Log.w("VCardImport", "Failed to close inputChannel.");
                    }
                }
                if (fileChannel2 != null) {
                    try {
                        fileChannel2.close();
                    } catch (IOException unused2) {
                        Log.w("VCardImport", "Failed to close outputChannel");
                    }
                }
                return parse;
            } catch (Throwable th) {
                th = th;
                FileChannel fileChannel3 = fileChannel2;
                fileChannel2 = newChannel;
                fileChannel = fileChannel3;
                if (fileChannel2 != null) {
                    try {
                        fileChannel2.close();
                    } catch (IOException unused3) {
                        Log.w("VCardImport", "Failed to close inputChannel.");
                    }
                }
                if (fileChannel != null) {
                    try {
                        fileChannel.close();
                        throw th;
                    } catch (IOException unused4) {
                        Log.w("VCardImport", "Failed to close outputChannel");
                        throw th;
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileChannel = null;
        }
    }

    private String readUriToLocalFile(Uri uri) {
        int i = 0;
        while (true) {
            String str = "import_tmp_" + i + ".vcf";
            if (!getFileStreamPath(str).exists()) {
                try {
                    copyTo(uri, str);
                    if (str != null) {
                        return str;
                    }
                    Log.e("VCardImport", "Cannot load uri to local storage.");
                    showFailureNotification(R.string.fail_reason_io_error);
                    return null;
                } catch (IOException | SecurityException e) {
                    FeedbackHelper.sendFeedback(this, "VCardImport", "Failed to copy vcard to local file", e);
                    showFailureNotification(R.string.fail_reason_io_error);
                    return null;
                }
            }
            if (i == Integer.MAX_VALUE) {
                throw new RuntimeException("Exceeded cache limit");
            }
            i++;
        }
    }

    private Uri readUriToLocalUri(Uri uri) {
        String readUriToLocalFile = readUriToLocalFile(uri);
        if (readUriToLocalFile == null) {
            return null;
        }
        return Uri.parse(getFileStreamPath(readUriToLocalFile).toURI().toString());
    }

    private boolean isStorageUri(Uri uri) {
        return uri != null && uri.toString().startsWith("file:///storage");
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        String str;
        String str2;
        String str3;
        String str4;
        super.onCreate(bundle);
        getWindow().addSystemFlags(524288);
        Uri data = getIntent().getData();
        if (isStorageUri(data) && RequestImportVCardPermissionsActivity.startPermissionActivity(this, isCallerSelf(this))) {
            return;
        }
        if (data != null) {
            String stringExtra = getIntent().getStringExtra("com.android.contacts.vcard.LOCAL_TMP_FILE_NAME");
            str = getIntent().getStringExtra("com.android.contacts.vcard.SOURCE_URI_DISPLAY_NAME");
            if (TextUtils.isEmpty(stringExtra)) {
                stringExtra = readUriToLocalFile(data);
                str = getDisplayName(data);
                if (stringExtra == null) {
                    Log.e("VCardImport", "Cannot load uri to local storage.");
                    showFailureNotification(R.string.fail_reason_io_error);
                    return;
                } else {
                    getIntent().putExtra("com.android.contacts.vcard.LOCAL_TMP_FILE_NAME", stringExtra);
                    getIntent().putExtra("com.android.contacts.vcard.SOURCE_URI_DISPLAY_NAME", str);
                }
            }
            data = Uri.parse(getFileStreamPath(stringExtra).toURI().toString());
        } else {
            str = null;
        }
        if (RequestImportVCardPermissionsActivity.startPermissionActivity(this, isCallerSelf(this))) {
            return;
        }
        Intent intent = getIntent();
        if (intent != null) {
            str2 = intent.getStringExtra("account_name");
            str4 = intent.getStringExtra("account_type");
            str3 = intent.getStringExtra("data_set");
        } else {
            Log.e("VCardImport", "intent does not exist");
            str2 = null;
            str3 = null;
            str4 = null;
        }
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str4)) {
            this.mAccount = new AccountWithDataSet(str2, str4, str3);
        } else {
            List<AccountWithDataSet> blockForWritableAccounts = AccountTypeManager.getInstance(this).blockForWritableAccounts();
            if (blockForWritableAccounts.size() == 0) {
                this.mAccount = null;
            } else if (blockForWritableAccounts.size() == 1) {
                this.mAccount = blockForWritableAccounts.get(0);
            } else {
                startActivityForResult(new Intent(this, (Class<?>) SelectAccountActivity.class), 0);
                return;
            }
        }
        if (isCallerSelf(this)) {
            startImport(data, str);
        } else {
            ImportVCardDialogFragment.show(this, data, str);
        }
    }

    private static boolean isCallerSelf(Activity activity) {
        String packageName;
        ComponentName callingActivity = activity.getCallingActivity();
        if (callingActivity == null || (packageName = callingActivity.getPackageName()) == null) {
            return false;
        }
        return packageName.equals(activity.getApplicationContext().getPackageName());
    }

    @Override // com.android.contacts.vcard.ImportVCardDialogFragment.Listener
    public void onImportVCardConfirmed(Uri uri, String str) {
        startImport(uri, str);
    }

    @Override // com.android.contacts.vcard.ImportVCardDialogFragment.Listener
    public void onImportVCardDenied() {
        finish();
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        Uri readUriToLocalUri;
        if (i == 0) {
            if (i2 == -1) {
                this.mAccount = new AccountWithDataSet(intent.getStringExtra("account_name"), intent.getStringExtra("account_type"), intent.getStringExtra("data_set"));
                Uri data = getIntent().getData();
                if (data == null) {
                    startImport(data, null);
                    return;
                } else {
                    startImport(Uri.parse(getFileStreamPath(getIntent().getStringExtra("com.android.contacts.vcard.LOCAL_TMP_FILE_NAME")).toURI().toString()), getIntent().getStringExtra("com.android.contacts.vcard.SOURCE_URI_DISPLAY_NAME"));
                    return;
                }
            }
            if (i2 != 0) {
                Log.w("VCardImport", "Result code was not OK nor CANCELED: " + i2);
            }
            finish();
            return;
        }
        if (i == 100) {
            if (i2 == -1) {
                ClipData clipData = intent.getClipData();
                if (clipData != null) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    for (int i3 = 0; i3 < clipData.getItemCount(); i3++) {
                        Uri uri = clipData.getItemAt(i3).getUri();
                        if (uri != null && (readUriToLocalUri = readUriToLocalUri(uri)) != null) {
                            String displayName = getDisplayName(uri);
                            arrayList.add(readUriToLocalUri);
                            arrayList2.add(displayName);
                        }
                    }
                    if (arrayList.isEmpty()) {
                        Log.w("VCardImport", "No vCard was selected for import");
                        finish();
                        return;
                    }
                    Log.i("VCardImport", "Multiple vCards selected for import: " + arrayList);
                    importVCard((Uri[]) arrayList.toArray(new Uri[0]), (String[]) arrayList2.toArray(new String[0]));
                    return;
                }
                Uri data2 = intent.getData();
                if (data2 != null) {
                    Log.i("VCardImport", "vCard selected for import: " + data2);
                    Uri readUriToLocalUri2 = readUriToLocalUri(data2);
                    if (readUriToLocalUri2 != null) {
                        importVCard(readUriToLocalUri2, getDisplayName(data2));
                        return;
                    } else {
                        Log.w("VCardImport", "No local URI for vCard import");
                        finish();
                        return;
                    }
                }
                Log.w("VCardImport", "No vCard was selected for import");
                finish();
                return;
            }
            if (i2 != 0) {
                Log.w("VCardImport", "Result code was not OK nor CANCELED" + i2);
            }
            finish();
        }
    }

    private void startImport(Uri uri, String str) {
        if (uri != null) {
            Log.i("VCardImport", "Starting vCard import using Uri " + uri);
            importVCard(uri, str);
            return;
        }
        Log.i("VCardImport", "Start vCard without Uri. The user will select vCard manually.");
        Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("text/x-vcard");
        intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
        startActivityForResult(intent, 100);
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i, Bundle bundle) {
        if (i != R.id.dialog_cache_vcard) {
            if (i == R.id.dialog_error_with_message) {
                String str = this.mErrorMessage;
                if (TextUtils.isEmpty(str)) {
                    Log.e("VCardImport", "Error message is null while it must not.");
                    str = getString(R.string.fail_reason_unknown);
                }
                return new AlertDialog.Builder(this).setTitle(getString(R.string.reading_vcard_failed_title)).setIconAttribute(android.R.attr.alertDialogIcon).setMessage(str).setOnCancelListener(this.mCancelListener).setPositiveButton(android.R.string.ok, this.mCancelListener).create();
            }
            return super.onCreateDialog(i, bundle);
        }
        if (this.mProgressDialogForCachingVCard == null) {
            String string = getString(R.string.caching_vcard_title);
            String string2 = getString(R.string.caching_vcard_message);
            ProgressDialog progressDialog = new ProgressDialog(this);
            this.mProgressDialogForCachingVCard = progressDialog;
            progressDialog.setTitle(string);
            this.mProgressDialogForCachingVCard.setMessage(string2);
            this.mProgressDialogForCachingVCard.setProgressStyle(0);
            this.mProgressDialogForCachingVCard.setOnCancelListener(this.mVCardCacheThread);
            startVCardService();
        }
        return this.mProgressDialogForCachingVCard;
    }

    void startVCardService() {
        this.mConnection = new ImportRequestConnection();
        Log.i("VCardImport", "Bind to VCardService.");
        startService(new Intent(this, (Class<?>) VCardService.class));
        bindService(new Intent(this, (Class<?>) VCardService.class), this.mConnection, 1);
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        if (this.mProgressDialogForCachingVCard != null) {
            Log.i("VCardImport", "Cache thread is still running. Show progress dialog again.");
            showDialog(R.id.dialog_cache_vcard);
        }
    }

    void showFailureNotification(int i) {
        ((NotificationManager) getSystemService("notification")).notify("VCardServiceFailure", 1, NotificationImportExportListener.constructImportFailureNotification(this, getString(i)));
        this.mHandler.post(new Runnable() { // from class: com.android.contacts.vcard.ImportVCardActivity.2
            @Override // java.lang.Runnable
            public void run() {
                ImportVCardActivity importVCardActivity = ImportVCardActivity.this;
                Toast.makeText(importVCardActivity, importVCardActivity.getString(R.string.vcard_import_failed), 1).show();
            }
        });
    }
}
