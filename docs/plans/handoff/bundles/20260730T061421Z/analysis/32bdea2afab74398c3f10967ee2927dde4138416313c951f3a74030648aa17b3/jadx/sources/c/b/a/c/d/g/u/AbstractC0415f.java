package c.b.a.c.d.g.u;

import android.os.RemoteException;
import android.os.TransactionTooLargeException;
import com.google.android.gms.common.api.Status;

/* renamed from: c.b.a.c.d.g.u.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0415f {
    public AbstractC0415f(int i) {
    }

    public static Status a(RemoteException remoteException) {
        StringBuilder sb = new StringBuilder();
        if (remoteException instanceof TransactionTooLargeException) {
            sb.append("TransactionTooLargeException: ");
        }
        sb.append(remoteException.getLocalizedMessage());
        return new Status(8, sb.toString());
    }

    public abstract void b(Status status);

    public abstract void c(C0412c c0412c, boolean z);

    public abstract void d(C0418i c0418i);
}
