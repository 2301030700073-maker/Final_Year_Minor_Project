package c.b.a.b.b.l.Y;

import android.content.Context;
import android.content.ContextWrapper;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BaseDragLayer;

/* loaded from: classes.dex */
public class g extends ContextWrapper implements ActivityContext {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h f2658a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(h hVar, Context context) {
        super(context);
        this.f2658a = hVar;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public DeviceProfile getDeviceProfile() {
        return this.f2658a.f2659a.getDeviceProfile();
    }

    @Override // com.android.launcher3.views.ActivityContext
    public BaseDragLayer getDragLayer() {
        return this.f2658a.m;
    }
}
