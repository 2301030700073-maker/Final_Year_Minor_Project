package com.android.contacts.vcard;

import android.app.Notification;
import android.content.ContentResolver;
import android.net.Uri;
import com.android.contactsbind.FeedbackHelper;
import com.android.vcard.VCardEntry;
import com.android.vcard.VCardEntryHandler;
import com.android.vcard.VCardParser;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ImportProcessor extends ProcessorBase implements VCardEntryHandler {
    private volatile boolean mCanceled;
    private volatile boolean mDone;
    private final ImportRequest mImportRequest;
    private final int mJobId;
    private final VCardImportExportListener mListener;
    private final ContentResolver mResolver;
    private final VCardService mService;
    private VCardParser mVCardParser;
    private final List<Uri> mFailedUris = new ArrayList();
    private int mCurrentCount = 0;
    private int mTotalCount = 0;

    @Override // com.android.contacts.vcard.ProcessorBase
    public final int getType() {
        return 1;
    }

    @Override // com.android.vcard.VCardEntryHandler
    public void onEnd() {
    }

    @Override // com.android.vcard.VCardEntryHandler
    public void onStart() {
    }

    public ImportProcessor(VCardService vCardService, VCardImportExportListener vCardImportExportListener, ImportRequest importRequest, int i) {
        this.mService = vCardService;
        this.mResolver = vCardService.getContentResolver();
        this.mListener = vCardImportExportListener;
        this.mImportRequest = importRequest;
        this.mJobId = i;
    }

    @Override // com.android.vcard.VCardEntryHandler
    public void onEntryCreated(VCardEntry vCardEntry) {
        Notification onImportParsed;
        int i = this.mCurrentCount + 1;
        this.mCurrentCount = i;
        VCardImportExportListener vCardImportExportListener = this.mListener;
        if (vCardImportExportListener == null || (onImportParsed = vCardImportExportListener.onImportParsed(this.mImportRequest, this.mJobId, vCardEntry, i, this.mTotalCount)) == null) {
            return;
        }
        this.mService.startForeground(this.mJobId, onImportParsed);
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        try {
            try {
                runInternal();
                if (isCancelled() && this.mListener != null) {
                    this.mListener.onImportCanceled(this.mImportRequest, this.mJobId);
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
            FeedbackHelper.sendFeedback(this.mService, "VCardImport", "Vcard import failed", e);
            synchronized (this) {
                this.mDone = true;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0138  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void runInternal() {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.vcard.ImportProcessor.runInternal():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0076 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean readOneVCard(java.io.InputStream r7, int r8, java.lang.String r9, com.android.vcard.VCardInterpreter r10, int[] r11) {
        /*
            r6 = this;
            int r9 = r11.length
            r0 = 0
            r1 = 0
        L3:
            if (r1 >= r9) goto L7f
            r2 = r11[r1]
            if (r1 <= 0) goto L13
            boolean r3 = r10 instanceof com.android.vcard.VCardEntryConstructor     // Catch: java.lang.Throwable -> L46 com.android.vcard.exception.VCardException -> L48 com.android.vcard.exception.VCardVersionException -> L58 com.android.vcard.exception.VCardNotSupportedException -> L67 java.io.IOException -> L69
            if (r3 == 0) goto L13
            r3 = r10
            com.android.vcard.VCardEntryConstructor r3 = (com.android.vcard.VCardEntryConstructor) r3     // Catch: java.lang.Throwable -> L46 com.android.vcard.exception.VCardException -> L48 com.android.vcard.exception.VCardVersionException -> L58 com.android.vcard.exception.VCardNotSupportedException -> L67 java.io.IOException -> L69
            r3.clear()     // Catch: java.lang.Throwable -> L46 com.android.vcard.exception.VCardException -> L48 com.android.vcard.exception.VCardVersionException -> L58 com.android.vcard.exception.VCardNotSupportedException -> L67 java.io.IOException -> L69
        L13:
            monitor-enter(r6)     // Catch: java.lang.Throwable -> L46 com.android.vcard.exception.VCardException -> L48 com.android.vcard.exception.VCardVersionException -> L58 com.android.vcard.exception.VCardNotSupportedException -> L67 java.io.IOException -> L69
            r3 = 2
            if (r2 != r3) goto L1d
            com.android.vcard.VCardParser_V30 r2 = new com.android.vcard.VCardParser_V30     // Catch: java.lang.Throwable -> L43
            r2.<init>(r8)     // Catch: java.lang.Throwable -> L43
            goto L22
        L1d:
            com.android.vcard.VCardParser_V21 r2 = new com.android.vcard.VCardParser_V21     // Catch: java.lang.Throwable -> L43
            r2.<init>(r8)     // Catch: java.lang.Throwable -> L43
        L22:
            r6.mVCardParser = r2     // Catch: java.lang.Throwable -> L43
            boolean r2 = r6.isCancelled()     // Catch: java.lang.Throwable -> L43
            if (r2 == 0) goto L36
            java.lang.String r2 = "VCardImport"
            java.lang.String r3 = "ImportProcessor already recieves cancel request, so send cancel request to vCard parser too."
            android.util.Log.i(r2, r3)     // Catch: java.lang.Throwable -> L43
            com.android.vcard.VCardParser r2 = r6.mVCardParser     // Catch: java.lang.Throwable -> L43
            r2.cancel()     // Catch: java.lang.Throwable -> L43
        L36:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L43
            com.android.vcard.VCardParser r2 = r6.mVCardParser     // Catch: java.lang.Throwable -> L46 com.android.vcard.exception.VCardException -> L48 com.android.vcard.exception.VCardVersionException -> L58 com.android.vcard.exception.VCardNotSupportedException -> L67 java.io.IOException -> L69
            r2.parse(r7, r10)     // Catch: java.lang.Throwable -> L46 com.android.vcard.exception.VCardException -> L48 com.android.vcard.exception.VCardVersionException -> L58 com.android.vcard.exception.VCardNotSupportedException -> L67 java.io.IOException -> L69
            if (r7 == 0) goto L41
            r7.close()     // Catch: java.io.IOException -> L41
        L41:
            r0 = 1
            goto L7f
        L43:
            r2 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L43
            throw r2     // Catch: java.lang.Throwable -> L46 com.android.vcard.exception.VCardException -> L48 com.android.vcard.exception.VCardVersionException -> L58 com.android.vcard.exception.VCardNotSupportedException -> L67 java.io.IOException -> L69
        L46:
            r8 = move-exception
            goto L79
        L48:
            r2 = move-exception
            java.lang.String r3 = "VCardImport"
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L46
            android.util.Log.e(r3, r2)     // Catch: java.lang.Throwable -> L46
            if (r7 == 0) goto L76
        L54:
            r7.close()     // Catch: java.io.IOException -> L76
            goto L76
        L58:
            int r2 = r9 + (-1)
            if (r1 != r2) goto L64
            java.lang.String r2 = "VCardImport"
            java.lang.String r3 = "Appropriate version for this vCard is not found."
            android.util.Log.e(r2, r3)     // Catch: java.lang.Throwable -> L46
        L64:
            if (r7 == 0) goto L76
            goto L54
        L67:
            r2 = move-exception
            goto L6a
        L69:
            r2 = move-exception
        L6a:
            com.android.contacts.vcard.VCardService r3 = r6.mService     // Catch: java.lang.Throwable -> L46
            java.lang.String r4 = "VCardImport"
            java.lang.String r5 = "Failed to read vcard"
            com.android.contactsbind.FeedbackHelper.sendFeedback(r3, r4, r5, r2)     // Catch: java.lang.Throwable -> L46
            if (r7 == 0) goto L76
            goto L54
        L76:
            int r1 = r1 + 1
            goto L3
        L79:
            if (r7 == 0) goto L7e
            r7.close()     // Catch: java.io.IOException -> L7e
        L7e:
            throw r8
        L7f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.vcard.ImportProcessor.readOneVCard(java.io.InputStream, int, java.lang.String, com.android.vcard.VCardInterpreter, int[]):boolean");
    }

    @Override // com.android.contacts.vcard.ProcessorBase, java.util.concurrent.Future
    public synchronized boolean cancel(boolean z) {
        if (!this.mDone && !this.mCanceled) {
            this.mCanceled = true;
            synchronized (this) {
                if (this.mVCardParser != null) {
                    this.mVCardParser.cancel();
                }
            }
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
}
