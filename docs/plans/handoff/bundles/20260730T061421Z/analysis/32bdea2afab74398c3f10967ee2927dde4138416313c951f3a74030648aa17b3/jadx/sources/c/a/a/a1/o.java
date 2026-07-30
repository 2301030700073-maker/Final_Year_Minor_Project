package c.a.a.a1;

import android.content.ComponentName;
import android.os.UserHandle;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.ItemInfoMatcher;

/* loaded from: classes.dex */
public final /* synthetic */ class o implements ItemInfoMatcher {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ UserHandle f1782a;

    public /* synthetic */ o(UserHandle userHandle) {
        this.f1782a = userHandle;
    }

    @Override // com.android.launcher3.util.ItemInfoMatcher
    public final boolean matches(ItemInfo itemInfo, ComponentName componentName) {
        return itemInfo.user.equals(this.f1782a);
    }
}
