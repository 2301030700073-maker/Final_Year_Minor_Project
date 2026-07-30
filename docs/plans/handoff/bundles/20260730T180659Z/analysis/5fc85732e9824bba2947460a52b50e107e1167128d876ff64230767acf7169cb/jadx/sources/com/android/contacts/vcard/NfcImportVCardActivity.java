package com.android.contacts.vcard;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.nfc.NdefMessage;
import android.nfc.NdefRecord;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.provider.ContactsContract;
import android.util.Log;
import android.widget.Toast;
import com.android.contacts.R;
import com.android.contacts.activities.RequestPermissionsActivity;
import com.android.contacts.model.AccountTypeManager;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.vcard.VCardService;
import com.android.contactsbind.FeedbackHelper;
import com.android.vcard.VCardEntry;
import com.android.vcard.VCardEntryCounter;
import com.android.vcard.VCardParser_V21;
import com.android.vcard.VCardParser_V30;
import com.android.vcard.VCardSourceDetector;
import com.android.vcard.exception.VCardException;
import com.android.vcard.exception.VCardNestedException;
import com.android.vcard.exception.VCardVersionException;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class NfcImportVCardActivity extends Activity implements ServiceConnection, VCardImportExportListener {
    private AccountWithDataSet mAccount;
    private Handler mHandler = new Handler();
    private NdefRecord mRecord;

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public void onCancelRequest(CancelRequest cancelRequest, int i) {
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public void onExportFailed(ExportRequest exportRequest) {
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public Notification onExportProcessed(ExportRequest exportRequest, int i) {
        return null;
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public void onImportCanceled(ImportRequest importRequest, int i) {
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public Notification onImportParsed(ImportRequest importRequest, int i, VCardEntry vCardEntry, int i2, int i3) {
        return null;
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public Notification onImportProcessed(ImportRequest importRequest, int i, int i2) {
        return null;
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }

    class ImportTask extends AsyncTask<VCardService, Void, ImportRequest> {
        ImportTask() {
        }

        @Override // android.os.AsyncTask
        public ImportRequest doInBackground(VCardService... vCardServiceArr) {
            ImportRequest createImportRequest = NfcImportVCardActivity.this.createImportRequest();
            if (createImportRequest == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(createImportRequest);
            vCardServiceArr[0].handleImportRequest(arrayList, NfcImportVCardActivity.this);
            return createImportRequest;
        }

        @Override // android.os.AsyncTask
        public void onCancelled() {
            NfcImportVCardActivity nfcImportVCardActivity = NfcImportVCardActivity.this;
            nfcImportVCardActivity.unbindService(nfcImportVCardActivity);
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(ImportRequest importRequest) {
            if (importRequest == null) {
                NfcImportVCardActivity.this.finish();
            }
            NfcImportVCardActivity nfcImportVCardActivity = NfcImportVCardActivity.this;
            nfcImportVCardActivity.unbindService(nfcImportVCardActivity);
        }
    }

    /* JADX WARN: Not initialized variable reg: 7, insn: 0x0084: MOVE (r4 I:??[OBJECT, ARRAY]) = (r7 I:??[OBJECT, ARRAY]), block:B:72:0x0084 */
    ImportRequest createImportRequest() {
        VCardEntryCounter vCardEntryCounter;
        VCardSourceDetector vCardSourceDetector;
        VCardEntryCounter vCardEntryCounter2;
        VCardEntryCounter vCardEntryCounter3 = null;
        int i = 1;
        try {
            try {
                try {
                    try {
                        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(this.mRecord.getPayload());
                        byteArrayInputStream.mark(0);
                        VCardParser_V21 vCardParser_V21 = new VCardParser_V21();
                        try {
                            vCardEntryCounter2 = new VCardEntryCounter();
                        } catch (VCardVersionException unused) {
                        } catch (Throwable th) {
                            th = th;
                        }
                        try {
                            vCardSourceDetector = new VCardSourceDetector();
                            try {
                                try {
                                    vCardParser_V21.addInterpreter(vCardEntryCounter2);
                                    vCardParser_V21.addInterpreter(vCardSourceDetector);
                                    vCardParser_V21.parse(byteArrayInputStream);
                                    try {
                                        byteArrayInputStream.close();
                                    } catch (IOException unused2) {
                                    }
                                } catch (VCardVersionException unused3) {
                                    byteArrayInputStream.reset();
                                    i = 2;
                                    VCardParser_V30 vCardParser_V30 = new VCardParser_V30();
                                    try {
                                        VCardEntryCounter vCardEntryCounter4 = new VCardEntryCounter();
                                        try {
                                            VCardSourceDetector vCardSourceDetector2 = new VCardSourceDetector();
                                            try {
                                                vCardParser_V30.addInterpreter(vCardEntryCounter4);
                                                vCardParser_V30.addInterpreter(vCardSourceDetector2);
                                                vCardParser_V30.parse(byteArrayInputStream);
                                                try {
                                                    byteArrayInputStream.close();
                                                } catch (VCardNestedException unused4) {
                                                    vCardSourceDetector = vCardSourceDetector2;
                                                    vCardEntryCounter3 = vCardEntryCounter4;
                                                    Log.w("NfcImportVCardActivity", "Nested Exception is found (it may be false-positive).");
                                                    vCardEntryCounter2 = vCardEntryCounter3;
                                                    return new ImportRequest(this.mAccount, this.mRecord.getPayload(), null, getString(R.string.nfc_vcard_file_name), vCardSourceDetector.getEstimatedType(), vCardSourceDetector.getEstimatedCharset(), i, vCardEntryCounter2.getCount());
                                                } catch (IOException unused5) {
                                                }
                                                vCardSourceDetector = vCardSourceDetector2;
                                                vCardEntryCounter2 = vCardEntryCounter4;
                                                return new ImportRequest(this.mAccount, this.mRecord.getPayload(), null, getString(R.string.nfc_vcard_file_name), vCardSourceDetector.getEstimatedType(), vCardSourceDetector.getEstimatedCharset(), i, vCardEntryCounter2.getCount());
                                            } catch (VCardVersionException e) {
                                                e = e;
                                                FeedbackHelper.sendFeedback(this, "NfcImportVCardActivity", "vcard with unsupported version", e);
                                                showFailureNotification(R.string.fail_reason_not_supported);
                                                try {
                                                    byteArrayInputStream.close();
                                                } catch (IOException unused6) {
                                                }
                                                return null;
                                            } catch (Throwable th2) {
                                                th = th2;
                                                try {
                                                    byteArrayInputStream.close();
                                                } catch (IOException unused7) {
                                                }
                                                throw th;
                                            }
                                        } catch (VCardVersionException e2) {
                                            e = e2;
                                        } catch (Throwable th3) {
                                            th = th3;
                                        }
                                    } catch (VCardVersionException e3) {
                                        e = e3;
                                    }
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                byteArrayInputStream.close();
                                throw th;
                            }
                        } catch (VCardVersionException unused8) {
                        } catch (Throwable th5) {
                            th = th5;
                            byteArrayInputStream.close();
                            throw th;
                        }
                    } catch (VCardNestedException unused9) {
                        vCardSourceDetector = null;
                    }
                } catch (VCardException e4) {
                    FeedbackHelper.sendFeedback(this, "NfcImportVCardActivity", "Failed to parse vcard", e4);
                    showFailureNotification(R.string.fail_reason_not_supported);
                    return null;
                }
            } catch (VCardNestedException unused10) {
                vCardEntryCounter3 = vCardEntryCounter;
            }
            return new ImportRequest(this.mAccount, this.mRecord.getPayload(), null, getString(R.string.nfc_vcard_file_name), vCardSourceDetector.getEstimatedType(), vCardSourceDetector.getEstimatedCharset(), i, vCardEntryCounter2.getCount());
        } catch (IOException e5) {
            FeedbackHelper.sendFeedback(this, "NfcImportVCardActivity", "Failed to read vcard data", e5);
            showFailureNotification(R.string.fail_reason_io_error);
            return null;
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        new ImportTask().execute(((VCardService.MyBinder) iBinder).getService());
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (RequestPermissionsActivity.startPermissionActivityIfNeeded(this)) {
            return;
        }
        Intent intent = getIntent();
        if (!"android.nfc.action.NDEF_DISCOVERED".equals(intent.getAction())) {
            Log.w("NfcImportVCardActivity", "Unknowon intent " + intent);
            finish();
            return;
        }
        String type = intent.getType();
        if (type == null || (!"text/x-vcard".equals(type) && !"text/vcard".equals(type))) {
            Log.w("NfcImportVCardActivity", "Not a vcard");
            finish();
            return;
        }
        this.mRecord = ((NdefMessage) intent.getParcelableArrayExtra("android.nfc.extra.NDEF_MESSAGES")[0]).getRecords()[0];
        List<AccountWithDataSet> blockForWritableAccounts = AccountTypeManager.getInstance(this).blockForWritableAccounts();
        if (blockForWritableAccounts.size() == 0) {
            this.mAccount = null;
        } else if (blockForWritableAccounts.size() == 1) {
            this.mAccount = blockForWritableAccounts.get(0);
        } else {
            startActivityForResult(new Intent(this, (Class<?>) SelectAccountActivity.class), 1);
            return;
        }
        startImport();
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1) {
            if (i2 == -1) {
                this.mAccount = new AccountWithDataSet(intent.getStringExtra("account_name"), intent.getStringExtra("account_type"), intent.getStringExtra("data_set"));
                startImport();
            } else {
                finish();
            }
        }
    }

    private void startImport() {
        Intent intent = new Intent(this, (Class<?>) VCardService.class);
        startService(intent);
        bindService(intent, this, 1);
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public void onImportFinished(ImportRequest importRequest, int i, Uri uri) {
        if (isFinishing()) {
            Log.i("NfcImportVCardActivity", "Late import -- ignoring");
        } else if (uri != null) {
            ImplicitIntentsUtil.startActivityInAppIfPossible(this, new Intent("android.intent.action.VIEW", ContactsContract.RawContacts.getContactLookupUri(getContentResolver(), uri)));
            finish();
        }
    }

    @Override // com.android.contacts.vcard.VCardImportExportListener
    public void onImportFailed(ImportRequest importRequest) {
        if (isFinishing()) {
            Log.i("NfcImportVCardActivity", "Late import failure -- ignoring");
        } else {
            showFailureNotification(R.string.vcard_import_request_rejected_message);
            finish();
        }
    }

    void showFailureNotification(int i) {
        ((NotificationManager) getSystemService("notification")).notify("VCardServiceFailure", 1, NotificationImportExportListener.constructImportFailureNotification(this, getString(i)));
        this.mHandler.post(new Runnable() { // from class: com.android.contacts.vcard.NfcImportVCardActivity.1
            @Override // java.lang.Runnable
            public void run() {
                NfcImportVCardActivity nfcImportVCardActivity = NfcImportVCardActivity.this;
                Toast.makeText(nfcImportVCardActivity, nfcImportVCardActivity.getString(R.string.vcard_import_failed), 1).show();
            }
        });
    }
}
