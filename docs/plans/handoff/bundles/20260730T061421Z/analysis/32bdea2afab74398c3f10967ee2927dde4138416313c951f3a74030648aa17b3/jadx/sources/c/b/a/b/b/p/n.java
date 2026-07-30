package c.b.a.b.b.p;

import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.android.systemui.shared.system.UniversalSmartspaceUtils;
import com.google.android.apps.nexuslauncher.smartspace.SmartspaceViewContainer;

/* loaded from: classes.dex */
public class n implements SurfaceHolder.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SurfaceView f2817a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SmartspaceViewContainer f2818b;

    public n(SmartspaceViewContainer smartspaceViewContainer, SurfaceView surfaceView) {
        this.f2818b = smartspaceViewContainer;
        this.f2817a = surfaceView;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        Log.d("SmartspaceViewContainer", "Created surface; handing the reins to SysUI");
        this.f2818b.getContext().sendBroadcast(UniversalSmartspaceUtils.createRequestSmartspaceIntent(this.f2817a));
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
    }
}
