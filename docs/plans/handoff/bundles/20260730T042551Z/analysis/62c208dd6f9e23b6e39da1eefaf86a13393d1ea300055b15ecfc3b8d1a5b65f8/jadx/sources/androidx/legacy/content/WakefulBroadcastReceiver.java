package androidx.legacy.content;

import android.content.BroadcastReceiver;
import android.os.PowerManager;
import android.util.SparseArray;

@Deprecated
/* loaded from: classes.dex */
public abstract class WakefulBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: do, reason: not valid java name */
    public static final SparseArray<PowerManager.WakeLock> f7057do = new SparseArray<>();

    /* renamed from: for, reason: not valid java name */
    public static int f7058for = 1;
}
