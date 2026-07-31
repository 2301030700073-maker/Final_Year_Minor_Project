package coil3.util;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.compose.ui.Modifier;
import coil3.Image;
import coil3.request.ErrorResult;
import coil3.request.ImageRequest;
import coil3.request.NullRequestDataException;
import j$.util.DesugarCollections;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.FileSystem;
import okio.Path;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class UtilsKt {
    public static final ErrorResult ErrorResult(ImageRequest imageRequest, Throwable th) {
        Image image;
        if (th instanceof NullRequestDataException) {
            Function1 function1 = imageRequest.fallbackFactory;
            ImageRequest.Defaults defaults = imageRequest.defaults;
            image = (Image) function1.invoke(imageRequest);
            if (image == null) {
                image = (Image) defaults.fallbackFactory.invoke(imageRequest);
            }
            if (image == null && (image = (Image) imageRequest.errorFactory.invoke(imageRequest)) == null) {
                image = (Image) defaults.errorFactory.invoke(imageRequest);
            }
        } else {
            image = (Image) imageRequest.errorFactory.invoke(imageRequest);
            if (image == null) {
                image = (Image) imageRequest.defaults.errorFactory.invoke(imageRequest);
            }
        }
        return new ErrorResult(image, imageRequest, th);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object awaitStarted(androidx.lifecycle.Lifecycle r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            boolean r0 = r6 instanceof coil3.util.LifecyclesKt$awaitStarted$1
            if (r0 == 0) goto L13
            r0 = r6
            coil3.util.LifecyclesKt$awaitStarted$1 r0 = (coil3.util.LifecyclesKt$awaitStarted$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            coil3.util.LifecyclesKt$awaitStarted$1 r0 = new coil3.util.LifecyclesKt$awaitStarted$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            int r1 = r0.label
            kotlin.Unit r2 = kotlin.Unit.INSTANCE
            r3 = 1
            if (r1 == 0) goto L38
            if (r1 != r3) goto L31
            java.lang.Object r5 = r0.L$1
            kotlin.jvm.internal.Ref$ObjectRef r5 = (kotlin.jvm.internal.Ref$ObjectRef) r5
            java.lang.Object r0 = r0.L$0
            androidx.lifecycle.Lifecycle r0 = (androidx.lifecycle.Lifecycle) r0
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L2f
            goto L75
        L2f:
            r6 = move-exception
            goto L84
        L31:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r5)
            r5 = 0
            return r5
        L38:
            kotlin.ResultKt.throwOnFailure(r6)
            r6 = r5
            androidx.lifecycle.LifecycleRegistry r6 = (androidx.lifecycle.LifecycleRegistry) r6
            androidx.lifecycle.Lifecycle$State r6 = r6.state
            androidx.lifecycle.Lifecycle$State r1 = androidx.lifecycle.Lifecycle.State.STARTED
            int r6 = r6.compareTo(r1)
            if (r6 < 0) goto L49
            return r2
        L49:
            kotlin.jvm.internal.Ref$ObjectRef r6 = new kotlin.jvm.internal.Ref$ObjectRef
            r6.<init>()
            r0.L$0 = r5     // Catch: java.lang.Throwable -> L7f
            r0.L$1 = r6     // Catch: java.lang.Throwable -> L7f
            r0.label = r3     // Catch: java.lang.Throwable -> L7f
            kotlinx.coroutines.CancellableContinuationImpl r1 = new kotlinx.coroutines.CancellableContinuationImpl     // Catch: java.lang.Throwable -> L7f
            kotlin.coroutines.Continuation r0 = kotlin.text.UStringsKt.intercepted(r0)     // Catch: java.lang.Throwable -> L7f
            r1.<init>(r3, r0)     // Catch: java.lang.Throwable -> L7f
            r1.initCancellability()     // Catch: java.lang.Throwable -> L7f
            coil3.util.LifecyclesKt$awaitStarted$2$1 r0 = new coil3.util.LifecyclesKt$awaitStarted$2$1     // Catch: java.lang.Throwable -> L7f
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L7f
            r6.element = r0     // Catch: java.lang.Throwable -> L7f
            r5.addObserver(r0)     // Catch: java.lang.Throwable -> L7f
            java.lang.Object r0 = r1.getResult()     // Catch: java.lang.Throwable -> L7f
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 != r1) goto L73
            return r1
        L73:
            r0 = r5
            r5 = r6
        L75:
            java.lang.Object r5 = r5.element
            androidx.lifecycle.LifecycleObserver r5 = (androidx.lifecycle.LifecycleObserver) r5
            if (r5 == 0) goto L7e
            r0.removeObserver(r5)
        L7e:
            return r2
        L7f:
            r0 = move-exception
            r4 = r0
            r0 = r5
            r5 = r6
            r6 = r4
        L84:
            java.lang.Object r5 = r5.element
            androidx.lifecycle.LifecycleObserver r5 = (androidx.lifecycle.LifecycleObserver) r5
            if (r5 == 0) goto L8d
            r0.removeObserver(r5)
        L8d:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.util.UtilsKt.awaitStarted(androidx.lifecycle.Lifecycle, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x005a, code lost:
    
        if (r2 == 1.0d) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap convertToBitmap(android.graphics.drawable.Drawable r16, android.graphics.Bitmap.Config r17, coil3.size.Size r18, coil3.size.Scale r19, coil3.size.Size r20, boolean r21) {
        /*
            r0 = r16
            r1 = r18
            r4 = r19
            r5 = r20
            boolean r2 = r0 instanceof android.graphics.drawable.BitmapDrawable
            r8 = 4294967295(0xffffffff, double:2.1219957905E-314)
            r10 = 32
            if (r2 == 0) goto L5d
            r2 = r0
            android.graphics.drawable.BitmapDrawable r2 = (android.graphics.drawable.BitmapDrawable) r2
            android.graphics.Bitmap r11 = r2.getBitmap()
            android.graphics.Bitmap$Config r2 = r11.getConfig()
            if (r17 == 0) goto L2a
            boolean r3 = coil3.util.BitmapsKt.isHardware(r17)
            if (r3 == 0) goto L27
            goto L2a
        L27:
            r3 = r17
            goto L2c
        L2a:
            android.graphics.Bitmap$Config r3 = android.graphics.Bitmap.Config.ARGB_8888
        L2c:
            if (r2 != r3) goto L5d
            if (r21 == 0) goto L31
            goto L5c
        L31:
            int r2 = r11.getWidth()
            int r3 = r11.getHeight()
            long r2 = kotlin.text.CharsKt.m670computeDstSizesEdh43o(r2, r3, r1, r4, r5)
            long r6 = r2 >> r10
            int r6 = (int) r6
            long r2 = r2 & r8
            int r2 = (int) r2
            r5 = r2
            int r2 = r11.getWidth()
            int r3 = r11.getHeight()
            r7 = r6
            r6 = r4
            r4 = r7
            r7 = r20
            double r2 = kotlin.text.CharsKt.computeSizeMultiplier(r2, r3, r4, r5, r6, r7)
            r4 = r6
            r5 = r7
            r6 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r2 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r2 != 0) goto L5d
        L5c:
            return r11
        L5d:
            android.graphics.drawable.Drawable r6 = r0.mutate()
            int r0 = coil3.util.Utils_androidKt.getWidth(r6)
            r2 = 512(0x200, float:7.17E-43)
            if (r0 <= 0) goto L6a
            goto L6b
        L6a:
            r0 = r2
        L6b:
            int r3 = coil3.util.Utils_androidKt.getHeight(r6)
            if (r3 <= 0) goto L72
            r2 = r3
        L72:
            long r11 = kotlin.text.CharsKt.m670computeDstSizesEdh43o(r0, r2, r1, r4, r5)
            long r13 = r11 >> r10
            int r1 = (int) r13
            long r8 = r8 & r11
            int r3 = (int) r8
            r15 = r2
            r2 = r1
            r1 = r15
            double r2 = kotlin.text.CharsKt.computeSizeMultiplier(r0, r1, r2, r3, r4, r5)
            double r4 = (double) r0
            double r4 = r4 * r2
            int r0 = kotlin.math.MathKt.roundToInt(r4)
            double r4 = (double) r1
            double r2 = r2 * r4
            int r1 = kotlin.math.MathKt.roundToInt(r2)
            if (r17 == 0) goto L9a
            boolean r2 = coil3.util.BitmapsKt.isHardware(r17)
            if (r2 == 0) goto L97
            goto L9a
        L97:
            r2 = r17
            goto L9c
        L9a:
            android.graphics.Bitmap$Config r2 = android.graphics.Bitmap.Config.ARGB_8888
        L9c:
            android.graphics.Bitmap r2 = android.graphics.Bitmap.createBitmap(r0, r1, r2)
            android.graphics.Rect r3 = r6.getBounds()
            int r4 = r3.left
            int r5 = r3.top
            int r7 = r3.right
            int r3 = r3.bottom
            r8 = 0
            r6.setBounds(r8, r8, r0, r1)
            android.graphics.Canvas r0 = new android.graphics.Canvas
            r0.<init>(r2)
            r6.draw(r0)
            r6.setBounds(r4, r5, r7, r3)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.util.UtilsKt.convertToBitmap(android.graphics.drawable.Drawable, android.graphics.Bitmap$Config, coil3.size.Size, coil3.size.Scale, coil3.size.Size, boolean):android.graphics.Bitmap");
    }

    public static void createFile$default(FileSystem fileSystem, Path path) {
        if (fileSystem.exists(path)) {
            return;
        }
        try {
            fileSystem.sink(path, false).close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception unused) {
        }
    }

    public static final void deleteContents(FileSystem fileSystem, Path path) {
        try {
            IOException iOException = null;
            for (Path path2 : fileSystem.list(path)) {
                try {
                    if (fileSystem.metadata(path2).isDirectory) {
                        deleteContents(fileSystem, path2);
                    }
                    fileSystem.delete(path2);
                } catch (IOException e) {
                    if (iOException == null) {
                        iOException = e;
                    }
                }
            }
            if (iOException != null) {
                throw iOException;
            }
        } catch (FileNotFoundException unused) {
        }
    }

    public static final Drawable getDrawableCompat(Context context, int i) {
        Drawable drawable = Cookie.Companion.getDrawable(context, i);
        if (drawable != null) {
            return drawable;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m((Object) Modifier.CC.m(i, "Invalid resource ID: "));
        return null;
    }

    public static final List toImmutableList(List list) {
        int size = list.size();
        return size != 0 ? size != 1 ? DesugarCollections.unmodifiableList(new ArrayList(list)) : Collections.singletonList(CollectionsKt.first(list)) : EmptyList.INSTANCE;
    }

    public static final Map toImmutableMap(Map map) {
        int size = map.size();
        if (size == 0) {
            return EmptyMap.INSTANCE;
        }
        if (size != 1) {
            return DesugarCollections.unmodifiableMap(new LinkedHashMap(map));
        }
        Map.Entry entry = (Map.Entry) CollectionsKt.first(map.entrySet());
        return Collections.singletonMap(entry.getKey(), entry.getValue());
    }
}
