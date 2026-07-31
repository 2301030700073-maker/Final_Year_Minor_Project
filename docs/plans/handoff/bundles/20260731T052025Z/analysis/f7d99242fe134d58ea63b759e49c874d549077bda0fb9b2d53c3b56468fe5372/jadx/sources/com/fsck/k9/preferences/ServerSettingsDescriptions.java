package com.fsck.k9.preferences;

import com.fsck.k9.preferences.upgrader.ServerSettingsUpgraderTo92;
import java.util.Map;
import java.util.TreeMap;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.MapsKt__MapsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ServerSettingsDescriptions {
    public static final Map SETTINGS;
    public static final Map UPGRADERS;

    static {
        Pair[] pairArr = {new Pair(1, new Settings$ColorSetting(7, null))};
        TreeMap treeMap = new TreeMap();
        MapsKt__MapsKt.putAll(treeMap, pairArr);
        Pair pair = new Pair("host", treeMap);
        Pair[] pairArr2 = {new Pair(1, new Settings$IntegerRangeSetting(1, 65535, -1))};
        TreeMap treeMap2 = new TreeMap();
        MapsKt__MapsKt.putAll(treeMap2, pairArr2);
        Pair pair2 = new Pair("port", treeMap2);
        Pair[] pairArr3 = {new Pair(1, new StringEnumSetting(ArraysKt___ArraysKt.toSet(new String[]{"NONE", "STARTTLS_OPTIONAL", "STARTTLS_REQUIRED", "SSL_TLS_OPTIONAL", "SSL_TLS_REQUIRED"}), 0)), new Pair(92, new StringEnumSetting(ArraysKt___ArraysKt.toSet(new String[]{"NONE", "STARTTLS_REQUIRED", "SSL_TLS_REQUIRED"}), 1))};
        TreeMap treeMap3 = new TreeMap();
        MapsKt__MapsKt.putAll(treeMap3, pairArr3);
        Pair pair3 = new Pair("connectionSecurity", treeMap3);
        Pair[] pairArr4 = {new Pair(1, new StringEnumSetting(ArraysKt___ArraysKt.toSet(new String[]{"PLAIN", "CRAM_MD5", "EXTERNAL", "XOAUTH2", "AUTOMATIC", "LOGIN"}), 1)), new Pair(94, new StringEnumSetting(ArraysKt___ArraysKt.toSet(new String[]{"PLAIN", "CRAM_MD5", "EXTERNAL", "XOAUTH2"}), 1)), new Pair(95, new StringEnumSetting(ArraysKt___ArraysKt.toSet(new String[]{"PLAIN", "CRAM_MD5", "EXTERNAL", "XOAUTH2", "NONE"}), 1))};
        TreeMap treeMap4 = new TreeMap();
        MapsKt__MapsKt.putAll(treeMap4, pairArr4);
        Pair pair4 = new Pair("authenticationType", treeMap4);
        Pair[] pairArr5 = {new Pair(1, new Settings$ColorSetting(7, ""))};
        TreeMap treeMap5 = new TreeMap();
        MapsKt__MapsKt.putAll(treeMap5, pairArr5);
        Pair pair5 = new Pair("username", treeMap5);
        Pair[] pairArr6 = {new Pair(1, new Settings$ColorSetting(7, null))};
        TreeMap treeMap6 = new TreeMap();
        MapsKt__MapsKt.putAll(treeMap6, pairArr6);
        Pair pair6 = new Pair("password", treeMap6);
        Pair[] pairArr7 = {new Pair(1, new Settings$ColorSetting(7, null))};
        TreeMap treeMap7 = new TreeMap();
        MapsKt__MapsKt.putAll(treeMap7, pairArr7);
        SETTINGS = MapsKt__MapsKt.mapOf(pair, pair2, pair3, pair4, pair5, pair6, new Pair("clientCertificateAlias", treeMap7));
        UPGRADERS = MapsKt__MapsKt.mapOf(new Pair(92, new ServerSettingsUpgraderTo92(0)), new Pair(94, new ServerSettingsUpgraderTo92(14)), new Pair(95, new ServerSettingsUpgraderTo92(15)));
    }
}
