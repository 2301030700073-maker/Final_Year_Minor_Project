package com.fsck.k9.ui.crypto;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.AsyncTask;
import android.os.ParcelFileDescriptor;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.navigation.internal.NavContext;
import androidx.work.Data;
import androidx.work.Operation$State;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.network.internal.UtilsKt;
import com.bumptech.glide.GlideBuilder$1;
import com.bumptech.glide.load.engine.Jobs;
import com.fsck.k9.activity.MessageLoaderHelper;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.Body;
import com.fsck.k9.mail.Multipart;
import com.fsck.k9.mail.Part;
import com.fsck.k9.mail.internet.JisSupport;
import com.fsck.k9.mail.internet.MimeBodyPart;
import com.fsck.k9.mail.internet.MimeMessage;
import com.fsck.k9.mail.internet.MimeMultipart;
import com.fsck.k9.mail.internet.SizeAware;
import com.fsck.k9.mail.internet.TextBody;
import com.fsck.k9.mailstore.CryptoResultAnnotation;
import com.fsck.k9.provider.DecryptedFileProvider;
import j$.util.DesugarCollections;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Stack;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.core.logging.legacy.Log;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.apache.commons.io.IOUtils;
import org.openintents.openpgp.IOpenPgpService2;
import org.openintents.openpgp.OpenPgpDecryptionResult;
import org.openintents.openpgp.OpenPgpSignatureResult;
import org.openintents.openpgp.util.OpenPgpApi;
import org.openintents.openpgp.util.OpenPgpApi.OpenPgpSourceSinkAsyncTask;
import org.openintents.openpgp.util.OpenPgpServiceConnection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageCryptoHelper {
    public final GlideBuilder$1 autocryptOperations;
    public OpenPgpDecryptionResult cachedDecryptionResult;
    public MessageLoaderHelper.AnonymousClass1 callback;
    public OpenPgpApi.OpenPgpSourceSinkAsyncTask cancelableBackgroundOperation;
    public final Context context;
    public CryptoPart currentCryptoPart;
    public Intent currentCryptoResult;
    public MimeMessage currentMessage;
    public boolean isCancelled;
    public Jobs messageAnnotations;
    public OpenPgpApi openPgpApi;
    public final GlideBuilder$1 openPgpApiFactory;
    public final String openPgpProvider;
    public OpenPgpServiceConnection openPgpServiceConnection;
    public boolean processSignedOnly;
    public PendingIntent queuedPendingIntent;
    public Jobs queuedResult;
    public int state;
    public Intent userInteractionResultIntent;
    public final Object callbackLock = new Object();
    public final ArrayDeque partsToProcess = new ArrayDeque();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.ui.crypto.MessageCryptoHelper$10, reason: invalid class name */
    public final class AnonymousClass10 implements OpenPgpApi.IOpenPgpCallback {
        @Override // org.openintents.openpgp.util.OpenPgpApi.IOpenPgpCallback
        public final void onReturn(Intent intent) {
            Log.d("Autocrypt update OK!", new Object[0]);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.ui.crypto.MessageCryptoHelper$2, reason: invalid class name */
    public final class AnonymousClass2 implements OpenPgpApi.IOpenPgpCallback {
        @Override // org.openintents.openpgp.util.OpenPgpApi.IOpenPgpCallback
        public final void onReturn(Intent intent) {
            Log.d("Autocrypt update OK!", new Object[0]);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.ui.crypto.MessageCryptoHelper$4, reason: invalid class name */
    public final class AnonymousClass4 implements OpenPgpApi.OpenPgpDataSink {
        @Override // org.openintents.openpgp.util.OpenPgpApi.OpenPgpDataSink
        public final MimeBodyPart processData(BufferedInputStream bufferedInputStream) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                IOUtils.copy(bufferedInputStream, byteArrayOutputStream);
                return new MimeBodyPart(new TextBody(new String(byteArrayOutputStream.toByteArray())), UtilsKt.MIME_TYPE_TEXT_PLAIN, false);
            } catch (MessagingException e) {
                Log.e(e, "MessagingException", new Object[0]);
                return null;
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.ui.crypto.MessageCryptoHelper$8, reason: invalid class name */
    public final class AnonymousClass8 extends OpenPgpApi.OpenPgpDataSource {
        public AnonymousClass8() {
        }

        @Override // org.openintents.openpgp.util.OpenPgpApi.OpenPgpDataSource
        public final Long getSizeForProgress() {
            Body body;
            CryptoPart cryptoPart = MessageCryptoHelper.this.currentCryptoPart;
            Part part = cryptoPart.part;
            int i = cryptoPart.type;
            if (i == 2) {
                body = ((Multipart) part.getBody()).getBodyPart(1).mBody;
            } else {
                if (i != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("part to stream must be encrypted or inline!");
                    return null;
                }
                body = part.getBody();
            }
            if (body instanceof SizeAware) {
                return Long.valueOf(((SizeAware) body).getSize());
            }
            return null;
        }

        @Override // org.openintents.openpgp.util.OpenPgpApi.OpenPgpDataSource
        public final void writeTo(ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream) {
            try {
                CryptoPart cryptoPart = MessageCryptoHelper.this.currentCryptoPart;
                Part part = cryptoPart.part;
                int i = cryptoPart.type;
                if (i == 2) {
                    ((Multipart) part.getBody()).getBodyPart(1).mBody.writeTo(autoCloseOutputStream);
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("part to stream must be encrypted or inline!");
                    }
                    autoCloseOutputStream.write(JisSupport.getTextFromPart(part, -1L).getBytes());
                }
            } catch (MessagingException e) {
                Log.e(e, "MessagingException while writing message to crypto provider", new Object[0]);
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class CryptoPart {
        public final Part part;
        public final int type;

        public CryptoPart(int i, Part part) {
            this.type = i;
            this.part = part;
        }
    }

    /* renamed from: -$$Nest$mcallbackProgress, reason: not valid java name */
    public static void m942$$Nest$mcallbackProgress(MessageCryptoHelper messageCryptoHelper, int i, int i2) {
        synchronized (messageCryptoHelper.callbackLock) {
            MessageLoaderHelper.AnonymousClass1 anonymousClass1 = messageCryptoHelper.callback;
            if (anonymousClass1 != null) {
                MessageLoaderHelper.MessageLoaderCallbacks messageLoaderCallbacks = MessageLoaderHelper.this.callback;
                if (messageLoaderCallbacks == null) {
                    throw new IllegalStateException("unexpected call when callback is already detached");
                }
                messageLoaderCallbacks.setLoadingProgress(i, i2);
            }
        }
    }

    /* renamed from: -$$Nest$monCryptoOperationReturned, reason: not valid java name */
    public static void m943$$Nest$monCryptoOperationReturned(MessageCryptoHelper messageCryptoHelper, MimeBodyPart mimeBodyPart) {
        if (messageCryptoHelper.currentCryptoResult == null) {
            Log.e("Internal error: we should have a result here!", new Object[0]);
            return;
        }
        try {
            messageCryptoHelper.handleCryptoOperationResult(mimeBodyPart);
        } finally {
            messageCryptoHelper.currentCryptoResult = null;
        }
    }

    public MessageCryptoHelper(Context context, GlideBuilder$1 glideBuilder$1, GlideBuilder$1 glideBuilder$12, String str) {
        this.context = context.getApplicationContext();
        this.autocryptOperations = glideBuilder$12;
        this.openPgpApiFactory = glideBuilder$1;
        this.openPgpProvider = str;
    }

    public static MimeBodyPart getMultipartSignedContentPartIfAvailable(Part part) {
        if (!(part.getBody() instanceof MimeMultipart)) {
            return null;
        }
        MimeMultipart mimeMultipart = (MimeMultipart) part.getBody();
        if (mimeMultipart.mParts.size() >= 1) {
            return mimeMultipart.getBodyPart(0);
        }
        return null;
    }

    public final void addCryptoResultAnnotationToMessage(CryptoResultAnnotation cryptoResultAnnotation) {
        OpenPgpSignatureResult openPgpSignatureResult;
        Part part = this.currentCryptoPart.part;
        this.messageAnnotations.jobs.put(part, cryptoResultAnnotation);
        Part findKeyForAnnotationWithReplacementPart = this.messageAnnotations.findKeyForAnnotationWithReplacementPart(part);
        CryptoResultAnnotation cryptoResultAnnotation2 = (CryptoResultAnnotation) this.messageAnnotations.jobs.get(findKeyForAnnotationWithReplacementPart);
        if (findKeyForAnnotationWithReplacementPart == null || (openPgpSignatureResult = cryptoResultAnnotation.openPgpSignatureResult) == null || openPgpSignatureResult.result == -1) {
            return;
        }
        cryptoResultAnnotation2.getClass();
        this.messageAnnotations.jobs.put(findKeyForAnnotationWithReplacementPart, new CryptoResultAnnotation(cryptoResultAnnotation2, cryptoResultAnnotation));
    }

    public final void addErrorAnnotation(Part part, int i, MimeBodyPart mimeBodyPart) {
        if (i == 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) "CryptoError must be actual error state!");
        } else {
            this.messageAnnotations.jobs.put(part, new CryptoResultAnnotation(i, mimeBodyPart, null, null, null, null, null, false));
        }
    }

    public final void callAsyncDecrypt(Intent intent) {
        this.cancelableBackgroundOperation = this.openPgpApi.executeApiAsync(intent, new AnonymousClass8(), new OpenPgpApi.OpenPgpDataSink() { // from class: com.fsck.k9.ui.crypto.MessageCryptoHelper.9
            @Override // org.openintents.openpgp.util.OpenPgpApi.OpenPgpDataSink
            public final MimeBodyPart processData(BufferedInputStream bufferedInputStream) {
                try {
                    Context context = MessageCryptoHelper.this.context;
                    Object obj = DecryptedFileProvider.cleanupReceiverMonitor;
                    return Data.Companion.parse(new NavContext(context.getApplicationContext(), 12), bufferedInputStream);
                } catch (MessagingException e) {
                    Log.e(e, "Something went wrong while parsing the decrypted MIME part", new Object[0]);
                    return null;
                }
            }
        }, new OpenPgpApi.IOpenPgpSinkResultCallback() { // from class: com.fsck.k9.ui.crypto.MessageCryptoHelper.5
            @Override // org.openintents.openpgp.util.OpenPgpApi.IOpenPgpSinkResultCallback
            public final void onProgress(int i, int i2) {
                Log.d("received progress status: %d / %d", Integer.valueOf(i), Integer.valueOf(i2));
                MessageCryptoHelper.m942$$Nest$mcallbackProgress(MessageCryptoHelper.this, i, i2);
            }

            @Override // org.openintents.openpgp.util.OpenPgpApi.IOpenPgpSinkResultCallback
            public final void onReturn(Intent intent2, Object obj) {
                MessageCryptoHelper messageCryptoHelper = MessageCryptoHelper.this;
                messageCryptoHelper.cancelableBackgroundOperation = null;
                messageCryptoHelper.currentCryptoResult = intent2;
                MessageCryptoHelper.m943$$Nest$monCryptoOperationReturned(messageCryptoHelper, (MimeBodyPart) obj);
            }
        });
    }

    public final void callAsyncDetachedVerify(Intent intent) {
        byte[] bArr;
        final Part part = this.currentCryptoPart.part;
        OpenPgpApi.OpenPgpDataSource openPgpDataSource = new OpenPgpApi.OpenPgpDataSource() { // from class: com.fsck.k9.ui.crypto.MessageCryptoHelper.7
            @Override // org.openintents.openpgp.util.OpenPgpApi.OpenPgpDataSource
            public final void writeTo(ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream) {
                try {
                    MimeBodyPart bodyPart = ((Multipart) Part.this.getBody()).getBodyPart(0);
                    Log.d("signed data type: %s", bodyPart.getMimeType());
                    bodyPart.writeTo(autoCloseOutputStream);
                } catch (MessagingException e) {
                    Log.e(e, "Exception while writing message to crypto provider", new Object[0]);
                }
            }
        };
        if (Operation$State.isPartMultipartSigned(part)) {
            Body body = part.getBody();
            if (body instanceof Multipart) {
                MimeBodyPart bodyPart = ((Multipart) body).getBodyPart(1);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                bodyPart.mBody.writeTo(byteArrayOutputStream);
                bArr = byteArrayOutputStream.toByteArray();
                intent.putExtra("detached_signature", bArr);
                OpenPgpApi openPgpApi = this.openPgpApi;
                OpenPgpApi.IOpenPgpSinkResultCallback iOpenPgpSinkResultCallback = new OpenPgpApi.IOpenPgpSinkResultCallback() { // from class: com.fsck.k9.ui.crypto.MessageCryptoHelper.6
                    @Override // org.openintents.openpgp.util.OpenPgpApi.IOpenPgpSinkResultCallback
                    public final void onProgress(int i, int i2) {
                        Log.d("received progress status: %d / %d", Integer.valueOf(i), Integer.valueOf(i2));
                        MessageCryptoHelper.m942$$Nest$mcallbackProgress(MessageCryptoHelper.this, i, i2);
                    }

                    @Override // org.openintents.openpgp.util.OpenPgpApi.IOpenPgpSinkResultCallback
                    public final void onReturn(Intent intent2, Object obj) {
                        MessageCryptoHelper messageCryptoHelper = MessageCryptoHelper.this;
                        messageCryptoHelper.cancelableBackgroundOperation = null;
                        messageCryptoHelper.currentCryptoResult = intent2;
                        MessageCryptoHelper.m943$$Nest$monCryptoOperationReturned(messageCryptoHelper, null);
                    }
                };
                openPgpApi.getClass();
                openPgpApi.new OpenPgpSourceSinkAsyncTask(intent, openPgpDataSource, null, iOpenPgpSinkResultCallback).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            }
        }
        bArr = null;
        intent.putExtra("detached_signature", bArr);
        OpenPgpApi openPgpApi2 = this.openPgpApi;
        OpenPgpApi.IOpenPgpSinkResultCallback iOpenPgpSinkResultCallback2 = new OpenPgpApi.IOpenPgpSinkResultCallback() { // from class: com.fsck.k9.ui.crypto.MessageCryptoHelper.6
            @Override // org.openintents.openpgp.util.OpenPgpApi.IOpenPgpSinkResultCallback
            public final void onProgress(int i, int i2) {
                Log.d("received progress status: %d / %d", Integer.valueOf(i), Integer.valueOf(i2));
                MessageCryptoHelper.m942$$Nest$mcallbackProgress(MessageCryptoHelper.this, i, i2);
            }

            @Override // org.openintents.openpgp.util.OpenPgpApi.IOpenPgpSinkResultCallback
            public final void onReturn(Intent intent2, Object obj) {
                MessageCryptoHelper messageCryptoHelper = MessageCryptoHelper.this;
                messageCryptoHelper.cancelableBackgroundOperation = null;
                messageCryptoHelper.currentCryptoResult = intent2;
                MessageCryptoHelper.m943$$Nest$monCryptoOperationReturned(messageCryptoHelper, null);
            }
        };
        openPgpApi2.getClass();
        openPgpApi2.new OpenPgpSourceSinkAsyncTask(intent, openPgpDataSource, null, iOpenPgpSinkResultCallback2).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public final void callAsyncInlineOperation(Intent intent) {
        this.cancelableBackgroundOperation = this.openPgpApi.executeApiAsync(intent, new AnonymousClass8(), new AnonymousClass4(), new OpenPgpApi.IOpenPgpSinkResultCallback() { // from class: com.fsck.k9.ui.crypto.MessageCryptoHelper.3
            @Override // org.openintents.openpgp.util.OpenPgpApi.IOpenPgpSinkResultCallback
            public final void onProgress(int i, int i2) {
                Log.d("received progress status: %d / %d", Integer.valueOf(i), Integer.valueOf(i2));
                MessageCryptoHelper.m942$$Nest$mcallbackProgress(MessageCryptoHelper.this, i, i2);
            }

            @Override // org.openintents.openpgp.util.OpenPgpApi.IOpenPgpSinkResultCallback
            public final void onReturn(Intent intent2, Object obj) {
                MessageCryptoHelper messageCryptoHelper = MessageCryptoHelper.this;
                messageCryptoHelper.cancelableBackgroundOperation = null;
                messageCryptoHelper.currentCryptoResult = intent2;
                MessageCryptoHelper.m943$$Nest$monCryptoOperationReturned(messageCryptoHelper, (MimeBodyPart) obj);
            }
        });
    }

    public final void cancelIfRunning() {
        synchronized (this.callbackLock) {
            this.callback = null;
        }
        this.isCancelled = true;
        OpenPgpApi.OpenPgpSourceSinkAsyncTask openPgpSourceSinkAsyncTask = this.cancelableBackgroundOperation;
        if (openPgpSourceSinkAsyncTask != null) {
            openPgpSourceSinkAsyncTask.cancel(true);
            OpenPgpApi.OpenPgpDataSource openPgpDataSource = openPgpSourceSinkAsyncTask.dataSource;
            if (openPgpDataSource != null) {
                openPgpDataSource.isCancelled = true;
                try {
                    openPgpDataSource.writeSidePfd.close();
                } catch (IOException unused) {
                }
            }
        }
    }

    public final void deliverResult() {
        if (this.isCancelled) {
            return;
        }
        MessageLoaderHelper.AnonymousClass1 anonymousClass1 = this.callback;
        if (anonymousClass1 == null) {
            Log.d("Keeping crypto helper result in queue for later delivery", new Object[0]);
            return;
        }
        MessageLoaderHelper messageLoaderHelper = MessageLoaderHelper.this;
        Jobs jobs = this.queuedResult;
        if (jobs != null) {
            if (messageLoaderHelper.callback == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("unexpected call when callback is already detached");
                return;
            } else {
                messageLoaderHelper.messageCryptoAnnotations = jobs;
                messageLoaderHelper.startOrResumeDecodeMessage();
                return;
            }
        }
        PendingIntent pendingIntent = this.queuedPendingIntent;
        if (pendingIntent == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("deliverResult() called with no result!");
            return;
        }
        IntentSender intentSender = pendingIntent.getIntentSender();
        MessageLoaderHelper.MessageLoaderCallbacks messageLoaderCallbacks = messageLoaderHelper.callback;
        if (messageLoaderCallbacks == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("unexpected call when callback is already detached");
        } else if (messageLoaderCallbacks.startIntentSenderForMessageLoaderHelper(intentSender)) {
            this.queuedPendingIntent = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01ab A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void handleCryptoOperationResult(com.fsck.k9.mail.internet.MimeBodyPart r20) {
        /*
            Method dump skipped, instructions count: 675
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.ui.crypto.MessageCryptoHelper.handleCryptoOperationResult(com.fsck.k9.mail.internet.MimeBodyPart):void");
    }

    public final void nextStep() {
        MimeBodyPart mimeBodyPart;
        if (this.isCancelled) {
            return;
        }
        while (this.state != 5 && this.partsToProcess.isEmpty()) {
            ArrayDeque arrayDeque = this.partsToProcess;
            int ordinal = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(this.state);
            if (ordinal == 0) {
                this.state = 2;
                Iterator it = Operation$State.findMultipartEncryptedParts(this.currentMessage).iterator();
                while (it.hasNext()) {
                    Part part = (Part) it.next();
                    if (!Utf8.SafeProcessor.isCompletePartAvailable(part)) {
                        try {
                            addErrorAnnotation(part, 6, new MimeBodyPart(0));
                        } catch (MessagingException e) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                            return;
                        }
                    } else if (Operation$State.isMultipartEncryptedOpenPgpProtocol(part)) {
                        arrayDeque.add(new CryptoPart(2, part));
                    } else {
                        try {
                            addErrorAnnotation(part, 8, new MimeBodyPart(0));
                        } catch (MessagingException e2) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e2);
                            return;
                        }
                    }
                }
            } else if (ordinal == 1) {
                this.state = 3;
                MimeMessage mimeMessage = this.currentMessage;
                Jobs jobs = this.messageAnnotations;
                ArrayList arrayList = new ArrayList();
                Stack stack = new Stack();
                stack.push(mimeMessage);
                while (!stack.isEmpty()) {
                    Part part2 = (Part) stack.pop();
                    if (jobs.jobs.containsKey(part2) && (mimeBodyPart = ((CryptoResultAnnotation) jobs.jobs.get(part2)).replacementData) != null) {
                        part2 = mimeBodyPart;
                    }
                    Body body = part2.getBody();
                    if (Operation$State.isPartMultipartSigned(part2)) {
                        arrayList.add(part2);
                    } else if (body instanceof Multipart) {
                        Multipart multipart = (Multipart) body;
                        for (int size = multipart.mParts.size() - 1; size >= 0; size--) {
                            stack.push(multipart.getBodyPart(size));
                        }
                    }
                }
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    Part part3 = (Part) it2.next();
                    if (this.processSignedOnly || this.messageAnnotations.findKeyForAnnotationWithReplacementPart(part3) != null) {
                        if (!Utf8.SafeProcessor.isCompletePartAvailable(part3)) {
                            addErrorAnnotation(part3, 5, getMultipartSignedContentPartIfAvailable(part3));
                        } else if (!JisSupport.isSameMimeType(part3.getMimeType(), "multipart/signed")) {
                            UriKt$$ExternalSyntheticBUOutline0.m("Part is not multipart/signed!");
                            return;
                        } else if ("application/pgp-signature".equalsIgnoreCase(JisSupport.getHeaderParameter(part3.getContentType(), "protocol"))) {
                            arrayDeque.add(new CryptoPart(3, part3));
                        } else {
                            addErrorAnnotation(part3, 7, getMultipartSignedContentPartIfAvailable(part3));
                        }
                    }
                }
                Iterator it3 = Operation$State.findPgpInlineParts(this.currentMessage).iterator();
                while (it3.hasNext()) {
                    Part part4 = (Part) it3.next();
                    if (this.processSignedOnly || Operation$State.isPartPgpInlineEncrypted(part4)) {
                        if (DesugarCollections.unmodifiableSet(this.currentMessage.mFlags).contains(Flag.X_DOWNLOADED_FULL)) {
                            arrayDeque.add(new CryptoPart(1, part4));
                        } else if (Operation$State.isPartPgpInlineEncrypted(part4)) {
                            addErrorAnnotation(part4, 6, null);
                        } else {
                            addErrorAnnotation(part4, 5, null);
                        }
                    }
                }
            } else if (ordinal == 2) {
                this.state = 4;
                if (this.messageAnnotations.jobs.isEmpty()) {
                    GlideBuilder$1 glideBuilder$1 = this.autocryptOperations;
                    MimeMessage mimeMessage2 = this.currentMessage;
                    glideBuilder$1.getClass();
                    if (mimeMessage2.mHeader.getHeader("Autocrypt").length > 0) {
                        arrayDeque.add(new CryptoPart(4, this.currentMessage));
                    }
                }
            } else {
                if (ordinal != 3) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("unhandled state");
                    return;
                }
                this.state = 5;
            }
        }
        if (this.state == 5) {
            synchronized (this.callbackLock) {
                this.partsToProcess.clear();
                this.openPgpApi = null;
                OpenPgpServiceConnection openPgpServiceConnection = this.openPgpServiceConnection;
                if (openPgpServiceConnection != null) {
                    openPgpServiceConnection.mApplicationContext.unbindService(openPgpServiceConnection.mServiceConnection);
                }
                this.openPgpServiceConnection = null;
                this.queuedResult = this.messageAnnotations;
                this.messageAnnotations = null;
                deliverResult();
            }
            return;
        }
        if (this.openPgpApi == null) {
            OpenPgpServiceConnection openPgpServiceConnection2 = new OpenPgpServiceConnection(this.context, this.openPgpProvider, new OpenPgpServiceConnection.OnBound() { // from class: com.fsck.k9.ui.crypto.MessageCryptoHelper.1
                @Override // org.openintents.openpgp.util.OpenPgpServiceConnection.OnBound
                public final void onBound(IOpenPgpService2 iOpenPgpService2) {
                    MessageCryptoHelper messageCryptoHelper = MessageCryptoHelper.this;
                    GlideBuilder$1 glideBuilder$12 = messageCryptoHelper.openPgpApiFactory;
                    Context context = messageCryptoHelper.context;
                    glideBuilder$12.getClass();
                    messageCryptoHelper.openPgpApi = new OpenPgpApi(context, iOpenPgpService2);
                    messageCryptoHelper.nextStep();
                }

                @Override // org.openintents.openpgp.util.OpenPgpServiceConnection.OnBound
                public final void onError(Exception exc) {
                    Log.e(exc, "Couldn't connect to OpenPgpService", new Object[0]);
                }
            });
            this.openPgpServiceConnection = openPgpServiceConnection2;
            openPgpServiceConnection2.bindToService();
            return;
        }
        CryptoPart cryptoPart = (CryptoPart) this.partsToProcess.peekFirst();
        this.currentCryptoPart = cryptoPart;
        if (cryptoPart.type == 4) {
            Intent intent = new Intent("org.openintents.openpgp.action.UPDATE_AUTOCRYPT_PEER");
            GlideBuilder$1 glideBuilder$12 = this.autocryptOperations;
            MimeMessage mimeMessage3 = (MimeMessage) this.currentCryptoPart.part;
            glideBuilder$12.getClass();
            if (GlideBuilder$1.addAutocryptPeerUpdateToIntentIfPresent(mimeMessage3, intent)) {
                Log.d("Passing autocrypt data from plain mail to OpenPGP API", new Object[0]);
                this.openPgpApi.executeApiAsync(intent, new AnonymousClass2());
            }
            onCryptoFinished();
            return;
        }
        Intent intent2 = this.userInteractionResultIntent;
        this.userInteractionResultIntent = null;
        if (intent2 == null) {
            intent2 = new Intent("org.openintents.openpgp.action.DECRYPT_VERIFY");
            Address[] from = this.currentMessage.getFrom();
            if (from.length > 0) {
                intent2.putExtra("sender_address", from[0].address);
                intent2.putExtra("autocrypt_peer_id", from[0].address);
            }
            GlideBuilder$1 glideBuilder$13 = this.autocryptOperations;
            MimeMessage mimeMessage4 = this.currentMessage;
            glideBuilder$13.getClass();
            GlideBuilder$1.addAutocryptPeerUpdateToIntentIfPresent(mimeMessage4, intent2);
            intent2.putExtra("support_override_crpto_warning", true);
            intent2.putExtra("decryption_result", this.cachedDecryptionResult);
        }
        try {
            int i = this.currentCryptoPart.type;
            int ordinal2 = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(i);
            if (ordinal2 == 0) {
                callAsyncInlineOperation(intent2);
                return;
            }
            if (ordinal2 == 1) {
                callAsyncDecrypt(intent2);
                return;
            }
            if (ordinal2 != 2) {
                if (ordinal2 == 3) {
                    throw new IllegalStateException("This part type must have been handled previously!");
                }
                StringBuilder sb = new StringBuilder("Unknown crypto part type: ");
                sb.append(i != 1 ? i != 2 ? i != 3 ? i != 4 ? "null" : "PLAIN_AUTOCRYPT" : "PGP_SIGNED" : "PGP_ENCRYPTED" : "PGP_INLINE");
                throw new IllegalStateException(sb.toString());
            }
            callAsyncDetachedVerify(intent2);
        } catch (IOException e3) {
            Log.e(e3, "IOException", new Object[0]);
        } catch (MessagingException e4) {
            Log.e(e4, "MessagingException", new Object[0]);
        }
    }

    public final void onCryptoFinished() {
        ArrayDeque arrayDeque = this.partsToProcess;
        Object peekFirst = arrayDeque.peekFirst();
        CryptoPart cryptoPart = this.currentCryptoPart;
        if (peekFirst != cryptoPart) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Trying to remove part from queue that is not the currently processed one!");
            return;
        }
        if (cryptoPart != null) {
            arrayDeque.removeFirst();
            this.currentCryptoPart = null;
        } else {
            Log.e(new Throwable(), "Got to onCryptoFinished() with no part in processing!", new Object[0]);
        }
        nextStep();
    }
}
