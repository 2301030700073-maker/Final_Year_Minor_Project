package c.b.a.b.b.l.Y;

import android.graphics.Rect;
import android.view.View;
import com.android.launcher3.PendingAddItemInfo;
import com.android.launcher3.dragndrop.BaseItemDragListener;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.widget.PendingItemDragHelper;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class l extends BaseItemDragListener {

    /* renamed from: a, reason: collision with root package name */
    public final PendingAddItemInfo f2665a;

    public l(Rect rect, PendingAddItemInfo pendingAddItemInfo) {
        super(rect, rect.width(), rect.height());
        this.f2665a = pendingAddItemInfo;
    }

    @Override // com.android.launcher3.dragndrop.BaseItemDragListener
    public PendingItemDragHelper createDragHelper() {
        View view = new View(this.mLauncher);
        view.setTag(this.f2665a);
        return new PendingItemDragHelper(view);
    }

    @Override // com.android.launcher3.logging.StatsLogUtils$LogContainerProvider
    public void fillInLogContainerData(ItemInfo itemInfo, LauncherLogProto$Target launcherLogProto$Target, ArrayList arrayList) {
        arrayList.add(LoggerUtils.newContainerTarget(8));
    }
}
