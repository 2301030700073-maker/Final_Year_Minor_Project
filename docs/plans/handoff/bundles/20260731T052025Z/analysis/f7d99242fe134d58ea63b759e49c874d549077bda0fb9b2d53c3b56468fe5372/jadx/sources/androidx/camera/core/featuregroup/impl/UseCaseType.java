package androidx.camera.core.featuregroup.impl;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.jcraft.jzlib.Adler32;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public enum UseCaseType {
    PREVIEW("PREVIEW"),
    IMAGE_CAPTURE("IMAGE_CAPTURE"),
    IMAGE_ANALYSIS("IMAGE_ANALYSIS"),
    VIDEO_CAPTURE("VIDEO_CAPTURE"),
    STREAM_SHARING("STREAM_SHARING"),
    UNDEFINED("UNDEFINED");

    public static final Adler32 Companion = new Adler32(2);
    public final Class surfaceClass;

    UseCaseType(String str) {
        this.surfaceClass = r2;
    }

    @Override // java.lang.Enum
    public final String toString() {
        int ordinal = ordinal();
        if (ordinal == 0) {
            return "Preview";
        }
        if (ordinal == 1) {
            return "ImageCapture";
        }
        if (ordinal == 2) {
            return "ImageAnalysis";
        }
        if (ordinal == 3) {
            return "VideoCapture";
        }
        if (ordinal == 4) {
            return "StreamSharing";
        }
        if (ordinal == 5) {
            return "Undefined";
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return null;
    }
}
