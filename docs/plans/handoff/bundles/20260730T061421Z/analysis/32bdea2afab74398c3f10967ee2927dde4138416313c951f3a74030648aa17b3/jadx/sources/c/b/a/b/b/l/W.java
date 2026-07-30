package c.b.a.b.b.l;

import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import com.android.launcher3.FastBitmapDrawable;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pm.ShortcutConfigActivityInfo;

/* loaded from: classes.dex */
public class W extends ShortcutConfigActivityInfo {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ X f2648a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public W(X x, ComponentName componentName, UserHandle userHandle) {
        super(componentName, userHandle);
        this.f2648a = x;
    }

    @Override // com.android.launcher3.pm.ShortcutConfigActivityInfo
    public WorkspaceItemInfo createWorkspaceItemInfo() {
        LauncherModel launcherModel = LauncherAppState.getInstance(this.f2648a.f2649a).mModel;
        X x = this.f2648a;
        launcherModel.updateAndBindWorkspaceItem(x.f2651c, x.f2652d);
        return this.f2648a.f2651c;
    }

    @Override // com.android.launcher3.pm.ShortcutConfigActivityInfo, com.android.launcher3.icons.ComponentWithLabelAndIcon
    public Drawable getFullResIcon(IconCache iconCache) {
        return new FastBitmapDrawable(this.f2648a.e);
    }

    @Override // com.android.launcher3.pm.ShortcutConfigActivityInfo
    public int getItemType() {
        return this.f2648a.f2651c.itemType;
    }

    @Override // com.android.launcher3.icons.ComponentWithLabel
    public CharSequence getLabel(PackageManager packageManager) {
        return this.f2648a.f2651c.title;
    }

    @Override // com.android.launcher3.pm.ShortcutConfigActivityInfo
    public boolean isPersistable() {
        return this.f2648a.f2652d.isDeclaredInManifest();
    }
}
