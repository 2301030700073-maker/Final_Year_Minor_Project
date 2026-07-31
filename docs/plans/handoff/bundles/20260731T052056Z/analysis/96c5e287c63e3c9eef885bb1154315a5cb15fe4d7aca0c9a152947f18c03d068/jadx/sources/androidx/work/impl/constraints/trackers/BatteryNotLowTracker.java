package androidx.work.impl.constraints.trackers;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BatteryNotLowTracker extends BroadcastReceiverConstraintTracker {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ BatteryNotLowTracker(Context context, WorkManagerTaskExecutor workManagerTaskExecutor, int i) {
        super(context, workManagerTaskExecutor);
        this.$r8$classId = i;
    }

    @Override // androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker
    public final IntentFilter getIntentFilter() {
        switch (this.$r8$classId) {
            case 0:
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.BATTERY_OKAY");
                intentFilter.addAction("android.intent.action.BATTERY_LOW");
                return intentFilter;
            case 1:
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("android.os.action.CHARGING");
                intentFilter2.addAction("android.os.action.DISCHARGING");
                return intentFilter2;
            default:
                IntentFilter intentFilter3 = new IntentFilter();
                intentFilter3.addAction("android.intent.action.DEVICE_STORAGE_OK");
                intentFilter3.addAction("android.intent.action.DEVICE_STORAGE_LOW");
                return intentFilter3;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    @Override // androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker
    public final void onBroadcastReceive(Intent intent) {
        switch (this.$r8$classId) {
            case 0:
                if (intent.getAction() != null) {
                    Logger$LogcatLogger.get().debug(BatteryNotLowTrackerKt.TAG, "Received " + intent.getAction());
                    String action = intent.getAction();
                    if (action != null) {
                        int hashCode = action.hashCode();
                        if (hashCode == -1980154005) {
                            if (action.equals("android.intent.action.BATTERY_OKAY")) {
                                setState(Boolean.TRUE);
                                break;
                            }
                        } else if (hashCode == 490310653 && action.equals("android.intent.action.BATTERY_LOW")) {
                            setState(Boolean.FALSE);
                            break;
                        }
                    }
                }
                break;
            case 1:
                String action2 = intent.getAction();
                if (action2 != null) {
                    Logger$LogcatLogger.get().debug(BatteryChargingTrackerKt.TAG, "Received ".concat(action2));
                    switch (action2.hashCode()) {
                        case -1886648615:
                            if (action2.equals("android.intent.action.ACTION_POWER_DISCONNECTED")) {
                                setState(Boolean.FALSE);
                                break;
                            }
                            break;
                        case -54942926:
                            if (action2.equals("android.os.action.DISCHARGING")) {
                                setState(Boolean.FALSE);
                                break;
                            }
                            break;
                        case 948344062:
                            if (action2.equals("android.os.action.CHARGING")) {
                                setState(Boolean.TRUE);
                                break;
                            }
                            break;
                        case 1019184907:
                            if (action2.equals("android.intent.action.ACTION_POWER_CONNECTED")) {
                                setState(Boolean.TRUE);
                                break;
                            }
                            break;
                    }
                }
                break;
            default:
                if (intent.getAction() != null) {
                    Logger$LogcatLogger.get().debug(StorageNotLowTrackerKt.TAG, "Received " + intent.getAction());
                    String action3 = intent.getAction();
                    if (action3 != null) {
                        int hashCode2 = action3.hashCode();
                        if (hashCode2 == -1181163412) {
                            if (action3.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
                                setState(Boolean.FALSE);
                                break;
                            }
                        } else if (hashCode2 == -730838620 && action3.equals("android.intent.action.DEVICE_STORAGE_OK")) {
                            setState(Boolean.TRUE);
                            break;
                        }
                    }
                }
                break;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003d, code lost:
    
        if (r9.equals("android.intent.action.DEVICE_STORAGE_OK") == false) goto L20;
     */
    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readSystemState() {
        /*
            r9 = this;
            int r0 = r9.$r8$classId
            r1 = -1
            java.lang.String r2 = "status"
            java.lang.String r3 = "getInitialState - null intent received"
            java.lang.String r4 = "android.intent.action.BATTERY_CHANGED"
            r5 = 0
            android.content.Context r6 = r9.appContext
            r7 = 1
            r8 = 0
            switch(r0) {
                case 0: goto L74;
                case 1: goto L4c;
                default: goto L11;
            }
        L11:
            android.content.IntentFilter r9 = r9.getIntentFilter()
            android.content.Intent r9 = r6.registerReceiver(r5, r9)
            if (r9 == 0) goto L47
            java.lang.String r0 = r9.getAction()
            if (r0 != 0) goto L22
            goto L47
        L22:
            java.lang.String r9 = r9.getAction()
            if (r9 == 0) goto L46
            int r0 = r9.hashCode()
            r1 = -1181163412(0xffffffffb998e06c, float:-2.9158907E-4)
            if (r0 == r1) goto L40
            r1 = -730838620(0xffffffffd47049a4, float:-4.1281105E12)
            if (r0 == r1) goto L37
            goto L46
        L37:
            java.lang.String r0 = "android.intent.action.DEVICE_STORAGE_OK"
            boolean r9 = r9.equals(r0)
            if (r9 != 0) goto L47
            goto L46
        L40:
            java.lang.String r0 = "android.intent.action.DEVICE_STORAGE_LOW"
            boolean r9 = r9.equals(r0)
        L46:
            r7 = r8
        L47:
            java.lang.Boolean r9 = java.lang.Boolean.valueOf(r7)
            return r9
        L4c:
            android.content.IntentFilter r9 = new android.content.IntentFilter
            r9.<init>(r4)
            android.content.Intent r9 = r6.registerReceiver(r5, r9)
            if (r9 != 0) goto L63
            androidx.work.Logger$LogcatLogger r9 = androidx.work.Logger$LogcatLogger.get()
            java.lang.String r0 = androidx.work.impl.constraints.trackers.BatteryChargingTrackerKt.TAG
            r9.error(r0, r3)
            java.lang.Boolean r9 = java.lang.Boolean.FALSE
            goto L73
        L63:
            int r9 = r9.getIntExtra(r2, r1)
            r0 = 2
            if (r9 == r0) goto L6f
            r0 = 5
            if (r9 != r0) goto L6e
            goto L6f
        L6e:
            r7 = r8
        L6f:
            java.lang.Boolean r9 = java.lang.Boolean.valueOf(r7)
        L73:
            return r9
        L74:
            android.content.IntentFilter r9 = new android.content.IntentFilter
            r9.<init>(r4)
            android.content.Intent r9 = r6.registerReceiver(r5, r9)
            if (r9 != 0) goto L8b
            androidx.work.Logger$LogcatLogger r9 = androidx.work.Logger$LogcatLogger.get()
            java.lang.String r0 = androidx.work.impl.constraints.trackers.BatteryNotLowTrackerKt.TAG
            r9.error(r0, r3)
            java.lang.Boolean r9 = java.lang.Boolean.FALSE
            goto Lad
        L8b:
            int r0 = r9.getIntExtra(r2, r1)
            java.lang.String r2 = "level"
            int r2 = r9.getIntExtra(r2, r1)
            java.lang.String r3 = "scale"
            int r9 = r9.getIntExtra(r3, r1)
            float r1 = (float) r2
            float r9 = (float) r9
            float r1 = r1 / r9
            if (r0 == r7) goto La9
            r9 = 1041865114(0x3e19999a, float:0.15)
            int r9 = (r1 > r9 ? 1 : (r1 == r9 ? 0 : -1))
            if (r9 <= 0) goto La8
            goto La9
        La8:
            r7 = r8
        La9:
            java.lang.Boolean r9 = java.lang.Boolean.valueOf(r7)
        Lad:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.constraints.trackers.BatteryNotLowTracker.readSystemState():java.lang.Object");
    }
}
