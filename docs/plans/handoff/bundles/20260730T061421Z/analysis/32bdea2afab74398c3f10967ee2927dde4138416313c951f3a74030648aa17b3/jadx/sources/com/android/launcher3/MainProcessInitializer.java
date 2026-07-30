package com.android.launcher3;

import android.content.Context;
import b.l.W;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.graphics.IconShape;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.systemui.shared.R;
import java.util.Comparator;
import java.util.Iterator;

/* loaded from: classes.dex */
public class MainProcessInitializer implements ResourceBasedOverride {
    public static void initialize(Context context) {
        ((MainProcessInitializer) W.getObject(MainProcessInitializer.class, context, R.string.main_process_initializer_class)).init(context);
    }

    public void init(Context context) {
        FileLog.setDir(context.getApplicationContext().getFilesDir());
        synchronized (FeatureFlags.sDebugFlags) {
            Iterator it = FeatureFlags.sDebugFlags.iterator();
            while (it.hasNext()) {
                ((FeatureFlags.DebugFlag) it.next()).initialize(context);
            }
            FeatureFlags.sDebugFlags.sort(new Comparator() { // from class: c.a.a.G0.a
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int compareToIgnoreCase;
                    compareToIgnoreCase = ((FeatureFlags.DebugFlag) obj).key.compareToIgnoreCase(((FeatureFlags.DebugFlag) obj2).key);
                    return compareToIgnoreCase;
                }
            });
        }
        SessionCommitReceiver.applyDefaultUserPrefs(context);
        IconShape.init(context);
    }
}
