package net.newpipe.app.model;

import androidx.compose.ui.Modifier;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.internal.Platform_commonKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Library {
    public static final Lazy[] $childSerializers;
    public static final Companion Companion = new Companion();
    public final List developers;
    public final String id;
    public final List licenses;
    public final String name;
    public final String website;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
        public final KSerializer serializer() {
            return Library$$serializer.INSTANCE;
        }
    }

    static {
        UtilsKt$$ExternalSyntheticLambda0 utilsKt$$ExternalSyntheticLambda0 = new UtilsKt$$ExternalSyntheticLambda0(28);
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        $childSerializers = new Lazy[]{null, null, ResultKt.lazy(lazyThreadSafetyMode, utilsKt$$ExternalSyntheticLambda0), ResultKt.lazy(lazyThreadSafetyMode, new UtilsKt$$ExternalSyntheticLambda0(29)), null};
    }

    public /* synthetic */ Library(int i, String str, String str2, List list, List list2, String str3) {
        if (15 != (i & 15)) {
            Platform_commonKt.throwMissingFieldException(i, 15, Library$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.id = str;
        this.name = str2;
        this.developers = list;
        this.licenses = list2;
        if ((i & 16) == 0) {
            this.website = null;
        } else {
            this.website = str3;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Library)) {
            return false;
        }
        Library library = (Library) obj;
        return Intrinsics.areEqual(this.id, library.id) && Intrinsics.areEqual(this.name, library.name) && Intrinsics.areEqual(this.developers, library.developers) && Intrinsics.areEqual(this.licenses, library.licenses) && Intrinsics.areEqual(this.website, library.website);
    }

    public final int hashCode() {
        int hashCode = (this.licenses.hashCode() + ((this.developers.hashCode() + Modifier.CC.m(this.id.hashCode() * 31, 31, this.name)) * 31)) * 31;
        String str = this.website;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Library(id=");
        sb.append(this.id);
        sb.append(", name=");
        sb.append(this.name);
        sb.append(", developers=");
        sb.append(this.developers);
        sb.append(", licenses=");
        sb.append(this.licenses);
        sb.append(", website=");
        return Modifier.CC.m(sb, this.website, ")");
    }
}
