package c.a.a;

import android.content.Context;
import com.android.launcher3.InvariantDeviceProfile;
import java.util.function.Consumer;

/* renamed from: c.a.a.z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0256z implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ InvariantDeviceProfile f1918a;

    public /* synthetic */ C0256z(InvariantDeviceProfile invariantDeviceProfile) {
        this.f1918a = invariantDeviceProfile;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f1918a.d((Context) obj);
    }
}
