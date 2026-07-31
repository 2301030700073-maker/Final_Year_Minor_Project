package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper;
import androidx.camera.camera2.pipe.core.HandlerExecutor;
import androidx.camera.core.impl.Config;
import java.util.ArrayList;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ExtensionSessionConfigData {
    public final HandlerExecutor executor;
    public final Integer extensionMode;
    public final ExtensionSessionState extensionStateCallback;
    public final ArrayList outputConfigurations;
    public final OutputConfigurationWrapper postviewOutputConfiguration;
    public final Map sessionParameters;
    public final int sessionTemplateId;
    public final CameraCaptureSessionWrapper.StateCallback stateCallback;

    public ExtensionSessionConfigData(ArrayList arrayList, HandlerExecutor handlerExecutor, CaptureSessionState captureSessionState, int i, Map map, Integer num, ExtensionSessionState extensionSessionState, OutputConfigurationWrapper outputConfigurationWrapper) {
        captureSessionState.getClass();
        map.getClass();
        this.outputConfigurations = arrayList;
        this.executor = handlerExecutor;
        this.stateCallback = captureSessionState;
        this.sessionTemplateId = i;
        this.sessionParameters = map;
        this.extensionMode = num;
        this.extensionStateCallback = extensionSessionState;
        this.postviewOutputConfiguration = outputConfigurationWrapper;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ExtensionSessionConfigData) {
            ExtensionSessionConfigData extensionSessionConfigData = (ExtensionSessionConfigData) obj;
            if (this.outputConfigurations.equals(extensionSessionConfigData.outputConfigurations) && this.executor == extensionSessionConfigData.executor && Intrinsics.areEqual(this.stateCallback, extensionSessionConfigData.stateCallback) && this.sessionTemplateId == extensionSessionConfigData.sessionTemplateId && Intrinsics.areEqual(this.sessionParameters, extensionSessionConfigData.sessionParameters) && this.extensionMode.equals(extensionSessionConfigData.extensionMode) && this.extensionStateCallback == extensionSessionConfigData.extensionStateCallback && Intrinsics.areEqual(this.postviewOutputConfiguration, extensionSessionConfigData.postviewOutputConfiguration)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.extensionStateCallback.hashCode() + ((this.extensionMode.hashCode() + ((this.sessionParameters.hashCode() + ((((this.stateCallback.hashCode() + ((this.executor.hashCode() + Config.CC.m(this.outputConfigurations, 62, 31)) * 31)) * 31) + this.sessionTemplateId) * 31)) * 31)) * 31)) * 31;
        OutputConfigurationWrapper outputConfigurationWrapper = this.postviewOutputConfiguration;
        return hashCode + (outputConfigurationWrapper == null ? 0 : outputConfigurationWrapper.hashCode());
    }

    public final String toString() {
        return "ExtensionSessionConfigData(sessionType=2, outputConfigurations=" + this.outputConfigurations + ", executor=" + this.executor + ", stateCallback=" + this.stateCallback + ", sessionTemplateId=" + this.sessionTemplateId + ", sessionParameters=" + this.sessionParameters + ", extensionMode=" + this.extensionMode + ", extensionStateCallback=" + this.extensionStateCallback + ", postviewOutputConfiguration=" + this.postviewOutputConfiguration + ')';
    }
}
