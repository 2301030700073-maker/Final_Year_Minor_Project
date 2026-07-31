package androidx.camera.core.impl;

import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy {
    public final List audioProfiles;
    public final int defaultDurationSeconds;
    public final int recommendedFileFormat;
    public final List videoProfiles;

    public AutoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy(int i, int i2, List list, List list2) {
        this.defaultDurationSeconds = i;
        this.recommendedFileFormat = i2;
        if (list == null) {
            Regex$$ExternalSyntheticBUOutline0.m("Null audioProfiles");
            throw null;
        }
        this.audioProfiles = list;
        if (list2 != null) {
            this.videoProfiles = list2;
        } else {
            Regex$$ExternalSyntheticBUOutline0.m("Null videoProfiles");
            throw null;
        }
    }

    public static AutoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy create(int i, int i2, ArrayList arrayList, ArrayList arrayList2) {
        return new AutoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy(i, i2, DesugarCollections.unmodifiableList(new ArrayList(arrayList)), DesugarCollections.unmodifiableList(new ArrayList(arrayList2)));
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AutoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy) {
            AutoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy autoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy = (AutoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy) obj;
            if (this.defaultDurationSeconds == autoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy.defaultDurationSeconds && this.recommendedFileFormat == autoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy.recommendedFileFormat && this.audioProfiles.equals(autoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy.audioProfiles) && this.videoProfiles.equals(autoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy.videoProfiles)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.videoProfiles.hashCode() ^ ((((((this.defaultDurationSeconds ^ 1000003) * 1000003) ^ this.recommendedFileFormat) * 1000003) ^ this.audioProfiles.hashCode()) * 1000003);
    }

    public final String toString() {
        return "ImmutableEncoderProfilesProxy{defaultDurationSeconds=" + this.defaultDurationSeconds + ", recommendedFileFormat=" + this.recommendedFileFormat + ", audioProfiles=" + this.audioProfiles + ", videoProfiles=" + this.videoProfiles + "}";
    }
}
