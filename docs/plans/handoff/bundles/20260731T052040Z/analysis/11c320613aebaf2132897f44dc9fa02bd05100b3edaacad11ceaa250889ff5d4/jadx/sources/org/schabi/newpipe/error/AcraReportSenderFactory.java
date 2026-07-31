package org.schabi.newpipe.error;

import android.content.Context;
import org.acra.config.CoreConfiguration;
import org.acra.sender.NullSender;
import org.acra.sender.ReportSender;
import org.acra.sender.ReportSenderFactory;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class AcraReportSenderFactory implements ReportSenderFactory {
    @Override // org.acra.sender.ReportSenderFactory
    public ReportSender create(Context context, CoreConfiguration coreConfiguration) {
        return new NullSender(1);
    }

    @Override // org.acra.sender.ReportSenderFactory, org.acra.plugins.Plugin
    public boolean enabled(CoreConfiguration coreConfiguration) {
        coreConfiguration.getClass();
        return true;
    }
}
