package c.a.a.a1;

import android.content.ComponentName;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.util.ItemInfoMatcher;
import java.util.HashSet;

/* loaded from: classes.dex */
public final /* synthetic */ class n implements ItemInfoMatcher {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ HashSet f1781a;

    @Override // com.android.launcher3.util.ItemInfoMatcher
    public final boolean matches(ItemInfo itemInfo, ComponentName componentName) {
        return itemInfo.itemType == 6 && this.f1781a.contains(ShortcutKey.fromIntent(itemInfo.getIntent(), itemInfo.user));
    }
}
