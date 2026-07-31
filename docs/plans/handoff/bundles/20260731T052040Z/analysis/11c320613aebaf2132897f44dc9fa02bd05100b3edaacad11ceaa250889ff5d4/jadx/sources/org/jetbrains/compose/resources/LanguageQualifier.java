package org.jetbrains.compose.resources;

import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LanguageQualifier implements Qualifier {
    public final String language;

    public LanguageQualifier(String str) {
        str.getClass();
        this.language = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || LanguageQualifier.class != obj.getClass()) {
            return false;
        }
        return Intrinsics.areEqual(this.language, ((LanguageQualifier) obj).language);
    }

    public final int hashCode() {
        return this.language.hashCode();
    }

    public final String toString() {
        return Modifier.CC.m("LanguageQualifier(language='", this.language, "')");
    }
}
