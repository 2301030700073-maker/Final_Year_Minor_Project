package b.b.c;

import android.content.DialogInterface;
import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

/* renamed from: b.b.c.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class HandlerC0011j extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public WeakReference f305a;

    public HandlerC0011j(DialogInterface dialogInterface) {
        this.f305a = new WeakReference(dialogInterface);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        if (i == -3 || i == -2 || i == -1) {
            ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) this.f305a.get(), message.what);
        } else {
            if (i != 1) {
                return;
            }
            ((DialogInterface) message.obj).dismiss();
        }
    }
}
