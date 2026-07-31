package app.k9mail.feature.migration.qrcode.domain.usecase;

import android.content.Context;
import app.k9mail.feature.migration.qrcode.settings.XmlSettingWriter;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class QrCodeSettingsWriter {
    public final Context context;
    public final XmlSettingWriter xmlSettingWriter;

    public QrCodeSettingsWriter(Context context, XmlSettingWriter xmlSettingWriter) {
        this.context = context;
        this.xmlSettingWriter = xmlSettingWriter;
    }
}
