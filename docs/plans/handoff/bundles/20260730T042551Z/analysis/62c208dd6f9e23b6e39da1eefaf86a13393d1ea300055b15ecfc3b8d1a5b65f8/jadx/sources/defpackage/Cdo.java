package defpackage;

import com.facebook.internal.instrument.InstrumentData;
import com.facebook.internal.instrument.anrreport.ANRHandler;
import java.io.File;
import java.util.Comparator;

/* renamed from: do, reason: invalid class name */
/* loaded from: classes.dex */
public final /* synthetic */ class Cdo implements Comparator {

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f12546for;

    public /* synthetic */ Cdo(int i) {
        this.f12546for = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int m5468sendANRReports$lambda2;
        switch (this.f12546for) {
            case 0:
                m5468sendANRReports$lambda2 = ANRHandler.m5468sendANRReports$lambda2((InstrumentData) obj, (InstrumentData) obj2);
                return m5468sendANRReports$lambda2;
            default:
                return Long.compare(((File) obj2).lastModified(), ((File) obj).lastModified());
        }
    }
}
