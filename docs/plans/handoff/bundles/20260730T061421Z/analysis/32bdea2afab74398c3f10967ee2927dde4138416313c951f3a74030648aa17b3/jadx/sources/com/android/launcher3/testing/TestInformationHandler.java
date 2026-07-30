package com.android.launcher3.testing;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import b.l.W;
import c.a.a.X0.b;
import c.a.a.X0.c;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.testing.TestInformationHandler;
import com.android.launcher3.util.ActivityTracker;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.systemui.shared.R;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.function.Function;
import java.util.function.Supplier;

@TargetApi(29)
/* loaded from: classes.dex */
public class TestInformationHandler implements ResourceBasedOverride {
    public Context mContext;
    public DeviceProfile mDeviceProfile;
    public LauncherAppState mLauncherAppState;

    public interface BundleSetter {
        void set(Bundle bundle, String str, Object obj);
    }

    public static Bundle getLauncherUIProperty(BundleSetter bundleSetter, Function function) {
        final ActivityTracker activityTracker = Launcher.ACTIVITY_TRACKER;
        Objects.requireNonNull(activityTracker);
        return getUIProperty(bundleSetter, function, new Supplier() { // from class: c.a.a.X0.d
            @Override // java.util.function.Supplier
            public final Object get() {
                return (Launcher) ActivityTracker.this.getCreatedActivity();
            }
        });
    }

    public static Bundle getUIProperty(final BundleSetter bundleSetter, final Function function, final Supplier supplier) {
        try {
            return (Bundle) Executors.MAIN_EXECUTOR.submit(new Callable() { // from class: c.a.a.X0.l
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Supplier supplier2 = supplier;
                    Function function2 = function;
                    TestInformationHandler.BundleSetter bundleSetter2 = bundleSetter;
                    Object obj = supplier2.get();
                    if (obj == null) {
                        return null;
                    }
                    Object apply = function2.apply(obj);
                    Bundle bundle = new Bundle();
                    bundleSetter2.set(bundle, "response", apply);
                    return bundle;
                }
            }).get();
        } catch (InterruptedException | ExecutionException e) {
            throw new RuntimeException(e);
        }
    }

    public static TestInformationHandler newInstance(Context context) {
        return (TestInformationHandler) W.getObject(TestInformationHandler.class, context, R.string.test_information_handler_class);
    }

    public /* synthetic */ Boolean a(Boolean bool) {
        return Boolean.valueOf(isLauncherInitialized());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public Bundle call(String str) {
        char c2;
        b bVar = new BundleSetter() { // from class: c.a.a.X0.b
            @Override // com.android.launcher3.testing.TestInformationHandler.BundleSetter
            public final void set(Bundle bundle, String str2, Object obj) {
                bundle.putInt(str2, ((Integer) obj).intValue());
            }
        };
        c cVar = new BundleSetter() { // from class: c.a.a.X0.c
            @Override // com.android.launcher3.testing.TestInformationHandler.BundleSetter
            public final void set(Bundle bundle, String str2, Object obj) {
                bundle.putBoolean(str2, ((Boolean) obj).booleanValue());
            }
        };
        Bundle bundle = new Bundle();
        switch (str.hashCode()) {
            case -634643027:
                if (str.equals("apps-list-scroll-y")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case -335925014:
                if (str.equals("is-launcher-initialized")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -132279417:
                if (str.equals("unfreeze-app-list")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -8342034:
                if (str.equals("mock-sensor-rotation")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case 117113715:
                if (str.equals("window-insets")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 299522245:
                if (str.equals("home-to-all-apps-swipe-height")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 768460608:
                if (str.equals("freeze-app-list")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 2052224251:
                if (str.equals("icon-height")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 6:
                bundle.putInt("response", this.mDeviceProfile.allAppsCellHeightPx);
                break;
            case 7:
                TestProtocol.sDisableSensorRotation = true;
                break;
        }
        return bundle;
    }

    public Activity getCurrentActivity() {
        return Launcher.ACTIVITY_TRACKER.getCreatedActivity();
    }

    public void init(Context context) {
        this.mContext = context;
        this.mDeviceProfile = ((InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.b(context)).getDeviceProfile(context);
        this.mLauncherAppState = LauncherAppState.getInstanceNoCreate();
    }

    public boolean isLauncherInitialized() {
        return Launcher.ACTIVITY_TRACKER.getCreatedActivity() == null || LauncherAppState.getInstance(this.mContext).mModel.isModelLoaded();
    }
}
