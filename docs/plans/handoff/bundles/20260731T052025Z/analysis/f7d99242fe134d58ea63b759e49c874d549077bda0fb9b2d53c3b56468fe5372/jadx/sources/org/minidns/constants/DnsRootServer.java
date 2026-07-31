package org.minidns.constants;

import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.HashMap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class DnsRootServer {
    public static final HashMap IPV4_ROOT_SERVER_MAP = new HashMap();
    public static final HashMap IPV6_ROOT_SERVER_MAP = new HashMap();
    public static final Inet4Address[] IPV4_ROOT_SERVERS = {rootServerInet4Address('a', 198, 41, 0, 4), rootServerInet4Address('b', 192, 228, 79, 201), rootServerInet4Address('c', 192, 33, 4, 12), rootServerInet4Address('d', 199, 7, 91, 13), rootServerInet4Address('e', 192, 203, 230, 10), rootServerInet4Address('f', 192, 5, 5, 241), rootServerInet4Address('g', 192, 112, 36, 4), rootServerInet4Address('h', 198, 97, 190, 53), rootServerInet4Address('i', 192, 36, 148, 17), rootServerInet4Address('j', 192, 58, 128, 30), rootServerInet4Address('k', 193, 0, 14, 129), rootServerInet4Address('l', 199, 7, 83, 42), rootServerInet4Address('m', 202, 12, 27, 33)};
    public static final Inet6Address[] IPV6_ROOT_SERVERS = {rootServerInet6Address('a', 1283, 47678, 2, 48), rootServerInet6Address('b', 1280, 132, 0, 11), rootServerInet6Address('c', 1280, 2, 0, 12), rootServerInet6Address('d', 1280, 45, 0, 13), rootServerInet6Address('f', 1280, 47, 0, 15), rootServerInet6Address('h', 1280, 1, 0, 83), rootServerInet6Address('i', 2046, 0, 0, 83), rootServerInet6Address('j', 1283, 3111, 2, 48), rootServerInet6Address('l', 1280, 3, 0, 66), rootServerInet6Address('m', 3523, 0, 0, 53)};

    public static Inet4Address rootServerInet4Address(char c, int i, int i2, int i3, int i4) {
        try {
            Inet4Address inet4Address = (Inet4Address) InetAddress.getByAddress(c + ".root-servers.net", new byte[]{(byte) i, (byte) i2, (byte) i3, (byte) i4});
            IPV4_ROOT_SERVER_MAP.put(Character.valueOf(c), inet4Address);
            return inet4Address;
        } catch (UnknownHostException e) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
            return null;
        }
    }

    public static Inet6Address rootServerInet6Address(char c, int i, int i2, int i3, int i4) {
        try {
            Inet6Address inet6Address = (Inet6Address) InetAddress.getByAddress(c + ".root-servers.net", new byte[]{32, 1, (byte) (i >> 8), (byte) i, (byte) (i2 >> 8), (byte) i2, 0, 0, 0, 0, 0, 0, 0, (byte) i3, 0, (byte) i4});
            IPV6_ROOT_SERVER_MAP.put(Character.valueOf(c), inet6Address);
            return inet6Address;
        } catch (UnknownHostException e) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
            return null;
        }
    }
}
