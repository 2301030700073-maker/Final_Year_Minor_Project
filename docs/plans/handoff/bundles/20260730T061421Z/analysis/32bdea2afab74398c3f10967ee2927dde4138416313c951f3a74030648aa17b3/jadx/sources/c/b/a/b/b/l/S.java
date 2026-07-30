package c.b.a.b.b.l;

import android.graphics.Rect;
import android.view.View;
import com.android.launcher3.dragndrop.BaseItemDragListener;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import com.android.launcher3.widget.PendingItemDragHelper;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class S extends BaseItemDragListener {

    /* renamed from: a, reason: collision with root package name */
    public final AppInfo f2641a;

    public S(AppInfo appInfo, Rect rect) {
        super(rect, rect.width(), rect.width());
        this.f2641a = appInfo;
    }

    @Override // com.android.launcher3.dragndrop.BaseItemDragListener
    public PendingItemDragHelper createDragHelper() {
        AppInfo appInfo = this.f2641a;
        PendingAddShortcutInfo pendingAddShortcutInfo = new PendingAddShortcutInfo(new Q(this, appInfo.componentName, appInfo.user));
        View view = new View(this.mLauncher);
        view.setTag(pendingAddShortcutInfo);
        return new PendingItemDragHelper(view);
    }

    @Override // com.android.launcher3.logging.StatsLogUtils$LogContainerProvider
    public void fillInLogContainerData(ItemInfo itemInfo, LauncherLogProto$Target launcherLogProto$Target, ArrayList arrayList) {
    }
}
