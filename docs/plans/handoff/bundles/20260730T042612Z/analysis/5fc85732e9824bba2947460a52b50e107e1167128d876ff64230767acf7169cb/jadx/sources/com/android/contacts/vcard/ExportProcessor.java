package com.android.contacts.vcard;

import android.app.NotificationManager;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import com.android.contacts.R;
import com.android.contactsbind.FeedbackHelper;

/* loaded from: classes.dex */
public class ExportProcessor extends ProcessorBase {
    private final Handler handler = new Handler() { // from class: com.android.contacts.vcard.ExportProcessor.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.arg1 == 1) {
                Toast.makeText(ExportProcessor.this.mService, R.string.exporting_vcard_finished_toast, 1).show();
            }
        }
    };
    private final String mCallingActivity;
    private volatile boolean mCanceled;
    private volatile boolean mDone;
    private final ExportRequest mExportRequest;
    private final int mJobId;
    private final NotificationManager mNotificationManager;
    private final ContentResolver mResolver;
    private final VCardService mService;

    @Override // com.android.contacts.vcard.ProcessorBase
    public final int getType() {
        return 2;
    }

    public ExportProcessor(VCardService vCardService, ExportRequest exportRequest, int i, String str) {
        this.mService = vCardService;
        this.mResolver = vCardService.getContentResolver();
        this.mNotificationManager = (NotificationManager) this.mService.getSystemService("notification");
        this.mExportRequest = exportRequest;
        this.mJobId = i;
        this.mCallingActivity = str;
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        try {
            try {
                runInternal();
                if (isCancelled()) {
                    doCancelNotification();
                }
                synchronized (this) {
                    this.mDone = true;
                }
            } catch (Throwable th) {
                synchronized (this) {
                    this.mDone = true;
                    throw th;
                }
            }
        } catch (OutOfMemoryError | RuntimeException e) {
            FeedbackHelper.sendFeedback(this.mService, "VCardExport", "Failed to process vcard export", e);
            throw e;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:91:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x020e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void runInternal() {
        /*
            Method dump skipped, instructions count: 558
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.vcard.ExportProcessor.runInternal():void");
    }

    private boolean isLocalFile(Uri uri) {
        return this.mService.getString(R.string.contacts_file_provider_authority).equals(uri.getAuthority());
    }

    private String translateComposerError(String str) {
        Resources resources = this.mService.getResources();
        if ("Failed to get database information".equals(str)) {
            return resources.getString(R.string.composer_failed_to_get_database_infomation);
        }
        if ("There's no exportable in the database".equals(str)) {
            return resources.getString(R.string.composer_has_no_exportable_contact);
        }
        return "The vCard composer object is not correctly initialized".equals(str) ? resources.getString(R.string.composer_not_initialized) : str;
    }

    private void doProgressNotification(Uri uri, int i, int i2) {
        String lastPathSegment = uri.getLastPathSegment();
        this.mService.startForeground(this.mJobId, NotificationImportExportListener.constructProgressNotification(this.mService, 2, this.mService.getString(R.string.exporting_contact_list_message, new Object[]{lastPathSegment}), this.mService.getString(R.string.exporting_contact_list_title), this.mJobId, lastPathSegment, i, i2));
    }

    private void doCancelNotification() {
        this.mNotificationManager.notify("VCardServiceProgress", this.mJobId, NotificationImportExportListener.constructCancelNotification(this.mService, this.mService.getString(R.string.exporting_vcard_canceled_title, new Object[]{this.mExportRequest.destUri.getLastPathSegment()})));
    }

    private void doFinishNotification(String str, String str2) {
        Intent intent = new Intent();
        intent.setClassName(this.mService, this.mCallingActivity);
        this.mNotificationManager.notify("VCardServiceProgress", this.mJobId, NotificationImportExportListener.constructFinishNotification(this.mService, str, str2, intent));
    }

    private void doFinishNotificationWithShareAction(String str, String str2, Uri uri) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/x-vcard");
        intent.putExtra("android.intent.extra.STREAM", uri);
        intent.setFlags(268435457);
        this.mNotificationManager.notify("VCardServiceProgress", this.mJobId, NotificationImportExportListener.constructFinishNotification(this.mService, str, str2, intent));
    }

    @Override // com.android.contacts.vcard.ProcessorBase, java.util.concurrent.Future
    public synchronized boolean cancel(boolean z) {
        if (!this.mDone && !this.mCanceled) {
            this.mCanceled = true;
            return true;
        }
        return false;
    }

    @Override // java.util.concurrent.Future
    public synchronized boolean isCancelled() {
        return this.mCanceled;
    }

    @Override // com.android.contacts.vcard.ProcessorBase, java.util.concurrent.Future
    public synchronized boolean isDone() {
        return this.mDone;
    }

    public ExportRequest getRequest() {
        return this.mExportRequest;
    }
}
