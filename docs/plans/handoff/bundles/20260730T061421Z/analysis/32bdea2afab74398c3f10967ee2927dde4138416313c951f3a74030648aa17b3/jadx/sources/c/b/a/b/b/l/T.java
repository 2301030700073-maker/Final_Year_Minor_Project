package c.b.a.b.b.l;

import android.content.pm.LauncherActivityInfo;
import android.graphics.drawable.Drawable;
import com.android.launcher3.FastBitmapDrawable;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pm.ShortcutConfigActivityInfo;
import java.util.Objects;
import java.util.function.Supplier;

/* loaded from: classes.dex */
public class T extends ShortcutConfigActivityInfo.ShortcutConfigActivityInfoVO {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AppInfo f2642a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ V f2643b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public T(V v, LauncherActivityInfo launcherActivityInfo, AppInfo appInfo) {
        super(launcherActivityInfo);
        this.f2643b = v;
        this.f2642a = appInfo;
    }

    @Override // com.android.launcher3.pm.ShortcutConfigActivityInfo
    public WorkspaceItemInfo createWorkspaceItemInfo() {
        V v = this.f2643b;
        Launcher launcher = v.mLauncher;
        LauncherActivityInfo launcherActivityInfo = v.f2646a;
        final WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo(new AppInfo(launcher, launcherActivityInfo, launcherActivityInfo.getUser()));
        LauncherModel launcherModel = this.f2643b.mLauncher.mModel;
        Supplier supplier = new Supplier() { // from class: c.b.a.b.b.l.q
            @Override // java.util.function.Supplier
            public final Object get() {
                T t = T.this;
                WorkspaceItemInfo workspaceItemInfo2 = workspaceItemInfo;
                LauncherAppState.getInstance(t.f2643b.mLauncher).mIconCache.getTitleAndIcon(workspaceItemInfo2, false);
                return workspaceItemInfo2;
            }
        };
        Objects.requireNonNull(launcherModel);
        launcherModel.enqueueModelUpdateTask(new LauncherModel.AnonymousClass5(launcherModel, supplier));
        return workspaceItemInfo;
    }

    @Override // com.android.launcher3.pm.ShortcutConfigActivityInfo.ShortcutConfigActivityInfoVO, com.android.launcher3.pm.ShortcutConfigActivityInfo, com.android.launcher3.icons.ComponentWithLabelAndIcon
    public Drawable getFullResIcon(IconCache iconCache) {
        Drawable icon = iconCache.mIconProvider.getIcon(this.mInfo, iconCache.mIconDpi);
        if (this.f2642a.isDisabled()) {
            icon.mutate().setColorFilter(new FastBitmapDrawable(this.f2642a.bitmap).getColorFilter());
        }
        return icon;
    }

    @Override // com.android.launcher3.pm.ShortcutConfigActivityInfo
    public int getItemType() {
        return 0;
    }
}
