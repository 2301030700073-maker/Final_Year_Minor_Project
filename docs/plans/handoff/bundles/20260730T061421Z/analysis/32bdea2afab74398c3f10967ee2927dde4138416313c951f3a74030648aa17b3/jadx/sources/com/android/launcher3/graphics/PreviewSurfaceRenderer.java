package com.android.launcher3.graphics;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Bundle;
import android.os.IBinder;
import android.view.Display;
import android.view.SurfaceControlViewHost;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.graphics.PreviewSurfaceRenderer;
import com.android.launcher3.util.Executors;
import com.android.systemui.shared.system.SurfaceViewRequestUtils;

/* loaded from: classes.dex */
public class PreviewSurfaceRenderer implements IBinder.DeathRecipient {
    public final Context mContext;
    public final Display mDisplay;
    public final int mHeight;
    public final IBinder mHostToken;
    public final InvariantDeviceProfile mIdp;
    public SurfaceControlViewHost mSurfaceControlViewHost;
    public final int mWidth;

    public PreviewSurfaceRenderer(Context context, Bundle bundle) {
        this.mContext = context;
        String string = bundle.getString("name");
        bundle.remove("name");
        this.mIdp = new InvariantDeviceProfile(context, string == null ? InvariantDeviceProfile.getCurrentGridName(context) : string);
        this.mHostToken = bundle.getBinder(SurfaceViewRequestUtils.KEY_HOST_TOKEN);
        this.mWidth = bundle.getInt("width");
        this.mHeight = bundle.getInt("height");
        this.mDisplay = ((DisplayManager) context.getSystemService("display")).getDisplay(bundle.getInt(SurfaceViewRequestUtils.KEY_DISPLAY_ID));
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        if (this.mSurfaceControlViewHost != null) {
            Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: c.a.a.J0.f
                @Override // java.lang.Runnable
                public final void run() {
                    PreviewSurfaceRenderer previewSurfaceRenderer = PreviewSurfaceRenderer.this;
                    previewSurfaceRenderer.mSurfaceControlViewHost.release();
                    previewSurfaceRenderer.mSurfaceControlViewHost = null;
                }
            });
        }
        this.mHostToken.unlinkToDeath(this, 0);
    }
}
