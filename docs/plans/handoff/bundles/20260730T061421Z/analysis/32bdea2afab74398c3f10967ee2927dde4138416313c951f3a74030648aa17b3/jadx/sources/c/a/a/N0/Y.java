package c.a.a.N0;

import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.model.WellbeingModel;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.popup.SystemShortcut;

/* loaded from: classes.dex */
public final /* synthetic */ class Y implements SystemShortcut.Factory {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ Y f1508a = new Y();

    @Override // com.android.launcher3.popup.SystemShortcut.Factory
    public final SystemShortcut getShortcut(BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo) {
        return WellbeingModel.e(baseDraggingActivity, itemInfo);
    }
}
