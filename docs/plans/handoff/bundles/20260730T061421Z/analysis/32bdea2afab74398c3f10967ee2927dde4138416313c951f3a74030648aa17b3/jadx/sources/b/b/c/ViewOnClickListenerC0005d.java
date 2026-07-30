package b.b.c;

import android.os.Message;
import android.view.View;

/* renamed from: b.b.c.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class ViewOnClickListenerC0005d implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0013l f291a;

    public ViewOnClickListenerC0005d(C0013l c0013l) {
        this.f291a = c0013l;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Message obtain;
        Message message;
        Message message2;
        Message message3;
        C0013l c0013l = this.f291a;
        if (view != c0013l.o || (message3 = c0013l.q) == null) {
            C0013l c0013l2 = this.f291a;
            if (view != c0013l2.s || (message2 = c0013l2.u) == null) {
                C0013l c0013l3 = this.f291a;
                obtain = (view != c0013l3.w || (message = c0013l3.y) == null) ? null : Message.obtain(message);
            } else {
                obtain = Message.obtain(message2);
            }
        } else {
            obtain = Message.obtain(message3);
        }
        if (obtain != null) {
            obtain.sendToTarget();
        }
        C0013l c0013l4 = this.f291a;
        c0013l4.R.obtainMessage(1, c0013l4.f307b).sendToTarget();
    }
}
