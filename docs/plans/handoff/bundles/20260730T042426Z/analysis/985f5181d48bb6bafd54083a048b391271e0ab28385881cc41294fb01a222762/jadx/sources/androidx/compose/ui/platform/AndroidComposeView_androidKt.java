package androidx.compose.ui.platform;

import android.view.View;
import android.view.ViewParent;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.platform.coreshims.ContentCaptureSessionCompat;
import androidx.compose.ui.platform.coreshims.ViewCompatShims;
import androidx.compose.ui.text.input.PlatformTextInputService;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidComposeView.android.kt */
/* loaded from: classes.dex */
public abstract class AndroidComposeView_androidKt {
    private static Function1 platformTextInputServiceInterceptor = new Function1() { // from class: androidx.compose.ui.platform.AndroidComposeView_androidKt$platformTextInputServiceInterceptor$1
        @Override // kotlin.jvm.functions.Function1
        public final PlatformTextInputService invoke(PlatformTextInputService platformTextInputService) {
            return platformTextInputService;
        }
    };

    /* renamed from: dot-p89u6pk, reason: not valid java name */
    private static final float m1953dotp89u6pk(float[] fArr, int i, float[] fArr2, int i2) {
        int i3 = i * 4;
        return (fArr[i3] * fArr2[i2]) + (fArr[i3 + 1] * fArr2[4 + i2]) + (fArr[i3 + 2] * fArr2[8 + i2]) + (fArr[i3 + 3] * fArr2[12 + i2]);
    }

    public static final Function1 getPlatformTextInputServiceInterceptor() {
        return platformTextInputServiceInterceptor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: preTransform-JiSxe2E, reason: not valid java name */
    public static final void m1954preTransformJiSxe2E(float[] fArr, float[] fArr2) {
        float m1953dotp89u6pk = m1953dotp89u6pk(fArr2, 0, fArr, 0);
        float m1953dotp89u6pk2 = m1953dotp89u6pk(fArr2, 0, fArr, 1);
        float m1953dotp89u6pk3 = m1953dotp89u6pk(fArr2, 0, fArr, 2);
        float m1953dotp89u6pk4 = m1953dotp89u6pk(fArr2, 0, fArr, 3);
        float m1953dotp89u6pk5 = m1953dotp89u6pk(fArr2, 1, fArr, 0);
        float m1953dotp89u6pk6 = m1953dotp89u6pk(fArr2, 1, fArr, 1);
        float m1953dotp89u6pk7 = m1953dotp89u6pk(fArr2, 1, fArr, 2);
        float m1953dotp89u6pk8 = m1953dotp89u6pk(fArr2, 1, fArr, 3);
        float m1953dotp89u6pk9 = m1953dotp89u6pk(fArr2, 2, fArr, 0);
        float m1953dotp89u6pk10 = m1953dotp89u6pk(fArr2, 2, fArr, 1);
        float m1953dotp89u6pk11 = m1953dotp89u6pk(fArr2, 2, fArr, 2);
        float m1953dotp89u6pk12 = m1953dotp89u6pk(fArr2, 2, fArr, 3);
        float m1953dotp89u6pk13 = m1953dotp89u6pk(fArr2, 3, fArr, 0);
        float m1953dotp89u6pk14 = m1953dotp89u6pk(fArr2, 3, fArr, 1);
        float m1953dotp89u6pk15 = m1953dotp89u6pk(fArr2, 3, fArr, 2);
        float m1953dotp89u6pk16 = m1953dotp89u6pk(fArr2, 3, fArr, 3);
        fArr[0] = m1953dotp89u6pk;
        fArr[1] = m1953dotp89u6pk2;
        fArr[2] = m1953dotp89u6pk3;
        fArr[3] = m1953dotp89u6pk4;
        fArr[4] = m1953dotp89u6pk5;
        fArr[5] = m1953dotp89u6pk6;
        fArr[6] = m1953dotp89u6pk7;
        fArr[7] = m1953dotp89u6pk8;
        fArr[8] = m1953dotp89u6pk9;
        fArr[9] = m1953dotp89u6pk10;
        fArr[10] = m1953dotp89u6pk11;
        fArr[11] = m1953dotp89u6pk12;
        fArr[12] = m1953dotp89u6pk13;
        fArr[13] = m1953dotp89u6pk14;
        fArr[14] = m1953dotp89u6pk15;
        fArr[15] = m1953dotp89u6pk16;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: preTranslate-cG2Xzmc, reason: not valid java name */
    public static final void m1955preTranslatecG2Xzmc(float[] fArr, float f, float f2, float[] fArr2) {
        Matrix.m1369resetimpl(fArr2);
        Matrix.m1378translateimpl$default(fArr2, f, f2, 0.0f, 4, null);
        m1954preTransformJiSxe2E(fArr, fArr2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean containsDescendant(View view, View view2) {
        if (Intrinsics.areEqual(view2, view)) {
            return false;
        }
        for (ViewParent parent = view2.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == view) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ContentCaptureSessionCompat getContentCaptureSessionCompat(View view) {
        ViewCompatShims.setImportantForContentCapture(view, 1);
        return ViewCompatShims.getContentCaptureSession(view);
    }
}
