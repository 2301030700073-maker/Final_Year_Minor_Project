package com.google.android.exoplayer2.extractor;

import android.net.Uri;
import com.google.android.exoplayer2.audio.AudioAttributes$$ExternalSyntheticLambda0;
import java.util.List;
import java.util.Map;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
@Deprecated
/* loaded from: classes.dex */
public interface ExtractorsFactory {
    public static final ExtractorsFactory EMPTY = new AudioAttributes$$ExternalSyntheticLambda0(7);

    Extractor[] createExtractors();

    Extractor[] createExtractors(Uri uri, Map<String, List<String>> map);
}
