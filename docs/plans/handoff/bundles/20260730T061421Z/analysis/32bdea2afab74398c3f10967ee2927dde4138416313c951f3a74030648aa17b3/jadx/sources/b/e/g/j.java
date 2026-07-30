package b.e.g;

import android.os.Handler;
import android.os.Message;
import java.util.Objects;

/* loaded from: classes.dex */
public class j implements Handler.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ o f726a;

    public j(o oVar) {
        this.f726a = oVar;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            o oVar = this.f726a;
            synchronized (oVar.f736a) {
                if (!oVar.f738c.hasMessages(1)) {
                    oVar.f737b.quit();
                    oVar.f737b = null;
                    oVar.f738c = null;
                }
            }
            return true;
        }
        if (i != 1) {
            return true;
        }
        o oVar2 = this.f726a;
        Runnable runnable = (Runnable) message.obj;
        Objects.requireNonNull(oVar2);
        runnable.run();
        synchronized (oVar2.f736a) {
            oVar2.f738c.removeMessages(0);
            oVar2.f738c.sendMessageDelayed(oVar2.f738c.obtainMessage(0), oVar2.f);
        }
        return true;
    }
}
