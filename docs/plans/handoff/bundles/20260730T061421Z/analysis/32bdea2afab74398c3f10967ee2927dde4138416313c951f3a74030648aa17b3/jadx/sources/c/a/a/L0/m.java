package c.a.a.L0;

import android.content.pm.LauncherActivityInfo;
import java.util.function.BiFunction;

/* loaded from: classes.dex */
public final /* synthetic */ class m implements BiFunction {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ m f1458a = new m();

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return ((LauncherActivityInfo) obj).getIcon(((Integer) obj2).intValue());
    }
}
