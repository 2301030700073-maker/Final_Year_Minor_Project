package c.a.a.a1;

import android.content.ComponentName;
import android.os.UserHandle;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.ItemInfoMatcher;
import java.util.HashSet;

/* loaded from: classes.dex */
public final /* synthetic */ class h implements ItemInfoMatcher {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ HashSet f1770a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ UserHandle f1771b;

    public /* synthetic */ h(HashSet hashSet, UserHandle userHandle) {
        this.f1770a = hashSet;
        this.f1771b = userHandle;
    }

    @Override // com.android.launcher3.util.ItemInfoMatcher
    public final boolean matches(ItemInfo itemInfo, ComponentName componentName) {
        return this.f1770a.contains(componentName.getPackageName()) && itemInfo.user.equals(this.f1771b);
    }
}
