package com.google.firebase.crashlytics.internal.settings;

import com.braze.models.Banner;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.persistence.FileStore;
import io.sentry.instrumentation.file.SentryFileInputStream;
import io.sentry.instrumentation.file.SentryFileWriter;
import java.io.File;
import java.io.FileInputStream;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class CachedSettingsIo {
    private static final String SETTINGS_CACHE_FILENAME = "com.crashlytics.settings.json";
    private final File cachedSettingsFile;

    public CachedSettingsIo(FileStore fileStore) {
        this.cachedSettingsFile = fileStore.getCommonFile(SETTINGS_CACHE_FILENAME);
    }

    private File getSettingsFile() {
        return this.cachedSettingsFile;
    }

    public JSONObject readCachedSettings() {
        FileInputStream fileInputStream;
        Throwable th;
        JSONObject jSONObject;
        Logger.getLogger().d("Checking for cached settings...");
        FileInputStream fileInputStream2 = null;
        try {
            File settingsFile = getSettingsFile();
            if (settingsFile.exists()) {
                fileInputStream = SentryFileInputStream.Factory.create(new FileInputStream(settingsFile), settingsFile);
                try {
                    try {
                        jSONObject = new JSONObject(CommonUtils.streamToString(fileInputStream));
                        fileInputStream2 = fileInputStream;
                    } catch (Exception e) {
                        e = e;
                        Logger.getLogger().e("Failed to fetch cached settings", e);
                        CommonUtils.closeOrLog(fileInputStream, "Error while closing settings cache file.");
                        return null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    CommonUtils.closeOrLog(fileInputStream, "Error while closing settings cache file.");
                    throw th;
                }
            } else {
                Logger.getLogger().v("Settings file does not exist.");
                jSONObject = null;
            }
            CommonUtils.closeOrLog(fileInputStream2, "Error while closing settings cache file.");
            return jSONObject;
        } catch (Exception e2) {
            e = e2;
            fileInputStream = null;
        } catch (Throwable th3) {
            fileInputStream = null;
            th = th3;
            CommonUtils.closeOrLog(fileInputStream, "Error while closing settings cache file.");
            throw th;
        }
    }

    public void writeCachedSettings(long j, JSONObject jSONObject) {
        SentryFileWriter sentryFileWriter;
        Logger.getLogger().v("Writing settings to cache file...");
        if (jSONObject != null) {
            SentryFileWriter sentryFileWriter2 = null;
            try {
                try {
                    jSONObject.put(Banner.EXPIRATION, j);
                    sentryFileWriter = new SentryFileWriter(getSettingsFile());
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception e) {
                e = e;
            }
            try {
                sentryFileWriter.write(jSONObject.toString());
                sentryFileWriter.flush();
                CommonUtils.closeOrLog(sentryFileWriter, "Failed to close settings writer.");
            } catch (Exception e2) {
                e = e2;
                sentryFileWriter2 = sentryFileWriter;
                Logger.getLogger().e("Failed to cache settings", e);
                CommonUtils.closeOrLog(sentryFileWriter2, "Failed to close settings writer.");
            } catch (Throwable th2) {
                th = th2;
                sentryFileWriter2 = sentryFileWriter;
                CommonUtils.closeOrLog(sentryFileWriter2, "Failed to close settings writer.");
                throw th;
            }
        }
    }
}
