package androidx.compose.ui.window;

import android.window.OnBackInvokedCallback;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.navigationevent.OnBackInvokedInput;
import com.google.android.material.motion.MaterialBackHandler;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Api33Impl$$ExternalSyntheticLambda0 implements OnBackInvokedCallback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ Api33Impl$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    public final void onBackInvoked() {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                Function0 function0 = (Function0) obj;
                if (function0 != null) {
                    function0.invoke();
                    break;
                }
                break;
            case 1:
                ((AppCompatDelegateImpl) obj).onBackPressed();
                break;
            case 2:
                ((Runnable) obj).run();
                break;
            case 3:
                ((OnBackInvokedInput) obj).dispatchOnBackCompleted();
                break;
            default:
                ((MaterialBackHandler) obj).handleBackInvoked();
                break;
        }
    }
}
