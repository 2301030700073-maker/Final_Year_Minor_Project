package defpackage;

import com.facebook.internal.instrument.InstrumentData;
import com.facebook.internal.instrument.crashreport.CrashHandler;
import defpackage.AbstractC0533Ub;
import java.util.Comparator;

/* renamed from: zb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C4104zb implements Comparator {

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f16921for;

    public /* synthetic */ C4104zb(int i) {
        this.f16921for = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int m5472sendExceptionReports$lambda2;
        switch (this.f16921for) {
            case 0:
                m5472sendExceptionReports$lambda2 = CrashHandler.Companion.m5472sendExceptionReports$lambda2((InstrumentData) obj, (InstrumentData) obj2);
                return m5472sendExceptionReports$lambda2;
            default:
                return ((AbstractC0533Ub.Cfor) obj).mo2451do().compareTo(((AbstractC0533Ub.Cfor) obj2).mo2451do());
        }
    }
}
