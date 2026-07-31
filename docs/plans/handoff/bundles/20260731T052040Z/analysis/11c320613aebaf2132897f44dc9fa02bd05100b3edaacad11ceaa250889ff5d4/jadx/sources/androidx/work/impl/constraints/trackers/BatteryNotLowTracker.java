package androidx.work.impl.constraints.trackers;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.Logger$LogcatLogger;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BatteryNotLowTracker extends BroadcastReceiverConstraintTracker {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ BatteryNotLowTracker(Context context, Dispatcher dispatcher, int i) {
        super(context, dispatcher);
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

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0040, code lost:
    
        if (r8.equals("android.intent.action.DEVICE_STORAGE_OK") == false) goto L20;
     */
    @Override // org.commonmark.node.Node
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readSystemState() {
        /*
            r8 = this;
            int r0 = r8.$r8$classId
            r1 = -1
            java.lang.String r2 = "status"
            java.lang.String r3 = "getInitialState - null intent received"
            java.lang.String r4 = "android.intent.action.BATTERY_CHANGED"
            r5 = 0
            r6 = 1
            r7 = 0
            switch(r0) {
                case 0: goto L7b;
                case 1: goto L4f;
                default: goto L10;
            }
        L10:
            java.lang.Object r0 = r8.firstChild
            android.content.Context r0 = (android.content.Context) r0
            android.content.IntentFilter r8 = r8.getIntentFilter()
            android.content.Intent r8 = r0.registerReceiver(r5, r8)
            if (r8 == 0) goto L4a
            java.lang.String r0 = r8.getAction()
            if (r0 != 0) goto L25
            goto L4a
        L25:
            java.lang.String r8 = r8.getAction()
            if (r8 == 0) goto L49
            int r0 = r8.hashCode()
            r1 = -1181163412(0xffffffffb998e06c, float:-2.9158907E-4)
            if (r0 == r1) goto L43
            r1 = -730838620(0xffffffffd47049a4, float:-4.1281105E12)
            if (r0 == r1) goto L3a
            goto L49
        L3a:
            java.lang.String r0 = "android.intent.action.DEVICE_STORAGE_OK"
            boolean r8 = r8.equals(r0)
            if (r8 != 0) goto L4a
            goto L49
        L43:
            java.lang.String r0 = "android.intent.action.DEVICE_STORAGE_LOW"
            boolean r8 = r8.equals(r0)
        L49:
            r6 = r7
        L4a:
            java.lang.Boolean r8 = java.lang.Boolean.valueOf(r6)
            return r8
        L4f:
            android.content.IntentFilter r0 = new android.content.IntentFilter
            r0.<init>(r4)
            java.lang.Object r8 = r8.firstChild
            android.content.Context r8 = (android.content.Context) r8
            android.content.Intent r8 = r8.registerReceiver(r5, r0)
            if (r8 != 0) goto L6a
            androidx.work.Logger$LogcatLogger r8 = androidx.work.Logger$LogcatLogger.get()
            java.lang.String r0 = androidx.work.impl.constraints.trackers.BatteryChargingTrackerKt.TAG
            r8.error(r0, r3)
            java.lang.Boolean r8 = java.lang.Boolean.FALSE
            goto L7a
        L6a:
            int r8 = r8.getIntExtra(r2, r1)
            r0 = 2
            if (r8 == r0) goto L76
            r0 = 5
            if (r8 != r0) goto L75
            goto L76
        L75:
            r6 = r7
        L76:
            java.lang.Boolean r8 = java.lang.Boolean.valueOf(r6)
        L7a:
            return r8
        L7b:
            android.content.IntentFilter r0 = new android.content.IntentFilter
            r0.<init>(r4)
            java.lang.Object r8 = r8.firstChild
            android.content.Context r8 = (android.content.Context) r8
            android.content.Intent r8 = r8.registerReceiver(r5, r0)
            if (r8 != 0) goto L96
            androidx.work.Logger$LogcatLogger r8 = androidx.work.Logger$LogcatLogger.get()
            java.lang.String r0 = androidx.work.impl.constraints.trackers.BatteryNotLowTrackerKt.TAG
            r8.error(r0, r3)
            java.lang.Boolean r8 = java.lang.Boolean.FALSE
            goto Lb8
        L96:
            int r0 = r8.getIntExtra(r2, r1)
            java.lang.String r2 = "level"
            int r2 = r8.getIntExtra(r2, r1)
            java.lang.String r3 = "scale"
            int r8 = r8.getIntExtra(r3, r1)
            float r1 = (float) r2
            float r8 = (float) r8
            float r1 = r1 / r8
            if (r0 == r6) goto Lb4
            r8 = 1041865114(0x3e19999a, float:0.15)
            int r8 = (r1 > r8 ? 1 : (r1 == r8 ? 0 : -1))
            if (r8 <= 0) goto Lb3
            goto Lb4
        Lb3:
            r6 = r7
        Lb4:
            java.lang.Boolean r8 = java.lang.Boolean.valueOf(r6)
        Lb8:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.constraints.trackers.BatteryNotLowTracker.readSystemState():java.lang.Object");
    }
}
