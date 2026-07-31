package com.fsck.k9.mail.internet;

import androidx.camera.core.impl.Config;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BasicParameterResults {
    public final ArrayList ignoredParameters;
    public final LinkedHashMap parameters;
    public final Integer parserErrorIndex;

    public BasicParameterResults(LinkedHashMap linkedHashMap, ArrayList arrayList, Integer num) {
        this.parameters = linkedHashMap;
        this.ignoredParameters = arrayList;
        this.parserErrorIndex = num;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BasicParameterResults)) {
            return false;
        }
        BasicParameterResults basicParameterResults = (BasicParameterResults) obj;
        return this.parameters.equals(basicParameterResults.parameters) && this.ignoredParameters.equals(basicParameterResults.ignoredParameters) && Intrinsics.areEqual(this.parserErrorIndex, basicParameterResults.parserErrorIndex);
    }

    public final int hashCode() {
        int m = Config.CC.m(this.ignoredParameters, this.parameters.hashCode() * 31, 31);
        Integer num = this.parserErrorIndex;
        return m + (num == null ? 0 : num.hashCode());
    }

    public final String toString() {
        return "BasicParameterResults(parameters=" + this.parameters + ", ignoredParameters=" + this.ignoredParameters + ", parserErrorIndex=" + this.parserErrorIndex + ")";
    }
}
