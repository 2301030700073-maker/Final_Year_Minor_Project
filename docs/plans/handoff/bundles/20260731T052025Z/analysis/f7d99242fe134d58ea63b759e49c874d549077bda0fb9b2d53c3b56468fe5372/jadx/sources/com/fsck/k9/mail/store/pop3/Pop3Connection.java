package com.fsck.k9.mail.store.pop3;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import com.fsck.k9.backend.pop3.CommandSetFlag;
import com.fsck.k9.helper.DefaultTrustedSocketFactory;
import com.fsck.k9.mail.AuthType;
import com.fsck.k9.mail.AuthenticationFailedException;
import com.fsck.k9.mail.CertificateValidationException;
import com.fsck.k9.mail.ConnectionSecurity;
import com.fsck.k9.mail.K9MailLib;
import com.fsck.k9.mail.MissingCapabilityException;
import com.fsck.k9.mail.filter.Base64;
import com.fsck.k9.mail.filter.Hex;
import com.fsck.k9.mail.ssl.LocalKeyStoreKt;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.SSLException;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.logging.legacy.Log;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Pop3Connection {
    public Pop3Capabilities capabilities;
    public BufferedInputStream in;
    public BufferedOutputStream out;
    public final CommandSetFlag settings;
    public Socket socket;
    public boolean topNotAdvertised;
    public final DefaultTrustedSocketFactory trustedSocketFactory;

    public Pop3Connection(CommandSetFlag commandSetFlag, DefaultTrustedSocketFactory defaultTrustedSocketFactory) {
        this.settings = commandSetFlag;
        this.trustedSocketFactory = defaultTrustedSocketFactory;
    }

    public final void close() {
        try {
            this.in.close();
        } catch (Exception unused) {
        }
        try {
            this.out.close();
        } catch (Exception unused2) {
        }
        try {
            this.socket.close();
        } catch (Exception unused3) {
        }
        this.in = null;
        this.out = null;
        this.socket = null;
    }

    public final Socket connect() {
        InetAddress[] allByName = InetAddress.getAllByName(this.settings.pop3Store.host);
        int length = allByName.length;
        IOException iOException = null;
        int i = 0;
        while (i < length) {
            InetAddress inetAddress = allByName[i];
            try {
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
        Pop3Store pop3Store = this.settings.pop3Store;
        if (K9MailLib.debugStatus.enabled()) {
            Log.d("Connecting to %s as %s", pop3Store.host, inetAddress);
        }
        InetSocketAddress inetSocketAddress = new InetSocketAddress(inetAddress, pop3Store.port);
        Socket createSocket = ((ConnectionSecurity) pop3Store.connectionSecurity) == ConnectionSecurity.SSL_TLS_REQUIRED ? this.trustedSocketFactory.createSocket(null, pop3Store.host, pop3Store.port, (String) pop3Store.clientCertificateAlias) : new Socket();
        createSocket.connect(inetSocketAddress, 30000);
        return createSocket;
    }

    public final String executeSimpleCommand(String str, boolean z) {
        if (str != null) {
            if (K9MailLib.debugStatus.enabled()) {
                if (!z || K9MailLib.debugStatus.debugSensitive()) {
                    Log.d(">>> %s", str);
                } else {
                    Log.d(">>> [Command Hidden, Enable Sensitive Debug Logging To Show]", new Object[0]);
                }
            }
            this.out.write(str.getBytes());
            this.out.write(13);
            this.out.write(10);
            this.out.flush();
        }
        String readLine = readLine();
        if (readLine.length() == 0 || readLine.charAt(0) != '+') {
            throw new Pop3ErrorResponse(readLine, true, null);
        }
        return readLine;
    }

    public final Pop3Capabilities getCapabilities() {
        Pop3Capabilities pop3Capabilities = new Pop3Capabilities();
        try {
            executeSimpleCommand("CAPA", false);
            while (true) {
                String readLine = readLine();
                if (readLine.equals(".")) {
                    break;
                }
                String upperCase = readLine.toUpperCase(Locale.US);
                if (upperCase.equals("STLS")) {
                    pop3Capabilities.stls = true;
                } else if (upperCase.equals("UIDL")) {
                    pop3Capabilities.uidl = true;
                } else if (upperCase.equals("TOP")) {
                    pop3Capabilities.top = true;
                } else if (upperCase.startsWith("SASL")) {
                    List asList = Arrays.asList(upperCase.split(" "));
                    if (asList.contains("PLAIN")) {
                        pop3Capabilities.authPlain = true;
                    }
                    if (asList.contains("CRAM-MD5")) {
                        pop3Capabilities.cramMD5 = true;
                    }
                    if (asList.contains("EXTERNAL")) {
                        pop3Capabilities.external = true;
                    }
                }
            }
            if (!pop3Capabilities.top) {
                this.topNotAdvertised = true;
                return pop3Capabilities;
            }
        } catch (MessagingException unused) {
        }
        return pop3Capabilities;
    }

    public final boolean isOpen() {
        Socket socket;
        return (this.in == null || this.out == null || (socket = this.socket) == null || !socket.isConnected() || this.socket.isClosed()) ? false : true;
    }

    public final void open() {
        Pop3Store pop3Store = this.settings.pop3Store;
        try {
            this.socket = connect();
            this.in = new BufferedInputStream(this.socket.getInputStream(), 1024);
            this.out = new BufferedOutputStream(this.socket.getOutputStream(), 512);
            this.socket.setSoTimeout(60000);
            if (!isOpen()) {
                throw new MessagingException("Unable to connect socket");
            }
            String executeSimpleCommand = executeSimpleCommand(null, false);
            this.capabilities = getCapabilities();
            if (((ConnectionSecurity) pop3Store.connectionSecurity) == ConnectionSecurity.STARTTLS_REQUIRED) {
                performStartTlsUpgrade(this.trustedSocketFactory, pop3Store.host, pop3Store.port, (String) pop3Store.clientCertificateAlias);
            }
            performAuthentication((AuthType) pop3Store.authType, executeSimpleCommand);
        } catch (SSLException e) {
            List extract = LocalKeyStoreKt.extract(e);
            if (extract == null) {
                throw new MessagingException("Unable to connect", false, e);
            }
            throw new CertificateValidationException(extract, e);
        } catch (IOException e2) {
            close();
            throw new MessagingException("Unable to open connection to POP server.", false, e2);
        } catch (GeneralSecurityException e3) {
            throw new MessagingException("Unable to open connection to POP server due to security error.", false, e3);
        }
    }

    public final void performAuthentication(AuthType authType, String str) {
        Pop3Store pop3Store = this.settings.pop3Store;
        int ordinal = authType.ordinal();
        if (ordinal == 0) {
            if (this.capabilities.authPlain) {
                executeSimpleCommand("AUTH PLAIN", false);
                try {
                    executeSimpleCommand(new String(Base64.encodeBase64$1((WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR + ((String) pop3Store.username) + WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR + ((String) pop3Store.password)).getBytes())), true);
                    return;
                } catch (Pop3ErrorResponse e) {
                    throw new AuthenticationFailedException("AUTH PLAIN failed", e.message, e);
                }
            }
            executeSimpleCommand("USER " + ((String) pop3Store.username), false);
            try {
                executeSimpleCommand("PASS " + ((String) pop3Store.password), true);
                return;
            } catch (Pop3ErrorResponse e2) {
                throw new AuthenticationFailedException("USER/PASS failed", e2.message, e2);
            }
        }
        if (ordinal != 1) {
            if (ordinal != 2) {
                throw new MessagingException(CameraDevices$CC.m("Unhandled authentication method: ", String.valueOf(authType), " found in the server settings (bug)."));
            }
            if (!this.capabilities.external) {
                throw new MissingCapabilityException("SASL EXTERNAL");
            }
            try {
                executeSimpleCommand("AUTH EXTERNAL " + Base64.encode((String) pop3Store.username), false);
                return;
            } catch (Pop3ErrorResponse e3) {
                throw new AuthenticationFailedException("AUTH EXTERNAL failed", e3.message, e3);
            }
        }
        if (this.capabilities.cramMD5) {
            try {
                executeSimpleCommand(K9MailLib.computeCramMd5((String) pop3Store.username, (String) pop3Store.password, executeSimpleCommand("AUTH CRAM-MD5", false).replace("+ ", "")), true);
                return;
            } catch (Pop3ErrorResponse e4) {
                throw new AuthenticationFailedException("AUTH CRAM-MD5 failed", e4.message, e4);
            }
        }
        String replaceFirst = str.replaceFirst("^\\+OK *(?:\\[[^\\]]+\\])?[^<]*(<[^>]*>)?[^<]*$", "$1");
        if ("".equals(replaceFirst)) {
            throw new MessagingException("APOP authentication is not supported");
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            String encodeHex = Hex.encodeHex(messageDigest.digest((replaceFirst + ((String) pop3Store.password)).getBytes()));
            try {
                executeSimpleCommand("APOP " + ((String) pop3Store.username) + " " + encodeHex, true);
            } catch (Pop3ErrorResponse e5) {
                throw new AuthenticationFailedException("APOP failed", e5.message, e5);
            }
        } catch (NoSuchAlgorithmException e6) {
            throw new MessagingException("MD5 failure during POP3 auth APOP", false, e6);
        }
    }

    public final void performStartTlsUpgrade(DefaultTrustedSocketFactory defaultTrustedSocketFactory, String str, int i, String str2) {
        if (!this.capabilities.stls) {
            throw new MissingCapabilityException("STLS");
        }
        executeSimpleCommand("STLS", false);
        Socket createSocket = defaultTrustedSocketFactory.createSocket(this.socket, str, i, str2);
        this.socket = createSocket;
        createSocket.setSoTimeout(60000);
        this.in = new BufferedInputStream(this.socket.getInputStream(), 1024);
        this.out = new BufferedOutputStream(this.socket.getOutputStream(), 512);
        if (!isOpen()) {
            throw new MessagingException("Unable to connect socket");
        }
        this.capabilities = getCapabilities();
    }

    public final String readLine() {
        StringBuilder sb = new StringBuilder();
        int read = this.in.read();
        if (read == -1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4("End of stream reached while trying to read line.");
            return null;
        }
        do {
            char c = (char) read;
            if (c != '\r') {
                if (c == '\n') {
                    break;
                }
                sb.append(c);
            }
            read = this.in.read();
        } while (read != -1);
        String sb2 = sb.toString();
        if (K9MailLib.debugStatus.enabled()) {
            Log.d("<<< %s", sb2);
        }
        return sb2;
    }
}
