package org.minidns.dnsserverlookup;

import java.io.File;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import kotlin.text.StringsKt__IndentKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UnixUsingEtcResolvConf extends AbstractDnsServerLookupMechanism {
    public static final UnixUsingEtcResolvConf INSTANCE = new UnixUsingEtcResolvConf("UnixUsingEtcResolvConf", 2000);
    public static final Logger LOGGER = Logger.getLogger(UnixUsingEtcResolvConf.class.getName());
    public static final Pattern NAMESERVER_PATTERN = Pattern.compile("^nameserver\\s+(.*)$");
    public static ArrayList cached;
    public static long lastModified;

    /* JADX WARN: Removed duplicated region for block: B:47:0x0092 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    @Override // org.minidns.dnsserverlookup.AbstractDnsServerLookupMechanism
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List getDnsServerAddresses() {
        /*
            r9 = this;
            java.lang.String r9 = "Could not close reader"
            java.util.logging.Logger r0 = org.minidns.dnsserverlookup.UnixUsingEtcResolvConf.LOGGER
            java.io.File r1 = new java.io.File
            java.lang.String r2 = "/etc/resolv.conf"
            r1.<init>(r2)
            boolean r2 = r1.exists()
            r3 = 0
            if (r2 != 0) goto L14
            goto L8f
        L14:
            long r4 = r1.lastModified()
            long r6 = org.minidns.dnsserverlookup.UnixUsingEtcResolvConf.lastModified
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 != 0) goto L23
            java.util.ArrayList r2 = org.minidns.dnsserverlookup.UnixUsingEtcResolvConf.cached
            if (r2 == 0) goto L23
            return r2
        L23:
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.io.BufferedReader r6 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7a
            java.io.InputStreamReader r7 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7a
            java.io.FileInputStream r8 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7a
            r8.<init>(r1)     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7a
            java.nio.charset.Charset r1 = java.nio.charset.StandardCharsets.UTF_8     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7a
            r7.<init>(r8, r1)     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7a
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L78 java.io.IOException -> L7a
        L39:
            java.lang.String r1 = r6.readLine()     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5b
            if (r1 == 0) goto L5d
            java.util.regex.Pattern r7 = org.minidns.dnsserverlookup.UnixUsingEtcResolvConf.NAMESERVER_PATTERN     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5b
            java.util.regex.Matcher r1 = r7.matcher(r1)     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5b
            boolean r7 = r1.matches()     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5b
            if (r7 == 0) goto L39
            r7 = 1
            java.lang.String r1 = r1.group(r7)     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5b
            java.lang.String r1 = r1.trim()     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5b
            r2.add(r1)     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5b
            goto L39
        L58:
            r1 = move-exception
            r3 = r6
            goto L90
        L5b:
            r1 = move-exception
            goto L7c
        L5d:
            r6.close()     // Catch: java.io.IOException -> L61
            goto L67
        L61:
            r1 = move-exception
            java.util.logging.Level r6 = java.util.logging.Level.WARNING
            r0.log(r6, r9, r1)
        L67:
            boolean r9 = r2.isEmpty()
            if (r9 == 0) goto L73
            java.lang.String r9 = "Could not find any nameservers in /etc/resolv.conf"
            r0.fine(r9)
            return r3
        L73:
            org.minidns.dnsserverlookup.UnixUsingEtcResolvConf.cached = r2
            org.minidns.dnsserverlookup.UnixUsingEtcResolvConf.lastModified = r4
            return r2
        L78:
            r1 = move-exception
            goto L90
        L7a:
            r1 = move-exception
            r6 = r3
        L7c:
            java.util.logging.Level r2 = java.util.logging.Level.WARNING     // Catch: java.lang.Throwable -> L58
            java.lang.String r4 = "Could not read from /etc/resolv.conf"
            r0.log(r2, r4, r1)     // Catch: java.lang.Throwable -> L58
            if (r6 == 0) goto L8f
            r6.close()     // Catch: java.io.IOException -> L89
            goto L8f
        L89:
            r1 = move-exception
            java.util.logging.Level r2 = java.util.logging.Level.WARNING
            r0.log(r2, r9, r1)
        L8f:
            return r3
        L90:
            if (r3 == 0) goto L9c
            r3.close()     // Catch: java.io.IOException -> L96
            goto L9c
        L96:
            r2 = move-exception
            java.util.logging.Level r3 = java.util.logging.Level.WARNING
            r0.log(r3, r9, r2)
        L9c:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.minidns.dnsserverlookup.UnixUsingEtcResolvConf.getDnsServerAddresses():java.util.List");
    }

    @Override // org.minidns.dnsserverlookup.AbstractDnsServerLookupMechanism
    public final boolean isAvailable() {
        if (StringsKt__IndentKt.isAndroid()) {
            return false;
        }
        try {
            return new File("/etc/resolv.conf").exists();
        } catch (SecurityException e) {
            LOGGER.log(Level.FINE, "Access to /etc/resolv.conf not possible", (Throwable) e);
            return false;
        }
    }
}
