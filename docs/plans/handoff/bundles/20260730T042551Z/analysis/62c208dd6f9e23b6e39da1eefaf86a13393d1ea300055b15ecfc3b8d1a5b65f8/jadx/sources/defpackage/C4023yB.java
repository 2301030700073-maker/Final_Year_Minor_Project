package defpackage;

import android.os.Build;
import androidx.work.Cdo;
import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: yB, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C4023yB {

    /* renamed from: do, reason: not valid java name */
    public static final /* synthetic */ int f16693do = 0;

    static {
        AbstractC0614Xq.m2870try("Schedulers");
    }

    /* renamed from: do, reason: not valid java name */
    public static void m8704do(Cdo cdo, WorkDatabase workDatabase, List<InterfaceC3846vB> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        UM mo4729final = workDatabase.mo4729final();
        workDatabase.m8560for();
        try {
            int i = Build.VERSION.SDK_INT;
            int i2 = cdo.f8141for;
            if (i == 23) {
                i2 /= 2;
            }
            VM vm = (VM) mo4729final;
            ArrayList m2637for = vm.m2637for(i2);
            ArrayList m2639if = vm.m2639if();
            if (m2637for.size() > 0) {
                long currentTimeMillis = System.currentTimeMillis();
                Iterator it = m2637for.iterator();
                while (it.hasNext()) {
                    vm.m2631catch(currentTimeMillis, ((TM) it.next()).f3655do);
                }
            }
            workDatabase.m8561goto();
            workDatabase.m8557case();
            if (m2637for.size() > 0) {
                TM[] tmArr = (TM[]) m2637for.toArray(new TM[m2637for.size()]);
                for (InterfaceC3846vB interfaceC3846vB : list) {
                    if (interfaceC3846vB.mo1457if()) {
                        interfaceC3846vB.mo1455case(tmArr);
                    }
                }
            }
            if (m2639if.size() > 0) {
                TM[] tmArr2 = (TM[]) m2639if.toArray(new TM[m2639if.size()]);
                for (InterfaceC3846vB interfaceC3846vB2 : list) {
                    if (!interfaceC3846vB2.mo1457if()) {
                        interfaceC3846vB2.mo1455case(tmArr2);
                    }
                }
            }
        } catch (Throwable th) {
            workDatabase.m8557case();
            throw th;
        }
    }
}
