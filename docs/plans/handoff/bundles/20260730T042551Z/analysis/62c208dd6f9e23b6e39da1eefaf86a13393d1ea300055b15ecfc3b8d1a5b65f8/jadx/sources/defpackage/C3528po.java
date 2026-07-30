package defpackage;

import com.facebook.internal.instrument.InstrumentUtility;
import com.facebook.internal.instrument.errorreport.ErrorReportHandler;
import java.io.File;
import java.io.FilenameFilter;

/* renamed from: po, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C3528po implements FilenameFilter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f14982do;

    public /* synthetic */ C3528po(int i) {
        this.f14982do = i;
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        boolean m5477listErrorReportFiles$lambda3;
        boolean m5462listExceptionAnalysisReportFiles$lambda2;
        switch (this.f14982do) {
            case 0:
                m5462listExceptionAnalysisReportFiles$lambda2 = InstrumentUtility.m5462listExceptionAnalysisReportFiles$lambda2(file, str);
                return m5462listExceptionAnalysisReportFiles$lambda2;
            default:
                m5477listErrorReportFiles$lambda3 = ErrorReportHandler.m5477listErrorReportFiles$lambda3(file, str);
                return m5477listErrorReportFiles$lambda3;
        }
    }
}
