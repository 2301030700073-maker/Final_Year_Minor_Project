package com.mikepenz.fastadapter;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.camera.core.impl.StreamUseCase;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback;
import app.k9mail.autodiscovery.autoconfig.AutoconfigUrlProvider;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.RequestManagerRetriever;
import com.bumptech.glide.manager.RequestManagerTreeNode;
import com.fsck.k9.glide.GlideRequests;
import java.io.ByteArrayOutputStream;
import java.util.List;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import net.thunderbird.core.common.mail.EmailAddress;
import okhttp3.HttpUrl;
import okio.Path;
import okio.internal.ResourceFileSystem;
import org.openintents.openpgp.util.OpenPgpApi;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class VerboseLogger implements MenuPresenter.Callback, CreationExtras.Key, ProfileInstaller$DiagnosticsCallback, AutoconfigUrlProvider, RequestManagerRetriever.RequestManagerFactory, BitmapPool, RequestManagerTreeNode {
    public VerboseLogger(Path.Companion companion) {
    }

    public static final boolean access$keepPath(Path path) {
        Path path2 = ResourceFileSystem.ROOT;
        return !StringsKt__StringsJVMKt.endsWith(path.name(), ".class", true);
    }

    public static SurfaceConfig create(SurfaceConfig.ConfigType configType, SurfaceConfig.ConfigSize configSize, StreamUseCase streamUseCase) {
        configSize.getClass();
        streamUseCase.getClass();
        return new SurfaceConfig(configType, configSize, streamUseCase);
    }

    public static byte[] getKeyMaterialFromApi(OpenPgpApi openPgpApi, Intent intent, String str) {
        intent.putExtra("minimize", true);
        intent.putExtra("minimize_user_id", str);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (openPgpApi.executeApi(intent, byteArrayOutputStream).getIntExtra("result_code", 0) == 1) {
            return byteArrayOutputStream.toByteArray();
        }
        return null;
    }

    public static Path removeBase(Path path, Path path2) {
        path.getClass();
        path2.getClass();
        String utf8 = path2.bytes.utf8();
        Path path3 = ResourceFileSystem.ROOT;
        String replace = StringsKt.removePrefix(path.bytes.utf8(), utf8).replace('\\', '/');
        replace.getClass();
        return path3.resolve(replace);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00d3, code lost:
    
        if (r4 <= (r6.getHeight() * r6.getWidth())) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.camera.core.impl.SurfaceConfig transformSurfaceConfig(int r5, android.util.Size r6, androidx.camera.core.impl.AutoValue_SurfaceSizeDefinition r7, int r8, androidx.camera.core.impl.SurfaceConfig.ConfigSource r9, androidx.camera.core.impl.StreamUseCase r10) {
        /*
            java.util.LinkedHashMap r0 = r7.maximumSizeMap
            r6.getClass()
            r9.getClass()
            r10.getClass()
            java.util.LinkedHashMap r1 = androidx.camera.core.impl.SurfaceConfig.CONFIG_TYPES_BY_IMAGE_FORMAT
            java.lang.Integer r2 = java.lang.Integer.valueOf(r5)
            java.lang.Object r1 = r1.get(r2)
            androidx.camera.core.impl.SurfaceConfig$ConfigType r1 = (androidx.camera.core.impl.SurfaceConfig.ConfigType) r1
            if (r1 != 0) goto L1b
            androidx.camera.core.impl.SurfaceConfig$ConfigType r1 = androidx.camera.core.impl.SurfaceConfig.ConfigType.PRIV
        L1b:
            androidx.camera.core.impl.SurfaceConfig$ConfigSize r2 = androidx.camera.core.impl.SurfaceConfig.ConfigSize.NOT_SUPPORT
            android.util.Size r3 = androidx.camera.core.internal.utils.SizeUtil.RESOLUTION_ZERO
            int r3 = r6.getWidth()
            int r4 = r6.getHeight()
            int r4 = r4 * r3
            r3 = 1
            if (r8 != r3) goto L57
            java.util.LinkedHashMap r6 = r7.s720pSizeMap
            java.lang.Integer r8 = java.lang.Integer.valueOf(r5)
            java.lang.Object r6 = r6.get(r8)
            android.util.Size r6 = (android.util.Size) r6
            int r6 = androidx.camera.core.internal.utils.SizeUtil.getArea(r6)
            if (r4 > r6) goto L41
            androidx.camera.core.impl.SurfaceConfig$ConfigSize r2 = androidx.camera.core.impl.SurfaceConfig.ConfigSize.S720P_16_9
            goto Lea
        L41:
            java.util.LinkedHashMap r6 = r7.s1440pSizeMap
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            java.lang.Object r5 = r6.get(r5)
            android.util.Size r5 = (android.util.Size) r5
            int r5 = androidx.camera.core.internal.utils.SizeUtil.getArea(r5)
            if (r4 > r5) goto Lea
            androidx.camera.core.impl.SurfaceConfig$ConfigSize r2 = androidx.camera.core.impl.SurfaceConfig.ConfigSize.S1440P_4_3
            goto Lea
        L57:
            androidx.camera.core.impl.SurfaceConfig$ConfigSource r3 = androidx.camera.core.impl.SurfaceConfig.ConfigSource.FEATURE_COMBINATION_TABLE
            if (r9 != r3) goto L87
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            java.lang.Object r5 = r0.get(r5)
            android.util.Size r5 = (android.util.Size) r5
            androidx.camera.core.impl.SurfaceConfig$ConfigSize[] r7 = androidx.camera.core.impl.SurfaceConfig.FEATURE_COMBO_QUERY_SUPPORTED_SIZES
            int r8 = r7.length
            r9 = 0
        L69:
            if (r9 >= r8) goto L7a
            r0 = r7[r9]
            android.util.Size r3 = r0.relatedFixedSize
            boolean r3 = r6.equals(r3)
            if (r3 == 0) goto L77
            r2 = r0
            goto L7a
        L77:
            int r9 = r9 + 1
            goto L69
        L7a:
            androidx.camera.core.impl.SurfaceConfig$ConfigSize r7 = androidx.camera.core.impl.SurfaceConfig.ConfigSize.NOT_SUPPORT
            if (r2 != r7) goto Lea
            boolean r5 = r6.equals(r5)
            if (r5 == 0) goto Lea
            androidx.camera.core.impl.SurfaceConfig$ConfigSize r2 = androidx.camera.core.impl.SurfaceConfig.ConfigSize.MAXIMUM
            goto Lea
        L87:
            android.util.Size r6 = r7.analysisSize
            int r6 = androidx.camera.core.internal.utils.SizeUtil.getArea(r6)
            if (r4 > r6) goto L92
            androidx.camera.core.impl.SurfaceConfig$ConfigSize r2 = androidx.camera.core.impl.SurfaceConfig.ConfigSize.VGA
            goto Lea
        L92:
            android.util.Size r6 = r7.previewSize
            int r9 = r6.getWidth()
            int r6 = r6.getHeight()
            int r6 = r6 * r9
            if (r4 > r6) goto La2
            androidx.camera.core.impl.SurfaceConfig$ConfigSize r2 = androidx.camera.core.impl.SurfaceConfig.ConfigSize.PREVIEW
            goto Lea
        La2:
            android.util.Size r6 = r7.recordSize
            int r9 = r6.getWidth()
            int r6 = r6.getHeight()
            int r6 = r6 * r9
            if (r4 > r6) goto Lb2
            androidx.camera.core.impl.SurfaceConfig$ConfigSize r2 = androidx.camera.core.impl.SurfaceConfig.ConfigSize.RECORD
            goto Lea
        Lb2:
            java.lang.Integer r6 = java.lang.Integer.valueOf(r5)
            java.lang.Object r6 = r0.get(r6)
            android.util.Size r6 = (android.util.Size) r6
            java.util.LinkedHashMap r7 = r7.ultraMaximumSizeMap
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            java.lang.Object r5 = r7.get(r5)
            android.util.Size r5 = (android.util.Size) r5
            if (r6 == 0) goto Ld5
            int r7 = r6.getWidth()
            int r6 = r6.getHeight()
            int r6 = r6 * r7
            if (r4 > r6) goto Ldb
        Ld5:
            r6 = 2
            if (r8 == r6) goto Ldb
            androidx.camera.core.impl.SurfaceConfig$ConfigSize r2 = androidx.camera.core.impl.SurfaceConfig.ConfigSize.MAXIMUM
            goto Lea
        Ldb:
            if (r5 == 0) goto Lea
            int r6 = r5.getWidth()
            int r5 = r5.getHeight()
            int r5 = r5 * r6
            if (r4 > r5) goto Lea
            androidx.camera.core.impl.SurfaceConfig$ConfigSize r2 = androidx.camera.core.impl.SurfaceConfig.ConfigSize.ULTRA_MAXIMUM
        Lea:
            androidx.camera.core.impl.SurfaceConfig r5 = create(r1, r2, r10)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mikepenz.fastadapter.VerboseLogger.transformSurfaceConfig(int, android.util.Size, androidx.camera.core.impl.AutoValue_SurfaceSizeDefinition, int, androidx.camera.core.impl.SurfaceConfig$ConfigSource, androidx.camera.core.impl.StreamUseCase):androidx.camera.core.impl.SurfaceConfig");
    }

    @Override // com.bumptech.glide.manager.RequestManagerRetriever.RequestManagerFactory
    public RequestManager build(Glide glide, Lifecycle lifecycle, RequestManagerTreeNode requestManagerTreeNode, Context context) {
        return new GlideRequests(glide, lifecycle, requestManagerTreeNode, context);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public Bitmap get(int i, int i2, Bitmap.Config config) {
        return Bitmap.createBitmap(i, i2, config);
    }

    @Override // app.k9mail.autodiscovery.autoconfig.AutoconfigUrlProvider
    /* renamed from: getAutoconfigUrls-s1GoCZM */
    public List mo822getAutoconfigUrlss1GoCZM(String str, EmailAddress emailAddress) {
        HttpUrl.Builder builder = new HttpUrl.Builder();
        builder.parse$okhttp(null, "https://autoconfig.thunderbird.net/v1.1/");
        HttpUrl.Builder newBuilder = builder.build().newBuilder();
        newBuilder.push(str, 0, str.length(), false, false);
        return IntOffsetKt.listOf(newBuilder.build());
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public Bitmap getDirty(int i, int i2, Bitmap.Config config) {
        return Bitmap.createBitmap(i, i2, config);
    }

    public boolean isPrecomputedText(CharSequence charSequence) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
    public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
        return false;
    }

    public void put(Bitmap bitmap) {
        bitmap.recycle();
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public void clearMemory() {
    }

    @Override // androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback
    public void onDiagnosticReceived() {
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public void trimMemory(int i) {
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
    }

    @Override // androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback
    public void onResultReceived(int i, Object obj) {
    }
}
