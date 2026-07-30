package c.a.a.N0;

import com.android.launcher3.model.data.ItemInfo;
import java.util.Comparator;

/* loaded from: classes.dex */
public final /* synthetic */ class E implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1475a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1476b;

    public /* synthetic */ E(int i, int i2) {
        this.f1475a = i;
        this.f1476b = i2;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = this.f1475a;
        int i2 = this.f1476b;
        ItemInfo itemInfo = (ItemInfo) obj;
        ItemInfo itemInfo2 = (ItemInfo) obj2;
        int i3 = itemInfo.container;
        int i4 = itemInfo2.container;
        if (i3 != i4) {
            return Integer.compare(i3, i4);
        }
        if (i3 == -101) {
            return Integer.compare(itemInfo.screenId, itemInfo2.screenId);
        }
        if (i3 != -100) {
            return 0;
        }
        return Integer.compare((itemInfo.cellY * i2) + (itemInfo.screenId * i) + itemInfo.cellX, (itemInfo2.cellY * i2) + (itemInfo2.screenId * i) + itemInfo2.cellX);
    }
}
