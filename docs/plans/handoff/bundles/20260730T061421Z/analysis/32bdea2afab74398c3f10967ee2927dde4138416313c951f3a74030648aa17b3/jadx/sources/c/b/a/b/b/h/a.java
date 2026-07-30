package c.b.a.b.b.h;

import android.annotation.TargetApi;
import com.android.systemui.shared.recents.ISystemUiProxy;
import java.util.function.Consumer;

@TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public final Consumer f2571a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f2572b = false;

    public a(Consumer consumer) {
        this.f2571a = consumer;
    }
}
