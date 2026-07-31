package org.acra;

import kotlin.Deprecated;
import kotlin.enums.EnumEntries;
import okio.Okio;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ReportField {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ReportField[] $VALUES;
    public static final ReportField REPORT_ID = new ReportField("REPORT_ID", 0);
    public static final ReportField APP_VERSION_CODE = new ReportField("APP_VERSION_CODE", 1);
    public static final ReportField APP_VERSION_NAME = new ReportField("APP_VERSION_NAME", 2);
    public static final ReportField PACKAGE_NAME = new ReportField("PACKAGE_NAME", 3);
    public static final ReportField FILE_PATH = new ReportField("FILE_PATH", 4);
    public static final ReportField PHONE_MODEL = new ReportField("PHONE_MODEL", 5);
    public static final ReportField ANDROID_VERSION = new ReportField("ANDROID_VERSION", 6);
    public static final ReportField BUILD = new ReportField("BUILD", 7);
    public static final ReportField BRAND = new ReportField("BRAND", 8);
    public static final ReportField PRODUCT = new ReportField("PRODUCT", 9);
    public static final ReportField TOTAL_MEM_SIZE = new ReportField("TOTAL_MEM_SIZE", 10);
    public static final ReportField AVAILABLE_MEM_SIZE = new ReportField("AVAILABLE_MEM_SIZE", 11);
    public static final ReportField BUILD_CONFIG = new ReportField("BUILD_CONFIG", 12);
    public static final ReportField CUSTOM_DATA = new ReportField("CUSTOM_DATA", 13);
    public static final ReportField STACK_TRACE = new ReportField("STACK_TRACE", 14);
    public static final ReportField STACK_TRACE_HASH = new ReportField("STACK_TRACE_HASH", 15);
    public static final ReportField INITIAL_CONFIGURATION = new ReportField("INITIAL_CONFIGURATION", 16);
    public static final ReportField CRASH_CONFIGURATION = new ReportField("CRASH_CONFIGURATION", 17);
    public static final ReportField DISPLAY = new ReportField("DISPLAY", 18);
    public static final ReportField USER_COMMENT = new ReportField("USER_COMMENT", 19);
    public static final ReportField USER_APP_START_DATE = new ReportField("USER_APP_START_DATE", 20);
    public static final ReportField USER_CRASH_DATE = new ReportField("USER_CRASH_DATE", 21);
    public static final ReportField DUMPSYS_MEMINFO = new ReportField("DUMPSYS_MEMINFO", 22);
    public static final ReportField DROPBOX = new ReportField("DROPBOX", 23);
    public static final ReportField LOGCAT = new ReportField("LOGCAT", 24);
    public static final ReportField EVENTSLOG = new ReportField("EVENTSLOG", 25);
    public static final ReportField RADIOLOG = new ReportField("RADIOLOG", 26);
    public static final ReportField IS_SILENT = new ReportField("IS_SILENT", 27);

    @Deprecated
    public static final ReportField DEVICE_ID = new ReportField("DEVICE_ID", 28);
    public static final ReportField INSTALLATION_ID = new ReportField("INSTALLATION_ID", 29);
    public static final ReportField USER_EMAIL = new ReportField("USER_EMAIL", 30);
    public static final ReportField DEVICE_FEATURES = new ReportField("DEVICE_FEATURES", 31);
    public static final ReportField ENVIRONMENT = new ReportField("ENVIRONMENT", 32);
    public static final ReportField SETTINGS_SYSTEM = new ReportField("SETTINGS_SYSTEM", 33);
    public static final ReportField SETTINGS_SECURE = new ReportField("SETTINGS_SECURE", 34);
    public static final ReportField SETTINGS_GLOBAL = new ReportField("SETTINGS_GLOBAL", 35);
    public static final ReportField SHARED_PREFERENCES = new ReportField("SHARED_PREFERENCES", 36);
    public static final ReportField APPLICATION_LOG = new ReportField("APPLICATION_LOG", 37);
    public static final ReportField MEDIA_CODEC_LIST = new ReportField("MEDIA_CODEC_LIST", 38);
    public static final ReportField THREAD_DETAILS = new ReportField("THREAD_DETAILS", 39);
    public static final ReportField USER_IP = new ReportField("USER_IP", 40);

    private static final /* synthetic */ ReportField[] $values() {
        return new ReportField[]{REPORT_ID, APP_VERSION_CODE, APP_VERSION_NAME, PACKAGE_NAME, FILE_PATH, PHONE_MODEL, ANDROID_VERSION, BUILD, BRAND, PRODUCT, TOTAL_MEM_SIZE, AVAILABLE_MEM_SIZE, BUILD_CONFIG, CUSTOM_DATA, STACK_TRACE, STACK_TRACE_HASH, INITIAL_CONFIGURATION, CRASH_CONFIGURATION, DISPLAY, USER_COMMENT, USER_APP_START_DATE, USER_CRASH_DATE, DUMPSYS_MEMINFO, DROPBOX, LOGCAT, EVENTSLOG, RADIOLOG, IS_SILENT, DEVICE_ID, INSTALLATION_ID, USER_EMAIL, DEVICE_FEATURES, ENVIRONMENT, SETTINGS_SYSTEM, SETTINGS_SECURE, SETTINGS_GLOBAL, SHARED_PREFERENCES, APPLICATION_LOG, MEDIA_CODEC_LIST, THREAD_DETAILS, USER_IP};
    }

    static {
        ReportField[] $values = $values();
        $VALUES = $values;
        $ENTRIES = Okio.enumEntries($values);
    }

    private ReportField(String str, int i) {
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static ReportField valueOf(String str) {
        return (ReportField) Enum.valueOf(ReportField.class, str);
    }

    public static ReportField[] values() {
        return (ReportField[]) $VALUES.clone();
    }
}
