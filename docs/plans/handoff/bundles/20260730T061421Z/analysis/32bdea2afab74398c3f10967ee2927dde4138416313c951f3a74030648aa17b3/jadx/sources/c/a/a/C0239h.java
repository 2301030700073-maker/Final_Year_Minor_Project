package c.a.a;

import android.content.Context;
import com.android.launcher3.util.UiThreadHelper;
import com.android.quickstep.SystemUiProxy;

/* renamed from: c.a.a.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0239h implements UiThreadHelper.AsyncCommand {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ C0239h f1863a = new C0239h();

    @Override // com.android.launcher3.util.UiThreadHelper.AsyncCommand
    public final void execute(Context context, int i, int i2) {
        ((SystemUiProxy) SystemUiProxy.INSTANCE.b(context)).setBackButtonAlpha(Float.intBitsToFloat(i), r3 != 0);
    }
}
