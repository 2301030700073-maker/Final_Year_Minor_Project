package com.android.launcher3.logging;

import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import java.util.ArrayList;

/* loaded from: classes.dex */
public interface StatsLogUtils$LogContainerProvider {
    void fillInLogContainerData(ItemInfo itemInfo, LauncherLogProto$Target launcherLogProto$Target, ArrayList arrayList);
}
