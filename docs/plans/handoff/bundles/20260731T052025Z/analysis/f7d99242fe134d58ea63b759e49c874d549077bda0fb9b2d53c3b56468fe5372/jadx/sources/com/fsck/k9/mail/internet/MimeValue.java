package com.fsck.k9.mail.internet;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MimeValue {
    public final List ignoredParameters;
    public final Map parameters;
    public final Integer parserErrorIndex;
    public final String value;

    public MimeValue(String str, Map map, List list, Integer num) {
        this.value = str;
        this.parameters = map;
        this.ignoredParameters = list;
        this.parserErrorIndex = num;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MimeValue)) {
            return false;
        }
        MimeValue mimeValue = (MimeValue) obj;
        return Intrinsics.areEqual(this.value, mimeValue.value) && Intrinsics.areEqual(this.parameters, mimeValue.parameters) && Intrinsics.areEqual(this.ignoredParameters, mimeValue.ignoredParameters) && Intrinsics.areEqual(this.parserErrorIndex, mimeValue.parserErrorIndex);
    }

    public final int hashCode() {
        int m = CameraDevices$CC.m(this.ignoredParameters, (this.parameters.hashCode() + (this.value.hashCode() * 31)) * 31, 31);
        Integer num = this.parserErrorIndex;
        return m + (num == null ? 0 : num.hashCode());
    }

    public final String toString() {
        return "MimeValue(value=" + this.value + ", parameters=" + this.parameters + ", ignoredParameters=" + this.ignoredParameters + ", parserErrorIndex=" + this.parserErrorIndex + ")";
    }
}
