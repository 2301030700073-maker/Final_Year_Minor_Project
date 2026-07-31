package org.acra.sender;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import org.acra.ACRA;
import org.acra.ErrorReporter;
import org.acra.ReportField;
import org.acra.data.CrashReportData;
import org.schabi.newpipe.R;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.UserAction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NullSender implements ReportSender {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ NullSender(int i) {
        this.$r8$classId = i;
    }

    public final void send(Context context, CrashReportData crashReportData) {
        switch (this.$r8$classId) {
            case 0:
                ErrorReporter errorReporter = ACRA.errorReporter;
                Log.w("ACRA", context.getPackageName() + " reports will NOT be sent - no valid ReportSender was found!");
                break;
            default:
                ReportField reportField = ReportField.STACK_TRACE;
                reportField.getClass();
                ErrorInfo errorInfo = new ErrorInfo(new String[]{crashReportData.content.optString(reportField.toString())}, UserAction.UI_ERROR, "ACRA report", (Integer) null, R.string.app_ui_crash);
                ErrorUtil.Companion.getClass();
                ErrorUtil.Companion.openActivity(context, errorInfo);
                break;
        }
    }

    @Override // org.acra.sender.ReportSender
    public final void send(Context context, CrashReportData crashReportData, Bundle bundle) {
        switch (this.$r8$classId) {
            case 0:
                send(context, crashReportData);
                break;
            default:
                send(context, crashReportData);
                break;
        }
    }
}
