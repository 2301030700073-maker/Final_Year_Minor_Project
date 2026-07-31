package androidx.camera.core.impl;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutoValue_EncoderProfilesProxy_AudioProfileProxy {
    public final int bitrate;
    public final int channels;
    public final int codec;
    public final String mediaType;
    public final int profile;
    public final int sampleRate;

    public AutoValue_EncoderProfilesProxy_AudioProfileProxy(int i, String str, int i2, int i3, int i4, int i5) {
        this.codec = i;
        if (str == null) {
            Regex$$ExternalSyntheticBUOutline0.m("Null mediaType");
            throw null;
        }
        this.mediaType = str;
        this.bitrate = i2;
        this.sampleRate = i3;
        this.channels = i4;
        this.profile = i5;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AutoValue_EncoderProfilesProxy_AudioProfileProxy) {
            AutoValue_EncoderProfilesProxy_AudioProfileProxy autoValue_EncoderProfilesProxy_AudioProfileProxy = (AutoValue_EncoderProfilesProxy_AudioProfileProxy) obj;
            if (this.codec == autoValue_EncoderProfilesProxy_AudioProfileProxy.codec && this.mediaType.equals(autoValue_EncoderProfilesProxy_AudioProfileProxy.mediaType) && this.bitrate == autoValue_EncoderProfilesProxy_AudioProfileProxy.bitrate && this.sampleRate == autoValue_EncoderProfilesProxy_AudioProfileProxy.sampleRate && this.channels == autoValue_EncoderProfilesProxy_AudioProfileProxy.channels && this.profile == autoValue_EncoderProfilesProxy_AudioProfileProxy.profile) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.profile ^ ((((((((((this.codec ^ 1000003) * 1000003) ^ this.mediaType.hashCode()) * 1000003) ^ this.bitrate) * 1000003) ^ this.sampleRate) * 1000003) ^ this.channels) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AudioProfileProxy{codec=");
        sb.append(this.codec);
        sb.append(", mediaType=");
        sb.append(this.mediaType);
        sb.append(", bitrate=");
        sb.append(this.bitrate);
        sb.append(", sampleRate=");
        sb.append(this.sampleRate);
        sb.append(", channels=");
        sb.append(this.channels);
        sb.append(", profile=");
        return CameraDevices$CC.m(sb, this.profile, "}");
    }
}
