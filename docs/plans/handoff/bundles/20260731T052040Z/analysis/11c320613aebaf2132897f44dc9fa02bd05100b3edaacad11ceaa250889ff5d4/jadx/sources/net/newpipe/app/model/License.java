package net.newpipe.app.model;

import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class License {
    public static final Companion Companion = new Companion();
    public final String name;
    public final String spdxID;
    public final String website;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
        public final KSerializer serializer() {
            return License$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ License(String str, String str2, int i, String str3) {
        if ((i & 1) == 0) {
            this.name = "";
        } else {
            this.name = str;
        }
        if ((i & 2) == 0) {
            this.spdxID = "";
        } else {
            this.spdxID = str2;
        }
        if ((i & 4) == 0) {
            this.website = null;
        } else {
            this.website = str3;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof License)) {
            return false;
        }
        License license = (License) obj;
        return Intrinsics.areEqual(this.name, license.name) && Intrinsics.areEqual(this.spdxID, license.spdxID) && Intrinsics.areEqual(this.website, license.website);
    }

    public final int hashCode() {
        int m = Modifier.CC.m(this.name.hashCode() * 31, 31, this.spdxID);
        String str = this.website;
        return m + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("License(name=");
        sb.append(this.name);
        sb.append(", spdxID=");
        sb.append(this.spdxID);
        sb.append(", website=");
        return Modifier.CC.m(sb, this.website, ")");
    }

    public License(String str, String str2, String str3) {
        str.getClass();
        str2.getClass();
        this.name = str;
        this.spdxID = str2;
        this.website = str3;
    }
}
