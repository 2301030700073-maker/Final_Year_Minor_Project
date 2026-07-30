package org.fdroid.fdroid;

import android.text.format.DateUtils;
import android.util.Log;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.UriHandler;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import ch.qos.logback.core.CoreConstants;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* compiled from: Utils.kt */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0001H\u0086@¢\u0006\u0002\u0010\u0007\u001a\n\u0010\u000b\u001a\u00020\u0001*\u00020\f\u001aC\u0010\r\u001a\u00020\u000e*\u00020\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0010H\u0007¢\u0006\u0004\b\u0014\u0010\u0015\u001a\u0012\u0010\u0016\u001a\u00020\u0017*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0001\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u0017\u0010\b\u001a\u0004\u0018\u00010\u0001*\u00020\u00018F¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\u001a"}, d2 = {"TAG", "", "generateQrBitmapKt", "Landroid/graphics/Bitmap;", "activity", "Landroidx/appcompat/app/AppCompatActivity;", "qrData", "(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "flagEmoji", "getFlagEmoji", "(Ljava/lang/String;)Ljava/lang/String;", "asRelativeTimeString", "", "copy", "Landroidx/compose/foundation/layout/PaddingValues;", "start", "Landroidx/compose/ui/unit/Dp;", "top", "end", "bottom", "copy-cKdBLrg", "(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/Dp;Landroidx/compose/ui/unit/Dp;Landroidx/compose/ui/unit/Dp;Landroidx/compose/ui/unit/Dp;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/layout/PaddingValues;", "openUriSafe", "", "Landroidx/compose/ui/platform/UriHandler;", "uri", "app_fullRelease"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class UtilsKt {
    private static final String TAG = "Utils";

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object generateQrBitmapKt(androidx.appcompat.app.AppCompatActivity r5, java.lang.String r6, kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof org.fdroid.fdroid.UtilsKt$generateQrBitmapKt$1
            if (r0 == 0) goto L13
            r0 = r7
            org.fdroid.fdroid.UtilsKt$generateQrBitmapKt$1 r0 = (org.fdroid.fdroid.UtilsKt$generateQrBitmapKt$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.fdroid.fdroid.UtilsKt$generateQrBitmapKt$1 r0 = new org.fdroid.fdroid.UtilsKt$generateQrBitmapKt$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r7)
            goto L47
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.CoroutineDispatcher r7 = kotlinx.coroutines.Dispatchers.getDefault()
            org.fdroid.fdroid.UtilsKt$generateQrBitmapKt$2 r2 = new org.fdroid.fdroid.UtilsKt$generateQrBitmapKt$2
            r4 = 0
            r2.<init>(r5, r6, r4)
            r0.label = r3
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r7, r2, r0)
            if (r7 != r1) goto L47
            return r1
        L47:
            java.lang.String r5 = "withContext(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r5)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fdroid.fdroid.UtilsKt.generateQrBitmapKt(androidx.appcompat.app.AppCompatActivity, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final String getFlagEmoji(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (str.length() != 2) {
            return null;
        }
        String upperCase = str.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        char[] charArray = upperCase.toCharArray();
        Intrinsics.checkNotNullExpressionValue(charArray, "toCharArray(...)");
        int i = charArray[0] - 3675;
        int i2 = charArray[1] - 3675;
        char[] chars = Character.toChars(i);
        Intrinsics.checkNotNullExpressionValue(chars, "toChars(...)");
        char[] chars2 = Character.toChars(i2);
        Intrinsics.checkNotNullExpressionValue(chars2, "toChars(...)");
        return new String(ArraysKt.plus(chars, chars2));
    }

    public static final String asRelativeTimeString(long j) {
        return DateUtils.getRelativeTimeSpanString(j, System.currentTimeMillis(), CoreConstants.MILLIS_IN_ONE_MINUTE, PKIFailureInfo.signerNotTrusted).toString();
    }

    /* renamed from: copy-cKdBLrg, reason: not valid java name */
    public static final PaddingValues m2969copycKdBLrg(PaddingValues copy, Dp dp, Dp dp2, Dp dp3, Dp dp4, Composer composer, int i, int i2) {
        Intrinsics.checkNotNullParameter(copy, "$this$copy");
        composer.startReplaceGroup(393674536);
        if ((i2 & 1) != 0) {
            dp = null;
        }
        if ((i2 & 2) != 0) {
            dp2 = null;
        }
        if ((i2 & 4) != 0) {
            dp3 = null;
        }
        if ((i2 & 8) != 0) {
            dp4 = null;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(393674536, i, -1, "org.fdroid.fdroid.copy (Utils.kt:82)");
        }
        LayoutDirection layoutDirection = (LayoutDirection) composer.consume(CompositionLocalsKt.getLocalLayoutDirection());
        PaddingValues m264PaddingValuesa9UjIt4 = PaddingKt.m264PaddingValuesa9UjIt4(dp != null ? dp.m2430unboximpl() : PaddingKt.calculateStartPadding(copy, layoutDirection), dp2 != null ? dp2.m2430unboximpl() : copy.mo259calculateTopPaddingD9Ej5fM(), dp3 != null ? dp3.m2430unboximpl() : PaddingKt.calculateEndPadding(copy, layoutDirection), dp4 != null ? dp4.m2430unboximpl() : copy.mo256calculateBottomPaddingD9Ej5fM());
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return m264PaddingValuesa9UjIt4;
    }

    public static final void openUriSafe(UriHandler uriHandler, String uri) {
        Intrinsics.checkNotNullParameter(uriHandler, "<this>");
        Intrinsics.checkNotNullParameter(uri, "uri");
        try {
            uriHandler.openUri(uri);
        } catch (Exception e) {
            Log.e("UriHandler", "Error opening " + uri + " ", e);
        }
    }
}
