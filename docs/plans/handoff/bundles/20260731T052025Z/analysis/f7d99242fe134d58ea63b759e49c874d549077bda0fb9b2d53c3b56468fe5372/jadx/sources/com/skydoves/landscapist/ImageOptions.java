package com.skydoves.landscapist;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.unit.IntSize;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImageOptions {
    public static final int $stable = 0;
    private static final Companion Companion = new Companion();

    @Deprecated
    public static final int DEFAULT_IMAGE_SIZE = -1;
    private final Alignment alignment;
    private final float alpha;
    private final ColorFilter colorFilter;
    private final String contentDescription;
    private final ContentScale contentScale;
    private final Float placeholderAspectRatio;
    private final long requestSize;
    private final String tag;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ImageOptions(androidx.compose.ui.Alignment r11, java.lang.String r12, androidx.compose.ui.layout.ContentScale r13, androidx.compose.ui.graphics.ColorFilter r14, float r15, long r16, java.lang.String r18, java.lang.Float r19, int r20, kotlin.jvm.internal.DefaultConstructorMarker r21) {
        /*
            r10 = this;
            r0 = r20
            r1 = r0 & 1
            if (r1 == 0) goto L9
            androidx.compose.ui.BiasAlignment r1 = androidx.compose.ui.Alignment.Companion.Center
            goto La
        L9:
            r1 = r11
        La:
            r2 = r0 & 2
            r3 = 0
            if (r2 == 0) goto L11
            r2 = r3
            goto L12
        L11:
            r2 = r12
        L12:
            r4 = r0 & 4
            if (r4 == 0) goto L19
            androidx.compose.ui.layout.ContentScale$Companion$Fit$1 r4 = androidx.compose.ui.layout.ContentScale.Companion.Crop
            goto L1a
        L19:
            r4 = r13
        L1a:
            r5 = r0 & 8
            if (r5 == 0) goto L20
            r5 = r3
            goto L21
        L20:
            r5 = r14
        L21:
            r6 = r0 & 16
            if (r6 == 0) goto L28
            r6 = 1065353216(0x3f800000, float:1.0)
            goto L29
        L28:
            r6 = r15
        L29:
            r7 = r0 & 32
            if (r7 == 0) goto L30
            r7 = -1
            goto L32
        L30:
            r7 = r16
        L32:
            r9 = r0 & 64
            if (r9 == 0) goto L39
            java.lang.String r9 = ""
            goto L3b
        L39:
            r9 = r18
        L3b:
            r0 = r0 & 128(0x80, float:1.8E-43)
            if (r0 == 0) goto L40
            goto L42
        L40:
            r3 = r19
        L42:
            r0 = 0
            r11 = r10
            r21 = r0
            r12 = r1
            r13 = r2
            r20 = r3
            r14 = r4
            r15 = r5
            r16 = r6
            r17 = r7
            r19 = r9
            r11.<init>(r12, r13, r14, r15, r16, r17, r19, r20, r21)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.skydoves.landscapist.ImageOptions.<init>(androidx.compose.ui.Alignment, java.lang.String, androidx.compose.ui.layout.ContentScale, androidx.compose.ui.graphics.ColorFilter, float, long, java.lang.String, java.lang.Float, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* renamed from: copy-KoMkP_o$default, reason: not valid java name */
    public static /* synthetic */ ImageOptions m951copyKoMkP_o$default(ImageOptions imageOptions, Alignment alignment, String str, ContentScale contentScale, ColorFilter colorFilter, float f, long j, String str2, Float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            alignment = imageOptions.alignment;
        }
        if ((i & 2) != 0) {
            str = imageOptions.contentDescription;
        }
        if ((i & 4) != 0) {
            contentScale = imageOptions.contentScale;
        }
        if ((i & 8) != 0) {
            colorFilter = imageOptions.colorFilter;
        }
        if ((i & 16) != 0) {
            f = imageOptions.alpha;
        }
        if ((i & 32) != 0) {
            j = imageOptions.requestSize;
        }
        if ((i & 64) != 0) {
            str2 = imageOptions.tag;
        }
        if ((i & 128) != 0) {
            f2 = imageOptions.placeholderAspectRatio;
        }
        long j2 = j;
        ColorFilter colorFilter2 = colorFilter;
        float f3 = f;
        ContentScale contentScale2 = contentScale;
        return imageOptions.m953copyKoMkP_o(alignment, str, contentScale2, colorFilter2, f3, j2, str2, f2);
    }

    public final Alignment component1() {
        return this.alignment;
    }

    public final String component2() {
        return this.contentDescription;
    }

    public final ContentScale component3() {
        return this.contentScale;
    }

    public final ColorFilter component4() {
        return this.colorFilter;
    }

    public final float component5() {
        return this.alpha;
    }

    /* renamed from: component6-YbymL2g, reason: not valid java name */
    public final long m952component6YbymL2g() {
        return this.requestSize;
    }

    public final String component7() {
        return this.tag;
    }

    public final Float component8() {
        return this.placeholderAspectRatio;
    }

    /* renamed from: copy-KoMkP_o, reason: not valid java name */
    public final ImageOptions m953copyKoMkP_o(Alignment alignment, String str, ContentScale contentScale, ColorFilter colorFilter, float f, long j, String str2, Float f2) {
        alignment.getClass();
        contentScale.getClass();
        str2.getClass();
        return new ImageOptions(alignment, str, contentScale, colorFilter, f, j, str2, f2, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImageOptions)) {
            return false;
        }
        ImageOptions imageOptions = (ImageOptions) obj;
        return Intrinsics.areEqual(this.alignment, imageOptions.alignment) && Intrinsics.areEqual(this.contentDescription, imageOptions.contentDescription) && Intrinsics.areEqual(this.contentScale, imageOptions.contentScale) && Intrinsics.areEqual(this.colorFilter, imageOptions.colorFilter) && Float.compare(this.alpha, imageOptions.alpha) == 0 && IntSize.m768equalsimpl0(this.requestSize, imageOptions.requestSize) && Intrinsics.areEqual(this.tag, imageOptions.tag) && Intrinsics.areEqual(this.placeholderAspectRatio, imageOptions.placeholderAspectRatio);
    }

    public final Alignment getAlignment() {
        return this.alignment;
    }

    public final float getAlpha() {
        return this.alpha;
    }

    public final ColorFilter getColorFilter() {
        return this.colorFilter;
    }

    public final String getContentDescription() {
        return this.contentDescription;
    }

    public final ContentScale getContentScale() {
        return this.contentScale;
    }

    public final Object getLoadingOptionsKey() {
        return new LoadingOptionsKey(this.requestSize, this.tag);
    }

    public final Float getPlaceholderAspectRatio() {
        return this.placeholderAspectRatio;
    }

    /* renamed from: getRequestSize-YbymL2g, reason: not valid java name */
    public final long m954getRequestSizeYbymL2g() {
        return this.requestSize;
    }

    public final String getTag() {
        return this.tag;
    }

    public int hashCode() {
        int hashCode = this.alignment.hashCode() * 31;
        String str = this.contentDescription;
        int hashCode2 = (this.contentScale.hashCode() + ((hashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31;
        ColorFilter colorFilter = this.colorFilter;
        int m = Modifier.CC.m((IntSize.m769hashCodeimpl(this.requestSize) + CameraDevices$CC.m((hashCode2 + (colorFilter == null ? 0 : colorFilter.hashCode())) * 31, this.alpha, 31)) * 31, this.tag, 31);
        Float f = this.placeholderAspectRatio;
        return m + (f != null ? f.hashCode() : 0);
    }

    public final boolean isValidSize() {
        return ((int) (m954getRequestSizeYbymL2g() >> 32)) > 0 && ((int) (m954getRequestSizeYbymL2g() & 4294967295L)) > 0;
    }

    public String toString() {
        return "ImageOptions(alignment=" + this.alignment + ", contentDescription=" + this.contentDescription + ", contentScale=" + this.contentScale + ", colorFilter=" + this.colorFilter + ", alpha=" + this.alpha + ", requestSize=" + IntSize.m770toStringimpl(this.requestSize) + ", tag=" + this.tag + ", placeholderAspectRatio=" + this.placeholderAspectRatio + ")";
    }

    public static /* synthetic */ void getLoadingOptionsKey$annotations() {
    }

    private ImageOptions(Alignment alignment, String str, ContentScale contentScale, ColorFilter colorFilter, float f, long j, String str2, Float f2) {
        alignment.getClass();
        contentScale.getClass();
        str2.getClass();
        this.alignment = alignment;
        this.contentDescription = str;
        this.contentScale = contentScale;
        this.colorFilter = colorFilter;
        this.alpha = f;
        this.requestSize = j;
        this.tag = str2;
        this.placeholderAspectRatio = f2;
    }

    public /* synthetic */ ImageOptions(Alignment alignment, String str, ContentScale contentScale, ColorFilter colorFilter, float f, long j, String str2, Float f2, DefaultConstructorMarker defaultConstructorMarker) {
        this(alignment, str, contentScale, colorFilter, f, j, str2, f2);
    }
}
