package c.a.a;

import android.os.CancellationSignal;
import com.android.launcher3.QuickstepAppTransitionManagerImpl;
import com.android.quickstep.util.RemoteAnimationProvider;

/* renamed from: c.a.a.a0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0230a0 implements CancellationSignal.OnCancelListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ QuickstepAppTransitionManagerImpl f1760a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RemoteAnimationProvider f1761b;

    public /* synthetic */ C0230a0(QuickstepAppTransitionManagerImpl quickstepAppTransitionManagerImpl, RemoteAnimationProvider remoteAnimationProvider) {
        this.f1760a = quickstepAppTransitionManagerImpl;
        this.f1761b = remoteAnimationProvider;
    }

    @Override // android.os.CancellationSignal.OnCancelListener
    public final void onCancel() {
        this.f1760a.b(this.f1761b);
    }
}
