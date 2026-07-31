package com.fsck.k9.mail.transport.smtp;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.emoji2.text.flatbuffer.Table;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.bumptech.glide.GlideBuilder$1;
import com.fsck.k9.helper.DefaultTrustedSocketFactory;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.AuthType;
import com.fsck.k9.mail.AuthenticationFailedException;
import com.fsck.k9.mail.CertificateValidationException;
import com.fsck.k9.mail.ConnectionSecurity;
import com.fsck.k9.mail.K9MailLib;
import com.fsck.k9.mail.Message$RecipientType;
import com.fsck.k9.mail.MissingCapabilityException;
import com.fsck.k9.mail.ServerSettings;
import com.fsck.k9.mail.filter.Base64;
import com.fsck.k9.mail.filter.EOLConvertingOutputStream;
import com.fsck.k9.mail.filter.LineWrapOutputStream;
import com.fsck.k9.mail.filter.PeekableInputStream;
import com.fsck.k9.mail.filter.SmtpDataStuffing;
import com.fsck.k9.mail.internet.MimeMessage;
import com.fsck.k9.mail.oauth.XOAuth2ChallengeParser;
import com.fsck.k9.mail.ssl.LocalKeyStoreKt;
import com.fsck.k9.mail.transport.smtp.SmtpHelloResponse;
import com.fsck.k9.mailstore.LocalFolder;
import com.google.zxing.BinaryBitmap;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Map;
import javax.net.ssl.SSLException;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyMap;
import kotlin.collections.builders.ListBuilder;
import kotlin.collections.builders.MapBuilder;
import kotlin.collections.builders.SetBuilder;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.logging.legacy.Log;
import okio.Buffer;
import org.apache.commons.io.IOUtils;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;
import org.jsoup.SerializationException;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SmtpTransport {
    public boolean areUnicodeAddressesAllowed;
    public final AuthType authType;
    public final String clientCertificateAlias;
    public final ConnectionSecurity connectionSecurity;
    public final String host;
    public PeekableInputStream inputStream;
    public boolean is8bitEncodingAllowed;
    public boolean isEnhancedStatusCodesProvided;
    public boolean isPipeliningSupported;
    public int largestAcceptableMessage;
    public final GlideBuilder$1 logger;
    public final LocalFolder.AnonymousClass12 oauthTokenProvider;
    public BufferedOutputStream outputStream;
    public final String password;
    public final int port;
    public BinaryBitmap responseParser;
    public boolean retryOAuthWithNewToken;
    public Socket socket;
    public final DefaultTrustedSocketFactory trustedSocketFactory;
    public final String username;

    public SmtpTransport(ServerSettings serverSettings, DefaultTrustedSocketFactory defaultTrustedSocketFactory, LocalFolder.AnonymousClass12 anonymousClass12) {
        serverSettings.getClass();
        this.trustedSocketFactory = defaultTrustedSocketFactory;
        this.oauthTokenProvider = anonymousClass12;
        this.host = serverSettings.host;
        this.port = serverSettings.port;
        this.username = serverSettings.username;
        this.password = serverSettings.password;
        this.clientCertificateAlias = serverSettings.clientCertificateAlias;
        this.authType = serverSettings.authenticationType;
        this.connectionSecurity = serverSettings.connectionSecurity;
        this.logger = new GlideBuilder$1();
        if (Intrinsics.areEqual(serverSettings.type, "smtp")) {
            return;
        }
        UriKt$$ExternalSyntheticBUOutline0.m("Expected SMTP ServerSettings!");
        throw null;
    }

    public static void handlePossibleAuthenticationFailure(String str, NegativeSmtpReplyException negativeSmtpReplyException) {
        if (negativeSmtpReplyException.replyCode != 535) {
            throw negativeSmtpReplyException;
        }
        throw new AuthenticationFailedException(str.concat(" failed"), negativeSmtpReplyException.replyText, negativeSmtpReplyException);
    }

    public static void logResponse(SmtpResponse smtpResponse, boolean z) {
        if (K9MailLib.debugStatus.enabled()) {
            boolean z2 = z && !K9MailLib.debugStatus.debugSensitive();
            EnhancedStatusCode enhancedStatusCode = smtpResponse.enhancedStatusCode;
            int i = smtpResponse.replyCode;
            List list = smtpResponse.texts;
            StringBuilder sb = new StringBuilder();
            if (z2) {
                sb.append("SMTP <<< ");
                sb.append(i);
                SmtpResponse.appendIfNotNull(sb, enhancedStatusCode, ' ');
                if (!list.isEmpty()) {
                    sb.append(" [omitted]");
                }
            } else {
                if (list.size() > 1) {
                    int size = list.size() - 1;
                    for (int i2 = 0; i2 < size; i2++) {
                        sb.append("SMTP <<< ");
                        sb.append(i);
                        if (enhancedStatusCode == null) {
                            sb.append('-');
                        } else {
                            SmtpResponse.appendIfNotNull(sb, enhancedStatusCode, '-');
                            sb.append(' ');
                        }
                        sb.append((String) list.get(i2));
                        sb.append('\n');
                    }
                }
                sb.append("SMTP <<< ");
                sb.append(i);
                SmtpResponse.appendIfNotNull(sb, enhancedStatusCode, ' ');
                if (!list.isEmpty()) {
                    sb.append(' ');
                    sb.append((String) CollectionsKt.last(list));
                }
            }
            Log.v("%s", sb.toString());
        }
    }

    public final void attempOAuth(OAuthMethod oAuthMethod, String str) {
        LocalFolder.AnonymousClass12 anonymousClass12 = this.oauthTokenProvider;
        anonymousClass12.getClass();
        SmtpResponse executeCommand = executeCommand(true, "%s %s", Arrays.copyOf(new Object[]{oAuthMethod.getCommand(), oAuthMethod.buildInitialClientResponse(str, anonymousClass12.getToken())}, 2));
        if (executeCommand.replyCode == 334) {
            this.retryOAuthWithNewToken = XOAuth2ChallengeParser.shouldRetry(CollectionsKt.joinToString$default(executeCommand.texts, " ", null, null, null, 62), this.host);
            executeCommand(false, "", Arrays.copyOf(new Object[0], 0));
        }
    }

    public final void checkSettings() {
        ensureClosed();
        try {
            try {
                open$tfa_mail_protocols_smtp();
            } catch (Exception e) {
                Log.e(e, "Error while checking server settings", new Object[0]);
                throw e;
            }
        } finally {
            close();
        }
    }

    public final void close() {
        try {
            writeLine("QUIT", false);
        } catch (Exception unused) {
        }
        IOUtils.closeQ(this.inputStream);
        IOUtils.closeQ(this.outputStream);
        IOUtils.closeQ(this.socket);
        this.inputStream = null;
        this.responseParser = null;
        this.outputStream = null;
        this.socket = null;
    }

    public final Socket connect() {
        InetAddress[] allByName = InetAddress.getAllByName(this.host);
        allByName.getClass();
        int length = allByName.length;
        IOException iOException = null;
        int i = 0;
        while (i < length) {
            InetAddress inetAddress = allByName[i];
            try {
                inetAddress.getClass();
                return this.connectToAddress(inetAddress);
            } catch (IOException e) {
                Log.w(e, "Could not connect to %s", inetAddress);
                i++;
                iOException = e;
            }
        }
        if (iOException != null) {
            throw iOException;
        }
        throw new UnknownHostException();
    }

    public final Socket connectToAddress(InetAddress inetAddress) {
        boolean enabled = K9MailLib.debugStatus.enabled();
        String str = this.host;
        if (enabled) {
            Log.d("Connecting to %s as %s", str, inetAddress);
        }
        int i = this.port;
        InetSocketAddress inetSocketAddress = new InetSocketAddress(inetAddress, i);
        Socket createSocket = this.connectionSecurity == ConnectionSecurity.SSL_TLS_REQUIRED ? this.trustedSocketFactory.createSocket(null, str, i, this.clientCertificateAlias) : new Socket();
        createSocket.connect(inetSocketAddress, 30000);
        return createSocket;
    }

    public final String constructSmtpMailFromCommand(Address[] addressArr, boolean z, boolean z2) {
        return String.format(Locale.US, "MAIL FROM:<%s>%s%s", Arrays.copyOf(new Object[]{((Address) ArraysKt___ArraysKt.first(addressArr)).address, (this.areUnicodeAddressesAllowed && z2) ? " SMTPUTF8" : "", z ? " BODY=8BITMIME" : ""}, 3));
    }

    public final void ensureClosed() {
        if (this.inputStream == null && this.outputStream == null && this.socket == null && this.responseParser == null) {
            return;
        }
        Log.w(new RuntimeException(), "SmtpTransport was open when it was expected to be closed", new Object[0]);
        close();
    }

    public final SmtpResponse executeCommand(boolean z, String str, Object... objArr) {
        Locale locale = Locale.ROOT;
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        writeLine(String.format(locale, str, Arrays.copyOf(copyOf, copyOf.length)), z);
        BinaryBitmap binaryBitmap = this.responseParser;
        binaryBitmap.getClass();
        boolean z2 = this.isEnhancedStatusCodesProvided;
        ((Buffer) binaryBitmap.matrix).clear();
        SmtpResponse readResponseAfterReplyCode = binaryBitmap.readResponseAfterReplyCode(binaryBitmap.readReplyCode(), z2);
        logResponse(readResponseAfterReplyCode, z);
        if (!readResponseAfterReplyCode.isNegativeResponse) {
            return readResponseAfterReplyCode;
        }
        throw new NegativeSmtpReplyException(CollectionsKt.joinToString$default(readResponseAfterReplyCode.texts, " ", null, null, null, 62), readResponseAfterReplyCode.replyCode);
    }

    public final void executePipelinedCommands(ListBuilder listBuilder) {
        ListIterator listIterator = listBuilder.listIterator(0);
        while (true) {
            ListBuilder.Itr itr = (ListBuilder.Itr) listIterator;
            if (!itr.hasNext()) {
                return;
            } else {
                writeLine((String) itr.next(), false);
            }
        }
    }

    public final void open$tfa_mail_protocols_smtp() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        GlideBuilder$1 glideBuilder$1 = this.logger;
        try {
            Socket connect = connect();
            this.socket = connect;
            connect.setSoTimeout(60000);
            PeekableInputStream peekableInputStream = new PeekableInputStream(new BufferedInputStream(connect.getInputStream(), 1024));
            this.inputStream = peekableInputStream;
            this.responseParser = new BinaryBitmap(glideBuilder$1, peekableInputStream);
            this.outputStream = new BufferedOutputStream(connect.getOutputStream(), 1024);
            readGreeting();
            Map sendHello = sendHello();
            this.is8bitEncodingAllowed = sendHello.containsKey("8BITMIME");
            this.areUnicodeAddressesAllowed = sendHello.containsKey("SMTPUTF8");
            this.isEnhancedStatusCodesProvided = sendHello.containsKey("ENHANCEDSTATUSCODES");
            this.isPipeliningSupported = sendHello.containsKey("PIPELINING");
            if (this.connectionSecurity == ConnectionSecurity.STARTTLS_REQUIRED) {
                if (!sendHello.containsKey("STARTTLS")) {
                    throw new MissingCapabilityException("STARTTLS");
                }
                executeCommand(false, "STARTTLS", Arrays.copyOf(new Object[0], 0));
                Socket createSocket = this.trustedSocketFactory.createSocket(connect, this.host, this.port, this.clientCertificateAlias);
                this.socket = createSocket;
                PeekableInputStream peekableInputStream2 = new PeekableInputStream(new BufferedInputStream(createSocket.getInputStream(), 1024));
                this.inputStream = peekableInputStream2;
                this.responseParser = new BinaryBitmap(glideBuilder$1, peekableInputStream2);
                this.outputStream = new BufferedOutputStream(createSocket.getOutputStream(), 1024);
                sendHello = sendHello();
            }
            List list = (List) sendHello.get("AUTH");
            if (list != null) {
                z2 = list.contains("LOGIN");
                z3 = list.contains("PLAIN");
                z4 = list.contains("CRAM-MD5");
                z5 = list.contains("EXTERNAL");
                z6 = list.contains("XOAUTH2");
                z = list.contains("OAUTHBEARER");
            } else {
                z = false;
                z2 = false;
                z3 = false;
                z4 = false;
                z5 = false;
                z6 = false;
            }
            parseOptionalSizeValue((List) sendHello.get("SIZE"));
            int ordinal = this.authType.ordinal();
            if (ordinal == 0) {
                if (z3) {
                    saslAuthPlain();
                    return;
                } else {
                    if (!z2) {
                        throw new MissingCapabilityException("AUTH PLAIN");
                    }
                    saslAuthLogin();
                    return;
                }
            }
            if (ordinal == 1) {
                if (!z4) {
                    throw new MissingCapabilityException("AUTH CRAM-MD5");
                }
                saslAuthCramMD5();
                return;
            }
            if (ordinal == 2) {
                if (!z5) {
                    throw new MissingCapabilityException("AUTH EXTERNAL");
                }
                saslAuthExternal();
            } else if (ordinal != 3) {
                if (ordinal != 4) {
                    throw new SerializationException();
                }
            } else {
                if (this.oauthTokenProvider == null) {
                    throw new MessagingException("No OAuth2TokenProvider available.");
                }
                if (z) {
                    saslOAuth(OAuthMethod.OAUTHBEARER);
                } else {
                    if (!z6) {
                        throw new MissingCapabilityException("AUTH OAUTHBEARER");
                    }
                    saslOAuth(OAuthMethod.XOAUTH2);
                }
            }
        } catch (IOException e) {
            close();
            throw new MessagingException("Unable to open connection to SMTP server.", false, e);
        } catch (GeneralSecurityException e2) {
            close();
            throw new MessagingException("Unable to open connection to SMTP server due to security error.", false, e2);
        } catch (SSLException e3) {
            close();
            List extract = LocalKeyStoreKt.extract(e3);
            if (extract == null) {
                throw e3;
            }
            throw new CertificateValidationException(extract, e3);
        } catch (MessagingException e4) {
            close();
            throw e4;
        }
    }

    public final void parseOptionalSizeValue(List list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        String str = (String) CollectionsKt.first(list);
        Integer intOrNull = StringsKt__StringsJVMKt.toIntOrNull(str);
        if (intOrNull != null) {
            this.largestAcceptableMessage = intOrNull.intValue();
        } else if (K9MailLib.debugStatus.enabled()) {
            Log.d("SIZE parameter is not a valid integer: %s", str);
        }
    }

    public final void readGreeting() {
        BinaryBitmap binaryBitmap = this.responseParser;
        binaryBitmap.getClass();
        ((Buffer) binaryBitmap.matrix).clear();
        SmtpResponse readResponseAfterReplyCode = binaryBitmap.readResponseAfterReplyCode(binaryBitmap.readReplyCode(), false);
        logResponse(readResponseAfterReplyCode, false);
        if (readResponseAfterReplyCode.isNegativeResponse) {
            throw new NegativeSmtpReplyException(CollectionsKt.joinToString$default(readResponseAfterReplyCode.texts, " ", null, null, null, 62), readResponseAfterReplyCode.replyCode);
        }
    }

    public final void readPipelinedResponse(ListBuilder listBuilder) {
        BinaryBitmap binaryBitmap = this.responseParser;
        binaryBitmap.getClass();
        int size = listBuilder.getSize();
        NegativeSmtpReplyException negativeSmtpReplyException = null;
        for (int i = 0; i < size; i++) {
            boolean z = this.isEnhancedStatusCodesProvided;
            ((Buffer) binaryBitmap.matrix).clear();
            SmtpResponse readResponseAfterReplyCode = binaryBitmap.readResponseAfterReplyCode(binaryBitmap.readReplyCode(), z);
            logResponse(readResponseAfterReplyCode, false);
            if (readResponseAfterReplyCode.isNegativeResponse && negativeSmtpReplyException == null) {
                negativeSmtpReplyException = new NegativeSmtpReplyException(CollectionsKt.joinToString$default(readResponseAfterReplyCode.texts, " ", null, null, null, 62), readResponseAfterReplyCode.replyCode);
            }
        }
        if (negativeSmtpReplyException != null) {
            throw negativeSmtpReplyException;
        }
    }

    public final void saslAuthCramMD5() {
        List list = executeCommand(false, "AUTH CRAM-MD5", Arrays.copyOf(new Object[0], 0)).texts;
        if (list.size() != 1) {
            throw new MessagingException("Unable to negotiate CRAM-MD5");
        }
        try {
            executeCommand(true, K9MailLib.computeCramMd5(this.username, this.password, (String) list.get(0)), Arrays.copyOf(new Object[0], 0));
        } catch (NegativeSmtpReplyException e) {
            handlePossibleAuthenticationFailure("AUTH CRAM-MD5", e);
            throw null;
        }
    }

    public final void saslAuthExternal() {
        String encode = Base64.encode(this.username);
        encode.getClass();
        executeCommand(false, "AUTH EXTERNAL %s", Arrays.copyOf(new Object[]{encode}, 1));
    }

    public final void saslAuthLogin() {
        try {
            executeCommand(false, "AUTH LOGIN", Arrays.copyOf(new Object[0], 0));
            String encode = Base64.encode(this.username);
            encode.getClass();
            executeCommand(true, encode, Arrays.copyOf(new Object[0], 0));
            String encode2 = Base64.encode(this.password);
            encode2.getClass();
            executeCommand(true, encode2, Arrays.copyOf(new Object[0], 0));
        } catch (NegativeSmtpReplyException e) {
            handlePossibleAuthenticationFailure("AUTH LOGIN", e);
            throw null;
        }
    }

    public final void saslAuthPlain() {
        String encode = Base64.encode(WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR + this.username + WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR + this.password);
        try {
            encode.getClass();
            executeCommand(true, "AUTH PLAIN %s", Arrays.copyOf(new Object[]{encode}, 1));
        } catch (NegativeSmtpReplyException e) {
            handlePossibleAuthenticationFailure("AUTH PLAIN", e);
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x021d A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void saslOAuth(com.fsck.k9.mail.transport.smtp.OAuthMethod r13) {
        /*
            Method dump skipped, instructions count: 557
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.mail.transport.smtp.SmtpTransport.saslOAuth(com.fsck.k9.mail.transport.smtp.OAuthMethod):void");
    }

    public final Map sendHello() {
        SmtpHelloResponse hello;
        writeLine("EHLO ehlo.thunderbird.net", false);
        BinaryBitmap binaryBitmap = this.responseParser;
        binaryBitmap.getClass();
        PeekableInputStream peekableInputStream = (PeekableInputStream) binaryBitmap.binarizer;
        ((Buffer) binaryBitmap.matrix).clear();
        int readReplyCode = binaryBitmap.readReplyCode();
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        if (readReplyCode != 250) {
            hello = new SmtpHelloResponse.Error(binaryBitmap.readResponseAfterReplyCode(readReplyCode, false));
        } else {
            ArrayList arrayList = new ArrayList();
            int peek = peekableInputStream.peek();
            int i = -1;
            if (peek == -1) {
                binaryBitmap.parserError("Unexpected end of stream", true);
                throw null;
            }
            char c = (char) peek;
            if (c == ' ') {
                binaryBitmap.expect(' ');
                String readUtf8 = binaryBitmap.readUntilEndOfLine().readUtf8();
                binaryBitmap.expect('\r');
                binaryBitmap.expect('\n');
                hello = new SmtpHelloResponse.Hello(new SmtpResponse(readReplyCode, null, IntOffsetKt.listOf(readUtf8)), emptyMap);
            } else {
                if (c != '-') {
                    binaryBitmap.unexpectedCharacterError(c, true);
                    throw null;
                }
                binaryBitmap.expect('-');
                arrayList.add(binaryBitmap.readUntilEndOfLine().readUtf8());
                binaryBitmap.expect('\r');
                binaryBitmap.expect('\n');
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                while (true) {
                    int readReplyCode2 = binaryBitmap.readReplyCode();
                    if (readReplyCode2 != readReplyCode) {
                        binaryBitmap.parserError(Modifier.CC.m(readReplyCode, readReplyCode2, "Multi-line response with reply codes not matching: ", " != "), true);
                        throw null;
                    }
                    int peek2 = peekableInputStream.peek();
                    if (peek2 == i) {
                        binaryBitmap.parserError("Unexpected end of stream", true);
                        throw null;
                    }
                    char c2 = (char) peek2;
                    if (c2 == ' ') {
                        binaryBitmap.expect(' ');
                        String readUtf82 = binaryBitmap.readUntilEndOfLine().readUtf8();
                        if (readUtf82.length() == 0) {
                            binaryBitmap.parserError("EHLO line must not be empty", true);
                            throw null;
                        }
                        arrayList.add(readUtf82);
                        binaryBitmap.parseEhloLine(readUtf82, linkedHashMap);
                        binaryBitmap.expect('\r');
                        binaryBitmap.expect('\n');
                        hello = new SmtpHelloResponse.Hello(new SmtpResponse(readReplyCode, null, arrayList), linkedHashMap);
                    } else {
                        if (c2 != '-') {
                            binaryBitmap.unexpectedCharacterError(c2, true);
                            throw null;
                        }
                        binaryBitmap.expect('-');
                        String readUtf83 = binaryBitmap.readUntilEndOfLine().readUtf8();
                        if (readUtf83.length() == 0) {
                            binaryBitmap.parserError("EHLO line must not be empty", true);
                            throw null;
                        }
                        arrayList.add(readUtf83);
                        binaryBitmap.parseEhloLine(readUtf83, linkedHashMap);
                        binaryBitmap.expect('\r');
                        binaryBitmap.expect('\n');
                        i = -1;
                    }
                }
            }
        }
        logResponse(hello.getResponse(), false);
        if (hello instanceof SmtpHelloResponse.Hello) {
            return ((SmtpHelloResponse.Hello) hello).keywords;
        }
        if (K9MailLib.debugStatus.enabled()) {
            Log.v("Server doesn't support the EHLO command. Trying HELO...", new Object[0]);
        }
        try {
            executeCommand(false, "HELO %s", Arrays.copyOf(new Object[]{"ehlo.thunderbird.net"}, 1));
            return emptyMap;
        } catch (NegativeSmtpReplyException unused) {
            Log.w("Server doesn't support the HELO command. Continuing anyway.", new Object[0]);
            return emptyMap;
        }
    }

    public final void sendMessage(MimeMessage mimeMessage) {
        SetBuilder setBuilder = new SetBuilder();
        Address[] recipients = mimeMessage.getRecipients(Message$RecipientType.TO);
        recipients.getClass();
        boolean z = false;
        for (Address address : recipients) {
            setBuilder.add(address.address);
        }
        Address[] recipients2 = mimeMessage.getRecipients(Message$RecipientType.CC);
        recipients2.getClass();
        for (Address address2 : recipients2) {
            setBuilder.add(address2.address);
        }
        Address[] recipients3 = mimeMessage.getRecipients(Message$RecipientType.BCC);
        recipients3.getClass();
        for (Address address3 : recipients3) {
            setBuilder.add(address3.address);
        }
        SetBuilder build = Validate.build(setBuilder);
        if (build.backing.isEmpty()) {
            return;
        }
        mimeMessage.mHeader.removeHeader("Bcc");
        ensureClosed();
        open$tfa_mail_protocols_smtp();
        if (this.largestAcceptableMessage > 0 && mimeMessage.hasAttachments() && mimeMessage.calculateSize() > this.largestAcceptableMessage) {
            throw new MessagingException("Message too large for server", true, null);
        }
        try {
            try {
                try {
                    Address[] from = mimeMessage.getFrom();
                    from.getClass();
                    String constructSmtpMailFromCommand = constructSmtpMailFromCommand(from, this.is8bitEncodingAllowed, mimeMessage.usesAnyUnicodeAddresses());
                    if (this.isPipeliningSupported) {
                        ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
                        createListBuilder.add(constructSmtpMailFromCommand);
                        Object it = build.iterator();
                        while (((Table) it).hasNext()) {
                            createListBuilder.add(String.format("RCPT TO:<%s>", Arrays.copyOf(new Object[]{(String) ((MapBuilder.KeysItr) it).next()}, 1)));
                        }
                        ListBuilder build2 = IntOffsetKt.build(createListBuilder);
                        executePipelinedCommands(build2);
                        readPipelinedResponse(build2);
                    } else {
                        executeCommand(false, constructSmtpMailFromCommand, Arrays.copyOf(new Object[0], 0));
                        Object it2 = build.iterator();
                        while (((Table) it2).hasNext()) {
                            executeCommand(false, "RCPT TO:<%s>", Arrays.copyOf(new Object[]{(String) ((MapBuilder.KeysItr) it2).next()}, 1));
                        }
                    }
                    executeCommand(false, "DATA", Arrays.copyOf(new Object[0], 0));
                    Socket socket = this.socket;
                    if (socket == null) {
                        throw new IllegalStateException("socket == null");
                    }
                    socket.setSoTimeout(300000);
                    SmtpDataStuffing smtpDataStuffing = new SmtpDataStuffing(this.outputStream);
                    smtpDataStuffing.state = 2;
                    EOLConvertingOutputStream eOLConvertingOutputStream = new EOLConvertingOutputStream(new LineWrapOutputStream(smtpDataStuffing));
                    mimeMessage.writeTo(eOLConvertingOutputStream);
                    eOLConvertingOutputStream.endWithCrLfAndFlush();
                    try {
                        executeCommand(false, ".", Arrays.copyOf(new Object[0], 0));
                        close();
                    } catch (Exception e) {
                        e = e;
                        z = true;
                        throw new MessagingException("Unable to send message", z, e);
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (NegativeSmtpReplyException e3) {
                throw e3;
            }
        } catch (Throwable th) {
            close();
            throw th;
        }
    }

    public final void writeLine(String str, boolean z) {
        if (K9MailLib.debugStatus.enabled()) {
            Log.d((!z || K9MailLib.debugStatus.debugSensitive()) ? CameraDevices$CC.m("SMTP >>> ", str) : "SMTP >>> *sensitive*", new Object[0]);
        }
        byte[] bytes = ViewSizeResolver.CC.m(str, "\r\n").getBytes(Charsets.UTF_8);
        bytes.getClass();
        BufferedOutputStream bufferedOutputStream = this.outputStream;
        bufferedOutputStream.getClass();
        bufferedOutputStream.write(bytes);
        bufferedOutputStream.flush();
    }
}
