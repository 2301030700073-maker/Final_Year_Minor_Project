package c.a.a.Z0;

import android.content.Context;
import com.android.launcher3.util.UiThreadHelper;
import com.android.quickstep.SystemUiProxy;

/* loaded from: classes.dex */
public final /* synthetic */ class f implements UiThreadHelper.AsyncCommand {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ f f1725a = new f();

    @Override // com.android.launcher3.util.UiThreadHelper.AsyncCommand
    public final void execute(Context context, int i, int i2) {
        ((SystemUiProxy) SystemUiProxy.INSTANCE.b(context)).setShelfHeight(r2 != 0, i2);
    }
}
