package com.google.common.collect;

import android.os.Bundle;
import android.view.SurfaceView;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.CueGroup;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.cache.CacheKeyFactory;
import com.google.android.exoplayer2.util.DebugViewProvider;
import com.google.android.exoplayer2.video.ColorInfo;
import com.google.android.exoplayer2.video.VideoSize;
import com.google.android.material.textfield.TextInputLayout;
import java.util.NoSuchElementException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0 implements Bundleable.Creator, CacheKeyFactory, DebugViewProvider, TextInputLayout.LengthCounter {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    public static /* synthetic */ void m(String str, int i, Object obj, int i2, int i3) {
        throw new IndexOutOfBoundsException(str + i + obj + i2 + ((Object) ", size: ") + i3);
    }

    public static /* synthetic */ void m$1(Object obj, String str) {
        throw new IllegalStateException((str + obj).toString());
    }

    public static /* synthetic */ void m$2(String str) {
        throw new NoSuchElementException(str);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.CacheKeyFactory
    public String buildCacheKey(DataSpec dataSpec) {
        String str = dataSpec.key;
        return str != null ? str : dataSpec.uri.toString();
    }

    @Override // com.google.android.exoplayer2.Bundleable.Creator
    public Bundleable fromBundle(Bundle bundle) {
        Cue fromBundle;
        CueGroup fromBundle2;
        ColorInfo lambda$static$0;
        VideoSize lambda$static$02;
        switch (this.$r8$classId) {
            case 8:
                fromBundle = Cue.fromBundle(bundle);
                return fromBundle;
            case 9:
                fromBundle2 = CueGroup.fromBundle(bundle);
                return fromBundle2;
            case 13:
                lambda$static$0 = ColorInfo.lambda$static$0(bundle);
                return lambda$static$0;
            default:
                lambda$static$02 = VideoSize.lambda$static$0(bundle);
                return lambda$static$02;
        }
    }

    @Override // com.google.android.exoplayer2.util.DebugViewProvider
    public SurfaceView getDebugPreviewSurfaceView(int i, int i2) {
        return null;
    }

    public static /* synthetic */ void m$1(String str) {
        throw new NullPointerException(str);
    }

    public static /* synthetic */ void m() {
        throw new NoSuchElementException();
    }

    public static /* synthetic */ void m(Object obj, String str) {
        throw new IllegalArgumentException(str + obj);
    }

    public static /* synthetic */ void m(Object obj, StringBuilder sb) {
        sb.append(obj);
        throw new IllegalArgumentException(sb.toString());
    }

    public static /* synthetic */ void m(String str) {
        throw new IndexOutOfBoundsException(str);
    }

    public static /* synthetic */ void m(String str, int i, Object obj, int i2, Object obj2) {
        throw new IndexOutOfBoundsException(str + i + obj + i2 + obj2);
    }

    public static /* synthetic */ void m(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalStateException(str + obj + obj2 + obj3);
    }

    public static /* synthetic */ void m(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        throw new IllegalArgumentException((str + obj + obj2 + obj3 + obj4).toString());
    }
}
