package com.android.launcher3.logging;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Process;
import android.os.SystemClock;
import android.os.UserHandle;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import b.l.W;
import c.b.b.AbstractC0476s;
import c.b.b.a1.e;
import com.android.launcher3.ButtonDropTarget;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Utilities;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.userevent.LauncherLogProto$LauncherEvent;
import com.android.launcher3.userevent.nano.LauncherLogProto$Action;
import com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.InstantAppResolver;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.systemui.shared.R;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Optional;
import java.util.UUID;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class UserEventDispatcher implements ResourceBasedOverride {
    public static final String UUID_STORAGE = "uuid";
    public long mActionDurationMillis;
    public boolean mAppOrTaskLaunch;
    public long mElapsedContainerMillis;
    public long mElapsedSessionMillis;
    public InstantAppResolver mInstantAppResolver;
    public boolean mPreviousHomeGesture;
    public boolean mSessionStarted;
    public String mUuidStr;
    public static final String TAG = "UserEvent";
    public static final boolean IS_VERBOSE = Utilities.isPropertyEnabled(TAG);

    private void fillComponentInfo(LauncherLogProto$Target launcherLogProto$Target, ComponentName componentName) {
        if (componentName != null) {
            launcherLogProto$Target.packageNameHash = (this.mUuidStr + componentName.getPackageName()).hashCode();
            launcherLogProto$Target.componentHash = (this.mUuidStr + componentName.flattenToString()).hashCode();
        }
    }

    public static ArrayList makeTargetsList(LauncherLogProto$Target... launcherLogProto$TargetArr) {
        ArrayList arrayList = new ArrayList();
        for (LauncherLogProto$Target launcherLogProto$Target : launcherLogProto$TargetArr) {
            arrayList.add(launcherLogProto$Target);
        }
        return arrayList;
    }

    public static UserEventDispatcher newInstance(Context context) {
        SharedPreferences devicePrefs = Utilities.getDevicePrefs(context);
        String string = devicePrefs.getString(UUID_STORAGE, null);
        if (string == null) {
            string = UUID.randomUUID().toString();
            devicePrefs.edit().putString(UUID_STORAGE, string).apply();
        }
        UserEventDispatcher userEventDispatcher = (UserEventDispatcher) W.getObject(UserEventDispatcher.class, context.getApplicationContext(), R.string.user_event_dispatcher_class);
        userEventDispatcher.mUuidStr = string;
        userEventDispatcher.mInstantAppResolver = InstantAppResolver.newInstance(context);
        return userEventDispatcher;
    }

    public void dispatchUserEvent(LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent, Intent intent) {
        if (this.mPreviousHomeGesture) {
            this.mPreviousHomeGesture = false;
        }
        this.mAppOrTaskLaunch = false;
        launcherLogProto$LauncherEvent.elapsedContainerMillis = SystemClock.uptimeMillis() - this.mElapsedContainerMillis;
        launcherLogProto$LauncherEvent.elapsedSessionMillis = SystemClock.uptimeMillis() - this.mElapsedSessionMillis;
        if (IS_VERBOSE) {
            try {
                Log.d(TAG, com.android.launcher3.userevent.LauncherLogProto$LauncherEvent.parseFrom(e.toByteArray(launcherLogProto$LauncherEvent)).toString());
            } catch (InvalidProtocolBufferException unused) {
                throw new RuntimeException("Cannot parse LauncherEvent from Nano to Lite version");
            }
        }
    }

    public void fillIntentInfo(LauncherLogProto$Target launcherLogProto$Target, Intent intent, UserHandle userHandle) {
        launcherLogProto$Target.intentHash = intent.hashCode();
        launcherLogProto$Target.isWorkApp = (userHandle == null || userHandle.equals(Process.myUserHandle())) ? false : true;
        fillComponentInfo(launcherLogProto$Target, intent.getComponent());
    }

    public boolean fillLogContainer(View view, LauncherLogProto$Target launcherLogProto$Target, ArrayList arrayList) {
        StatsLogUtils$LogContainerProvider statsLogUtils$LogContainerProvider = null;
        if (view != null) {
            ViewParent parent = view.getParent();
            int i = 5;
            while (true) {
                if (parent == null) {
                    break;
                }
                int i2 = i - 1;
                if (i <= 0) {
                    break;
                }
                if (parent instanceof StatsLogUtils$LogContainerProvider) {
                    statsLogUtils$LogContainerProvider = (StatsLogUtils$LogContainerProvider) parent;
                    break;
                }
                parent = parent.getParent();
                i = i2;
            }
        }
        if (view == null || !(view.getTag() instanceof ItemInfo) || statsLogUtils$LogContainerProvider == null) {
            return false;
        }
        statsLogUtils$LogContainerProvider.fillInLogContainerData((ItemInfo) view.getTag(), launcherLogProto$Target, arrayList);
        return true;
    }

    public final boolean isPreviousHomeGesture() {
        return this.mPreviousHomeGesture;
    }

    public void logActionBack(boolean z, int i, int i2, boolean z2, boolean z3, int i3) {
        int i4 = 3;
        LauncherLogProto$Action newCommandAction = LoggerUtils.newCommandAction(z2 ? 0 : 3);
        newCommandAction.command = 1;
        if (z2) {
            i4 = 0;
        } else if (!z3) {
            i4 = 4;
        }
        newCommandAction.dir = i4;
        int i5 = z2 ? 11 : 19;
        LauncherLogProto$Target newTarget = LoggerUtils.newTarget(2);
        newTarget.controlType = i5;
        newTarget.spanX = i;
        newTarget.spanY = i2;
        newTarget.cardinality = z ? 1 : 0;
        dispatchUserEvent(LoggerUtils.newLauncherEvent(newCommandAction, newTarget, LoggerUtils.newContainerTarget(i3)), null);
    }

    public void logActionBounceTip(int i) {
        LauncherLogProto$LauncherEvent newLauncherEvent = LoggerUtils.newLauncherEvent(LoggerUtils.newAction(3), LoggerUtils.newContainerTarget(i));
        newLauncherEvent.srcTarget[0].tipType = 1;
        dispatchUserEvent(newLauncherEvent, null);
    }

    public void logActionCommand(int i, LauncherLogProto$Target launcherLogProto$Target) {
        logActionCommand(i, launcherLogProto$Target, (LauncherLogProto$Target) null);
    }

    public void logActionOnContainer(int i, int i2, int i3) {
        logActionOnContainer(i, i2, i3, 0);
    }

    public void logActionOnControl(int i, int i2) {
        logActionOnControl(i, i2, null, new int[0]);
    }

    public void logActionOnItem(int i, int i2, int i3) {
        logActionOnItem(i, i2, i3, null, null);
    }

    public void logActionTapOutside(LauncherLogProto$Target launcherLogProto$Target) {
        LauncherLogProto$LauncherEvent newLauncherEvent = LoggerUtils.newLauncherEvent(LoggerUtils.newTouchAction(0), launcherLogProto$Target);
        newLauncherEvent.action.isOutside = true;
        dispatchUserEvent(newLauncherEvent, null);
    }

    public void logActionTip(int i, int i2) {
    }

    @Deprecated
    public void logAppLaunch(View view, Intent intent, UserHandle userHandle) {
        LauncherLogProto$Target newItemTarget = LoggerUtils.newItemTarget(view, this.mInstantAppResolver);
        LauncherLogProto$Action newTouchAction = LoggerUtils.newTouchAction(0);
        ArrayList makeTargetsList = makeTargetsList(newItemTarget);
        if (fillLogContainer(view, newItemTarget, makeTargetsList)) {
            onFillInLogContainerData((ItemInfo) view.getTag(), newItemTarget, makeTargetsList);
            fillIntentInfo(newItemTarget, intent, userHandle);
        }
        dispatchUserEvent(LoggerUtils.newLauncherEvent(newTouchAction, makeTargetsList), intent);
        this.mAppOrTaskLaunch = true;
    }

    public void logDeepShortcutsOpen(View view) {
        LauncherLogProto$Target newItemTarget = LoggerUtils.newItemTarget((ItemInfo) view.getTag(), this.mInstantAppResolver);
        ArrayList makeTargetsList = makeTargetsList(newItemTarget);
        fillLogContainer(view, newItemTarget, makeTargetsList);
        dispatchUserEvent(LoggerUtils.newLauncherEvent(LoggerUtils.newTouchAction(0), makeTargetsList), null);
        resetElapsedContainerMillis("deep shortcut open");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void logDragNDrop(DropTarget.DragObject dragObject, View view) {
        LauncherLogProto$Target newItemTarget = LoggerUtils.newItemTarget(dragObject.originalDragInfo, this.mInstantAppResolver);
        ArrayList makeTargetsList = makeTargetsList(newItemTarget);
        LauncherLogProto$Target newItemTarget2 = LoggerUtils.newItemTarget(dragObject.originalDragInfo, this.mInstantAppResolver);
        ArrayList makeTargetsList2 = makeTargetsList(newItemTarget2);
        dragObject.dragSource.fillInLogContainerData(dragObject.originalDragInfo, newItemTarget, makeTargetsList);
        if (view instanceof StatsLogUtils$LogContainerProvider) {
            ((StatsLogUtils$LogContainerProvider) view).fillInLogContainerData(dragObject.dragInfo, newItemTarget2, makeTargetsList2);
        } else {
            boolean z = view instanceof ButtonDropTarget;
            makeTargetsList2.add(!z ? LoggerUtils.newTarget(3) : z ? ((ButtonDropTarget) view).getDropTargetForLogging() : LoggerUtils.newTarget(2));
        }
        LauncherLogProto$LauncherEvent newLauncherEvent = LoggerUtils.newLauncherEvent(LoggerUtils.newTouchAction(2), makeTargetsList);
        LauncherLogProto$Target[] launcherLogProto$TargetArr = new LauncherLogProto$Target[makeTargetsList2.size()];
        makeTargetsList2.toArray(launcherLogProto$TargetArr);
        newLauncherEvent.destTarget = launcherLogProto$TargetArr;
        newLauncherEvent.actionDurationMillis = SystemClock.uptimeMillis() - this.mActionDurationMillis;
        dispatchUserEvent(newLauncherEvent, null);
    }

    public void logLauncherEvent(com.android.launcher3.userevent.LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent) {
        if (this.mPreviousHomeGesture) {
            this.mPreviousHomeGesture = false;
        }
        this.mAppOrTaskLaunch = false;
        LauncherLogProto$LauncherEvent.Builder builder = (LauncherLogProto$LauncherEvent.Builder) launcherLogProto$LauncherEvent.toBuilder();
        long uptimeMillis = SystemClock.uptimeMillis() - this.mElapsedContainerMillis;
        builder.copyOnWrite();
        com.android.launcher3.userevent.LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent2 = (com.android.launcher3.userevent.LauncherLogProto$LauncherEvent) builder.instance;
        launcherLogProto$LauncherEvent2.bitField0_ |= 4;
        launcherLogProto$LauncherEvent2.elapsedContainerMillis_ = uptimeMillis;
        long uptimeMillis2 = SystemClock.uptimeMillis() - this.mElapsedSessionMillis;
        builder.copyOnWrite();
        com.android.launcher3.userevent.LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent3 = (com.android.launcher3.userevent.LauncherLogProto$LauncherEvent) builder.instance;
        launcherLogProto$LauncherEvent3.bitField0_ |= 8;
        launcherLogProto$LauncherEvent3.elapsedSessionMillis_ = uptimeMillis2;
        builder.build();
        try {
            try {
                byte[] bArr = new byte[launcherLogProto$LauncherEvent.getSerializedSize()];
                AbstractC0476s N = AbstractC0476s.N(bArr);
                launcherLogProto$LauncherEvent.writeTo(N);
                if (N.O() != 0) {
                    throw new IllegalStateException("Did not write as much data as expected.");
                }
                com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent4 = new com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent();
                e.mergeFrom(launcherLogProto$LauncherEvent4, bArr);
                dispatchUserEvent(launcherLogProto$LauncherEvent4, null);
            } catch (IOException e) {
                throw new RuntimeException(launcherLogProto$LauncherEvent.getSerializingExceptionMessage("byte array"), e);
            }
        } catch (InvalidProtocolBufferNanoException unused) {
            throw new RuntimeException("Cannot convert LauncherEvent from Lite to Nano version.");
        }
    }

    public void logNotificationLaunch(View view, PendingIntent pendingIntent) {
        com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent newLauncherEvent = LoggerUtils.newLauncherEvent(LoggerUtils.newTouchAction(0), LoggerUtils.newItemTarget(view, this.mInstantAppResolver), LoggerUtils.newTarget(3));
        LauncherLogProto$Target newItemTarget = LoggerUtils.newItemTarget(view, this.mInstantAppResolver);
        if (fillLogContainer(view, newItemTarget, makeTargetsList(newItemTarget))) {
            newItemTarget.packageNameHash = (this.mUuidStr + pendingIntent.getCreatorPackage()).hashCode();
        }
        dispatchUserEvent(newLauncherEvent, null);
    }

    public void logStateChangeAction(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent newLauncherEvent;
        if (i5 == 9) {
            LauncherLogProto$Action newTouchAction = LoggerUtils.newTouchAction(i);
            LauncherLogProto$Target newTarget = LoggerUtils.newTarget(1);
            newTarget.itemType = i5;
            newLauncherEvent = LoggerUtils.newLauncherEvent(newTouchAction, newTarget, LoggerUtils.newContainerTarget(i6));
        } else {
            newLauncherEvent = LoggerUtils.newLauncherEvent(LoggerUtils.newTouchAction(i), LoggerUtils.newContainerTarget(i5), LoggerUtils.newContainerTarget(i6));
        }
        newLauncherEvent.destTarget = new LauncherLogProto$Target[]{LoggerUtils.newContainerTarget(i7)};
        LauncherLogProto$Action launcherLogProto$Action = newLauncherEvent.action;
        launcherLogProto$Action.dir = i2;
        launcherLogProto$Action.isStateChange = true;
        LauncherLogProto$Target[] launcherLogProto$TargetArr = newLauncherEvent.srcTarget;
        launcherLogProto$TargetArr[0].pageIndex = i8;
        launcherLogProto$TargetArr[0].spanX = i3;
        launcherLogProto$TargetArr[0].spanY = i4;
        dispatchUserEvent(newLauncherEvent, null);
        resetElapsedContainerMillis("state changed");
    }

    @Deprecated
    public void logTaskLaunchOrDismiss(int i, int i2, int i3, ComponentKey componentKey) {
        com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent newLauncherEvent = LoggerUtils.newLauncherEvent(LoggerUtils.newTouchAction(i), LoggerUtils.newTarget(1));
        if (i == 3 || i == 4) {
            newLauncherEvent.action.dir = i2;
        }
        LauncherLogProto$Target[] launcherLogProto$TargetArr = newLauncherEvent.srcTarget;
        launcherLogProto$TargetArr[0].itemType = 9;
        launcherLogProto$TargetArr[0].pageIndex = i3;
        fillComponentInfo(launcherLogProto$TargetArr[0], componentKey.componentName);
        dispatchUserEvent(newLauncherEvent, null);
        this.mAppOrTaskLaunch = true;
    }

    public void onFillInLogContainerData(ItemInfo itemInfo, LauncherLogProto$Target launcherLogProto$Target, ArrayList arrayList) {
    }

    public final void resetActionDurationMillis() {
        this.mActionDurationMillis = SystemClock.uptimeMillis();
    }

    public final void resetElapsedContainerMillis(String str) {
        this.mElapsedContainerMillis = SystemClock.uptimeMillis();
        if (IS_VERBOSE) {
            Log.d(TAG, "resetElapsedContainerMillis reason=" + str);
        }
    }

    public final void setPreviousHomeGesture(boolean z) {
        this.mPreviousHomeGesture = z;
    }

    public final void startSession() {
        this.mSessionStarted = true;
        this.mElapsedSessionMillis = SystemClock.uptimeMillis();
        this.mElapsedContainerMillis = SystemClock.uptimeMillis();
    }

    public void logActionCommand(int i, int i2, int i3) {
        logActionCommand(i, LoggerUtils.newContainerTarget(i2), i3 >= 0 ? LoggerUtils.newContainerTarget(i3) : null);
    }

    public void logActionOnContainer(int i, int i2, int i3, int i4) {
        com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent newLauncherEvent = LoggerUtils.newLauncherEvent(LoggerUtils.newTouchAction(i), LoggerUtils.newContainerTarget(i3));
        newLauncherEvent.action.dir = i2;
        newLauncherEvent.srcTarget[0].pageIndex = i4;
        dispatchUserEvent(newLauncherEvent, null);
    }

    public void logActionOnControl(int i, int i2, int i3) {
        logActionOnControl(i, i2, null, i3);
    }

    public void logActionOnItem(int i, int i2, int i3, Integer num, Integer num2) {
        final LauncherLogProto$Target newTarget = LoggerUtils.newTarget(1);
        newTarget.itemType = i3;
        Optional.ofNullable(num).ifPresent(new Consumer() { // from class: c.a.a.M0.b
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                LauncherLogProto$Target.this.gridX = ((Integer) obj).intValue();
            }
        });
        Optional.ofNullable(num2).ifPresent(new Consumer() { // from class: c.a.a.M0.c
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                LauncherLogProto$Target.this.gridY = ((Integer) obj).intValue();
            }
        });
        com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent newLauncherEvent = LoggerUtils.newLauncherEvent(LoggerUtils.newTouchAction(i), newTarget);
        newLauncherEvent.action.dir = i2;
        dispatchUserEvent(newLauncherEvent, null);
    }

    public void logActionOnControl(int i, int i2, View view, int... iArr) {
        LauncherLogProto$Target newTarget = LoggerUtils.newTarget(2);
        newTarget.controlType = i2;
        LauncherLogProto$Action newAction = LoggerUtils.newAction(i);
        ArrayList makeTargetsList = makeTargetsList(newTarget);
        if (view != null) {
            fillLogContainer(view, newTarget, makeTargetsList);
        }
        for (int i3 : iArr) {
            if (i3 >= 0) {
                makeTargetsList.add(LoggerUtils.newContainerTarget(i3));
            }
        }
        com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent newLauncherEvent = LoggerUtils.newLauncherEvent(newAction, makeTargetsList);
        if (i == 2) {
            newLauncherEvent.actionDurationMillis = SystemClock.uptimeMillis() - this.mActionDurationMillis;
        }
        dispatchUserEvent(newLauncherEvent, null);
    }

    public void logActionCommand(int i, int i2, int i3, int i4) {
        LauncherLogProto$Target newContainerTarget = LoggerUtils.newContainerTarget(i2);
        newContainerTarget.pageIndex = i4;
        logActionCommand(i, newContainerTarget, i3 >= 0 ? LoggerUtils.newContainerTarget(i3) : null);
    }

    public void logActionCommand(int i, LauncherLogProto$Target launcherLogProto$Target, LauncherLogProto$Target launcherLogProto$Target2) {
        com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent newLauncherEvent = LoggerUtils.newLauncherEvent(LoggerUtils.newCommandAction(i), launcherLogProto$Target);
        if (i == 5 && (this.mAppOrTaskLaunch || !this.mSessionStarted)) {
            this.mSessionStarted = false;
            return;
        }
        if (launcherLogProto$Target2 != null) {
            newLauncherEvent.destTarget = new LauncherLogProto$Target[]{launcherLogProto$Target2};
            newLauncherEvent.action.isStateChange = true;
        }
        dispatchUserEvent(newLauncherEvent, null);
    }

    public void logActionCommand(int i, View view, int i2) {
        com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent newLauncherEvent = LoggerUtils.newLauncherEvent(LoggerUtils.newCommandAction(i), LoggerUtils.newItemTarget(view, this.mInstantAppResolver), LoggerUtils.newTarget(3));
        LauncherLogProto$Target newItemTarget = LoggerUtils.newItemTarget(view, this.mInstantAppResolver);
        if (fillLogContainer(view, newItemTarget, makeTargetsList(newItemTarget))) {
            newItemTarget.type = 3;
            newItemTarget.containerType = i2;
        }
        dispatchUserEvent(newLauncherEvent, null);
    }
}
