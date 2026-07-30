package c.b.a.b.b.n;

import android.content.Context;
import android.widget.FrameLayout;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.logging.StatsLogUtils$LogContainerProvider;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.userevent.nano.LauncherLogExtensions$TargetExtension;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class e extends FrameLayout implements StatsLogUtils$LogContainerProvider {

    /* renamed from: a, reason: collision with root package name */
    public final int f2744a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2745b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2746c;

    /* renamed from: d, reason: collision with root package name */
    public final int f2747d;

    public e(Context context, int i, int i2, int i3, int i4) {
        super(context);
        this.f2744a = i;
        this.f2745b = i2;
        this.f2746c = i3;
        this.f2747d = i4;
    }

    @Override // com.android.launcher3.logging.StatsLogUtils$LogContainerProvider
    public void fillInLogContainerData(ItemInfo itemInfo, LauncherLogProto$Target launcherLogProto$Target, ArrayList arrayList) {
        int i = this.f2744a;
        if (i >= 0) {
            launcherLogProto$Target.predictedRank = i;
            launcherLogProto$Target.gridX = this.f2747d;
        } else {
            launcherLogProto$Target.searchQueryLength = this.f2745b;
            LauncherLogExtensions$TargetExtension launcherLogExtensions$TargetExtension = new LauncherLogExtensions$TargetExtension();
            launcherLogProto$Target.extension = launcherLogExtensions$TargetExtension;
            launcherLogExtensions$TargetExtension.searchResultSource = this.f2746c;
            launcherLogProto$Target.gridX = this.f2747d;
        }
        arrayList.add(LoggerUtils.newContainerTarget(this.f2744a >= 0 ? 7 : 8));
    }
}
