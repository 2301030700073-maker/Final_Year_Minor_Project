package c.b.a.d.a.a;

import android.annotation.TargetApi;
import android.graphics.Point;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.Window;
import android.view.WindowManager;
import com.android.quickstep.fallback.RecentsState;
import com.google.android.aidl.BaseStub;
import com.google.android.libraries.launcherclient.ILauncherOverlayCallback;

/* loaded from: classes.dex */
public class i extends BaseStub implements Handler.Callback, ILauncherOverlayCallback {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f3091a;

    /* renamed from: b, reason: collision with root package name */
    public j f3092b;

    /* renamed from: c, reason: collision with root package name */
    public WindowManager f3093c;

    /* renamed from: d, reason: collision with root package name */
    public int f3094d;
    public Window e;
    public boolean f;

    public i() {
        super("com.google.android.libraries.launcherclient.ILauncherOverlayCallback");
        this.f = false;
        this.f3091a = new Handler(Looper.getMainLooper(), this);
    }

    @TargetApi(17)
    public void a(j jVar) {
        this.f3092b = jVar;
        this.f3093c = jVar.f3095a.getWindowManager();
        Point point = new Point();
        this.f3093c.getDefaultDisplay().getRealSize(point);
        this.f3094d = -Math.max(point.x, point.y);
        this.e = jVar.f3095a.getWindow();
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        j jVar = this.f3092b;
        if (jVar == null) {
            return true;
        }
        int i = message.what;
        if (i == 2) {
            if ((jVar.m & 1) != 0) {
                float floatValue = ((Float) message.obj).floatValue();
                this.f3092b.f3096b.c(floatValue);
                if (floatValue <= RecentsState.NO_OFFSET) {
                    this.f3092b.f.a(0, "onScroll 0, overlay closed", RecentsState.NO_OFFSET);
                } else if (floatValue >= 1.0f) {
                    this.f3092b.f.a(0, "onScroll 1, overlay opened", RecentsState.NO_OFFSET);
                } else {
                    this.f3092b.f.a(1, "onScroll", floatValue);
                }
            }
            return true;
        }
        if (i != 3) {
            if (i != 4) {
                return false;
            }
            jVar.d(message.arg1);
            this.f3092b.f.a(2, "stateChanged", message.arg1);
            k kVar = this.f3092b.f3096b;
            if (kVar instanceof k) {
                kVar.b(message.arg1);
            }
            return true;
        }
        WindowManager.LayoutParams attributes = this.e.getAttributes();
        if (((Boolean) message.obj).booleanValue()) {
            attributes.x = this.f3094d;
            attributes.flags |= 512;
        } else {
            attributes.x = 0;
            attributes.flags &= -513;
        }
        this.f3093c.updateViewLayout(this.e.getDecorView(), attributes);
        return true;
    }
}
