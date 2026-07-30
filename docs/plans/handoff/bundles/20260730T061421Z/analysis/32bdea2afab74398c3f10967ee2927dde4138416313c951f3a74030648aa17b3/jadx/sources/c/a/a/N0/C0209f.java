package c.a.a.N0;

import com.android.launcher3.LauncherModel;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.data.AppInfo;

/* renamed from: c.a.a.N0.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0209f implements LauncherModel.CallbackTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AppInfo[] f1521a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1522b;

    public /* synthetic */ C0209f(AppInfo[] appInfoArr, int i) {
        this.f1521a = appInfoArr;
        this.f1522b = i;
    }

    @Override // com.android.launcher3.LauncherModel.CallbackTask
    public final void execute(BgDataModel.Callbacks callbacks) {
        callbacks.bindAllApplications(this.f1521a, this.f1522b);
    }
}
