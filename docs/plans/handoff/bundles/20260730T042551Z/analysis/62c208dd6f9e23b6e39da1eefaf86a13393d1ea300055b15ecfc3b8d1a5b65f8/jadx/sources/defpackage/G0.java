package defpackage;

import com.facebook.appevents.AnalyticsUserIDStore;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver;

/* loaded from: classes.dex */
public final /* synthetic */ class G0 implements Runnable {

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f1114for;

    public /* synthetic */ G0(int i) {
        this.f1114for = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1114for) {
            case 0:
                AnalyticsUserIDStore.m5299initStore$lambda0();
                break;
            default:
                int i = AlarmManagerSchedulerBroadcastReceiver.f9486do;
                break;
        }
    }
}
