package c.b.a.b.b.m;

import android.view.View;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.popup.SystemShortcut;

/* loaded from: classes.dex */
public class q extends SystemShortcut {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ s f2727a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(s sVar, int i, int i2, BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo) {
        super(i, i2, baseDraggingActivity, itemInfo);
        this.f2727a = sVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f2727a.f2729a.b();
        SystemShortcut.dismissTaskMenuView(this.f2727a.f2730b.p);
    }
}
