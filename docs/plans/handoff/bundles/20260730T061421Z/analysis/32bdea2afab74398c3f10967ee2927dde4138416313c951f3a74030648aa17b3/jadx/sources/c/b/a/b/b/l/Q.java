package c.b.a.b.b.l;

import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import com.android.launcher3.FastBitmapDrawable;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pm.ShortcutConfigActivityInfo;

/* loaded from: classes.dex */
public class Q extends ShortcutConfigActivityInfo {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ S f2640a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Q(S s, ComponentName componentName, UserHandle userHandle) {
        super(componentName, userHandle);
        this.f2640a = s;
    }

    @Override // com.android.launcher3.pm.ShortcutConfigActivityInfo
    public WorkspaceItemInfo createWorkspaceItemInfo() {
        return this.f2640a.f2641a.makeWorkspaceItem();
    }

    @Override // com.android.launcher3.pm.ShortcutConfigActivityInfo, com.android.launcher3.icons.ComponentWithLabelAndIcon
    public Drawable getFullResIcon(IconCache iconCache) {
        return new FastBitmapDrawable(this.f2640a.f2641a.bitmap);
    }

    @Override // com.android.launcher3.icons.ComponentWithLabel
    public CharSequence getLabel(PackageManager packageManager) {
        return this.f2640a.f2641a.title;
    }
}
