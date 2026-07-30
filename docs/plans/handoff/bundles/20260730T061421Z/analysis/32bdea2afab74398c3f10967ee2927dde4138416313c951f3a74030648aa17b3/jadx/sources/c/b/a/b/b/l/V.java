package c.b.a.b.b.l;

import android.content.pm.LauncherActivityInfo;
import android.graphics.Rect;
import android.net.Uri;
import android.view.View;
import com.android.launcher3.Launcher;
import com.android.launcher3.dragndrop.BaseItemDragListener;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.widget.PendingItemDragHelper;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class V extends BaseItemDragListener {

    /* renamed from: a, reason: collision with root package name */
    public final LauncherActivityInfo f2646a;

    /* renamed from: b, reason: collision with root package name */
    public final Uri f2647b;

    public V(LauncherActivityInfo launcherActivityInfo, Rect rect, Uri uri) {
        super(rect, rect.width(), rect.width());
        this.f2646a = launcherActivityInfo;
        this.f2647b = uri;
    }

    @Override // com.android.launcher3.dragndrop.BaseItemDragListener
    public PendingItemDragHelper createDragHelper() {
        Launcher launcher = this.mLauncher;
        LauncherActivityInfo launcherActivityInfo = this.f2646a;
        AppInfo appInfo = new AppInfo(launcher, launcherActivityInfo, launcherActivityInfo.getUser());
        U u = new U(this, new T(this, this.f2646a, appInfo), appInfo);
        View view = new View(this.mLauncher);
        view.setTag(u);
        return new PendingItemDragHelper(view);
    }

    @Override // com.android.launcher3.logging.StatsLogUtils$LogContainerProvider
    public void fillInLogContainerData(ItemInfo itemInfo, LauncherLogProto$Target launcherLogProto$Target, ArrayList arrayList) {
        arrayList.add(LoggerUtils.newContainerTarget(8));
    }
}
