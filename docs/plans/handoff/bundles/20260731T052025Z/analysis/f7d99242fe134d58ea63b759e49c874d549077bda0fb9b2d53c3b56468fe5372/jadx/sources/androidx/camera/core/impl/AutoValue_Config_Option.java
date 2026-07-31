package androidx.camera.core.impl;

import android.hardware.camera2.CaptureRequest;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutoValue_Config_Option {
    public final String id;
    public final Object token;
    public final Class valueClass;

    public AutoValue_Config_Option(String str, Class cls, CaptureRequest.Key key) {
        this.id = str;
        if (cls == null) {
            Regex$$ExternalSyntheticBUOutline0.m("Null valueClass");
            throw null;
        }
        this.valueClass = cls;
        this.token = key;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AutoValue_Config_Option)) {
            return false;
        }
        AutoValue_Config_Option autoValue_Config_Option = (AutoValue_Config_Option) obj;
        if (!this.id.equals(autoValue_Config_Option.id) || !this.valueClass.equals(autoValue_Config_Option.valueClass)) {
            return false;
        }
        Object obj2 = autoValue_Config_Option.token;
        Object obj3 = this.token;
        return obj3 == null ? obj2 == null : obj3.equals(obj2);
    }

    public final int hashCode() {
        int hashCode = (((this.id.hashCode() ^ 1000003) * 1000003) ^ this.valueClass.hashCode()) * 1000003;
        Object obj = this.token;
        return (obj == null ? 0 : obj.hashCode()) ^ hashCode;
    }

    public final String toString() {
        return "Option{id=" + this.id + ", valueClass=" + this.valueClass + ", token=" + this.token + "}";
    }
}
