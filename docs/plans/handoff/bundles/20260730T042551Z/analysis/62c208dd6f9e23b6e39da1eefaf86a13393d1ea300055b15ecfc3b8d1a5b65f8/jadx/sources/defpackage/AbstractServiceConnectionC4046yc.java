package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import defpackage.InterfaceC0325Km;

/* renamed from: yc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractServiceConnectionC4046yc implements ServiceConnection {
    private Context mApplicationContext;

    /* renamed from: yc$do, reason: invalid class name */
    public class Cdo extends C3869vc {
        public Cdo(InterfaceC0325Km interfaceC0325Km, ComponentName componentName) {
            super(interfaceC0325Km, componentName);
        }
    }

    public Context getApplicationContext() {
        return this.mApplicationContext;
    }

    public abstract void onCustomTabsServiceConnected(ComponentName componentName, C3869vc c3869vc);

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        InterfaceC0325Km c0002do;
        if (this.mApplicationContext == null) {
            throw new IllegalStateException("Custom Tabs Service connected before an applicationcontext has been provided.");
        }
        int i = InterfaceC0325Km.Cdo.f1878for;
        if (iBinder == null) {
            c0002do = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface(InterfaceC0325Km.f1877if);
            c0002do = (queryLocalInterface == null || !(queryLocalInterface instanceof InterfaceC0325Km)) ? new InterfaceC0325Km.Cdo.C0002do(iBinder) : (InterfaceC0325Km) queryLocalInterface;
        }
        onCustomTabsServiceConnected(componentName, new Cdo(c0002do, componentName));
    }

    public void setApplicationContext(Context context) {
        this.mApplicationContext = context;
    }
}
