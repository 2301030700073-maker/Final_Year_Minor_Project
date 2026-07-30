package com.android.launcher3.uioverrides;

import android.annotation.TargetApi;
import android.content.Context;
import android.provider.DeviceConfig;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.uioverrides.DeviceFlag;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

@TargetApi(28)
/* loaded from: classes.dex */
public class DeviceFlag extends FeatureFlags.DebugFlag {
    public final boolean mDefaultValueInCode;
    public ArrayList mListeners;

    public DeviceFlag(String str, boolean z, String str2) {
        super(str, DeviceConfig.getBoolean("launcher", str, z), str2);
        this.mDefaultValueInCode = z;
    }

    @Override // com.android.launcher3.config.FeatureFlags.BooleanFlag
    public void addChangeListener(Context context, Runnable runnable) {
        if (this.mListeners == null) {
            initialize(context);
        }
        this.mListeners.add(runnable);
    }

    @Override // com.android.launcher3.config.FeatureFlags.DebugFlag, com.android.launcher3.config.FeatureFlags.BooleanFlag
    public StringBuilder appendProps(StringBuilder sb) {
        super.appendProps(sb);
        sb.append(", mDefaultValueInCode=");
        sb.append(this.mDefaultValueInCode);
        return sb;
    }

    @Override // com.android.launcher3.config.FeatureFlags.DebugFlag
    public void initialize(final Context context) {
        this.mCurrentValue = context.getSharedPreferences("featureFlags", 0).getBoolean(this.key, this.defaultValue);
        if (this.mListeners == null) {
            this.mListeners = new ArrayList();
            DeviceConfig.addOnPropertiesChangedListener("launcher", context.getMainExecutor(), new DeviceConfig.OnPropertiesChangedListener() { // from class: c.a.a.Z0.b
                public final void onPropertiesChanged(DeviceConfig.Properties properties) {
                    DeviceFlag deviceFlag = DeviceFlag.this;
                    Context context2 = context;
                    Objects.requireNonNull(deviceFlag);
                    if ("launcher".equals(properties.getNamespace()) && properties.getKeyset().contains(deviceFlag.key)) {
                        deviceFlag.defaultValue = DeviceConfig.getBoolean("launcher", deviceFlag.key, deviceFlag.mDefaultValueInCode);
                        deviceFlag.initialize(context2);
                        Iterator it = deviceFlag.mListeners.iterator();
                        while (it.hasNext()) {
                            ((Runnable) it.next()).run();
                        }
                    }
                }
            });
        }
    }
}
