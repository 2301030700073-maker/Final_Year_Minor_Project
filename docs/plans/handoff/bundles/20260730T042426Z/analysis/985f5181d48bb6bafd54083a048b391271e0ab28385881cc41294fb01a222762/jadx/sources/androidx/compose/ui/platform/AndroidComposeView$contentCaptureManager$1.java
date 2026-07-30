package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.ui.platform.coreshims.ContentCaptureSessionCompat;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: AndroidComposeView.android.kt */
/* loaded from: classes.dex */
/* synthetic */ class AndroidComposeView$contentCaptureManager$1 extends FunctionReferenceImpl implements Function0 {
    AndroidComposeView$contentCaptureManager$1(Object obj) {
        super(0, obj, AndroidComposeView_androidKt.class, "getContentCaptureSessionCompat", "getContentCaptureSessionCompat(Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;", 1);
    }

    @Override // kotlin.jvm.functions.Function0
    public final ContentCaptureSessionCompat invoke() {
        ContentCaptureSessionCompat contentCaptureSessionCompat;
        contentCaptureSessionCompat = AndroidComposeView_androidKt.getContentCaptureSessionCompat((View) this.receiver);
        return contentCaptureSessionCompat;
    }
}
