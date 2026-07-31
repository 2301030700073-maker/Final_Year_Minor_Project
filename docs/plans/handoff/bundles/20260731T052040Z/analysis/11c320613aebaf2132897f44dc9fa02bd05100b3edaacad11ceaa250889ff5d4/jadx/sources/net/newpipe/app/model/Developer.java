package net.newpipe.app.model;

import androidx.compose.ui.node.Owner;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.internal.Platform_commonKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Developer {
    public static final Companion Companion = new Companion();
    public final String name;
    public final String organisationUrl;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
        public final KSerializer serializer() {
            return Developer$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ Developer(String str, int i, String str2) {
        if (1 != (i & 1)) {
            Platform_commonKt.throwMissingFieldException(i, 1, Developer$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.name = str;
        if ((i & 2) == 0) {
            this.organisationUrl = null;
        } else {
            this.organisationUrl = str2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Developer)) {
            return false;
        }
        Developer developer = (Developer) obj;
        return Intrinsics.areEqual(this.name, developer.name) && Intrinsics.areEqual(this.organisationUrl, developer.organisationUrl);
    }

    public final int hashCode() {
        int hashCode = this.name.hashCode() * 31;
        String str = this.organisationUrl;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return Owner.CC.m("Developer(name=", this.name, ", organisationUrl=", this.organisationUrl, ")");
    }
}
