package c.b.a.b.b.l;

import android.content.Context;
import android.content.pm.ShortcutInfo;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.dragndrop.BaseItemDragListener;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.icons.LauncherIcons;
import com.android.launcher3.icons.ShortcutCachingLogic;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import com.android.launcher3.widget.PendingItemDragHelper;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class X extends BaseItemDragListener {

    /* renamed from: a, reason: collision with root package name */
    public final Context f2649a;

    /* renamed from: b, reason: collision with root package name */
    public final ComponentKey f2650b;

    /* renamed from: c, reason: collision with root package name */
    public final WorkspaceItemInfo f2651c;

    /* renamed from: d, reason: collision with root package name */
    public final ShortcutInfo f2652d;
    public final BitmapInfo e;

    public X(Context context, ComponentKey componentKey, ShortcutInfo shortcutInfo, Rect rect) {
        super(rect, rect.width(), rect.width());
        BitmapInfo bitmapInfo;
        this.f2649a = context;
        this.f2650b = componentKey;
        this.f2652d = shortcutInfo;
        LauncherIcons obtain = LauncherIcons.obtain(context);
        try {
            Drawable icon = ShortcutCachingLogic.getIcon(context, shortcutInfo, LauncherAppState.getIDP(context).fillResIconDpi);
            if (icon == null) {
                bitmapInfo = BitmapInfo.LOW_RES_INFO;
                obtain.recycle();
            } else {
                BitmapInfo bitmapInfo2 = new BitmapInfo(obtain.createScaledBitmapWithoutShadow(icon, 0), b.l.W.getColorAccent(context));
                obtain.recycle();
                bitmapInfo = bitmapInfo2;
            }
            this.e = bitmapInfo;
            WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo(shortcutInfo, context);
            this.f2651c = workspaceItemInfo;
            workspaceItemInfo.bitmap = this.e;
        } catch (Throwable th) {
            try {
                obtain.recycle();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // com.android.launcher3.dragndrop.BaseItemDragListener
    public PendingItemDragHelper createDragHelper() {
        View view = new View(this.mLauncher);
        ComponentKey componentKey = this.f2650b;
        view.setTag(new PendingAddShortcutInfo(new W(this, componentKey.componentName, componentKey.user)));
        return new PendingItemDragHelper(view);
    }

    @Override // com.android.launcher3.logging.StatsLogUtils$LogContainerProvider
    public void fillInLogContainerData(ItemInfo itemInfo, LauncherLogProto$Target launcherLogProto$Target, ArrayList arrayList) {
    }
}
