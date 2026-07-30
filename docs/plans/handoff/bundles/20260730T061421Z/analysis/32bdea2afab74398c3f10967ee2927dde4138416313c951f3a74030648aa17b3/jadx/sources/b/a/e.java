package b.a;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import androidx.activity.result.IntentSenderRequest;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class e extends b.a.l.g {
    public final /* synthetic */ g f;

    public e(g gVar) {
        this.f = gVar;
    }

    @Override // b.a.l.g
    public void b(int i, b.a.l.j.b bVar, Object obj, b.e.b.c cVar) {
        g gVar = this.f;
        b.a.l.j.a b2 = bVar.b(gVar, obj);
        if (b2 != null) {
            new Handler(Looper.getMainLooper()).post(new c(this, i, b2));
            return;
        }
        Intent a2 = bVar.a(gVar, obj);
        if ("androidx.activity.result.contract.action.REQUEST_PERMISSIONS".equals(a2.getAction())) {
            String[] stringArrayExtra = a2.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
            if (stringArrayExtra == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (String str : stringArrayExtra) {
                if (this.f.checkPermission(str, Process.myPid(), Process.myUid()) != 0) {
                    arrayList.add(str);
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            b.e.b.b.j(gVar, (String[]) arrayList.toArray(new String[0]), i);
            return;
        }
        Bundle bundle = null;
        if (!"androidx.activity.result.contract.action.INTENT_SENDER_REQUEST".equals(a2.getAction())) {
            if (a2.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
                bundle = a2.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
            } else if (cVar != null) {
                throw null;
            }
            b.e.b.b.p(gVar, a2, i, bundle);
            return;
        }
        IntentSenderRequest intentSenderRequest = (IntentSenderRequest) a2.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
        try {
            IntentSender intentSender = intentSenderRequest.f21a;
            Intent intent = intentSenderRequest.f22b;
            int i2 = intentSenderRequest.f23c;
            int i3 = intentSenderRequest.f24d;
            if (cVar != null) {
                throw null;
            }
            b.e.b.b.q(gVar, intentSender, i, intent, i2, i3, 0, null);
        } catch (IntentSender.SendIntentException e) {
            new Handler(Looper.getMainLooper()).post(new d(this, i, e));
        }
    }
}
