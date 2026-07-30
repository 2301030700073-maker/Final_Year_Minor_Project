package com.android.quickstep.logging;

import android.content.Context;
import com.android.launcher3.appprediction.PredictionUiStateManager;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class UserEventDispatcherAppPredictionExtension extends UserEventDispatcherExtension {
    public static final int ALL_APPS_PREDICTION_TIPS = 2;
    public static final String TAG = "UserEventDispatcher";

    public UserEventDispatcherAppPredictionExtension(Context context) {
        super(context);
    }

    @Override // com.android.launcher3.logging.UserEventDispatcher
    public void onFillInLogContainerData(ItemInfo itemInfo, LauncherLogProto$Target launcherLogProto$Target, ArrayList arrayList) {
        PredictionUiStateManager.fillInPredictedRank(itemInfo, launcherLogProto$Target);
    }
}
