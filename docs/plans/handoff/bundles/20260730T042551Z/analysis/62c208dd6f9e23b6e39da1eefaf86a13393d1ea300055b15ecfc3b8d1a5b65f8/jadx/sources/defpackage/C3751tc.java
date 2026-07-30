package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.os.RemoteException;

/* renamed from: tc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3751tc extends AbstractServiceConnectionC4046yc {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Context f15729do;

    public C3751tc(Context context) {
        this.f15729do = context;
    }

    @Override // defpackage.AbstractServiceConnectionC4046yc
    public final void onCustomTabsServiceConnected(ComponentName componentName, C3869vc c3869vc) {
        c3869vc.getClass();
        try {
            c3869vc.f16096do.mo1209synchronized(0L);
        } catch (RemoteException unused) {
        }
        this.f15729do.unbindService(this);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
