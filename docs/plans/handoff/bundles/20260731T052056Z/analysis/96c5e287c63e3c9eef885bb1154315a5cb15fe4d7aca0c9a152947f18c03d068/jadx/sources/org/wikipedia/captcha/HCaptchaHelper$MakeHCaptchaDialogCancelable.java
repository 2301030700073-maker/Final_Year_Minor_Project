package org.wikipedia.captcha;

import android.app.Dialog;
import android.graphics.PointF;
import com.hcaptcha.sdk.HCaptchaDialogFragment;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okio.internal.DefaultSocket;
import org.maplibre.android.maps.MapGestureDetector;
import org.maplibre.android.maps.Style;
import org.maplibre.android.maps.UiSettings;
import org.wikipedia.activity.BaseActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HCaptchaHelper$MakeHCaptchaDialogCancelable implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public boolean cancelable;
    public final /* synthetic */ Object this$0;

    public HCaptchaHelper$MakeHCaptchaDialogCancelable(Style.Builder builder) {
        this.$r8$classId = 1;
        this.this$0 = builder;
        this.cancelable = false;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        Object obj = this.this$0;
        switch (i) {
            case 0:
                BaseActivity baseActivity = (BaseActivity) ((DefaultSocket) obj).socket;
                if (!baseActivity.isDestroyed()) {
                    List fragments = baseActivity.getSupportFragmentManager().mFragmentStore.getFragments();
                    fragments.getClass();
                    ArrayList arrayList = new ArrayList();
                    for (Object obj2 : fragments) {
                        if (obj2 instanceof HCaptchaDialogFragment) {
                            arrayList.add(obj2);
                        }
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        HCaptchaDialogFragment hCaptchaDialogFragment = (HCaptchaDialogFragment) it.next();
                        boolean z = this.cancelable;
                        hCaptchaDialogFragment.mCancelable = z;
                        Dialog dialog = hCaptchaDialogFragment.mDialog;
                        if (dialog != null) {
                            dialog.setCancelable(z);
                        }
                    }
                    break;
                }
                break;
            default:
                Style.Builder builder = (Style.Builder) obj;
                if (!this.cancelable) {
                    ((MapGestureDetector) builder.images).zoomAnimated(false, new PointF(((UiSettings) builder.layers).projection.getWidth() / 2.0f, ((UiSettings) builder.layers).projection.getHeight() / 2.0f), true);
                    builder.styleUri = null;
                    break;
                }
                break;
        }
    }

    public HCaptchaHelper$MakeHCaptchaDialogCancelable(DefaultSocket defaultSocket, boolean z) {
        this.$r8$classId = 0;
        this.this$0 = defaultSocket;
        this.cancelable = z;
    }
}
