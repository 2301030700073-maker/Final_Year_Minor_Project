package androidx.glance.session;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.PowerManager;
import androidx.room.Room;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class IdleEventBroadcastReceiver extends BroadcastReceiver {
    public static final List events;
    public static final IntentFilter filter;
    public final KTypeImpl$arguments$2 onIdle;

    static {
        List listOf = Room.listOf((Object[]) new String[]{"android.os.action.DEVICE_IDLE_MODE_CHANGED", "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED", "android.os.action.LOW_POWER_STANDBY_ENABLED_CHANGED"});
        events = listOf;
        IntentFilter intentFilter = new IntentFilter();
        Iterator it = listOf.iterator();
        while (it.hasNext()) {
            intentFilter.addAction((String) it.next());
        }
        filter = intentFilter;
    }

    public IdleEventBroadcastReceiver(KTypeImpl$arguments$2 kTypeImpl$arguments$2) {
        this.onIdle = kTypeImpl$arguments$2;
    }

    public final void checkIdleStatus$glance_release(Context context) {
        Object systemService = context.getSystemService("power");
        systemService.getClass();
        PowerManager powerManager = (PowerManager) systemService;
        boolean isIdle = Api23Impl.INSTANCE.isIdle(powerManager);
        if (Build.VERSION.SDK_INT >= 33) {
            isIdle = isIdle || Api33Impl.INSTANCE.isLightIdleOrLowPowerStandby(powerManager);
        }
        if (isIdle) {
            this.onIdle.invoke();
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (CollectionsKt.contains(events, intent.getAction())) {
            checkIdleStatus$glance_release(context);
        }
    }
}
