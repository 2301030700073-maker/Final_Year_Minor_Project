package com.fsck.k9.message;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.ParcelFileDescriptor;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.datastore.preferences.protobuf.Utf8;
import coil3.network.internal.UtilsKt;
import com.bumptech.glide.GlideBuilder$1;
import com.fsck.k9.activity.compose.ComposeCryptoStatus;
import com.fsck.k9.activity.compose.RecipientPresenter;
import com.fsck.k9.autocrypt.AutocryptDraftStateHeader;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.BoundaryGenerator;
import com.fsck.k9.mail.Message$RecipientType;
import com.fsck.k9.mail.filter.EOLConvertingOutputStream;
import com.fsck.k9.mail.internet.BinaryTempFileBody;
import com.fsck.k9.mail.internet.JisSupport;
import com.fsck.k9.mail.internet.MimeBodyPart;
import com.fsck.k9.mail.internet.MimeHeader$Field;
import com.fsck.k9.mail.internet.MimeMessage;
import com.fsck.k9.mail.internet.MimeMultipart;
import com.fsck.k9.mail.internet.TextBody;
import com.fsck.k9.mailstore.FileBackedBody;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.resources.K9CoreResourceProvider;
import com.mikepenz.fastadapter.VerboseLogger;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Map;
import kotlin.collections.EmptyMap;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.GeneralSettingsManager;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ByteString;
import okio.Options;
import org.apache.commons.io.IOUtils;
import org.openintents.openpgp.OpenPgpApiManager;
import org.openintents.openpgp.OpenPgpError;
import org.openintents.openpgp.util.OpenPgpApi;
import org.openintents.openpgp.util.ParcelFileDescriptorUtil;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PgpMessageBuilder extends MessageBuilder {
    public final VerboseLogger autocryptOpenPgpApiInteractor;
    public final GlideBuilder$1 autocryptOperations;
    public CryptoStatus cryptoStatus;
    public MimeMessage currentProcessedMimeMessage;
    public MimeBodyPart messageContentBodyPart;
    public OpenPgpApi openPgpApi;

    public PgpMessageBuilder(VerboseLogger verboseLogger, BoundaryGenerator boundaryGenerator, GlideBuilder$1 glideBuilder$1, VerboseLogger verboseLogger2, K9CoreResourceProvider k9CoreResourceProvider, GeneralSettingsManager generalSettingsManager) {
        super(verboseLogger, boundaryGenerator, k9CoreResourceProvider, generalSettingsManager);
        this.autocryptOperations = glideBuilder$1;
        this.autocryptOpenPgpApiInteractor = verboseLogger2;
    }

    @Override // com.fsck.k9.message.MessageBuilder
    public final void buildMessageInternal() {
        AutocryptDraftStateHeader autocryptDraftStateHeader;
        if (this.currentProcessedMimeMessage != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("message can only be built once!");
            return;
        }
        CryptoStatus cryptoStatus = this.cryptoStatus;
        if (cryptoStatus == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("PgpMessageBuilder must have cryptoStatus set before building!");
            return;
        }
        Long l = ((ComposeCryptoStatus) cryptoStatus).openPgpKeyId;
        try {
            MimeMessage build = build();
            this.currentProcessedMimeMessage = build;
            if (l == null) {
                queueMessageBuildSuccess(build);
                return;
            }
            if (((ComposeCryptoStatus) this.cryptoStatus).openPgpProviderState != OpenPgpApiManager.OpenPgpProviderState.OK) {
                queueMessageBuildException(new MessagingException("OpenPGP Provider is not ready!"));
                return;
            }
            long longValue = l.longValue();
            Address address = this.currentProcessedMimeMessage.getFrom()[0];
            OpenPgpApi openPgpApi = this.openPgpApi;
            String str = address.address;
            this.autocryptOpenPgpApiInteractor.getClass();
            Intent intent = new Intent("org.openintents.openpgp.action.GET_KEY");
            intent.putExtra("key_id", longValue);
            byte[] keyMaterialFromApi = VerboseLogger.getKeyMaterialFromApi(openPgpApi, intent, str);
            if (keyMaterialFromApi != null) {
                MimeMessage mimeMessage = this.currentProcessedMimeMessage;
                String str2 = address.address;
                boolean z = ((ComposeCryptoStatus) this.cryptoStatus).isSenderPreferEncryptMutual;
                this.autocryptOperations.getClass();
                Map map = Collections.EMPTY_MAP;
                map.getClass();
                str2.getClass();
                if (!map.isEmpty()) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("arbitrary parameters not supported");
                    return;
                }
                StringBuilder m31m = CameraDevices$CC.m31m("Autocrypt: addr=", str2, "; ");
                if (z) {
                    m31m.append("prefer-encrypt=mutual; ");
                }
                m31m.append("keydata=");
                ByteString byteString = ByteString.EMPTY;
                byte[] copyOf = Arrays.copyOf(keyMaterialFromApi, keyMaterialFromApi.length);
                String base64 = new ByteString(Arrays.copyOf(copyOf, copyOf.length)).base64();
                StringBuilder sb = new StringBuilder();
                int progressionLastElement = Options.Companion.getProgressionLastElement(0, base64.length() - 1, 76);
                if (progressionLastElement >= 0) {
                    int i = 0;
                    while (true) {
                        sb.append("\r\n ");
                        int i2 = i + 76;
                        if (i2 <= base64.length()) {
                            sb.append((CharSequence) base64, i, i2);
                        } else {
                            sb.append((CharSequence) base64, i, base64.length());
                        }
                        if (i == progressionLastElement) {
                            break;
                        } else {
                            i = i2;
                        }
                    }
                }
                m31m.append(sb.toString());
                mimeMessage.mHeader.addRawHeader("Autocrypt", m31m.toString());
            }
            if (this.isDraft) {
                CryptoStatus cryptoStatus2 = this.cryptoStatus;
                cryptoStatus2.getClass();
                ComposeCryptoStatus composeCryptoStatus = (ComposeCryptoStatus) cryptoStatus2;
                RecipientPresenter.CryptoMode cryptoMode = composeCryptoStatus.cryptoMode;
                boolean z2 = composeCryptoStatus.isSignOnly;
                RecipientPresenter.CryptoMode cryptoMode2 = RecipientPresenter.CryptoMode.NO_CHOICE;
                EmptyMap emptyMap = EmptyMap.INSTANCE;
                if (z2) {
                    autocryptDraftStateHeader = new AutocryptDraftStateHeader(false, true, composeCryptoStatus.isReplyToEncrypted, cryptoMode != cryptoMode2, composeCryptoStatus.isPgpInlineModeEnabled, emptyMap);
                } else {
                    autocryptDraftStateHeader = new AutocryptDraftStateHeader(composeCryptoStatus.isEncryptionEnabled, false, composeCryptoStatus.isReplyToEncrypted, cryptoMode != cryptoMode2, composeCryptoStatus.isPgpInlineModeEnabled, emptyMap);
                }
                MimeMessage mimeMessage2 = this.currentProcessedMimeMessage;
                StringBuilder sb2 = new StringBuilder("encrypt");
                sb2.append(autocryptDraftStateHeader.isEncrypt ? "=yes; " : "=no; ");
                if (autocryptDraftStateHeader.isReply) {
                    sb2.append("_is-reply-to-encrypted=yes; ");
                }
                if (autocryptDraftStateHeader.isSignOnly) {
                    sb2.append("_sign-only=yes; ");
                }
                if (autocryptDraftStateHeader.isByChoice) {
                    sb2.append("_by-choice=yes; ");
                }
                if (autocryptDraftStateHeader.isPgpInline) {
                    sb2.append("_pgp-inline=yes; ");
                }
                mimeMessage2.mHeader.setHeader("Autocrypt-Draft-State", sb2.toString());
            }
            startOrContinueBuildMessage(null);
        } catch (MessagingException e) {
            queueMessageBuildException(e);
        }
    }

    @Override // com.fsck.k9.message.MessageBuilder
    public final void buildMessageOnActivityResult(Intent intent) {
        if (this.currentProcessedMimeMessage != null) {
            startOrContinueBuildMessage(intent);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) "build message from activity result must not be called individually");
        }
    }

    public final Intent buildOpenPgpApiIntent(boolean z, boolean z2, boolean z3, boolean z4) {
        Intent intent;
        Long l = ((ComposeCryptoStatus) this.cryptoStatus).openPgpKeyId;
        if (z2) {
            intent = new Intent(z ? "org.openintents.openpgp.action.SIGN_AND_ENCRYPT" : "org.openintents.openpgp.action.ENCRYPT");
            intent.putExtra("key_ids", new long[]{l.longValue()});
            if (!z3) {
                intent.putExtra("user_ids", (String[]) ((ComposeCryptoStatus) this.cryptoStatus).recipientAddresses.toArray(new String[0]));
            }
        } else {
            intent = new Intent(z4 ? "org.openintents.openpgp.action.SIGN" : "org.openintents.openpgp.action.DETACHED_SIGN");
        }
        if (z) {
            intent.putExtra("sign_key_id", l);
        }
        intent.putExtra("ascii_armor", true);
        return intent;
    }

    public final MimeBodyPart createBodyPartFromMessageContent() {
        MimeMessage mimeMessage = this.currentProcessedMimeMessage;
        mimeMessage.getClass();
        LocalFolder.AnonymousClass8 anonymousClass8 = new LocalFolder.AnonymousClass8(7);
        LocalFolder.AnonymousClass8 anonymousClass82 = mimeMessage.mHeader;
        ArrayList arrayList = (ArrayList) anonymousClass82.this$0;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(((MimeHeader$Field) it.next()).name);
        }
        Iterator it2 = linkedHashSet.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            String str = (String) it2.next();
            if (str.toLowerCase(Locale.ROOT).startsWith("content-")) {
                for (String str2 : anonymousClass82.getHeader(str)) {
                    anonymousClass8.addHeader(str, str2);
                }
            }
        }
        MimeBodyPart mimeBodyPart = new MimeBodyPart(anonymousClass8, mimeMessage.mBody);
        String[] header = this.currentProcessedMimeMessage.mHeader.getHeader(UtilsKt.CONTENT_TYPE);
        if (header.length > 0) {
            anonymousClass8.setHeader(UtilsKt.CONTENT_TYPE, header[0]);
        }
        if (this.isDraft) {
            anonymousClass8.setHeader("X-K9mail-Identity", this.currentProcessedMimeMessage.mHeader.getHeader("X-K9mail-Identity")[0]);
            this.currentProcessedMimeMessage.mHeader.removeHeader("X-K9mail-Identity");
        }
        return mimeBodyPart;
    }

    /* JADX WARN: Type inference failed for: r12v9, types: [byte[], java.io.Serializable] */
    public final PendingIntent launchOpenPgpApiIntent(Intent intent, final MimeBodyPart mimeBodyPart, boolean z, boolean z2, final boolean z3) {
        BinaryTempFileBody binaryTempFileBody;
        EOLConvertingOutputStream eOLConvertingOutputStream;
        Intent intent2;
        ComposeCryptoStatus composeCryptoStatus;
        boolean z4;
        boolean z5;
        int i;
        ParcelFileDescriptorUtil.TransferThread transferThread;
        OpenPgpApi.OpenPgpDataSource openPgpDataSource = new OpenPgpApi.OpenPgpDataSource() { // from class: com.fsck.k9.message.PgpMessageBuilder.1
            @Override // org.openintents.openpgp.util.OpenPgpApi.OpenPgpDataSource
            public final void writeTo(ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream) {
                try {
                    boolean z6 = z3;
                    MimeBodyPart mimeBodyPart2 = mimeBodyPart;
                    if (z6) {
                        IOUtils.copy(mimeBodyPart2.mBody.getInputStream(), autoCloseOutputStream);
                    } else {
                        mimeBodyPart2.writeTo(autoCloseOutputStream);
                    }
                } catch (MessagingException e) {
                    throw new IOException(e);
                }
            }
        };
        if (z) {
            try {
                binaryTempFileBody = new BinaryTempFileBody(z2 ? "7bit" : "8bit");
                File createTempFile = File.createTempFile("body", null, BinaryTempFileBody.mTempDirectory);
                binaryTempFileBody.mFile = createTempFile;
                createTempFile.deleteOnExit();
                eOLConvertingOutputStream = new EOLConvertingOutputStream(new FileOutputStream(binaryTempFileBody.mFile));
            } catch (IOException e) {
                throw new MessagingException("could not allocate temp file for storage!", false, e);
            }
        } else {
            binaryTempFileBody = null;
            eOLConvertingOutputStream = null;
        }
        OpenPgpApi openPgpApi = this.openPgpApi;
        openPgpApi.getClass();
        try {
            intent.removeExtra("progress_messenger");
            ParcelFileDescriptor startPumpThread = openPgpDataSource.startPumpThread();
            if (eOLConvertingOutputStream != null) {
                i = openPgpApi.mPipeIdGen.incrementAndGet();
                transferThread = new ParcelFileDescriptorUtil.TransferThread(new ParcelFileDescriptor.AutoCloseInputStream(openPgpApi.mService.createOutputPipe(i)), eOLConvertingOutputStream);
                transferThread.start();
            } else {
                i = 0;
                transferThread = null;
            }
            intent2 = openPgpApi.executeApi(intent, startPumpThread, i);
            if (transferThread != null) {
                transferThread.join();
            }
        } catch (Exception e2) {
            Log.e(e2, "Exception in executeApi call", new Object[0]);
            Intent intent3 = new Intent();
            intent3.putExtra("result_code", 0);
            intent3.putExtra("error", new OpenPgpError(e2.getMessage()));
            intent2 = intent3;
        }
        int intExtra = intent2.getIntExtra("result_code", 0);
        if (intExtra == 0) {
            OpenPgpError openPgpError = (OpenPgpError) Utf8.SafeProcessor.getParcelableExtra(intent2, "error", OpenPgpError.class);
            if (openPgpError == null) {
                throw new MessagingException("internal openpgp api error");
            }
            throw new MessagingException(openPgpError.message);
        }
        if (intExtra != 1) {
            if (intExtra != 2) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("unreachable code segment reached");
                return null;
            }
            PendingIntent pendingIntent = (PendingIntent) Utf8.SafeProcessor.getParcelableExtra(intent2, "intent", PendingIntent.class);
            if (pendingIntent != null) {
                return pendingIntent;
            }
            throw new MessagingException("openpgp api needs user interaction, but returned no pendingintent!");
        }
        if (binaryTempFileBody == null) {
            ComposeCryptoStatus composeCryptoStatus2 = (ComposeCryptoStatus) this.cryptoStatus;
            if (composeCryptoStatus2.isPgpInlineModeEnabled || (z5 = composeCryptoStatus2.isEncryptionEnabled)) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) "encryption or pgp/inline is enabled, but no output part!");
                return null;
            }
            if (composeCryptoStatus2.cryptoMode != RecipientPresenter.CryptoMode.SIGN_ONLY && !z5) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to mimeBuildSignedMessage while signing isn't enabled!");
                return null;
            }
            ?? byteArrayExtra = intent2.getByteArrayExtra("detached_signature");
            if (byteArrayExtra == 0) {
                throw new MessagingException("didn't find expected RESULT_DETACHED_SIGNATURE in api call result");
            }
            MimeMultipart createMimeMultipart = createMimeMultipart();
            createMimeMultipart.setSubType("signed");
            createMimeMultipart.addBodyPart(mimeBodyPart);
            createMimeMultipart.addBodyPart(MimeBodyPart.create(new FileBackedBody(1, byteArrayExtra, "7bit"), "application/pgp-signature; name=\"signature.asc\""));
            JisSupport.setBody(this.currentProcessedMimeMessage, createMimeMultipart);
            String m = CameraDevices$CC.m("multipart/signed; boundary=\"", createMimeMultipart.boundary, "\";\r\n  protocol=\"application/pgp-signature\"");
            if (intent2.hasExtra("signature_micalg")) {
                m = m.concat("; micalg=\"" + intent2.getStringExtra("signature_micalg") + "\"");
            } else {
                Log.e("missing micalg parameter for pgp multipart/signed!", new Object[0]);
            }
            this.currentProcessedMimeMessage.mHeader.setHeader(UtilsKt.CONTENT_TYPE, m);
        } else if (this.isDraft || !(z4 = (composeCryptoStatus = (ComposeCryptoStatus) this.cryptoStatus).isPgpInlineModeEnabled)) {
            MimeMultipart createMimeMultipart2 = createMimeMultipart();
            createMimeMultipart2.setSubType("encrypted");
            createMimeMultipart2.addBodyPart(MimeBodyPart.create(new TextBody("Version: 1"), "application/pgp-encrypted"));
            MimeBodyPart create = MimeBodyPart.create(binaryTempFileBody, "application/octet-stream; name=\"encrypted.asc\"");
            create.mHeader.addHeader("Content-Disposition", "inline; filename=\"encrypted.asc\"");
            createMimeMultipart2.addBodyPart(create);
            JisSupport.setBody(this.currentProcessedMimeMessage, createMimeMultipart2);
            this.currentProcessedMimeMessage.mHeader.setHeader(UtilsKt.CONTENT_TYPE, CameraDevices$CC.m("multipart/encrypted; boundary=\"", createMimeMultipart2.boundary, "\";\r\n  protocol=\"application/pgp-encrypted\""));
        } else {
            if (!z4) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to mimeBuildInlineMessage while pgp/inline isn't enabled!");
                return null;
            }
            if (!composeCryptoStatus.isEncryptionEnabled) {
                binaryTempFileBody.setEncoding("quoted-printable");
            }
            JisSupport.setBody(this.currentProcessedMimeMessage, binaryTempFileBody);
        }
        return null;
    }

    public final void maybeAddGossipHeadersToBodyPart() {
        if (((ComposeCryptoStatus) this.cryptoStatus).isEncryptionEnabled) {
            ArrayList arrayList = new ArrayList(Arrays.asList((String[]) ((ComposeCryptoStatus) this.cryptoStatus).recipientAddresses.toArray(new String[0])));
            for (Address address : this.currentProcessedMimeMessage.getRecipients(Message$RecipientType.BCC)) {
                arrayList.remove(address.address);
            }
            String[] strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
            if (strArr.length >= 2) {
                MimeBodyPart mimeBodyPart = this.messageContentBodyPart;
                for (String str : strArr) {
                    OpenPgpApi openPgpApi = this.openPgpApi;
                    this.autocryptOpenPgpApiInteractor.getClass();
                    Intent intent = new Intent("org.openintents.openpgp.action.GET_KEY");
                    intent.putExtra("user_id", str);
                    byte[] keyMaterialFromApi = VerboseLogger.getKeyMaterialFromApi(openPgpApi, intent, str);
                    if (keyMaterialFromApi == null) {
                        Log.e("Failed fetching gossip key material for address %s", str);
                    } else {
                        this.autocryptOperations.getClass();
                        str.getClass();
                        StringBuilder sb = new StringBuilder("Autocrypt-Gossip: addr=");
                        sb.append(str);
                        sb.append("; keydata=");
                        ByteString byteString = ByteString.EMPTY;
                        byte[] copyOf = Arrays.copyOf(keyMaterialFromApi, keyMaterialFromApi.length);
                        String base64 = new ByteString(Arrays.copyOf(copyOf, copyOf.length)).base64();
                        StringBuilder sb2 = new StringBuilder();
                        int progressionLastElement = Options.Companion.getProgressionLastElement(0, base64.length() - 1, 76);
                        if (progressionLastElement >= 0) {
                            int i = 0;
                            while (true) {
                                sb2.append("\r\n ");
                                int i2 = i + 76;
                                if (i2 <= base64.length()) {
                                    sb2.append((CharSequence) base64, i, i2);
                                } else {
                                    sb2.append((CharSequence) base64, i, base64.length());
                                }
                                if (i == progressionLastElement) {
                                    break;
                                } else {
                                    i = i2;
                                }
                            }
                        }
                        sb.append(sb2.toString());
                        mimeBodyPart.mHeader.addRawHeader("Autocrypt-Gossip", sb.toString());
                    }
                }
            }
        }
    }

    public final void moveSubjectIntoEncryptedPayload() {
        String[] header = this.currentProcessedMimeMessage.mHeader.getHeader("Subject");
        if (header.length > 0) {
            MimeBodyPart mimeBodyPart = this.messageContentBodyPart;
            mimeBodyPart.mHeader.setHeader(UtilsKt.CONTENT_TYPE, mimeBodyPart.getContentType().concat("; protected-headers=\"v1\""));
            MimeBodyPart mimeBodyPart2 = this.messageContentBodyPart;
            mimeBodyPart2.mHeader.setHeader("Subject", header[0]);
            this.currentProcessedMimeMessage.setSubject("[...]");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0088 A[Catch: MessagingException -> 0x001d, TRY_ENTER, TryCatch #1 {MessagingException -> 0x001d, blocks: (B:99:0x000d, B:10:0x0017, B:15:0x002a, B:17:0x002e, B:22:0x003f, B:27:0x004a, B:33:0x0061, B:34:0x0068, B:36:0x006b, B:38:0x006f, B:41:0x007c, B:42:0x0083, B:45:0x0088, B:47:0x0090, B:50:0x009a, B:51:0x009d, B:53:0x00a2), top: B:98:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00a2 A[Catch: MessagingException -> 0x001d, TRY_LEAVE, TryCatch #1 {MessagingException -> 0x001d, blocks: (B:99:0x000d, B:10:0x0017, B:15:0x002a, B:17:0x002e, B:22:0x003f, B:27:0x004a, B:33:0x0061, B:34:0x0068, B:36:0x006b, B:38:0x006f, B:41:0x007c, B:42:0x0083, B:45:0x0088, B:47:0x0090, B:50:0x009a, B:51:0x009d, B:53:0x00a2), top: B:98:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00d7 A[Catch: MessagingException -> 0x00dd, TRY_ENTER, TRY_LEAVE, TryCatch #0 {MessagingException -> 0x00dd, blocks: (B:64:0x00bd, B:66:0x00d7), top: B:63:0x00bd }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00c3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void startOrContinueBuildMessage(android.content.Intent r13) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.message.PgpMessageBuilder.startOrContinueBuildMessage(android.content.Intent):void");
    }
}
