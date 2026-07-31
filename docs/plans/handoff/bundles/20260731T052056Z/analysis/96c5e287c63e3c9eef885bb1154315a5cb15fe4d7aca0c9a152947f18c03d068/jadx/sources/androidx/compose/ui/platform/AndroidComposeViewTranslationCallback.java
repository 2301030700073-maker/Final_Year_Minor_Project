package androidx.compose.ui.platform;

import android.view.View;
import android.view.translation.ViewTranslationCallback;
import androidx.collection.IntObjectMap;
import androidx.collection.MutableScatterMap;
import androidx.compose.ui.contentcapture.AndroidContentCaptureManager;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsNodeWithAdjustedBounds;
import androidx.compose.ui.semantics.SemanticsProperties;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidComposeViewTranslationCallback implements ViewTranslationCallback {
    public static final AndroidComposeViewTranslationCallback INSTANCE = new AndroidComposeViewTranslationCallback();

    public final boolean onClearTranslation(View view) {
        Function0 function0;
        view.getClass();
        AndroidContentCaptureManager contentCaptureManager$ui = ((AndroidComposeView) view).getContentCaptureManager$ui();
        contentCaptureManager$ui.getClass();
        contentCaptureManager$ui.translateStatus = AndroidContentCaptureManager.TranslateStatus.SHOW_ORIGINAL;
        IntObjectMap currentSemanticsNodes$ui = contentCaptureManager$ui.getCurrentSemanticsNodes$ui();
        Object[] objArr = currentSemanticsNodes$ui.values;
        long[] jArr = currentSemanticsNodes$ui.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return true;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        MutableScatterMap mutableScatterMap = ((SemanticsNodeWithAdjustedBounds) objArr[(i << 3) + i3]).semanticsNode.unmergedConfig.props;
                        Object obj = mutableScatterMap.get(SemanticsProperties.IsShowingTextSubstitution);
                        if (obj == null) {
                            obj = null;
                        }
                        if (obj != null) {
                            Object obj2 = mutableScatterMap.get(SemanticsActions.ClearTextSubstitution);
                            AccessibilityAction accessibilityAction = (AccessibilityAction) (obj2 != null ? obj2 : null);
                            if (accessibilityAction != null && (function0 = (Function0) accessibilityAction.action) != null) {
                            }
                        }
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return true;
                }
            }
            if (i == length) {
                return true;
            }
            i++;
        }
    }

    public final boolean onHideTranslation(View view) {
        Function1 function1;
        view.getClass();
        AndroidContentCaptureManager contentCaptureManager$ui = ((AndroidComposeView) view).getContentCaptureManager$ui();
        contentCaptureManager$ui.getClass();
        contentCaptureManager$ui.translateStatus = AndroidContentCaptureManager.TranslateStatus.SHOW_ORIGINAL;
        IntObjectMap currentSemanticsNodes$ui = contentCaptureManager$ui.getCurrentSemanticsNodes$ui();
        Object[] objArr = currentSemanticsNodes$ui.values;
        long[] jArr = currentSemanticsNodes$ui.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return true;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        MutableScatterMap mutableScatterMap = ((SemanticsNodeWithAdjustedBounds) objArr[(i << 3) + i3]).semanticsNode.unmergedConfig.props;
                        Object obj = mutableScatterMap.get(SemanticsProperties.IsShowingTextSubstitution);
                        if (obj == null) {
                            obj = null;
                        }
                        if (Intrinsics.areEqual(obj, Boolean.TRUE)) {
                            Object obj2 = mutableScatterMap.get(SemanticsActions.ShowTextSubstitution);
                            AccessibilityAction accessibilityAction = (AccessibilityAction) (obj2 != null ? obj2 : null);
                            if (accessibilityAction != null && (function1 = (Function1) accessibilityAction.action) != null) {
                            }
                        }
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return true;
                }
            }
            if (i == length) {
                return true;
            }
            i++;
        }
    }

    public final boolean onShowTranslation(View view) {
        Function1 function1;
        view.getClass();
        AndroidContentCaptureManager contentCaptureManager$ui = ((AndroidComposeView) view).getContentCaptureManager$ui();
        contentCaptureManager$ui.getClass();
        contentCaptureManager$ui.translateStatus = AndroidContentCaptureManager.TranslateStatus.SHOW_TRANSLATED;
        IntObjectMap currentSemanticsNodes$ui = contentCaptureManager$ui.getCurrentSemanticsNodes$ui();
        Object[] objArr = currentSemanticsNodes$ui.values;
        long[] jArr = currentSemanticsNodes$ui.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return true;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        MutableScatterMap mutableScatterMap = ((SemanticsNodeWithAdjustedBounds) objArr[(i << 3) + i3]).semanticsNode.unmergedConfig.props;
                        Object obj = mutableScatterMap.get(SemanticsProperties.IsShowingTextSubstitution);
                        if (obj == null) {
                            obj = null;
                        }
                        if (Intrinsics.areEqual(obj, Boolean.FALSE)) {
                            Object obj2 = mutableScatterMap.get(SemanticsActions.ShowTextSubstitution);
                            AccessibilityAction accessibilityAction = (AccessibilityAction) (obj2 != null ? obj2 : null);
                            if (accessibilityAction != null && (function1 = (Function1) accessibilityAction.action) != null) {
                            }
                        }
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return true;
                }
            }
            if (i == length) {
                return true;
            }
            i++;
        }
    }
}
