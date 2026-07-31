package androidx.compose.ui.platform;

import android.os.Handler;
import android.os.Looper;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.focus.FocusOwnerImpl;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.views.ViewAnimations$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidComposeView$snapshotObserver$1 extends Lambda implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AndroidComposeView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AndroidComposeView$snapshotObserver$1(AndroidComposeView androidComposeView, int i) {
        super(1);
        this.$r8$classId = i;
        this.this$0 = androidComposeView;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        AndroidComposeView androidComposeView = this.this$0;
        switch (i) {
            case 0:
                Function0 function0 = (Function0) obj;
                androidComposeView.getUncaughtExceptionHandler$ui();
                Handler handler = androidComposeView.getHandler();
                if ((handler != null ? handler.getLooper() : null) == Looper.myLooper()) {
                    function0.invoke();
                } else {
                    Handler handler2 = androidComposeView.getHandler();
                    if (handler2 != null) {
                        handler2.post(new ViewAnimations$$ExternalSyntheticLambda0(3, function0));
                    }
                }
                return unit;
            case 1:
                ((FocusOwnerImpl) androidComposeView.getFocusOwner()).m363moveFocusaToIllA(((FocusDirection) obj).value, false);
                return unit;
            default:
                return new AndroidPlatformTextInputSession(androidComposeView, androidComposeView.getTextInputService(), (CoroutineScope) obj);
        }
    }
}
