package net.thunderbird.feature.navigation.changelog.api;

import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@Serializable
/* loaded from: classes.dex */
public final class ChangelogRoute {
    public final String basePath;
    public final ChangeLogMode changeLogMode;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ResultKt.lazy(LazyThreadSafetyMode.PUBLICATION, new ChangelogRoute$$ExternalSyntheticLambda0(0)), null};

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
        public final KSerializer serializer() {
            return ChangelogRoute$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ ChangelogRoute(int i, ChangeLogMode changeLogMode, String str) {
        if (1 != (i & 1)) {
            TuplesKt.throwMissingFieldException(i, 1, ChangelogRoute$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.changeLogMode = changeLogMode;
        if ((i & 2) == 0) {
            this.basePath = "app://changelog";
        } else {
            this.basePath = str;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ChangelogRoute) && this.changeLogMode == ((ChangelogRoute) obj).changeLogMode;
    }

    public final int hashCode() {
        return this.changeLogMode.hashCode();
    }

    public final String toString() {
        return "ChangelogRoute(changeLogMode=" + this.changeLogMode + ")";
    }
}
