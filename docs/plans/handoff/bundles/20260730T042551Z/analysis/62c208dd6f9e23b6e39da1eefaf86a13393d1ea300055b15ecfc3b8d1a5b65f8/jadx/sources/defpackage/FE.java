package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.profileinstaller.Cfor;
import com.facebook.internal.FileLruCache;
import com.google.firebase.perf.metrics.AppStartTrace;
import com.google.firebase.perf.util.Timer;
import defpackage.C2684eI;
import defpackage.C3128j0;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* loaded from: classes.dex */
public final /* synthetic */ class FE implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f998do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f999for;

    public /* synthetic */ FE(Object obj, int i) {
        this.f999for = i;
        this.f998do = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f999for) {
            case 0:
                View view = (View) this.f998do;
                ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 0);
                return;
            case 1:
                Cfor.m4295if((Context) this.f998do, new ExecutorC3178js(2), Cfor.f7219do, false);
                return;
            case 2:
                FileLruCache.m5422postTrim$lambda3$lambda2((FileLruCache) this.f998do);
                return;
            case 3:
                OD od = (OD) this.f998do;
                synchronized (od.f2599do) {
                    SharedPreferences.Editor edit = od.f2597do.edit();
                    String str = od.f2598do;
                    StringBuilder sb = new StringBuilder();
                    Iterator<String> it = od.f2599do.iterator();
                    while (it.hasNext()) {
                        sb.append(it.next());
                        sb.append(od.f2601if);
                    }
                    edit.putString(str, sb.toString()).commit();
                }
                return;
            case 4:
                AppStartTrace appStartTrace = (AppStartTrace) this.f998do;
                Timer timer = AppStartTrace.f11925catch;
                appStartTrace.getClass();
                C2684eI.Cdo l = C2684eI.l();
                l.m6556static("_as");
                l.m6554public(appStartTrace.m6112for().f11971do);
                Timer m6112for = appStartTrace.m6112for();
                Timer timer2 = appStartTrace.f11950try;
                m6112for.getClass();
                l.m6555return(timer2.f11972if - m6112for.f11972if);
                ArrayList arrayList = new ArrayList(3);
                C2684eI.Cdo l2 = C2684eI.l();
                l2.m6556static("_astui");
                l2.m6554public(appStartTrace.m6112for().f11971do);
                Timer m6112for2 = appStartTrace.m6112for();
                Timer timer3 = appStartTrace.f11942for;
                m6112for2.getClass();
                l2.m6555return(timer3.f11972if - m6112for2.f11972if);
                arrayList.add(l2.m6305const());
                if (appStartTrace.f11947new != null) {
                    C2684eI.Cdo l3 = C2684eI.l();
                    l3.m6556static("_astfd");
                    l3.m6554public(appStartTrace.f11942for.f11971do);
                    Timer timer4 = appStartTrace.f11942for;
                    Timer timer5 = appStartTrace.f11947new;
                    timer4.getClass();
                    l3.m6555return(timer5.f11972if - timer4.f11972if);
                    arrayList.add(l3.m6305const());
                    C2684eI.Cdo l4 = C2684eI.l();
                    l4.m6556static("_asti");
                    l4.m6554public(appStartTrace.f11947new.f11971do);
                    Timer timer6 = appStartTrace.f11947new;
                    Timer timer7 = appStartTrace.f11950try;
                    timer6.getClass();
                    l4.m6555return(timer7.f11972if - timer6.f11972if);
                    arrayList.add(l4.m6305const());
                }
                l.m6307super();
                C2684eI.m6547protected((C2684eI) l.f12107if, arrayList);
                Hw m6119do = appStartTrace.f11936do.m6119do();
                l.m6307super();
                C2684eI.m6544implements((C2684eI) l.f12107if, m6119do);
                appStartTrace.f11931do.m66for(l.m6305const(), EnumC3601r2.FOREGROUND_BACKGROUND);
                return;
            default:
                C3128j0.Ctry ctry = (C3128j0.Ctry) this.f998do;
                Handler handler = C3128j0.f13617do;
                Objects.requireNonNull(ctry);
                C3128j0.m7020if(new C2784g0(ctry), Collections.emptyList());
                return;
        }
    }
}
