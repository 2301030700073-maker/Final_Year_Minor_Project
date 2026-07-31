package com.fsck.k9.mail.store.imap;

import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.compose.material.ripple.StateLayer;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.room.util.DBUtil;
import androidx.room.util.RelationUtil;
import androidx.sqlite.SQLite;
import androidx.work.Configuration;
import com.fsck.k9.helper.DefaultTrustedSocketFactory;
import com.fsck.k9.mail.AuthenticationFailedException;
import com.fsck.k9.mail.CertificateValidationException;
import com.fsck.k9.mail.ConnectionSecurity;
import com.fsck.k9.mail.K9MailLib;
import com.fsck.k9.mail.MissingCapabilityException;
import com.fsck.k9.mail.filter.Base64;
import com.fsck.k9.mail.filter.PeekableInputStream;
import com.fsck.k9.mail.ssl.LocalKeyStoreKt;
import com.fsck.k9.mail.store.imap.RealImapStore;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.sasl.OAuthBearer;
import com.jcraft.jzlib.Adler32;
import com.jcraft.jzlib.ZOutputStream;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.security.GeneralSecurityException;
import java.security.Security;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.regex.Pattern;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import javax.net.ssl.SSLException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.text.Charsets;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.logging.legacy.Log;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.connection.RouteDatabase;
import okio.ByteString;
import org.apache.commons.io.IOUtils;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;
import org.jsoup.parser.ParseError;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RealImapConnection {
    public Set capabilities;
    public final int connectionGeneration;
    public final LocalFolder.AnonymousClass12 folderNameCodec;
    public BufferedOutputStream imapOutputStream;
    public PeekableInputStream inputStream;
    public int nextCommandTag;
    public final LocalFolder.AnonymousClass12 oauthTokenProvider;
    public boolean open;
    public StateLayer responseParser;
    public boolean retryOAuthWithNewToken;
    public final RealImapStore.StoreImapSettings settings;
    public Socket socket;
    public final DefaultTrustedSocketFactory socketFactory;
    public Exception stacktraceForClose;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class OAuthMethod {
        public static final /* synthetic */ OAuthMethod[] $VALUES;
        public static final OAUTHBEARER OAUTHBEARER;
        public static final XOAUTH2 XOAUTH2;

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class OAUTHBEARER extends OAuthMethod {
            public OAUTHBEARER() {
                super("OAUTHBEARER", 1);
            }

            @Override // com.fsck.k9.mail.store.imap.RealImapConnection.OAuthMethod
            public final String buildInitialClientResponse(String str, String str2) {
                str.getClass();
                return OAuthBearer.buildOAuthBearerInitialClientResponse(str, str2);
            }

            @Override // com.fsck.k9.mail.store.imap.RealImapConnection.OAuthMethod
            public final String getCommand() {
                return "AUTHENTICATE OAUTHBEARER";
            }
        }

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class XOAUTH2 extends OAuthMethod {
            public XOAUTH2() {
                super("XOAUTH2", 0);
            }

            @Override // com.fsck.k9.mail.store.imap.RealImapConnection.OAuthMethod
            public final String buildInitialClientResponse(String str, String str2) {
                str.getClass();
                String format = String.format("user=%1s\u0001auth=Bearer %2s\u0001\u0001", str, str2);
                ByteString byteString = ByteString.EMPTY;
                String base64 = Adler32.encodeUtf8(format).base64();
                base64.getClass();
                return base64;
            }

            @Override // com.fsck.k9.mail.store.imap.RealImapConnection.OAuthMethod
            public final String getCommand() {
                return "AUTHENTICATE XOAUTH2";
            }
        }

        static {
            XOAUTH2 xoauth2 = new XOAUTH2();
            XOAUTH2 = xoauth2;
            OAUTHBEARER oauthbearer = new OAUTHBEARER();
            OAUTHBEARER = oauthbearer;
            $VALUES = new OAuthMethod[]{xoauth2, oauthbearer};
        }

        public static OAuthMethod valueOf(String str) {
            return (OAuthMethod) Enum.valueOf(OAuthMethod.class, str);
        }

        public static OAuthMethod[] values() {
            return (OAuthMethod[]) $VALUES.clone();
        }

        public abstract String buildInitialClientResponse(String str, String str2);

        public abstract String getCommand();
    }

    public RealImapConnection(RealImapStore.StoreImapSettings storeImapSettings, DefaultTrustedSocketFactory defaultTrustedSocketFactory, LocalFolder.AnonymousClass12 anonymousClass12, LocalFolder.AnonymousClass12 anonymousClass122, int i) {
        defaultTrustedSocketFactory.getClass();
        anonymousClass122.getClass();
        this.settings = storeImapSettings;
        this.socketFactory = defaultTrustedSocketFactory;
        this.oauthTokenProvider = anonymousClass12;
        this.folderNameCodec = anonymousClass122;
        this.connectionGeneration = i;
        this.capabilities = EmptySet.INSTANCE;
        this.retryOAuthWithNewToken = true;
    }

    public final ArrayList attemptOAuth(OAuthMethod oAuthMethod) {
        LocalFolder.AnonymousClass12 anonymousClass12 = this.oauthTokenProvider;
        if (anonymousClass12 == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return null;
        }
        StateLayer stateLayer = this.responseParser;
        if (stateLayer == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return null;
        }
        String buildInitialClientResponse = oAuthMethod.buildInitialClientResponse(this.settings.username, anonymousClass12.getToken());
        String command = oAuthMethod.getCommand();
        buildInitialClientResponse.getClass();
        try {
            open();
            BufferedOutputStream bufferedOutputStream = this.imapOutputStream;
            if (bufferedOutputStream == null) {
                throw new IllegalStateException("Required value was null.");
            }
            int i = this.nextCommandTag;
            this.nextCommandTag = i + 1;
            String valueOf = String.valueOf(i);
            byte[] bytes = (valueOf + " " + command + " " + buildInitialClientResponse + "\r\n").getBytes(Charsets.UTF_8);
            bytes.getClass();
            bufferedOutputStream.write(bytes);
            bufferedOutputStream.flush();
            if (K9MailLib.debugStatus.enabled()) {
                if (K9MailLib.debugStatus.debugSensitive()) {
                    Log.v("%s>>> %s %s %s", getLogId(), valueOf, command, buildInitialClientResponse);
                } else {
                    Log.v("%s>>> [Command Hidden, Enable Sensitive Debug Logging To Show]", getLogId());
                }
            }
            return stateLayer.readStatusResponse(valueOf, oAuthMethod.getCommand(), getLogId(), new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(22, this));
        } catch (IOException e) {
            close();
            throw e;
        } catch (MessagingException e2) {
            close();
            throw e2;
        }
    }

    public final ArrayList authWithOAuthToken(OAuthMethod oAuthMethod) {
        LocalFolder.AnonymousClass12 anonymousClass12 = this.oauthTokenProvider;
        if (anonymousClass12 == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return null;
        }
        this.retryOAuthWithNewToken = true;
        try {
            return attemptOAuth(oAuthMethod);
        } catch (NegativeImapResponseException e) {
            anonymousClass12.val$value = true;
            if (!this.retryOAuthWithNewToken) {
                Log.v(e, "Permanent failure during authentication using OAuth token", new Object[0]);
                throw new AuthenticationFailedException("Authentication failed", (String) e.responseText$delegate.getValue(), e);
            }
            Log.v(e, "Temporary failure - retrying with new token", new Object[0]);
            try {
                return this.attemptOAuth(oAuthMethod);
            } catch (NegativeImapResponseException e2) {
                Log.v(e, "Authentication exception for new token, permanent error assumed", new Object[0]);
                anonymousClass12.val$value = true;
                Log.v(e2, "Permanent failure during authentication using OAuth token", new Object[0]);
                throw new AuthenticationFailedException("Authentication failed", (String) e2.responseText$delegate.getValue(), e2);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final List authenticate() {
        RealImapStore.StoreImapSettings storeImapSettings = this.settings;
        String str = storeImapSettings.username;
        int ordinal = storeImapSettings.authType.ordinal();
        if (ordinal == 0) {
            if (!hasCapability("AUTH=PLAIN")) {
                if (hasCapability("LOGINDISABLED")) {
                    throw new MissingCapabilityException("AUTH=PLAIN");
                }
                return login();
            }
            try {
                return saslAuthPlain();
            } catch (AuthenticationFailedException e) {
                if (!this.isConnected()) {
                    throw e;
                }
                try {
                    return this.login();
                } catch (AuthenticationFailedException e2) {
                    throw e2;
                } catch (IOException e3) {
                    Log.d(e3, "LOGIN fallback failed", new Object[0]);
                    throw e;
                } catch (MessagingException e4) {
                    Log.d(e4, "LOGIN fallback failed", new Object[0]);
                    throw e;
                }
            }
        }
        if (ordinal != 1) {
            if (ordinal == 2) {
                if (!hasCapability("AUTH=EXTERNAL")) {
                    throw new MissingCapabilityException("AUTH=EXTERNAL");
                }
                try {
                    return executeSimpleCommand("AUTHENTICATE EXTERNAL " + Base64.encode(str), false);
                } catch (NegativeImapResponseException e5) {
                    throw this.handleAuthenticationFailure(e5);
                }
            }
            if (ordinal != 3) {
                throw new MessagingException("Unhandled authentication method found in the server settings (bug).");
            }
            if (this.oauthTokenProvider == null) {
                throw new MessagingException("No OAuthToken Provider available.");
            }
            if (!hasCapability("SASL-IR")) {
                throw new MissingCapabilityException("SASL-IR");
            }
            if (hasCapability("AUTH=OAUTHBEARER")) {
                return authWithOAuthToken(OAuthMethod.OAUTHBEARER);
            }
            if (hasCapability("AUTH=XOAUTH2")) {
                return authWithOAuthToken(OAuthMethod.XOAUTH2);
            }
            throw new MissingCapabilityException("AUTH=OAUTHBEARER");
        }
        if (!hasCapability("AUTH=CRAM-MD5")) {
            throw new MissingCapabilityException("AUTH=CRAM-MD5");
        }
        String sendCommand = sendCommand("AUTHENTICATE CRAM-MD5", false);
        BufferedOutputStream bufferedOutputStream = this.imapOutputStream;
        if (bufferedOutputStream == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return null;
        }
        StateLayer stateLayer = this.responseParser;
        if (stateLayer == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return null;
        }
        ImapResponse readContinuationResponse = readContinuationResponse(sendCommand);
        if (readContinuationResponse.size() != 1 || !readContinuationResponse.isString(0)) {
            throw new MessagingException("Invalid Cram-MD5 nonce received");
        }
        String str2 = (String) readContinuationResponse.get(0);
        str2.getClass();
        byte[] bytes = str2.getBytes(Charsets.UTF_8);
        bytes.getClass();
        bufferedOutputStream.write(K9MailLib.computeCramMd5Bytes(bytes, str, storeImapSettings.password));
        bufferedOutputStream.write(13);
        bufferedOutputStream.write(10);
        bufferedOutputStream.flush();
        try {
            return stateLayer.readStatusResponse(sendCommand, "AUTHENTICATE CRAM-MD5", getLogId(), null);
        } catch (NegativeImapResponseException e6) {
            throw this.handleAuthenticationFailure(e6);
        }
    }

    public final synchronized void close() {
        if (this.open) {
            this.open = false;
            this.stacktraceForClose = new Exception();
            IOUtils.closeQ(this.inputStream);
            IOUtils.closeQ(this.imapOutputStream);
            IOUtils.closeQ(this.socket);
            this.inputStream = null;
            this.imapOutputStream = null;
            this.socket = null;
        }
    }

    public final Socket connect() {
        InetAddress[] allByName = InetAddress.getAllByName(this.settings.host);
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
        RealImapStore.StoreImapSettings storeImapSettings = this.settings;
        String str = storeImapSettings.host;
        int i = storeImapSettings.port;
        String str2 = storeImapSettings.clientCertificateAlias;
        if (K9MailLib.debugStatus.enabled()) {
            Log.d("Connecting to %s as %s", str, inetAddress);
        }
        InetSocketAddress inetSocketAddress = new InetSocketAddress(inetAddress, i);
        Socket createSocket = storeImapSettings.connectionSecurity == ConnectionSecurity.SSL_TLS_REQUIRED ? this.socketFactory.createSocket(null, str, i, str2) : new Socket();
        createSocket.connect(inetSocketAddress, 30000);
        return createSocket;
    }

    public final void enableCapabilitiesIfSupported() {
        if (hasCapability("ENABLE")) {
            try {
                RouteDatabase parse = SQLite.parse(executeSimpleCommand("ENABLE UTF8=ACCEPT"));
                if (parse == null) {
                    return;
                }
                LinkedHashSet linkedHashSet = parse._failedRoutes;
                StateLayer stateLayer = this.responseParser;
                if (stateLayer != null) {
                    boolean contains = linkedHashSet.contains("UTF8=ACCEPT");
                    stateLayer.bounded = contains;
                    ((LocalFolder.AnonymousClass12) stateLayer.currentInteraction).val$value = contains;
                }
            } catch (NegativeImapResponseException e) {
                Log.d(e, "Ignoring negative response to ENABLE command", new Object[0]);
            }
        }
    }

    public final void enableCompressionIfRequested() {
        if (hasCapability("COMPRESS=DEFLATE") && this.settings.useCompression) {
            try {
                executeSimpleCommand("COMPRESS DEFLATE");
                try {
                    Socket socket = this.socket;
                    if (socket == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    InputStream inflaterInputStream = new InflaterInputStream(socket.getInputStream(), new Inflater(true));
                    ZOutputStream zOutputStream = new ZOutputStream(socket.getOutputStream());
                    zOutputStream.flush = 1;
                    setUpStreamsAndParser(inflaterInputStream, zOutputStream);
                    if (K9MailLib.debugStatus.enabled()) {
                        Log.i("Compression enabled for %s", getLogId());
                    }
                } catch (IOException e) {
                    close();
                    Log.e(e, "Error enabling compression", new Object[0]);
                }
            } catch (NegativeImapResponseException e2) {
                Log.d(e2, "Unable to negotiate compression: ", new Object[0]);
            }
        }
    }

    public final synchronized ArrayList executeCommandWithIdSet(String str, String str2, Set set) {
        ArrayList arrayList;
        ArrayList splitCommand = DBUtil.splitCommand(str, str2, Util.groupIds(set), hasCapability("CONDSTORE") ? 8172 : 980);
        arrayList = new ArrayList();
        Iterator it = splitCommand.iterator();
        while (it.hasNext()) {
            CollectionsKt.addAll(executeSimpleCommand((String) it.next()), arrayList);
        }
        return arrayList;
    }

    public final ArrayList executeSimpleCommand(String str, boolean z) {
        str.getClass();
        String str2 = (!z || K9MailLib.debugStatus.debugSensitive()) ? str : "*sensitive*";
        String sendCommand = sendCommand(str, z);
        StateLayer stateLayer = this.responseParser;
        if (stateLayer == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return null;
        }
        try {
            return stateLayer.readStatusResponse(sendCommand, str2, getLogId(), null);
        } catch (IOException e) {
            this.close();
            throw e;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean extractCapabilities(List list) {
        Configuration.Builder builder;
        Iterator it = list.iterator();
        do {
            builder = null;
            if (!it.hasNext()) {
                break;
            }
            ImapResponse imapResponse = (ImapResponse) it.next();
            if (!imapResponse.isEmpty() && StateLayer.equalsIgnoreCase(imapResponse.get(0), "OK") && imapResponse.isList(1)) {
                builder = Configuration.Builder.parse((ImapList) imapResponse.get(1));
            } else if (imapResponse.tag == null) {
                builder = Configuration.Builder.parse(imapResponse);
            }
        } while (builder == null);
        if (builder == null) {
            return false;
        }
        Set set = (Set) builder.workerFactory;
        Log.d("Saving %s capabilities for %s", set, getLogId());
        set.getClass();
        this.capabilities = set;
        return true;
    }

    public final void extractOrRequestCapabilities(List list) {
        if (extractCapabilities(list)) {
            return;
        }
        Log.i("Did not get capabilities in post-auth banner, requesting CAPABILITY for %s", getLogId());
        requestCapabilities();
    }

    public final String getLogId() {
        return CameraDevices$CC.m("conn", hashCode());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final MessagingException handleAuthenticationFailure(NegativeImapResponseException negativeImapResponseException) {
        List list = negativeImapResponseException.responses;
        ImapResponse imapResponse = (ImapResponse) CollectionsKt.last(list);
        imapResponse.getClass();
        String str = null;
        if (imapResponse.size() >= 2 && imapResponse.isList(1)) {
            ImapList imapList = (ImapList) imapResponse.get(1);
            if (imapList.size() == 1) {
                str = (String) imapList.get(0);
            }
        }
        if (str != null && !str.equals("AUTHENTICATIONFAILED")) {
            close();
            return negativeImapResponseException;
        }
        if (list == null || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ImapResponse imapResponse2 = (ImapResponse) it.next();
                if (!imapResponse2.isTagged() && !imapResponse2.isEmpty() && StateLayer.equalsIgnoreCase(CollectionsKt.first((List) imapResponse2), "BYE")) {
                    close();
                    break;
                }
            }
        }
        return new AuthenticationFailedException("Authentication failed", (String) negativeImapResponseException.responseText$delegate.getValue(), negativeImapResponseException);
    }

    public final boolean hasCapability(String str) {
        if (!this.open) {
            open();
        }
        Set set = this.capabilities;
        String upperCase = str.toUpperCase(Locale.ROOT);
        upperCase.getClass();
        return set.contains(upperCase);
    }

    public final synchronized boolean isConnected() {
        boolean z;
        Socket socket;
        if (this.inputStream != null && this.imapOutputStream != null && (socket = this.socket) != null && socket.isConnected()) {
            z = socket.isClosed() ? false : true;
        }
        return z;
    }

    public final List login() {
        RealImapStore.StoreImapSettings storeImapSettings = this.settings;
        String str = storeImapSettings.password;
        if (str == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return null;
        }
        Pattern compile = Pattern.compile("[\\\\\"]");
        try {
            return executeSimpleCommand(String.format("LOGIN \"%s\" \"%s\"", Arrays.copyOf(new Object[]{compile.matcher(storeImapSettings.username).replaceAll("\\\\$0"), compile.matcher(str).replaceAll("\\\\$0")}, 2)), true);
        } catch (NegativeImapResponseException e) {
            throw this.handleAuthenticationFailure(e);
        }
    }

    public final synchronized void open() {
        String str;
        try {
            if (this.open) {
                return;
            }
            Exception exc = this.stacktraceForClose;
            if (exc != null) {
                throw new IllegalStateException("open() called after close(). Check wrapped exception to see where close() was called.", exc);
            }
            this.open = true;
            this.nextCommandTag = 1;
            try {
                Security.setProperty("networkaddress.cache.ttl", "0");
            } catch (Exception e) {
                Log.w(e, "Could not set DNS ttl to 0 for %s", getLogId());
            }
            try {
                str = "networkaddress.cache.negative.ttl";
                Security.setProperty("networkaddress.cache.negative.ttl", "0");
            } catch (Exception e2) {
                str = "Could not set DNS negative ttl to 0 for %s";
                Log.w(e2, "Could not set DNS negative ttl to 0 for %s", getLogId());
            }
            try {
                try {
                    this.socket = connect();
                    setSocketDefaultReadTimeout();
                    Socket socket = this.socket;
                    if (socket == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    InputStream inputStream = socket.getInputStream();
                    inputStream.getClass();
                    OutputStream outputStream = socket.getOutputStream();
                    outputStream.getClass();
                    setUpStreamsAndParser(inputStream, outputStream);
                    readInitialResponse();
                    requestCapabilitiesIfNecessary();
                    upgradeToTlsIfNecessary();
                    try {
                        extractOrRequestCapabilities(authenticate());
                        enableCompressionIfRequested();
                        sendClientInfoIfSupported();
                        enableCapabilitiesIfSupported();
                        retrievePathPrefixIfNecessary();
                        retrievePathDelimiterIfNecessary();
                    } catch (GeneralSecurityException e3) {
                        e = e3;
                        throw new MessagingException("Unable to open connection to IMAP server due to security error.", false, e);
                    } catch (SSLException e4) {
                        e = e4;
                        List extract = LocalKeyStoreKt.extract(e);
                        if (extract == null) {
                            throw e;
                        }
                        throw new CertificateValidationException(extract, e);
                    } catch (Throwable th) {
                        th = th;
                        str = 1;
                        if (str == null) {
                            Log.e("Failed to login, closing connection for %s", getLogId());
                            close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (GeneralSecurityException e5) {
                e = e5;
            } catch (SSLException e6) {
                e = e6;
            } catch (Throwable th3) {
                th = th3;
                str = null;
            }
        } finally {
        }
    }

    public final ImapResponse readContinuationResponse(String str) {
        ImapResponse readResponse;
        do {
            readResponse = readResponse(null);
            String str2 = readResponse.tag;
            if (str2 != null) {
                if (str2.equalsIgnoreCase(str)) {
                    throw new MessagingException("Command continuation aborted: " + readResponse);
                }
                Log.w("After sending tag %s, got tag response from previous command %s for %s", str, readResponse, getLogId());
            }
        } while (!readResponse.isContinuationRequested);
        return readResponse;
    }

    public final void readInitialResponse() {
        StateLayer stateLayer = this.responseParser;
        if (stateLayer == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return;
        }
        ImapResponse readResponse = stateLayer.readResponse(null);
        if (K9MailLib.debugStatus.enabled()) {
            Log.v("%s <<< %s", getLogId(), readResponse);
        }
        extractCapabilities(IntOffsetKt.listOf(readResponse));
    }

    public final ImapResponse readResponse(ImapResponseCallback imapResponseCallback) {
        try {
            StateLayer stateLayer = this.responseParser;
            if (stateLayer == null) {
                throw new IllegalStateException("Required value was null.");
            }
            ImapResponse readResponse = stateLayer.readResponse(imapResponseCallback);
            if (K9MailLib.debugStatus.enabled()) {
                Log.v("%s<<<%s", getLogId(), readResponse);
            }
            readResponse.getClass();
            return readResponse;
        } catch (IOException e) {
            close();
            throw e;
        }
    }

    public final void requestCapabilities() {
        if (!extractCapabilities(executeSimpleCommand("CAPABILITY"))) {
            throw new MessagingException("Invalid CAPABILITY response received");
        }
    }

    public final void requestCapabilitiesIfNecessary() {
        if (this.capabilities.isEmpty()) {
            if (K9MailLib.debugStatus.enabled()) {
                Log.i("Did not get capabilities in banner, requesting CAPABILITY for %s", getLogId());
            }
            requestCapabilities();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void retrievePathDelimiterIfNecessary() {
        RealImapStore realImapStore = RealImapStore.this;
        if (realImapStore.pathDelimiter == null) {
            try {
                Iterator it = executeSimpleCommand("LIST \"\" \"\"").iterator();
                while (it.hasNext()) {
                    ImapResponse imapResponse = (ImapResponse) it.next();
                    if (imapResponse.size() >= 4) {
                        boolean equalsIgnoreCase = StateLayer.equalsIgnoreCase(imapResponse.get(0), "LIST");
                        boolean isString = imapResponse.isString(2);
                        if (equalsIgnoreCase && isString) {
                            String str = (String) imapResponse.get(2);
                            realImapStore.pathDelimiter = str;
                            realImapStore._combinedPrefix = null;
                            if (K9MailLib.debugStatus.enabled()) {
                                Log.d("Got path delimiter '%s' for %s", str, getLogId());
                                return;
                            }
                            return;
                        }
                    }
                }
            } catch (NegativeImapResponseException e) {
                Log.d(e, "Error getting path delimiter using LIST command", new Object[0]);
            }
        }
    }

    public final void retrievePathPrefixIfNecessary() {
        RealImapStore realImapStore = RealImapStore.this;
        if (realImapStore.pathPrefix != null) {
            return;
        }
        if (!hasCapability("NAMESPACE")) {
            if (K9MailLib.debugStatus.enabled()) {
                Log.i("pathPrefix is unset but server does not have NAMESPACE capability", new Object[0]);
            }
            realImapStore.pathPrefix = "";
            return;
        }
        if (K9MailLib.debugStatus.enabled()) {
            Log.i("pathPrefix is unset and server has NAMESPACE capability", new Object[0]);
        }
        ParseError parse = ParseError.parse(executeSimpleCommand("NAMESPACE"));
        if (parse == null) {
            return;
        }
        String str = parse.errorMsg;
        String str2 = parse.cursorPos;
        realImapStore.pathPrefix = str2;
        realImapStore.pathDelimiter = str;
        realImapStore._combinedPrefix = null;
        if (K9MailLib.debugStatus.enabled()) {
            Log.d("Got path '%s' and separator '%s'", str2, str);
        }
    }

    public final ArrayList saslAuthPlain() {
        String sendCommand = sendCommand("AUTHENTICATE PLAIN", false);
        BufferedOutputStream bufferedOutputStream = this.imapOutputStream;
        if (bufferedOutputStream == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return null;
        }
        StateLayer stateLayer = this.responseParser;
        if (stateLayer == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return null;
        }
        readContinuationResponse(sendCommand);
        RealImapStore.StoreImapSettings storeImapSettings = this.settings;
        byte[] bytes = ImageAnalysis$$ExternalSyntheticLambda3.m(WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR, storeImapSettings.username, WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR, storeImapSettings.password).getBytes(Charsets.UTF_8);
        bytes.getClass();
        bufferedOutputStream.write(Base64.encodeBase64$1(bytes));
        bufferedOutputStream.write(13);
        bufferedOutputStream.write(10);
        bufferedOutputStream.flush();
        try {
            return stateLayer.readStatusResponse(sendCommand, "AUTHENTICATE PLAIN", getLogId(), null);
        } catch (NegativeImapResponseException e) {
            throw this.handleAuthenticationFailure(e);
        }
    }

    public final void sendClientInfoIfSupported() {
        ImapClientInfo imapClientInfo = this.settings.clientInfo;
        if (!hasCapability("ID") || imapClientInfo == null) {
            return;
        }
        try {
            executeSimpleCommand("ID (\"name\" " + RelationUtil.encodeString(imapClientInfo.appName) + " \"version\" " + RelationUtil.encodeString(imapClientInfo.appVersion) + ")");
        } catch (NegativeImapResponseException e) {
            Log.d(e, "Ignoring negative response to ID command", new Object[0]);
        }
    }

    public final synchronized String sendCommand(String str, boolean z) {
        String valueOf;
        try {
            str.getClass();
            try {
                open();
                BufferedOutputStream bufferedOutputStream = this.imapOutputStream;
                if (bufferedOutputStream == null) {
                    throw new IllegalStateException("Required value was null.");
                }
                int i = this.nextCommandTag;
                this.nextCommandTag = i + 1;
                valueOf = String.valueOf(i);
                byte[] bytes = (valueOf + " " + str + "\r\n").getBytes(Charsets.UTF_8);
                bytes.getClass();
                bufferedOutputStream.write(bytes);
                bufferedOutputStream.flush();
                if (K9MailLib.debugStatus.enabled()) {
                    if (!z || K9MailLib.debugStatus.debugSensitive()) {
                        Log.v("%s>>> %s %s", getLogId(), valueOf, str);
                    } else {
                        Log.v("%s>>> [Command Hidden, Enable Sensitive Debug Logging To Show]", getLogId());
                    }
                }
            } catch (IOException e) {
                close();
                throw e;
            } catch (MessagingException e2) {
                close();
                throw e2;
            }
        } catch (Throwable th) {
            throw th;
        }
        return valueOf;
    }

    public final synchronized void sendContinuation() {
        try {
            BufferedOutputStream bufferedOutputStream = this.imapOutputStream;
            if (bufferedOutputStream == null) {
                throw new IllegalStateException("Required value was null.");
            }
            byte[] bytes = "DONE".getBytes(Charsets.UTF_8);
            bytes.getClass();
            bufferedOutputStream.write(bytes);
            bufferedOutputStream.write(13);
            bufferedOutputStream.write(10);
            bufferedOutputStream.flush();
            if (K9MailLib.debugStatus.enabled()) {
                Log.v("%s>>> %s", getLogId(), "DONE");
            }
        } catch (IOException e) {
            close();
            throw e;
        }
    }

    public final void setSocketDefaultReadTimeout() {
        setSocketReadTimeout(60000);
    }

    public final synchronized void setSocketReadTimeout(int i) {
        Socket socket = this.socket;
        if (socket != null) {
            socket.setSoTimeout(i);
        }
    }

    public final void setUpStreamsAndParser(InputStream inputStream, OutputStream outputStream) {
        PeekableInputStream peekableInputStream = new PeekableInputStream(new BufferedInputStream(inputStream, 1024));
        this.inputStream = peekableInputStream;
        StateLayer stateLayer = new StateLayer();
        stateLayer.rippleAlpha = peekableInputStream;
        stateLayer.bounded = false;
        stateLayer.currentInteraction = this.folderNameCodec;
        this.responseParser = stateLayer;
        this.imapOutputStream = new BufferedOutputStream(outputStream, 1024);
    }

    public final void upgradeToTlsIfNecessary() {
        RealImapStore.StoreImapSettings storeImapSettings = this.settings;
        if (storeImapSettings.connectionSecurity == ConnectionSecurity.STARTTLS_REQUIRED) {
            if (!hasCapability("STARTTLS")) {
                throw new MissingCapabilityException("STARTTLS");
            }
            executeSimpleCommand("STARTTLS");
            this.socket = this.socketFactory.createSocket(this.socket, storeImapSettings.host, storeImapSettings.port, storeImapSettings.clientCertificateAlias);
            setSocketDefaultReadTimeout();
            Socket socket = this.socket;
            if (socket == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
                return;
            }
            InputStream inputStream = socket.getInputStream();
            inputStream.getClass();
            OutputStream outputStream = socket.getOutputStream();
            outputStream.getClass();
            setUpStreamsAndParser(inputStream, outputStream);
            if (K9MailLib.debugStatus.enabled()) {
                Log.i("Updating capabilities after STARTTLS for %s", getLogId());
            }
            requestCapabilities();
        }
    }

    public final synchronized ArrayList executeSimpleCommand(String str) {
        str.getClass();
        return executeSimpleCommand(str, false);
    }
}
