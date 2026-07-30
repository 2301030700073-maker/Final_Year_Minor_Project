package defpackage;

import com.facebook.internal.instrument.errorreport.ErrorReportData;
import com.facebook.internal.instrument.errorreport.ErrorReportHandler;
import java.io.File;
import java.nio.charset.Charset;
import java.util.Comparator;

/* renamed from: jg, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C3166jg implements Comparator {

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f13744for;

    public /* synthetic */ C3166jg(int i) {
        this.f13744for = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int m5478sendErrorReports$lambda0;
        switch (this.f13744for) {
            case 0:
                m5478sendErrorReports$lambda0 = ErrorReportHandler.m5478sendErrorReports$lambda0((ErrorReportData) obj, (ErrorReportData) obj2);
                return m5478sendErrorReports$lambda0;
            default:
                Charset charset = C0643Zb.f4873do;
                String name = ((File) obj).getName();
                int i = C0643Zb.f4869do;
                return name.substring(0, i).compareTo(((File) obj2).getName().substring(0, i));
        }
    }
}
