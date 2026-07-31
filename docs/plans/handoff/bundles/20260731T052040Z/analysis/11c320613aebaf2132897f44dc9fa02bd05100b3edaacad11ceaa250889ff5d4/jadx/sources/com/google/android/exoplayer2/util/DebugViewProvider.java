package com.google.android.exoplayer2.util;

import android.view.SurfaceView;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
@Deprecated
/* loaded from: classes.dex */
public interface DebugViewProvider {
    public static final DebugViewProvider NONE = new CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0(11);

    SurfaceView getDebugPreviewSurfaceView(int i, int i2);
}
