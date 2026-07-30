package a.a.a.a;

import android.os.IBinder;
import android.support.v4.os.IResultReceiver;

/* loaded from: classes.dex */
public class a implements IResultReceiver {

    /* renamed from: a, reason: collision with root package name */
    public IBinder f0a;

    public a(IBinder iBinder) {
        this.f0a = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f0a;
    }
}
