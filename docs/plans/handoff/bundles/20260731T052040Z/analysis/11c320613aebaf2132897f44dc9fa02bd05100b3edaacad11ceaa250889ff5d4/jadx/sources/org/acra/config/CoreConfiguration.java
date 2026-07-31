package org.acra.config;

import java.io.Serializable;
import java.util.List;
import org.acra.ReportField;
import org.acra.data.StringFormat;
import org.acra.file.Directory;
import org.acra.plugins.PluginLoader;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CoreConfiguration implements Serializable {
    private final List<String> additionalDropBoxTags;
    private final List<String> additionalSharedPreferences;
    private final boolean alsoReportToAndroidFramework;
    private final String applicationLogFile;
    private final Directory applicationLogFileDir;
    private final int applicationLogFileLines;
    private final Class<Object> attachmentUriProvider;
    private final List<String> attachmentUris;
    private final Class<?> buildConfigClass;
    private final boolean deleteUnapprovedReportsOnApplicationStart;
    private final int dropboxCollectionMinutes;
    private final List<String> excludeMatchingSettingsKeys;
    private final List<String> excludeMatchingSharedPreferencesKeys;
    private final boolean includeDropBoxSystemTags;
    private final List<String> logcatArguments;
    private final boolean logcatFilterByPid;
    private final boolean logcatReadNonBlocking;
    private final boolean parallel;
    private final List<CoreConfiguration> pluginConfigurations;
    private final PluginLoader pluginLoader;
    private final List<ReportField> reportContent;
    private final StringFormat reportFormat;
    private final String reportSendFailureToast;
    private final String reportSendSuccessToast;
    private final Class<? extends DefaultRetryPolicy> retryPolicyClass;
    private final boolean sendReportsInDevMode;
    private final String sharedPreferencesName;
    private final boolean stopServicesOnCrash;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public CoreConfiguration(java.lang.String r31, boolean r32, java.util.List r33, int r34, java.util.List r35, java.util.List r36, boolean r37, boolean r38, java.util.List r39, boolean r40, boolean r41, boolean r42, java.util.List r43, java.util.List r44, java.lang.Class r45, java.lang.String r46, int r47, org.acra.file.Directory r48, java.lang.Class r49, boolean r50, java.util.List r51, java.lang.Class r52, java.lang.String r53, java.lang.String r54, org.acra.data.StringFormat r55, boolean r56, org.acra.plugins.PluginLoader r57, java.util.List r58, int r59, kotlin.jvm.internal.DefaultConstructorMarker r60) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.acra.config.CoreConfiguration.<init>(java.lang.String, boolean, java.util.List, int, java.util.List, java.util.List, boolean, boolean, java.util.List, boolean, boolean, boolean, java.util.List, java.util.List, java.lang.Class, java.lang.String, int, org.acra.file.Directory, java.lang.Class, boolean, java.util.List, java.lang.Class, java.lang.String, java.lang.String, org.acra.data.StringFormat, boolean, org.acra.plugins.PluginLoader, java.util.List, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    public final List getAdditionalDropBoxTags() {
        return this.additionalDropBoxTags;
    }

    public final List getAdditionalSharedPreferences() {
        return this.additionalSharedPreferences;
    }

    public final boolean getAlsoReportToAndroidFramework() {
        return this.alsoReportToAndroidFramework;
    }

    public final String getApplicationLogFile() {
        return this.applicationLogFile;
    }

    public final Directory getApplicationLogFileDir() {
        return this.applicationLogFileDir;
    }

    public final int getApplicationLogFileLines() {
        return this.applicationLogFileLines;
    }

    public final Class getBuildConfigClass() {
        return this.buildConfigClass;
    }

    public final boolean getDeleteUnapprovedReportsOnApplicationStart() {
        return this.deleteUnapprovedReportsOnApplicationStart;
    }

    public final int getDropboxCollectionMinutes() {
        return this.dropboxCollectionMinutes;
    }

    public final List getExcludeMatchingSettingsKeys() {
        return this.excludeMatchingSettingsKeys;
    }

    public final List getExcludeMatchingSharedPreferencesKeys() {
        return this.excludeMatchingSharedPreferencesKeys;
    }

    public final boolean getIncludeDropBoxSystemTags() {
        return this.includeDropBoxSystemTags;
    }

    public final List getLogcatArguments() {
        return this.logcatArguments;
    }

    public final boolean getLogcatReadNonBlocking() {
        return this.logcatReadNonBlocking;
    }

    public final boolean getParallel() {
        return this.parallel;
    }

    public final List getPluginConfigurations() {
        return this.pluginConfigurations;
    }

    public final PluginLoader getPluginLoader() {
        return this.pluginLoader;
    }

    public final List getReportContent() {
        return this.reportContent;
    }

    public final String getReportSendFailureToast() {
        return this.reportSendFailureToast;
    }

    public final String getReportSendSuccessToast() {
        return this.reportSendSuccessToast;
    }

    public final Class getRetryPolicyClass() {
        return this.retryPolicyClass;
    }

    public final boolean getSendReportsInDevMode() {
        return this.sendReportsInDevMode;
    }

    public final String getSharedPreferencesName() {
        return this.sharedPreferencesName;
    }

    public final boolean getStopServicesOnCrash() {
        return this.stopServicesOnCrash;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CoreConfiguration(String str, boolean z, List<String> list, int i, List<String> list2, List<? extends ReportField> list3, boolean z2, boolean z3, List<String> list4, boolean z4, boolean z5, boolean z6, List<String> list5, List<String> list6, Class<?> cls, String str2, int i2, Directory directory, Class<? extends DefaultRetryPolicy> cls2, boolean z7, List<String> list7, Class<Object> cls3, String str3, String str4, StringFormat stringFormat, boolean z8, PluginLoader pluginLoader, List<? extends CoreConfiguration> list8) {
        list.getClass();
        list2.getClass();
        list3.getClass();
        list4.getClass();
        list5.getClass();
        list6.getClass();
        directory.getClass();
        cls2.getClass();
        list7.getClass();
        cls3.getClass();
        stringFormat.getClass();
        pluginLoader.getClass();
        list8.getClass();
        this.sharedPreferencesName = str;
        this.includeDropBoxSystemTags = z;
        this.additionalDropBoxTags = list;
        this.dropboxCollectionMinutes = i;
        this.logcatArguments = list2;
        this.reportContent = list3;
        this.deleteUnapprovedReportsOnApplicationStart = z2;
        this.alsoReportToAndroidFramework = z3;
        this.additionalSharedPreferences = list4;
        this.logcatFilterByPid = z4;
        this.logcatReadNonBlocking = z5;
        this.sendReportsInDevMode = z6;
        this.excludeMatchingSharedPreferencesKeys = list5;
        this.excludeMatchingSettingsKeys = list6;
        this.buildConfigClass = cls;
        this.applicationLogFile = str2;
        this.applicationLogFileLines = i2;
        this.applicationLogFileDir = directory;
        this.retryPolicyClass = cls2;
        this.stopServicesOnCrash = z7;
        this.attachmentUris = list7;
        this.attachmentUriProvider = cls3;
        this.reportSendSuccessToast = str3;
        this.reportSendFailureToast = str4;
        this.reportFormat = stringFormat;
        this.parallel = z8;
        this.pluginLoader = pluginLoader;
        this.pluginConfigurations = list8;
    }

    public CoreConfiguration() {
        this(null, false, null, 0, null, null, false, false, null, false, false, false, null, null, null, null, 0, null, null, false, null, null, null, null, null, false, null, null, 268435455, null);
    }
}
