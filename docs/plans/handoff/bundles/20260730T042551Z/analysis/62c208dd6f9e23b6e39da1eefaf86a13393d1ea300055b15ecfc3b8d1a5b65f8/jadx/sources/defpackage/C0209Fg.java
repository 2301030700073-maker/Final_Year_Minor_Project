package defpackage;

import com.facebook.GraphRequest;
import com.facebook.internal.instrument.ExceptionAnalyzer;
import com.facebook.internal.instrument.InstrumentData;
import com.facebook.internal.instrument.anrreport.ANRHandler;
import com.facebook.login.DeviceAuthDialog;
import java.util.List;

/* renamed from: Fg, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0209Fg implements GraphRequest.Cif {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f1081do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f1082do;

    public /* synthetic */ C0209Fg(Object obj, int i) {
        this.f1081do = i;
        this.f1082do = obj;
    }

    @Override // com.facebook.GraphRequest.Cif
    /* renamed from: if */
    public final void mo78if(C0346Ll c0346Ll) {
        int i = this.f1081do;
        Object obj = this.f1082do;
        switch (i) {
            case 0:
                ExceptionAnalyzer.m5451sendExceptionAnalysisReports$lambda1((InstrumentData) obj, c0346Ll);
                break;
            case 1:
                ANRHandler.m5469sendANRReports$lambda5((List) obj, c0346Ll);
                break;
            default:
                DeviceAuthDialog.m5489new((DeviceAuthDialog) obj, c0346Ll);
                break;
        }
    }
}
