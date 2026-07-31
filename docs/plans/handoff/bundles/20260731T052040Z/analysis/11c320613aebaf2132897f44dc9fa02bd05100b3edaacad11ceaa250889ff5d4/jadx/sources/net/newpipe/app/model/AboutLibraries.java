package net.newpipe.app.model;

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
public final class AboutLibraries {
    public final List libraries;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ResultKt.lazy(LazyThreadSafetyMode.PUBLICATION, new UtilsKt$$ExternalSyntheticLambda0(27))};

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
        public final KSerializer serializer() {
            return AboutLibraries$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ AboutLibraries(int i, List list) {
        if (1 == (i & 1)) {
            this.libraries = list;
        } else {
            Platform_commonKt.throwMissingFieldException(i, 1, AboutLibraries$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AboutLibraries) && Intrinsics.areEqual(this.libraries, ((AboutLibraries) obj).libraries);
    }

    public final int hashCode() {
        return this.libraries.hashCode();
    }

    public final String toString() {
        return "AboutLibraries(libraries=" + this.libraries + ")";
    }
}
