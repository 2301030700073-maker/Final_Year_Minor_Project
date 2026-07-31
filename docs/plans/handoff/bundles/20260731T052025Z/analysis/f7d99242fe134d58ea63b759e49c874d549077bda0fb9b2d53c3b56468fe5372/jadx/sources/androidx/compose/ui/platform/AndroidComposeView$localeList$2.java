package androidx.compose.ui.platform;

import android.content.res.Configuration;
import android.os.Build;
import android.os.SystemClock;
import android.view.MotionEvent;
import androidx.camera.camera2.compat.Api24Compat;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.core.os.LocaleListCompat;
import androidx.core.os.LocaleListInterface;
import androidx.core.os.LocaleListPlatformWrapper;
import java.util.ArrayList;
import java.util.Locale;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidComposeView$localeList$2 extends Lambda implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AndroidComposeView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AndroidComposeView$localeList$2(AndroidComposeView androidComposeView, int i) {
        super(0);
        this.$r8$classId = i;
        this.this$0 = androidComposeView;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int actionMasked;
        int i = this.$r8$classId;
        AndroidComposeView androidComposeView = this.this$0;
        switch (i) {
            case 0:
                Configuration configuration = androidComposeView.getConfiguration();
                int i2 = Build.VERSION.SDK_INT;
                LocaleListCompat localeListCompat = i2 >= 24 ? new LocaleListCompat(new LocaleListPlatformWrapper(Api24Compat.getLocales(configuration))) : LocaleListCompat.create(configuration.locale);
                if (localeListCompat.mImpl.isEmpty()) {
                    localeListCompat = i2 >= 24 ? new LocaleListCompat(new LocaleListPlatformWrapper(Api24Compat.getDefault())) : LocaleListCompat.create(Locale.getDefault());
                }
                LocaleListInterface localeListInterface = localeListCompat.mImpl;
                int size = localeListInterface.size();
                ArrayList arrayList = new ArrayList(size);
                for (int i3 = 0; i3 < size; i3++) {
                    Locale locale = localeListInterface.get(i3);
                    locale.getClass();
                    arrayList.add(new androidx.compose.ui.text.intl.Locale(locale));
                }
                return new LocaleList(arrayList);
            case 1:
                Boolean bool = (Boolean) androidComposeView.isAttached$delegate.getValue();
                bool.getClass();
                return bool;
            case 2:
                MotionEvent motionEvent = androidComposeView.previousMotionEvent;
                if (motionEvent != null && ((actionMasked = motionEvent.getActionMasked()) == 7 || actionMasked == 9)) {
                    androidComposeView.relayoutTime = SystemClock.uptimeMillis();
                    androidComposeView.post(androidComposeView.resendMotionEventRunnable);
                }
                return Unit.INSTANCE;
            default:
                androidComposeView.get_viewTreeOwners();
                return null;
        }
    }
}
