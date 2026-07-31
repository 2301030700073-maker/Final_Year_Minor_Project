package org.minidns.dnsserverlookup;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.net.InetAddress;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.logging.Level;
import kotlin.text.StringsKt__IndentKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidUsingExec extends AbstractDnsServerLookupMechanism {
    public static final AndroidUsingExec INSTANCE = new AndroidUsingExec("AndroidUsingExec", 999);

    public static HashSet parseProps(LineNumberReader lineNumberReader) {
        String hostAddress;
        HashSet hashSet = new HashSet(6);
        while (true) {
            String readLine = lineNumberReader.readLine();
            if (readLine == null) {
                return hashSet;
            }
            int indexOf = readLine.indexOf("]: [");
            if (indexOf != -1) {
                String substring = readLine.substring(1, indexOf);
                int i = indexOf + 4;
                int length = readLine.length() - 1;
                if (length < i) {
                    AbstractDnsServerLookupMechanism.LOGGER.warning("Malformed property detected: \"" + readLine + "\"");
                } else {
                    String substring2 = readLine.substring(i, length);
                    if (!substring2.isEmpty() && (substring.endsWith(".dns") || substring.endsWith(".dns1") || substring.endsWith(".dns2") || substring.endsWith(".dns3") || substring.endsWith(".dns4"))) {
                        InetAddress byName = InetAddress.getByName(substring2);
                        if (byName != null && (hostAddress = byName.getHostAddress()) != null && hostAddress.length() != 0) {
                            hashSet.add(hostAddress);
                        }
                    }
                }
            }
        }
    }

    @Override // org.minidns.dnsserverlookup.AbstractDnsServerLookupMechanism
    public final List getDnsServerAddresses() {
        try {
            HashSet parseProps = parseProps(new LineNumberReader(new InputStreamReader(Runtime.getRuntime().exec("getprop").getInputStream(), StandardCharsets.UTF_8)));
            if (parseProps.size() <= 0) {
                return null;
            }
            ArrayList arrayList = new ArrayList(parseProps.size());
            arrayList.addAll(parseProps);
            return arrayList;
        } catch (IOException e) {
            AbstractDnsServerLookupMechanism.LOGGER.log(Level.WARNING, "Exception in findDNSByExec", (Throwable) e);
            return null;
        }
    }

    @Override // org.minidns.dnsserverlookup.AbstractDnsServerLookupMechanism
    public final boolean isAvailable() {
        return StringsKt__IndentKt.isAndroid();
    }
}
