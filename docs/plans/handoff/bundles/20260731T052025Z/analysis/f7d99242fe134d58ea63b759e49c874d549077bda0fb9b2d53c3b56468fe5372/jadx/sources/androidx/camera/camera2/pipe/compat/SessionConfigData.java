package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper;
import androidx.camera.core.impl.Config;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SessionConfigData {
    public final Executor executor;
    public final List inputConfiguration;
    public final ArrayList outputConfigurations;
    public final Map sessionParameters;
    public final int sessionTemplateId;
    public final int sessionType;
    public final CameraCaptureSessionWrapper.StateCallback stateCallback;

    public SessionConfigData(int i, ArrayList arrayList, ArrayList arrayList2, Executor executor, CaptureSessionState captureSessionState, int i2, Map map) {
        executor.getClass();
        captureSessionState.getClass();
        map.getClass();
        this.sessionType = i;
        this.inputConfiguration = arrayList;
        this.outputConfigurations = arrayList2;
        this.executor = executor;
        this.stateCallback = captureSessionState;
        this.sessionTemplateId = i2;
        this.sessionParameters = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SessionConfigData)) {
            return false;
        }
        SessionConfigData sessionConfigData = (SessionConfigData) obj;
        return this.sessionType == sessionConfigData.sessionType && Intrinsics.areEqual(this.inputConfiguration, sessionConfigData.inputConfiguration) && this.outputConfigurations.equals(sessionConfigData.outputConfigurations) && Intrinsics.areEqual(this.executor, sessionConfigData.executor) && Intrinsics.areEqual(this.stateCallback, sessionConfigData.stateCallback) && this.sessionTemplateId == sessionConfigData.sessionTemplateId && Intrinsics.areEqual(this.sessionParameters, sessionConfigData.sessionParameters);
    }

    public final int hashCode() {
        int i = this.sessionType * 31;
        List list = this.inputConfiguration;
        return (this.sessionParameters.hashCode() + ((((this.stateCallback.hashCode() + ((this.executor.hashCode() + Config.CC.m(this.outputConfigurations, (i + (list == null ? 0 : list.hashCode())) * 31, 31)) * 31)) * 31) + this.sessionTemplateId) * 31)) * 31;
    }

    public final String toString() {
        return "SessionConfigData(sessionType=" + this.sessionType + ", inputConfiguration=" + this.inputConfiguration + ", outputConfigurations=" + this.outputConfigurations + ", executor=" + this.executor + ", stateCallback=" + this.stateCallback + ", sessionTemplateId=" + this.sessionTemplateId + ", sessionParameters=" + this.sessionParameters + ", sessionColorSpace=" + ((Object) "null") + ')';
    }
}
