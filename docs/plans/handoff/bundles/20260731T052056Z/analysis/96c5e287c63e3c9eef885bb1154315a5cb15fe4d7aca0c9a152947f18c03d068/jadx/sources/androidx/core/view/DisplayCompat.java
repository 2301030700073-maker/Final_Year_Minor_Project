package androidx.core.view;

import android.app.job.JobParameters;
import android.graphics.Path;
import android.os.Build;
import android.util.LongSparseArray;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.RoundedCorner;
import android.view.translation.TranslationRequestValue;
import android.view.translation.TranslationResponseValue;
import android.view.translation.ViewTranslationRequest;
import android.view.translation.ViewTranslationResponse;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.contentcapture.AndroidContentCaptureManager;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNodeWithAdjustedBounds;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.util.ListUtilsKt;
import androidx.work.impl.background.systemjob.SystemJobService;
import java.util.List;
import java.util.function.Consumer;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class DisplayCompat {
    public static void doTranslation(AndroidContentCaptureManager androidContentCaptureManager, LongSparseArray longSparseArray) {
        TranslationResponseValue value;
        CharSequence text;
        SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds;
        SemanticsNode semanticsNode;
        Function1 function1;
        int size = longSparseArray.size();
        for (int i = 0; i < size; i++) {
            long keyAt = longSparseArray.keyAt(i);
            ViewTranslationResponse viewTranslationResponse = (ViewTranslationResponse) longSparseArray.get(keyAt);
            if (viewTranslationResponse != null && (value = viewTranslationResponse.getValue("android:text")) != null && (text = value.getText()) != null && (semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) androidContentCaptureManager.getCurrentSemanticsNodes$ui().get((int) keyAt)) != null && (semanticsNode = semanticsNodeWithAdjustedBounds.semanticsNode) != null) {
                Object obj = semanticsNode.unmergedConfig.props.get(SemanticsActions.SetTextSubstitution);
                if (obj == null) {
                    obj = null;
                }
                AccessibilityAction accessibilityAction = (AccessibilityAction) obj;
                if (accessibilityAction != null && (function1 = (Function1) accessibilityAction.action) != null) {
                }
            }
        }
    }

    public static Path getCutoutPath(DisplayCutout displayCutout) {
        return displayCutout.getCutoutPath();
    }

    public static RoundedCornerCompat getRoundedCorner(Display display, int i) {
        RoundedCorner roundedCorner;
        int i2;
        if (Build.VERSION.SDK_INT < 31 || (roundedCorner = display.getRoundedCorner(i)) == null) {
            return null;
        }
        int position = roundedCorner.getPosition();
        if (position != 0) {
            i2 = 1;
            if (position != 1) {
                i2 = 2;
                if (position != 2) {
                    i2 = 3;
                    if (position != 3) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(position, "Invalid position: "));
                        return null;
                    }
                }
            }
        } else {
            i2 = 0;
        }
        return new RoundedCornerCompat(i2, roundedCorner.getRadius(), roundedCorner.getCenter());
    }

    public static int getStopReason(JobParameters jobParameters) {
        int stopReason = jobParameters.getStopReason();
        String str = SystemJobService.TAG;
        switch (stopReason) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case IMAGE_VALUE:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case 15:
                return stopReason;
            default:
                return -512;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:3:0x0006, code lost:
    
        r0 = r2.fontWeightAdjustment;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Typeface maybeCopyWithFontWeightAdjustment(android.content.res.Configuration r2, android.graphics.Typeface r3) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 31
            if (r0 < r1) goto L2c
            int r0 = androidx.compose.ui.text.input.VisualTransformation$Companion$$ExternalSyntheticLambda0.m(r2)
            r1 = 2147483647(0x7fffffff, float:NaN)
            if (r0 == r1) goto L2c
            if (r0 == 0) goto L2c
            if (r3 == 0) goto L2c
            int r0 = r3.getWeight()
            int r2 = androidx.compose.ui.text.input.VisualTransformation$Companion$$ExternalSyntheticLambda0.m(r2)
            int r0 = r0 + r2
            r2 = 1
            r1 = 1000(0x3e8, float:1.401E-42)
            int r2 = kotlin.text.RegexKt.clamp(r0, r2, r1)
            boolean r0 = r3.isItalic()
            android.graphics.Typeface r2 = android.graphics.Typeface.create(r3, r2, r0)
            return r2
        L2c:
            r2 = 0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.view.DisplayCompat.maybeCopyWithFontWeightAdjustment(android.content.res.Configuration, android.graphics.Typeface):android.graphics.Typeface");
    }

    public static void onCreateVirtualViewTranslationRequests(AndroidContentCaptureManager androidContentCaptureManager, long[] jArr, Consumer consumer) {
        SemanticsNode semanticsNode;
        for (long j : jArr) {
            SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) androidContentCaptureManager.getCurrentSemanticsNodes$ui().get((int) j);
            if (semanticsNodeWithAdjustedBounds != null && (semanticsNode = semanticsNodeWithAdjustedBounds.semanticsNode) != null) {
                ViewTranslationRequest.Builder builder = new ViewTranslationRequest.Builder(androidContentCaptureManager.view.getAutofillId(), semanticsNode.id);
                Object obj = semanticsNode.unmergedConfig.props.get(SemanticsProperties.Text);
                if (obj == null) {
                    obj = null;
                }
                List list = (List) obj;
                if (list != null) {
                    builder.setValue("android:text", TranslationRequestValue.forText(new AnnotatedString(ListUtilsKt.fastJoinToString$default(list, "\n", null, 62))));
                    consumer.n(builder.build());
                }
            }
        }
    }
}
