package c.b.a.b.b.m;

import android.annotation.TargetApi;
import android.content.Context;
import com.android.launcher3.BaseDraggingActivity;
import com.android.quickstep.ImageActionsApi;
import java.util.function.Supplier;

@TargetApi(29)
/* loaded from: classes.dex */
public final class n extends ImageActionsApi {

    /* renamed from: a, reason: collision with root package name */
    public final BaseDraggingActivity f2723a;

    public n(Context context, Supplier supplier, BaseDraggingActivity baseDraggingActivity) {
        super(context, supplier);
        this.f2723a = baseDraggingActivity;
    }
}
