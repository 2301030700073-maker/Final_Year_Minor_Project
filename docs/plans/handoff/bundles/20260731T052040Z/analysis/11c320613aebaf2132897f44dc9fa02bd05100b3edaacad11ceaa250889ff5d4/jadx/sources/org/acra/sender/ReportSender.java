package org.acra.sender;

import android.content.Context;
import android.os.Bundle;
import org.acra.data.CrashReportData;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface ReportSender {
    void send(Context context, CrashReportData crashReportData, Bundle bundle);
}
