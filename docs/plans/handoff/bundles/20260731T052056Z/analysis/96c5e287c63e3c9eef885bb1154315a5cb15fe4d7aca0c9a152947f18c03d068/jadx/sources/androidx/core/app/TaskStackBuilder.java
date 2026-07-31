package androidx.core.app;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TaskStackBuilder implements Iterable {
    public final ArrayList mIntents = new ArrayList();
    public final Context mSourceContext;

    public TaskStackBuilder(Context context) {
        this.mSourceContext = context;
    }

    public final void addParentStack(ComponentName componentName) {
        Context context = this.mSourceContext;
        ArrayList arrayList = this.mIntents;
        int size = arrayList.size();
        try {
            for (Intent parentActivityIntent = NavUtils.getParentActivityIntent(context, componentName); parentActivityIntent != null; parentActivityIntent = NavUtils.getParentActivityIntent(context, parentActivityIntent.getComponent())) {
                arrayList.add(size, parentActivityIntent);
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e);
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.mIntents.iterator();
    }

    public final void startActivities() {
        ArrayList arrayList = this.mIntents;
        if (arrayList.isEmpty()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("No intents added to TaskStackBuilder; cannot startActivities");
            return;
        }
        Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[0]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        this.mSourceContext.startActivities(intentArr, null);
    }
}
