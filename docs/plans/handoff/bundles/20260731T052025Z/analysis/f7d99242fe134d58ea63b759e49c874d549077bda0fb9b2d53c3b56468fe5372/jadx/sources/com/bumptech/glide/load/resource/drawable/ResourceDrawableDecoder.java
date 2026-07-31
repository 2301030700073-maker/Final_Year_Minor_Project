package com.bumptech.glide.load.resource.drawable;

import android.content.Context;
import android.net.Uri;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ResourceDrawableDecoder implements ResourceDecoder {
    public static final Option THEME = new Option("com.bumptech.glide.load.resource.bitmap.Downsampler.Theme", null, Option.EMPTY_UPDATER);
    public final Context context;

    public ResourceDrawableDecoder(Context context) {
        this.context = context.getApplicationContext();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.bumptech.glide.load.engine.Resource decode(android.net.Uri r9, com.bumptech.glide.load.Options r10) {
        /*
            r8 = this;
            java.lang.String r0 = r9.getAuthority()
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            r2 = 0
            if (r1 != 0) goto Ld0
            android.content.Context r8 = r8.context
            java.lang.String r1 = r8.getPackageName()
            boolean r1 = r0.equals(r1)
            r3 = 0
            if (r1 == 0) goto L1a
        L18:
            r1 = r8
            goto L2b
        L1a:
            android.content.Context r1 = r8.createPackageContext(r0, r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L1f
            goto L2b
        L1f:
            r1 = move-exception
            java.lang.String r4 = r8.getPackageName()
            boolean r4 = r0.contains(r4)
            if (r4 == 0) goto Lbc
            goto L18
        L2b:
            java.util.List r4 = r9.getPathSegments()
            int r5 = r4.size()
            r6 = 2
            r7 = 1
            if (r5 != r6) goto L68
            java.util.List r4 = r9.getPathSegments()
            java.lang.String r5 = r9.getAuthority()
            java.lang.Object r3 = r4.get(r3)
            java.lang.String r3 = (java.lang.String) r3
            java.lang.Object r4 = r4.get(r7)
            java.lang.String r4 = (java.lang.String) r4
            android.content.res.Resources r6 = r1.getResources()
            int r5 = r6.getIdentifier(r4, r3, r5)
            if (r5 != 0) goto L5f
            android.content.res.Resources r5 = android.content.res.Resources.getSystem()
            java.lang.String r6 = "android"
            int r5 = r5.getIdentifier(r4, r3, r6)
        L5f:
            if (r5 == 0) goto L62
            goto L7e
        L62:
            java.lang.String r8 = "Failed to find resource id for: "
            kotlin.text.Regex$$ExternalSyntheticBUOutline0.m$2(r9, r8)
            return r2
        L68:
            int r4 = r4.size()
            java.lang.String r5 = "Unrecognized Uri format: "
            if (r4 != r7) goto Lb8
            java.util.List r4 = r9.getPathSegments()
            java.lang.Object r3 = r4.get(r3)     // Catch: java.lang.NumberFormatException -> La5
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.NumberFormatException -> La5
            int r5 = java.lang.Integer.parseInt(r3)     // Catch: java.lang.NumberFormatException -> La5
        L7e:
            java.lang.String r9 = r8.getPackageName()
            boolean r9 = r0.equals(r9)
            if (r9 == 0) goto L91
            com.bumptech.glide.load.Option r9 = com.bumptech.glide.load.resource.drawable.ResourceDrawableDecoder.THEME
            java.lang.Object r9 = r10.get(r9)
            android.content.res.Resources$Theme r9 = (android.content.res.Resources.Theme) r9
            goto L92
        L91:
            r9 = r2
        L92:
            if (r9 != 0) goto L99
            android.graphics.drawable.Drawable r8 = androidx.compose.ui.unit.IntRectKt.getDrawable(r8, r1, r5, r2)
            goto L9d
        L99:
            android.graphics.drawable.Drawable r8 = androidx.compose.ui.unit.IntRectKt.getDrawable(r8, r8, r5, r9)
        L9d:
            if (r8 == 0) goto La4
            com.bumptech.glide.load.resource.gif.GifDrawableResource r2 = new com.bumptech.glide.load.resource.gif.GifDrawableResource
            r2.<init>(r8, r7)
        La4:
            return r2
        La5:
            r8 = move-exception
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>(r5)
            r0.append(r9)
            java.lang.String r9 = r0.toString()
            r10.<init>(r9, r8)
            throw r10
        Lb8:
            kotlin.text.Regex$$ExternalSyntheticBUOutline0.m$2(r9, r5)
            return r2
        Lbc:
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            java.lang.String r0 = "Failed to obtain context or unrecognized Uri format for: "
            r10.<init>(r0)
            r10.append(r9)
            java.lang.String r9 = r10.toString()
            r8.<init>(r9, r1)
            throw r8
        Ld0:
            java.lang.String r8 = "Package name for "
            java.lang.String r10 = " is null or empty"
            androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0.m$1(r9, r10, r8)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.drawable.ResourceDrawableDecoder.decode(android.net.Uri, com.bumptech.glide.load.Options):com.bumptech.glide.load.engine.Resource");
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final boolean handles(Object obj, Options options) {
        String scheme = ((Uri) obj).getScheme();
        return scheme != null && scheme.equals("android.resource");
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final /* bridge */ /* synthetic */ Resource decode(Object obj, int i, int i2, Options options) {
        return decode((Uri) obj, options);
    }
}
