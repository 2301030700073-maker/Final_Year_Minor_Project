package com.google.android.apps.nexuslauncher;

import android.content.Context;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.android.launcher3.appprediction.PredictionAppTracker;
import com.android.launcher3.appprediction.PredictionUiStateManager;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class NexusPredictionAppTracker extends PredictionAppTracker {
    public NexusPredictionAppTracker(Context context) {
        super(context);
    }

    @Override // com.android.launcher3.appprediction.PredictionAppTracker
    public Bundle getAppPredictionContextExtras(PredictionUiStateManager.Client client) {
        if (client != PredictionUiStateManager.Client.HOME) {
            return null;
        }
        File file = new File(this.mContext.getFilesDir(), "reflection.engine");
        if (!file.exists()) {
            return null;
        }
        try {
            ParcelFileDescriptor open = ParcelFileDescriptor.open(file, 805306368);
            Bundle bundle = new Bundle();
            bundle.putParcelable("model", open);
            return bundle;
        } catch (IOException e) {
            Log.e("NexusPredictionAppTracker", "Failed to open model ParcelFileDescriptor", e);
            return null;
        }
    }
}
