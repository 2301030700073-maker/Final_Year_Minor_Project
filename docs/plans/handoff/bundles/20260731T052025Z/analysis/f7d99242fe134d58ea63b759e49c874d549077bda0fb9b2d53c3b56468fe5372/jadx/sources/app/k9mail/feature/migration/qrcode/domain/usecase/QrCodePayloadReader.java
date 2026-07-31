package app.k9mail.feature.migration.qrcode.domain.usecase;

import app.k9mail.feature.migration.qrcode.payload.QrCodePayloadMapper;
import app.k9mail.feature.migration.qrcode.payload.QrCodePayloadParser;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class QrCodePayloadReader {
    public final QrCodePayloadParser parser;

    static {
        int i = QrCodePayloadMapper.$r8$clinit;
    }

    public QrCodePayloadReader(QrCodePayloadParser qrCodePayloadParser, QrCodePayloadMapper qrCodePayloadMapper) {
        this.parser = qrCodePayloadParser;
    }
}
