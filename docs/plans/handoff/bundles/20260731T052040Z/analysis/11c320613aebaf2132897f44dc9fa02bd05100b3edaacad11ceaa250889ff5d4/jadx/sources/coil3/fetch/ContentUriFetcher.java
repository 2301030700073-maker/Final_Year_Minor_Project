package coil3.fetch;

import coil3.Uri;
import coil3.request.Options;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ContentUriFetcher implements Fetcher {
    public final Uri data;
    public final Options options;

    public ContentUriFetcher(Uri uri, Options options) {
        this.data = uri;
        this.options = options;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00ac  */
    @Override // coil3.fetch.Fetcher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object fetch(coil3.intercept.EngineInterceptor$fetch$1 r9) {
        /*
            r8 = this;
            coil3.Uri r9 = r8.data
            java.lang.String r0 = r9.data
            android.net.Uri r0 = android.net.Uri.parse(r0)
            coil3.request.Options r8 = r8.options
            android.content.Context r1 = r8.context
            android.content.ContentResolver r1 = r1.getContentResolver()
            java.lang.String r2 = r9.authority
            java.lang.String r3 = "com.android.contacts"
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)
            r4 = 0
            java.lang.String r5 = "r"
            java.lang.String r6 = "'."
            if (r3 == 0) goto L3d
            java.util.List r3 = coil3.UriKt.getPathSegments(r9)
            java.lang.Object r3 = kotlin.collections.CollectionsKt.lastOrNull(r3)
            java.lang.String r7 = "display_photo"
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r7)
            if (r3 == 0) goto L3d
            android.content.res.AssetFileDescriptor r9 = r1.openAssetFileDescriptor(r0, r5)
            if (r9 == 0) goto L37
            goto Lb8
        L37:
            java.lang.String r8 = "Unable to find a contact photo associated with '"
            coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0.m$4(r0, r6, r8)
            return r4
        L3d:
            int r3 = android.os.Build.VERSION.SDK_INT
            r7 = 29
            if (r3 < r7) goto Lb2
            java.lang.String r3 = "media"
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)
            if (r2 != 0) goto L4c
            goto Lb2
        L4c:
            java.util.List r9 = coil3.UriKt.getPathSegments(r9)
            int r2 = r9.size()
            r3 = 3
            if (r2 < r3) goto Lb2
            int r3 = r2 + (-3)
            java.lang.Object r3 = r9.get(r3)
            java.lang.String r7 = "audio"
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r7)
            if (r3 == 0) goto Lb2
            int r2 = r2 + (-2)
            java.lang.Object r9 = r9.get(r2)
            java.lang.String r2 = "albums"
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r2)
            if (r9 == 0) goto Lb2
            coil3.size.Size r9 = r8.size
            coil3.size.Dimension r2 = r9.width
            boolean r3 = r2 instanceof coil3.size.Dimension.Pixels
            if (r3 == 0) goto L7e
            coil3.size.Dimension$Pixels r2 = (coil3.size.Dimension.Pixels) r2
            goto L7f
        L7e:
            r2 = r4
        L7f:
            if (r2 == 0) goto La2
            int r2 = r2.px
            coil3.size.Dimension r9 = r9.height
            boolean r3 = r9 instanceof coil3.size.Dimension.Pixels
            if (r3 == 0) goto L8c
            coil3.size.Dimension$Pixels r9 = (coil3.size.Dimension.Pixels) r9
            goto L8d
        L8c:
            r9 = r4
        L8d:
            if (r9 == 0) goto La2
            int r9 = r9.px
            android.os.Bundle r3 = new android.os.Bundle
            r5 = 1
            r3.<init>(r5)
            android.graphics.Point r5 = new android.graphics.Point
            r5.<init>(r2, r9)
            java.lang.String r9 = "android.content.extra.SIZE"
            r3.putParcelable(r9, r5)
            goto La3
        La2:
            r3 = r4
        La3:
            java.lang.String r9 = "image/*"
            android.content.res.AssetFileDescriptor r9 = r1.openTypedAssetFile(r0, r9, r3, r4)
            if (r9 == 0) goto Lac
            goto Lb8
        Lac:
            java.lang.String r8 = "Unable to find a music thumbnail associated with '"
            coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0.m$4(r0, r6, r8)
            return r4
        Lb2:
            android.content.res.AssetFileDescriptor r9 = r1.openAssetFileDescriptor(r0, r5)
            if (r9 == 0) goto Ldd
        Lb8:
            coil3.fetch.SourceFetchResult r2 = new coil3.fetch.SourceFetchResult
            java.io.FileInputStream r3 = r9.createInputStream()
            okio.InputStreamSource r3 = okio.Okio.source(r3)
            okio.RealBufferedSource r4 = new okio.RealBufferedSource
            r4.<init>(r3)
            okio.FileSystem r8 = r8.fileSystem
            coil3.decode.ContentMetadata r3 = new coil3.decode.ContentMetadata
            r3.<init>(r9)
            coil3.decode.SourceImageSource r9 = new coil3.decode.SourceImageSource
            r9.<init>(r4, r8, r3)
            java.lang.String r8 = r1.getType(r0)
            coil3.decode.DataSource r0 = coil3.decode.DataSource.DISK
            r2.<init>(r9, r8, r0)
            return r2
        Ldd:
            java.lang.String r8 = "Unable to open '"
            coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0.m$4(r0, r6, r8)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.fetch.ContentUriFetcher.fetch(coil3.intercept.EngineInterceptor$fetch$1):java.lang.Object");
    }
}
