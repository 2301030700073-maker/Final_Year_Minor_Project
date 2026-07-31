package com.fsck.k9.preferences;

import java.io.InputStream;
import okhttp3.ConnectionPool;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsFileParser {
    public static SettingsFile$Contents parseSettings(InputStream inputStream) {
        inputStream.getClass();
        try {
            return new ConnectionPool(inputStream).parse();
        } catch (SettingsParserException e) {
            throw new SettingsImportExportException("Error parsing settings XML", e);
        } catch (XmlPullParserException e2) {
            throw new SettingsImportExportException("Error parsing settings XML", e2);
        }
    }
}
