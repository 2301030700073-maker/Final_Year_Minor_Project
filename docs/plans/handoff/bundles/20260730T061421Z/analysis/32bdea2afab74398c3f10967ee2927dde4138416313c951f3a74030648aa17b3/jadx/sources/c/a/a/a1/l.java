package c.a.a.a1;

import android.content.ComponentName;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.IntSparseArrayMap;
import com.android.launcher3.util.ItemInfoMatcher;

/* loaded from: classes.dex */
public final /* synthetic */ class l implements ItemInfoMatcher {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ IntSparseArrayMap f1777a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Boolean f1778b;

    public /* synthetic */ l(IntSparseArrayMap intSparseArrayMap, Boolean bool) {
        this.f1777a = intSparseArrayMap;
        this.f1778b = bool;
    }

    @Override // com.android.launcher3.util.ItemInfoMatcher
    public final boolean matches(ItemInfo itemInfo, ComponentName componentName) {
        return ((Boolean) this.f1777a.get(itemInfo.id, this.f1778b)).booleanValue();
    }
}
