package com.google.android.exoplayer2.util;

import android.net.Uri;
import com.google.android.exoplayer2.MediaMetadata;
import com.google.common.util.concurrent.ListenableFuture;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
@Deprecated
/* loaded from: classes.dex */
public interface BitmapLoader {
    ListenableFuture decodeBitmap(byte[] bArr);

    ListenableFuture loadBitmap(Uri uri);

    ListenableFuture loadBitmapFromMetadata(MediaMetadata mediaMetadata);
}
