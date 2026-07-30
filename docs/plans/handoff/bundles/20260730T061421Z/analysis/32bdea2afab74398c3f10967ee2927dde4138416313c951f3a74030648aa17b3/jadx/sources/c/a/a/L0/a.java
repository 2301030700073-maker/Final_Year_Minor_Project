package c.a.a.L0;

import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import java.util.function.BiFunction;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements BiFunction {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ a f1441a = new a();

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return ((ActivityInfo) obj).loadUnbadgedIcon((PackageManager) obj2);
    }
}
