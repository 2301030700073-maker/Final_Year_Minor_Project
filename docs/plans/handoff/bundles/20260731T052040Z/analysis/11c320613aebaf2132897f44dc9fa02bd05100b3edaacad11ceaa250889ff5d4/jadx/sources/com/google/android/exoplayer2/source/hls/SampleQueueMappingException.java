package com.google.android.exoplayer2.source.hls;

import androidx.compose.ui.Modifier;
import java.io.IOException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
@Deprecated
/* loaded from: classes.dex */
public final class SampleQueueMappingException extends IOException {
    public SampleQueueMappingException(String str) {
        super(Modifier.CC.m("Unable to bind a sample queue to TrackGroup with MIME type ", str, "."));
    }
}
